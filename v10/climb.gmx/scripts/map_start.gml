/// map_start();

// starts a map thats ready to play

var grid = obj_control.level_data;
var wall = obj_control.tile_id[?"wall"];
var ww = ds_grid_width(grid);
var hh = ds_grid_height(grid);

var first = noone;
var length = 0;
for (var j = 0; j < hh; j++)
    {
    for (var i = 0; i < ww; i++)
        {
        if (grid[#i,j] == wall)
            {
            if (length == 0)
                {
                var inst = instance_create(i*32,j*32,obj_gamewall);
                first = inst;
                length += 1;
                }
            else
                {
                first.image_xscale += 1;
                length += 1;
                }
            }
        else
            {
            if (length != 0)
                {
                length = 0;
                }
            }
        }
    length = 0;
    }


if (lava)
    {
    lava_y = level_height*32;
    lava_ind = 0;
    }

with(obj_player_spawn)
    {
    var inst = instance_create(x,y,obj_player);
    inst.player = data[?"player"];
    inst.slot = data[?"player"];
    switch (data[?"player"])
        {
        case 0:
            if (gamepad_is_connected(0))
                inst.image_blend = $50AF4C;
            break;
        case 1:
            if (gamepad_is_connected(1))
                inst.image_blend = $B5513F;
            break;
        case 2:
            if (gamepad_is_connected(2))
                inst.image_blend = $631EE9;
            break;
        case 3:
            if (gamepad_is_connected(3))
                inst.image_blend = $07C1FF;
            break;
        default:
            inst.image_blend = c_black;
            break;
        }
    
    with(inst)
        {
        keybind_set(false);
        }
    
    }
with(obj_enemy_spawn)
    {
    var object_id = asset_get_index(string(data[?"enemy"]));
    if (object_id > -1)
        {
        instance_create(x+16,y+16,object_id);
        }
    }
instance_create(0,0,obj_view);
