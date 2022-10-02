/*===========================================================================
    File: ProcessChunks.cpp

    Implementation of chunk processing routine for p3dmutate


    Copyright (c) 2000 Radical Entertainment, Inc.  All rights reserved.

===========================================================================*/


#include <toollib.hpp>

#include "IntRangeList.hpp"
#include "Param.hpp"

#include "ProcessChunks.hpp"


static bool MatchNULL(tlStringTable &table, const char *val)
{
    if (val[0] == 0)
    {
        for (int i = 0; i < table.Count(); ++i)
        {
            if (strcmp(table[i], "NULL") == 0)
            {
                return true;
            }
        }
    }

    return false;
}


static bool MatchName(tlStringTable &table, tlDataChunk *chunk)
{
    if ((chunk != 0) && (table.Count() > 0))
    {
        char chunk_name[256];

        for (int i = 0; i < chunk->GetFieldCount(); ++i)
        {
            if ((chunk->GetFieldType(i) == 0) ||
                 (chunk->GetFieldName(i) == 0))
                continue;

            if (!chunk->GetFieldIsArray(i) &&
                 (strcmp(chunk->GetFieldType(i), "string") == 0) &&
                 (strcmp(chunk->GetFieldName(i), "Name") == 0))
            {
                if (!chunk->GetFieldValue(i, chunk_name, 255))
                    return false;

                return (glob(&table, chunk_name) != 0) ||
                         MatchNULL(table, chunk_name);
            }
        }

        return false;
    }

    return true;
}


bool ProcessChunks(tlDataChunk *top,
                         tlDataChunk *parent,
                         tlDataChunk *chunk,
                         Parameters *Param,
                         IntRangeList *chunkIDRangeList,
                         IntRangeList *newChunkIDRangeList,
                         IntRangeList *arrayRangeList,
                         int &filter_count)
{
    // filter top-level chunk name
    if (!MatchName(Param->TopParentName, top))
        return true;

    // filter parent chunk name
    if (MatchName(Param->ParentName, parent) &&
        // filter chunk id
         ((chunkIDRangeList == 0) ||
          ((chunkIDRangeList != 0) && (chunkIDRangeList->Match(chunk->ID())))) &&
        // filter chunk name
         MatchName(Param->ChunkName, chunk))
    {
        if (newChunkIDRangeList)
        {
            
            int oldChunkIDPosition = 0;
            tlTable<IntRangeList::IntRange> oldTable = chunkIDRangeList->GetTable();
            for (int i=0; i < oldTable.Count(); i++)
            {
                if (oldTable[i].minID == chunk->ID())
                {
                    oldChunkIDPosition = i;
                    break;
                }
            }

            int newChunkID = newChunkIDRangeList->GetTable()[oldChunkIDPosition].minID;
            chunk->SetID(newChunkID);
        }

        else if (chunk->GetFieldCount() == 0)
        {
            // this chunk has no fields (probably a tlDataChunk!)
            // if any field-based filtering was applied, then we skip it.
            if ((Param->FieldName.Count() == 0) &&
                 (Param->FieldType.Count() == 0) &&
                 (arrayRangeList == 0) &&
                 (Param->CurrentValue.Count() == 0))
            {
                // no field-based filtering applied, so...
                if (Param->Delete)
                {
                    // delete the chunk
                    return false;
                }
            }
        }
        else
        {
            char field_value[256];

            // loop over all fields in the chunk
            for (int f = 0; f < chunk->GetFieldCount(); ++f)
            {
                // filter field names
                if ((Param->FieldName.Count() == 0) ||
                     ((chunk->GetFieldName(f) != 0) &&
                      glob(&Param->FieldName, chunk->GetFieldName(f))))
                {
                    // filter field types
                    if ((Param->FieldType.Count() == 0) ||
                         ((chunk->GetFieldType(f) != 0) &&
                          glob(&Param->FieldType, chunk->GetFieldType(f))))
                    {
                        // check if current field is an array
                        if (chunk->GetFieldIsArray(f))
                        {
                            for (int i = 0; i < chunk->GetFieldArrayCount(f); ++i)
                            {
                                // filter array indices
                                if (arrayRangeList != 0)
                                {
                                    if (!arrayRangeList->Match(i))
                                    {
                                        continue;
                                    }
                                }

                                // filter field values
                                field_value[0] = 0;
                                if (!chunk->GetFieldArrayValue(f, i, field_value, 255))
                                {
                                    continue;
                                }

                                if ((Param->CurrentValue.Count() == 0) ||
                                     glob(&Param->CurrentValue, field_value) ||
                                     MatchNULL(Param->CurrentValue, field_value))
                                {
                                    if (Param->Query)
                                    {
                                        // display queried field value
                                        printf("%s\n", field_value);
                                    }
                                    else if (Param->Delete)
                                    {
                                        return false;
                                    }
                                    else // edit
                                    {
                                        // set the new field value
                                        if (Param->Verbosity > 0)
                                        {
                                            if (Param->NewValue[0] == 0)
                                            {
                                                printf("%s[%d] = NULL\n", chunk->GetFieldName(f), i);
                                            }
                                            else
                                            {
                                                printf("%s[%d] = %s\n", chunk->GetFieldName(f), i, Param->NewValue);
                                            }
                                        }

                                        if ( Param->AppendOnly )
                                        {
                                            char newValue[256];
                                            strcpy( newValue, Param->NewValue);
                                            char oldValue[256];
                                            chunk->GetFieldArrayValue(f, i, oldValue, 255);
                                            strcat( newValue, oldValue );
                                            chunk->SetFieldArrayValue(f, i, newValue);
                                        }
                                        else
                                        {
                                            chunk->SetFieldArrayValue(f, i, Param->NewValue);
                                        }
                                    }

                                    // increment # items filtered
                                    ++filter_count;

                                    // if # items filtered is greater than MaxCount,
                                    // cease processing
                                    if ((Param->MaxCount >= 0) && 
                                         (filter_count >= Param->MaxCount))
                                    {
                                        return true;
                                    }
                                }
                            }
                        }

                        // non-array fields...
                        else
                        {
                            // if array index ranges were specified, skip non-array fields
                            if (arrayRangeList != 0)
                            {
                                continue;
                            }

                            // filter field values
                            field_value[0] = 0;
                            if (!chunk->GetFieldValue(f, field_value, 255))
                            {
                                continue;
                            }

                            if ((Param->CurrentValue.Count() == 0) ||
                                 glob(&Param->CurrentValue, field_value) ||
                                 MatchNULL(Param->CurrentValue, field_value))
                            {
                                if (Param->Query)
                                {
                                    printf("%s\n", field_value);
                                }
                                else if (Param->Delete)
                                {
                                    return false;
                                }
                                else // edit
                                {
                                    // set the new field value
                                    if (Param->Verbosity > 0)
                                    {
                                        if (Param->NewValue[0] == 0)
                                        {
                                            printf("%s = NULL\n", chunk->GetFieldName(f));
                                        }
                                        else
                                        {
                                            printf("%s = %s\n", chunk->GetFieldName(f), Param->NewValue);
                                        }
                                    }

                                    if ( Param->AppendOnly )
                                    {
                                        char newValue[256];
                                        strcpy( newValue, Param->NewValue);
                                        char oldValue[256];
                                        chunk->GetFieldValue(f, oldValue, 255);
                                        strcat( newValue, oldValue );
                                        chunk->SetFieldValue(f, newValue);
                                    }
                                    else
                                    {
                                        chunk->SetFieldValue(f, Param->NewValue);
                                    }
                                }

                                // increment # items filtered
                                ++filter_count;

                                // if # items filtered is greater than MaxCount,
                                // cease processing
                                if ((Param->MaxCount >= 0) && 
                                     (filter_count >= Param->MaxCount))
                                {
                                    return true;
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    // Recurse on subchunks next
    int idx = 0;
    while (idx < chunk->SubChunkCount())
    {
        tlDataChunk* sub_chunk = chunk->GetSubChunk(idx);

        if (!ProcessChunks(top, chunk, sub_chunk, Param,
                                 chunkIDRangeList, newChunkIDRangeList, arrayRangeList,
                                 filter_count))
        {
            chunk->RemoveSubChunk(idx);
            delete sub_chunk;
            ++filter_count;
        }
        else
        {
            ++idx;
        }

        if ((Param->MaxCount >= 0) &&
             (filter_count >= Param->MaxCount))
        {
            return true;
        }
    }

    return true;
}


// End of file.

