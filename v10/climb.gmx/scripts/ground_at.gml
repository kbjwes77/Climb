/// ground_at(x,y);

if (place_meeting(argument[0],argument[1],obj_gamewall))
    return(true);

var collide;
collide[0] = instance_position(argument[0]-16,argument[1]-16,par_entity_collider);
collide[1] = instance_position(argument[0]+15,argument[1]-16,par_entity_collider);
collide[2] = instance_position(argument[0]-16,argument[1]+15,par_entity_collider);
collide[3] = instance_position(argument[0]+15,argument[1]+15,par_entity_collider);

for(var i=0; i<4; i++;)
    {
    if (collide[i] != noone)
        {
        switch((collide[i]).object_index)
            {
            case obj_passwall:
                if ((collide[i]).data[?"rot"] == 1) and (bbox_bottom < (collide[i]).bbox_top)
                    return(true);
                break;
            
            case obj_door:
                if !((collide[i]).image_index)
                    return(true);
                break;
            }
        }
    }

return(false);
