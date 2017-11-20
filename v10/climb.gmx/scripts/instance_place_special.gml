///instance_place_special(x, y, obj)

if (place_meeting(argument[0],argument[1],obj_gamewall))
    {
    return(true);
    }

var obj = instance_place(argument[0],argument[1],argument[2]);
if (obj != noone)
    {
    switch(obj.object_index)
        {
        case obj_passwall:
            switch (obj.data[?"rot"])
                {
                case 0: return (bbox_left > obj.bbox_right); break;
                case 1: return (bbox_bottom < obj.bbox_top); break;
                case 2: return (bbox_right < obj.bbox_left); break;
                case 3: return (bbox_top > obj.bbox_bottom); break;
                default: return false;
                }
            break;
        case obj_door:
            return !obj.image_index;
            break;
        default:
            return true;
            break;
        }

    return true;
    }
else
    {
    return false;
    }
