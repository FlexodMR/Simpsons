:: Double Colons denote comments in DOS batch files

breakablesmaker -o l7_FireHydrant_breakable.p3d -i 1 -t 3 firehydrant.p3d
breakablesmaker -o l7_treecypress_breakable.p3d -i 1 -t 20 treecypress.p3d
breakablesmaker -o l7_treeevermed_breakable.p3d -i 1 -t 14 fx_evergreen.p3d
breakablesmaker -o l7_treesm_breakable.p3d 	-i 3 -t 15 oaktree.p3d
breakablesmaker -o l7_treesmdead_breakable.p3d 	-i 1 -t 21 deadtree.p3d
breakablesmaker -o l7r6_tomacco_breakable.p3d	-i 3 -t 8 tomaco.p3d
breakablesmaker -o l7_krustyglass_breakable.p3d -i 1 -t 19 l7_krustyglass_fx.p3d
breakablesmaker -o l7_skeleton_breakable.p3d    -i 1 -t 22 skeleton_break.p3d
breakablesmaker -o l7_stopsign_breakable.p3d    -i 1 -t 29 l7_stopsign_effect.p3d

breakablesmaker -o l7_pumpkin_breakable.p3d    	  -i 1 -t 30 l7_pumpkin_effect.p3d
breakablesmaker -o l7_pumpkinmed_breakable.p3d    -i 1 -t 31 l7_pumpkin_med_effect.p3d
breakablesmaker -o l7_pumpkinsma_breakable.p3d    -i 1 -t 32 l7_pumpkin_sma_effect.p3d

p3dimage -L -50 l7_treecypress_breakable.p3d -o l7_treecypress_breakable.p3d 
p3dimage -L -50 l7_treeevermed_breakable.p3d -o l7_treeevermed_breakable.p3d 
p3dimage -L -50 l7_treesm_breakable.p3d 	-o l7_treesm_breakable.p3d 	
p3dimage -L -50 l7_treesmdead_breakable.p3d 	-o l7_treesmdead_breakable.p3d 	
p3dimage -L -50 l7r6_tomacco_breakable.p3d	-o l7r6_tomacco_breakable.p3d	
