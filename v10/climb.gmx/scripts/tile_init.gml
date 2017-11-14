/// tile_init(name,obj,sprite,group,id);

ds_list_add(tile_list,argument[0]);
ds_map_add(tile,argument[0],argument[1]);
ds_map_add(tile_spr,argument[0],argument[2]);
ds_map_add(tile_group,argument[0],argument[3]);
ds_map_add(tile_name,argument[4],argument[0]);
ds_map_add(tile_id,argument[0],argument[4]);

tile_size++;
