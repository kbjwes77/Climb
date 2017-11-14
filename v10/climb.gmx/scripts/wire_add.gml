/// wire_add();

// uses (wire_x1,wire_y1) to create a wire to (wire_x2,wire_y2)

var wire_out = level_object[#wire_x1,wire_y1];
var wire_in  = level_object[#wire_x2,wire_y2];

var size = ds_map_size(wire_in.input_map);
if (size == 1)
    {
    // single property to link to
    var key = ds_map_find_first(wire_in.input_map);
    if (wire_in.input_map[?key] == noone)
        {
        wire_in.input_map[?key] = wire_out;
        ds_list_add(level_logic,wire_x1,wire_y1,wire_x2,wire_y2,key);
        ds_list_add(level_logic_objects,wire_out,wire_in);
        
        with(par_entity)
            event_user(0);
        }
    }
else
    {
    // multiple properties, create a listbox to select one to wire to
    var listbox = instance_create(wire_in.x,wire_in.y,obj_listbox_wire);
    
    var key = ds_map_find_first(wire_in.input_map);
    for(var i=0; i<size; i++;)
        {
        if (wire_in.input_map[?key] == noone)
            ds_list_add(listbox.list,key);
        
        key = ds_map_find_next(wire_in.input_map,key);
        }
    
    listbox.mode = edit_mode;
    listbox.parent = wire_in;
    listbox.wire_root = wire_out;
    listbox.wire_x1 = wire_x1;
    listbox.wire_y1 = wire_y1;
    listbox.wire_x2 = wire_x2;
    listbox.wire_y2 = wire_y2;
    }
