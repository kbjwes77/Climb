/// map_resize(w,h);

var prev_width = level_width;
var prev_height = level_height;

var temp_data = ds_grid_create(level_width,level_height);
ds_grid_copy(temp_data,level_data);
var temp_object = ds_grid_create(level_width,level_height);
ds_grid_copy(temp_object,level_object);

level_width = max(4,argument[0]);
level_height = max(4,argument[1]);

for(var i=0; i<prev_width; i++;)
    {
    for(var j=0; j<prev_height; j++;)
        {
        if (i > level_width-1) or (j > level_height-1)
            {
            if (instance_exists(level_object[#i,j]))
                {
                with(level_object[#i,j])
                    instance_destroy();
                }
            }
        }
    }

ds_grid_resize(level_data,level_width,level_height);
ds_grid_clear(level_data,tile_id[?"empty"]);
ds_grid_resize(level_object,level_width,level_height);
ds_grid_clear(level_object,noone);

for(var i=0; i<min(prev_width,level_width); i++;)
    {
    for(var j=0; j<min(prev_height,level_height); j++;)
        {
        level_data[#i,j] = temp_data[#i,j];
        level_object[#i,j] = temp_object[#i,j];
        }
    }

ds_grid_destroy(temp_data);
ds_grid_destroy(temp_object);
