/// map_wipe();

for(var j=0; j<level_height; j++;)
    {
    for(var i=0; i<level_width; i++;)
        {
        var inst = level_object[#i,j];
        if (instance_exists(inst))
            {
            if (inst.object_index == obj_control)
                show_debug_message("FUCK!");
            else
                {
                with(inst)
                    instance_destroy();
                }
            }
        }
    }

ds_grid_clear(level_data,tile_id[?"empty"]);
ds_grid_clear(level_object,noone);
ds_list_clear(level_logic);
ds_list_clear(level_logic_objects);
ds_list_clear(logic_active_inputs);
ds_list_clear(logic_active_outputs);
