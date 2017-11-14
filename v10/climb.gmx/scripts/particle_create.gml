/// particle_create(x,y,xspeed,yspeed,sprite,index,big);

var inst = instance_create(argument[0],argument[1],obj_particle_sprite);

inst.xspeed = argument[2];
inst.yspeed = argument[3];
inst.sprite_index = argument[4];
inst.image_index = argument[5];

if (argument[6])
    {
    inst.mask_index = msk_particle_big;
    inst.size = 8;
    }
else
    {
    inst.mask_index = msk_particle_small;
    inst.size = 4;
    }

var sw = sprite_get_width(argument[4]);
var sh = sprite_get_height(argument[4]);
inst.sx = irandom(sw-(inst.size+1));
inst.sy = irandom(sh-(inst.size+1));
