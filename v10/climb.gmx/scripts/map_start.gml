/// map_start();

// starts a map thats ready to play

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
        keybind_set(false);
    }
with(obj_enemy_spawn)
    {
    var object_id = asset_get_index(string(data[?"enemy"]));
    if (object_id > -1)
        instance_create(x+16,y+16,object_id);
    }
instance_create(0,0,obj_view);
