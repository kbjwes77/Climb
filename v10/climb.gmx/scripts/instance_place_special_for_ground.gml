///instance_place_special_for_ground(x, y, obj)

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
            return (obj.data[?"rot"] == 1) and (bbox_bottom <= obj.bbox_top);
            break;
        case obj_door:
            return !obj.image_index;
            break;
        default:
            return true;
            break;
        }
    }
else
    {
    return false;
    }
