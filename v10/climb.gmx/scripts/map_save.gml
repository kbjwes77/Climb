/// map_save(filepath);

// save game
var fname = argument[0];

if (file_exists(fname))
    file_delete(fname);

var file = file_text_open_write(fname);
file_text_write_real(file,level_width);
file_text_writeln(file);
file_text_write_real(file,level_height);
file_text_writeln(file);
file_text_write_string(file,ds_list_write(level_logic));
file_text_writeln(file);

for (var j=0; j<level_height; j++;)
    {
    for (var i=0; i<level_width; i++;)
        {
        if (level_data[#i,j] == tile_id[?"empty"])
            {
            file_text_write_real(file,tile_id[?"empty"]);
            file_text_writeln(file);
            }
        else
            {
            var inst = level_object[#i,j];
            if (object_is_ancestor(inst.object_index,par_entity))
                {
                var save_id = level_data[#i,j];
                file_text_write_real(file,save_id);
                file_text_writeln(file);
                
                if (save_id != tile_id[?"wall"])
                    {
                    file_text_write_string(file,ds_map_write(inst.data));
                    file_text_writeln(file);
                    }
                }
            }
        }
    }

file_text_close(file);

show_debug_message(string(fname)+" successfully saved!");
