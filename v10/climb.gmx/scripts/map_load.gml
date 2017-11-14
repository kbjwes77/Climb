/// map_load(filepath);

var fname = argument[0];

if (file_exists(fname))
    {
    show_debug_message(string(fname)+" successfully loaded!");
    
    with(par_entity)
        instance_destroy();
    with(par_gameobject)
        instance_destroy();
    with(par_ui)
        instance_destroy();
    
    var file = file_text_open_read(fname);
    level_width = file_text_read_real(file);
    file_text_readln(file);
    level_height = file_text_read_real(file);
    file_text_readln(file);
    
    ds_grid_resize(level_data,level_width,level_height);
    ds_grid_clear(level_data,tile[?"empty"]);
    ds_grid_resize(level_object,level_width,level_height);
    ds_grid_clear(level_object,noone);
    ds_list_read(level_logic,file_text_read_string(file));
    file_text_readln(file);
    
    for (var j=0; j<level_height; j++)
        {
        for (var i=0; i<level_width; i++)
            {
            var load_id = file_text_read_real(file);
            var load_name = tile_name[?load_id];
            file_text_readln(file);
            
            level_data[#i,j] = load_id;
            if (load_name != "empty")
                {
                var obj_index = tile[?load_name];
                var inst = instance_create(i*32,j*32,obj_index);
                level_object[#i,j] = inst;
                
                if (load_name != "wall")
                    {
                    ds_map_read(inst.data,file_text_read_string(file));
                    file_text_readln(file);
                    
                    if (inst.logic_input_enabled)
                        ds_list_add(logic_active_inputs,inst);
                    if (inst.logic_output_enabled)
                        ds_list_add(logic_active_outputs,inst);
                    }
                }
            }
        }
    file_text_close(file);
    }

// link logic
var size = ds_list_size(level_logic)/5;
for (var i=0; i<size; i++)
    {
    var obj_out = level_object[#level_logic[|i*5+0],level_logic[|i*5+1]];
    var obj_in = level_object[#level_logic[|i*5+2],level_logic[|i*5+3]];
    var prop = level_logic[|i*5+4];
    
    // store the new link
    ds_map_replace(obj_in.input_map,prop,obj_out);
    
    // store runtime objects
    ds_list_add(level_logic_objects,obj_out,obj_in);
    }

// update entities
with (par_entity)
    event_user(0);
