package Shader_Schema;
use Ast;
use strict;
use FileHandle;

my $line;                           # The current line from the input file
my $ROOT;							# The root node of the newly create AST tree
my $fh;								# The global variable file-handle;
sub parse{
   my $this = shift;
   my $file_name = shift;
   $ROOT = shift;  
   my $inc_level = shift;
   $inc_level = 0 if !defined $inc_level;

   
   $fh = new FileHandle("$file_name") || die "Could not open $file_name : $@";

   if(!defined $ROOT){
       $ROOT = Ast->new("Root") if !defined $ROOT;

	   my $c;                           # Contains the current class name
       $c = Ast->new("InputFile");
       $c->add_prop("file_name" => $file_name);
       $ROOT->add_prop_list("InputFile", $c);
   }

   while (get_line($fh)) {
       # process shader definition
	   parse_shader( );

       # process texture definition
	   parse_texture( );

	   #process color definition
	   parse_color( );

	   #process float definition
	   parse_float( );

	   #process float definition
	   parse_uv( );

	   #process int definition
	   parse_int( );

	   #process bool definition
	   parse_bool( );

	   #process color definition
	   parse_enum( );

	   #process stringarray definition
	   parse_strarray( );

	   #process additional code
	   parse_code( );
   }
   $fh->close;
   return ($ROOT);
   
}

sub get_line {
    my $fh = shift;
    while ($line = <$fh>) {
        $line =~ s#//.*$##;            # Remove comments
        last if ($line !~ /^\s*$/);  # return non-blank line
    }
    $line;
}

sub parse_shader{
   if ($line =~ /^\s*shader *(\w*)/) {
	   my $c;                           # Contains the current class name
       $c = Ast->new($1);
       $c->add_prop("shader_name" => $1);           
       $ROOT->add_prop_list("shader_list", $c);
       while (get_line($fh)) {
           last if ($line =~ /^\s*\}/);
           if ($line =~ /^\s*pddiShaderName\s*([^;]*);/) {
               $c->add_prop("shader_pddiShaderName" => $1);
           }
           if ($line =~ /^\s*registerName\s*([^;]*);/) {
               $c->add_prop("shader_registerName" => $1);
           }
           if ($line =~ /^\s*id\s*([^;]*)/) {
               $c->add_prop("shader_id" => $1);
           }               
           if ($line =~ /^\s*description/) {
               my $description = "";
               while (get_line($fh)) {
                   last if ($line =~ /^\s*\}/);
                   # strip leading whitespace
                   $line =~ s/^\s*//;
                   $description .= $line;
               }
               $c->add_prop("shader_description" => $description);
           }               
       }
   }
}

sub parse_texture{
   if ($line =~ /^\s*texture *(\w*)/) {
	   my $c;                           # Contains the current class name
       $c = Ast->new($1);
       $c->add_prop("texture_name" => $1);           
       $ROOT->add_prop_list("texture_list", $c);
	   my @affected;

       while (get_line($fh)) {
           last if ($line =~ /^\s*\}/);
		   #long name
           if ($line =~ /^\s*long\s*([^;]*);/) {
               $c->add_prop("texture_long" => $1);
           }
		   #short name
           if ($line =~ /^\s*short\s*([^;]*);/) {
               $c->add_prop("texture_short" => $1);
           }
		   #fourCC
		   if ($line =~ /^\s*fourCC\s*([^;]*);/) {
               $c->add_prop("texture_fourCC" => $1);
           }
		   #transparency
           if ($line =~ /^\s*transparency\s*([^;]*)/) {
               $c->add_prop("texture_transparency" => $1);
           }
		   #storable true  or attribue false; default is true
		   if ($line =~ /^\s*storable\s*(true|false);/) {
               $c->add_prop("texture_storable" => $1);
           }
		   #value (0.0, 0.0, 0.0)
           if ($line =~ /^\s*value\s*\(\s*(\d+\.?\d*|\.\d+)\s*,\s*(\d+\.?\d*|\.\d+)\s*,\s*(\d+\.?\d*|\.\d+)\s*\)/) {
               $c->add_prop("texture_value0",  $1 );
			   $c->add_prop("texture_value1",  $2 );
			   $c->add_prop("texture_value2",  $3 );
           }  
		   #attribute true  or attribue false; default is true
		   if ($line =~ /^\s*attribute\s*(true|false);/) {
               $c->add_prop("texture_attribute" => $1);
           }
		   #affect something
           if ($line =~ /^\s*affect\s*([^;]*)/) {
               push( @affected, $1 );
           } 			    			   
           if ($line =~ /^\s*description/) {
               my $description = "";
               while (get_line($fh)) {
                   last if ($line =~ /^\s*\}/);
                   # strip leading whitespace
                   $line =~ s/^\s*//;
                   $description .= $line;
               }
               $c->add_prop("texture_description" => $description);
           }               
       }
	   #add the affected attributes list to the newly created node
	   if( defined @affected ){
			$c->add_prop( "texture_affectnum", $#affected + 1 );
			my $idx = 0;
			while( $idx <= $#affected ){
				$c->add_prop( "texture_affect$idx", @affected[ $idx ] );
				++$idx;
			}
		}	

   }
}

sub parse_color{
   if ($line =~ /^\s*color *(\w*)/) {
       my $c;                           # Contains the current class name
       $c = Ast->new($1);
       $c->add_prop("color_name" => $1);           
       $ROOT->add_prop_list("color_list", $c);
	   my @affected;

       while (get_line($fh)) {
           last if ($line =~ /^\s*\}/);
		   #long name
           if ($line =~ /^\s*long\s*([^;]*);/) {
               $c->add_prop("color_long" => $1);
           }
		   #short name
           if ($line =~ /^\s*short\s*([^;]*);/) {
               $c->add_prop("color_short" => $1);
           }
		   #fourCC
		   if ($line =~ /^\s*fourCC\s*([^;]*);/) {
               $c->add_prop("color_fourCC" => $1);
           }
		   #keyable; default is true
		   if ($line =~ /^\s*keyable\s*(true|false);/) {
               $c->add_prop("color_keyable" => $1);
           }
		   #storable true  or attribue false; default is true
		   if ($line =~ /^\s*storable\s*(true|false);/) {
               $c->add_prop("color_storable" => $1);
           }  
		   #connectable; default is true
		   if ($line =~ /^\s*connectable\s*(true|false);/) {
               $c->add_prop("color_connectable" => $1);
           }
        
		   #value (0.0, 0.0, 0.0)
           if ($line =~ /^\s*value\s*\(\s*(\d+\.?\d*|\.\d+)\s*,\s*(\d+\.?\d*|\.\d+)\s*,\s*(\d+\.?\d*|\.\d+)\s*\)/) {
				$c->add_prop("color_value0"=> $1 );
				$c->add_prop("color_value1"=> $2 );
				$c->add_prop("color_value2"=> $2 );
           }
		   #attribute true  or attribue false; default is true
		   if ($line =~ /^\s*attribute\s*(true|false);/) {
               $c->add_prop("color_attribute" => $1);
           }  
		   #affect something
           if ($line =~ /^\s*affect\s*([^;]*)/) {
               push( @affected, $1 );
           } 			    			   
           if ($line =~ /^\s*description/) {
               my $description = "";
               while (get_line($fh)) {
                   last if ($line =~ /^\s*\}/);
                   # strip leading whitespace
                   $line =~ s/^\s*//;
                   $description .= $line;
               }
               $c->add_prop("color_description" => $description);
           }               
       }
	   #add the affected attributes list to the newly created node
	   if( defined @affected ){
			$c->add_prop( "color_affectnum", $#affected + 1 );
			my $idx = 0;
			while( $idx <= $#affected ){
				$c->add_prop( "color_affect$idx", @affected[ $idx ] );
				++$idx;
			}
		}	
   }
}

sub parse_float{
   if ($line =~ /^\s*float *(\w*)/) {
       my $c;                           # Contains the current class name
       $c = Ast->new($1);
       $c->add_prop("float_name" => $1);           
       $ROOT->add_prop_list("float_list", $c);
	   my @affected;

       while (get_line($fh)) {
           last if ($line =~ /^\s*\}/);
		   #long name
           if ($line =~ /^\s*long\s*([^;]*);/) {
               $c->add_prop("float_long" => $1);
           }
		   #short name
           if ($line =~ /^\s*short\s*([^;]*);/) {
               $c->add_prop("float_short" => $1);
           }
		   #fourCC
		   if ($line =~ /^\s*fourCC\s*([^;]*);/) {
               $c->add_prop("float_fourCC" => $1);
           }
        
		   #min 0.0
		   if ($line =~ /^\s*min\s*(-?\d+\.?\d*|\.\d+);/) {
               $c->add_prop("float_min" => $1);
           }

		   #max 200.0
		   if ($line =~ /^\s*max\s*(-?\d+\.?\d*|\.\d+);/) {
               $c->add_prop("float_max" => $1);
           }

		   #value 1.0
		   if ($line =~ /^\s*value\s*(-?\d+\.?\d*|\.\d+);/) {
               $c->add_prop("float_value" => $1);
           }
		   #attribute true  or attribue false; default is true
		   if ($line =~ /^\s*attribute\s*(true|false);/) {
               $c->add_prop("float_attribute" => $1);
           }
		   #storable true  or attribue false; default is true
		   if ($line =~ /^\s*storable\s*(true|false);/) {
               $c->add_prop("float_storable" => $1);
           }
		   #keyable; default is true
		   if ($line =~ /^\s*keyable\s*(true|false);/) {
               $c->add_prop("float_keyable" => $1);
           }
		   #connectable; default is true
		   if ($line =~ /^\s*connectable\s*(true|false);/) {
               $c->add_prop("float_connectable" => $1);
           }
		   #renderSource
		   if ($line =~ /^\s*renderSource\s*(true|false);/) {
               $c->add_prop("float_renderSource" => $1);
           }

		   #affect something
           if ($line =~ /^\s*affect\s*([^;]*)/) {
               push( @affected, $1 );
           } 
		   			    			   
           if ($line =~ /^\s*description/) {
               my $description = "";
               while (get_line($fh)) {
                   last if ($line =~ /^\s*\}/);
                   # strip leading whitespace
                   $line =~ s/^\s*//;
                   $description .= $line;
               }
               $c->add_prop("float_description" => $description);
           }               
       }
	   #add the affected attributes list to the newly created node
	   if( defined @affected ){
			$c->add_prop( "float_affectnum", $#affected + 1 );
			my $idx = 0;
			while( $idx <= $#affected ){
				$c->add_prop( "float_affect$idx", @affected[ $idx ] );
				++$idx;
			}
		}	
   }
}

sub parse_uv{
   if ($line =~ /^\s*uv *(\w*)/) {
       my $c;                           # Contains the current class name
       $c = Ast->new($1);
       $c->add_prop("uv_name" => $1);           
       $ROOT->add_prop_list("uv_list", $c);
	   my @affected;

       while (get_line($fh)) {
           last if ($line =~ /^\s*\}/);
		   #long name
           if ($line =~ /^\s*long\s*([^;]*);/) {
               $c->add_prop("uv_long" => $1);
           }
		   #short name
           if ($line =~ /^\s*short\s*([^;]*);/) {
               $c->add_prop("uv_short" => $1);
           }
		   #fourCC
		   if ($line =~ /^\s*fourCC\s*([^;]*);/) {
               $c->add_prop("uv_fourCC" => $1);
           }
        
		   #value (0.0, 0.0)
           if ($line =~ /^\s*value\s*\(\s*(\d+\.?\d*|\.\d+)\s*,\s*(\d+\.?\d*|\.\d+)\s*/) {
				$c->add_prop("uv_value0"=> $1 );
				$c->add_prop("uv_value1"=> $2 );
           }
		   #attribute true  or attribue false; default is true
		   if ($line =~ /^\s*attribute\s*(true|false);/) {
               $c->add_prop("uv_attribute" => $1);
           }
		   #storable true  or attribue false; default is true
		   if ($line =~ /^\s*storable\s*(true|false);/) {
               $c->add_prop("uv_storable" => $1);
           }
		   #keyable; default is true
		   if ($line =~ /^\s*keyable\s*(true|false);/) {
               $c->add_prop("uv_keyable" => $1);
           }
		   #connectable; default is true
		   if ($line =~ /^\s*connectable\s*(true|false);/) {
               $c->add_prop("uv_connectable" => $1);
           }
		   #renderSource
		   if ($line =~ /^\s*renderSource\s*(true|false);/) {
               $c->add_prop("uv_renderSource" => $1);
           }

		   #affect something
           if ($line =~ /^\s*affect\s*([^;]*)/) {
               push( @affected, $1 );
           } 
		   			    			   
           if ($line =~ /^\s*description/) {
               my $description = "";
               while (get_line($fh)) {
                   last if ($line =~ /^\s*\}/);
                   # strip leading whitespace
                   $line =~ s/^\s*//;
                   $description .= $line;
               }
               $c->add_prop("uv_description" => $description);
           }               
       }
	   #add the affected attributes list to the newly created node
	   if( defined @affected ){
			$c->add_prop( "uv_affectnum", $#affected + 1 );
			my $idx = 0;
			while( $idx <= $#affected ){
				$c->add_prop( "uv_affect$idx", @affected[ $idx ] );
				++$idx;
			}
		}	
   }
}

sub parse_int{
   if ($line =~ /^\s*int *(\w*)/) {
	   my $c;                           # Contains the current class name
       $c = Ast->new($1);
       $c->add_prop("int_name" => $1);           
       $ROOT->add_prop_list("int_list", $c);
	   my @affected;

       while (get_line($fh)) {
           last if ($line =~ /^\s*\}/);
		   #long name
           if ($line =~ /^\s*long\s*([^;]*);/) {
               $c->add_prop("int_long" => $1);
           }
		   #short name
           if ($line =~ /^\s*short\s*([^;]*);/) {
               $c->add_prop("int_short" => $1);
           }
		   #fourCC
		   if ($line =~ /^\s*fourCC\s*([^;]*);/) {
               $c->add_prop("int_fourCC" => $1);
           }
        
		   #min 0
		   if ($line =~ /^\s*min\s*(-?\d+);/) {
               $c->add_prop("int_min" => $1);
           }

		   #max 10
		   if ($line =~ /^\s*max\s*(-?\d+);/) {
               $c->add_prop("int_max" => $1);
           }
		   #storable true  or attribue false; default is true
		   if ($line =~ /^\s*storable\s*(true|false);/) {
               $c->add_prop("int_storable" => $1);
           }
		   #keyable; default is true
		   if ($line =~ /^\s*keyable\s*(true|false);/) {
               $c->add_prop("int_keyable" => $1);
           }
		   #connectable; default is true
		   if ($line =~ /^\s*connectable\s*(true|false);/) {
               $c->add_prop("int_connectable" => $1);
           }
		   #value 5
		   if ($line =~ /^\s*value\s*(-?\d+);/) {
               $c->add_prop("int_value" => $1);
           }
		   #attribute true  or attribue false; default is true
		   if ($line =~ /^\s*attribute\s*(true|false);/) {
               $c->add_prop("int_attribute" => $1);
           }

		   #affect something
           if ($line =~ /^\s*affect\s*([^;]*)/) {
               push( @affected, $1 );
           } 
		   			    			   
           if ($line =~ /^\s*description/) {
               my $description = "";
               while (get_line($fh)) {
                   last if ($line =~ /^\s*\}/);
                   # strip leading whitespace
                   $line =~ s/^\s*//;
                   $description .= $line;
               }
               $c->add_prop("int_description" => $description);
           }               
       }
	   #add the affected attributes list to the newly created node
	   if( defined @affected ){
			$c->add_prop( "int_affectnum", $#affected + 1 );
			my $idx = 0;
			while( $idx <= $#affected ){
				$c->add_prop( "int_affect$idx", @affected[ $idx ] );
				++$idx;
			}
		}
	}	   
}

sub parse_enum{
  if ($line =~ /^\s*enum *(\w*)/) {
	   my $c;                           # Contains the current class name
       $c = Ast->new($1);
       $c->add_prop("enum_name" => $1);           
       $ROOT->add_prop_list("enum_list", $c);
	   my @affected;

       while (get_line($fh)) {
           last if ($line =~ /^\s*\}/);
		   #long name
           if ($line =~ /^\s*long\s*([^;]*);/) {
               $c->add_prop("enum_long" => $1);
           }
		   #short name
           if ($line =~ /^\s*short\s*([^;]*);/) {
               $c->add_prop("enum_short" => $1);
           }
		   #fourCC
		   if ($line =~ /^\s*fourCC\s*([^;]*);/) {
               $c->add_prop("enum_fourCC" => $1);
           }
		   #storable true  or attribue false; default is true
		   if ($line =~ /^\s*storable\s*(true|false);/) {
               $c->add_prop("enum_storable" => $1);
           }
		   #keyable; default is false
		   if ($line =~ /^\s*keyable\s*(true|false);/) {
               $c->add_prop("enum_keyable" => $1);
           }

		   #defalt value
		   if ($line =~ /^\s*default\s*(\d+);/) {
               $c->add_prop("enum_default" => $1);
           }
        
		   #value (simple, multitex, ..., bumpmap)
		   if ($line =~ /^\s*value\s*\((.*)\);/) {
			   my $content = $1;
			   my @items;
			   #extract all enum items
			   while( $content ){
					last if ($content =~ /^\s*\}/);
					if( $content =~ /\s*([^,]*)\s*,?(.*)/ ){
					    my $item = $1;
						$content = $2;
						$item =~ s/\s*$//;
						push( @items, $item );
						
					}
			   }
               
			   if( defined @items ){
					my $count = $#items + 1;
					$c->add_prop( "enum_valuenum", $count );
					my $idx = 0;
					while( $idx < $count ){
						$c->add_prop( "enum_value$idx", @items[$idx] );
						++$idx;
					}
			   }
			   else{
					$c->add_prop( "enum_valuenum", 0 );
			   }
           }
		   #attribute true  or attribue false; default is true
		   if ($line =~ /^\s*attribute\s*(true|false);/) {
               $c->add_prop("enum_attribute" => $1);
           }

		   #affect something
           if ($line =~ /^\s*affect\s*([^;]*)/) {
               push( @affected, $1 );
           } 
		   			    			   
           if ($line =~ /^\s*description/) {
               my $description = "";
               while (get_line($fh)) {
                   last if ($line =~ /^\s*\}/);
                   # strip leading whitespace
                   $line =~ s/^\s*//;
                   $description .= $line;
               }
               $c->add_prop("enum_description" => $description);
           }               
       }
	   #add the affected attributes list to the newly created node
	   if( defined @affected ){
			$c->add_prop( "enum_affectnum", $#affected + 1 );
			my $idx = 0;
			while( $idx <= $#affected ){
				$c->add_prop( "enum_affect$idx", @affected[ $idx ] );
				++$idx;
			}
		}	   


   }

}

sub parse_bool{
  if ($line =~ /^\s*bool *(\w*)/) {
       my $c;                           # Contains the current class name
       $c = Ast->new($1);
       $c->add_prop("bool_name" => $1);           
       $ROOT->add_prop_list("bool_list", $c);
	   my @affected;

       while (get_line($fh)) {
           last if ($line =~ /^\s*\}/);
		   #long name
           if ($line =~ /^\s*long\s*([^;]*);/) {
               $c->add_prop("bool_long" => $1);
           }
		   #short name
           if ($line =~ /^\s*short\s*([^;]*);/) {
               $c->add_prop("bool_short" => $1);
           }
		   #fourCC
		   if ($line =~ /^\s*fourCC\s*([^;]*);/) {
               $c->add_prop("bool_fourCC" => $1);
           }
        
		   #storable true  or storable false; default is true
		   if ($line =~ /^\s*storable\s*(true|false);/) {
               $c->add_prop("bool_storable" => $1);
           }
		   #keyable; default is true
		   if ($line =~ /^\s*keyable\s*(true|false);/) {
               $c->add_prop("bool_keyable" => $1);
           }
		   #connectable; default is true
		   if ($line =~ /^\s*connectable\s*(true|false);/) {
               $c->add_prop("bool_connectable" => $1);
           }
		   #value true  or value false;
		   if ($line =~ /^\s*value\s*(true|false);/) {
               $c->add_prop("bool_value" => $1);
           }
		   #attribute true  or attribue false; default is true
		   if ($line =~ /^\s*attribute\s*(true|false);/) {
               $c->add_prop("bool_attribute" => $1);
           }
		   #affect something
           if ($line =~ /^\s*affect\s*([^;]*)/) {
               push( @affected, $1 );
           } 
		   			    			   
           if ($line =~ /^\s*description/) {
               my $description = "";
               while (get_line($fh)) {
                   last if ($line =~ /^\s*\}/);
                   # strip leading whitespace
                   $line =~ s/^\s*//;
                   $description .= $line;
               }
               $c->add_prop("bool_description" => $description);
           }               
       }
	   #add the affected attributes list to the newly created node
	   if( defined @affected ){
			$c->add_prop( "bool_affectnum", $#affected + 1 );
			my $idx = 0;
			while( $idx <= $#affected ){
				$c->add_prop( "bool_affect$idx", @affected[ $idx ] );
				++$idx;
			}
		}	   

   }
}

sub parse_strarray{
  if ($line =~ /^\s*strarray *(\w*)/) {
	   my $c;                           # Contains the current class name
       $c = Ast->new($1);
       $c->add_prop("strarray_name" => $1);           
       $ROOT->add_prop_list("strarray_list", $c);
	   my @affected;

       while (get_line($fh)) {
           last if ($line =~ /^\s*\}/);
		   #long name
           if ($line =~ /^\s*long\s*([^;]*);/) {
               $c->add_prop("strarray_long" => $1);
           }
		   #short name
           if ($line =~ /^\s*short\s*([^;]*);/) {
               $c->add_prop("strarray_short" => $1);
           }
		   #fourCC
		   if ($line =~ /^\s*fourCC\s*([^;]*);/) {
               $c->add_prop("strarray_fourCC" => $1);
           }
		   #defalt value
		   if ($line =~ /^\s*default\s*(\d+);/) {
               $c->add_prop("strarray_default" => $1);
           }
        
		   #value (simple, multitex, ..., bumpmap)
		   if ($line =~ /^\s*value\s*\((.*)\);/) {
			   my $content = $1;
			   my @items;
			   #extract all strarray items
			   while( $content ){
					last if ($content =~ /^\s*\}/);
					if( $content =~ /\s*([^,]*)\s*,?(.*)/ ){
						my $item = $1;
						$content = $2;
						$item =~ s/\s*$//;
						push( @items, $item );						
					}
			   }
               
			   if( defined @items ){
					my $count = $#items + 1;
					$c->add_prop( "strarray_valuenum", $count );
					my $idx = 0;
					while( $idx < $count ){
						$c->add_prop( "strarray_value$idx", @items[$idx] );
						++$idx;
					}
			   }
			   else{
					$c->add_prop( "strarray_valuenum", 0 );
			   }
           }
		   #attribute true  or attribue false; default is true
		   if ($line =~ /^\s*attribute\s*(true|false);/) {
               $c->add_prop("strarray_attribute" => $1);
           }
		   #affect something
           if ($line =~ /^\s*affect\s*([^;]*)/) {
               push( @affected, $1 );
           } 
		   			    			   
           if ($line =~ /^\s*description/) {
               my $description = "";
               while (get_line($fh)) {
                   last if ($line =~ /^\s*\}/);
                   # strip leading whitespace
                   $line =~ s/^\s*//;
                   $description .= $line;
               }
               $c->add_prop("strarray_description" => $description);
           }               
       }
	   #add the affected attributes list to the newly created node
	   if( defined @affected ){
			$c->add_prop( "strarray_affectnum", $#affected + 1 );
			my $idx = 0;
			while( $idx <= $#affected ){
				$c->add_prop( "strarray_affect$idx", @affected[ $idx ] );
				++$idx;
			}
		}	   


   }

}

sub parse_code{
   if ($line =~ /^\s*code *(\w*)/) {
       my $c;                           # Contains the current class name
       $c = Ast->new($1);
       $c->add_prop("code_name" => $1);           
       $ROOT->add_prop_list("code_list", $c);
	   my @affected;

       while (get_line($fh)) {
           last if ($line =~ /^\s*\}/);
		   # hook
           if ($line =~ /^\s*hook\s*([^;]*);/) {
               $c->add_prop("code_hook" => $1);
           }
                   # code listing
           if ($line =~ /^\s*begincode/) {
               my $pccode = "\n";
               while (get_line($fh)) {
                   last if ($line =~ /^\s*\}endcode/);
                   $pccode .= $line;
               }
               $c->add_prop("code_source" => $pccode);
           }               
       }
       #add the affected attributes list to the newly created node
       if( defined @affected ){
           $c->add_prop( "code_affectnum", $#affected + 1 );
           my $idx = 0;
           while( $idx <= $#affected ){
               $c->add_prop( "code_affect$idx", @affected[ $idx ] );
               ++$idx;
           }
       }	   
   }
}

sub printout{
	$ROOT->print( );
}

1;
