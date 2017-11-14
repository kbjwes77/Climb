/// keybind_load();

// global.keybind[kb_input] = keyboard
// global.keybind[kb_input_type] = [0 = button, 1 = mouse]
// global.keybind[gp[0-3]_input] = gamepads
// global.keybind[gp[0-3]_input_type] = [-1 = -axis, +1 = +axis, 0 = button]

if !(variable_global_exists("keybind"))
    global.keybind = -1;

if !(ds_exists(global.keybind,ds_type_map))
    global.keybind = ds_map_create();

if (file_exists(working_directory+"keybind.ini"))
    {
    var file = file_text_open_read(working_directory+"keybind.ini");
    
    ds_map_read(global.keybind,file_text_read_string(file));
    
    file_text_close(file);
    }
else
    {
    global.keybind[?"kb_up_type"]           = 0;
    global.keybind[?"kb_up"]                = ord("W");
    global.keybind[?"kb_down_type"]         = 0;
    global.keybind[?"kb_down"]              = ord("S");
    global.keybind[?"kb_left_type"]         = 0;
    global.keybind[?"kb_left"]              = ord("A");
    global.keybind[?"kb_right_type"]        = 0
    global.keybind[?"kb_right"]             = ord("D");
    global.keybind[?"kb_sprint_type"]       = 0;
    global.keybind[?"kb_sprint"]            = vk_shift;
    global.keybind[?"kb_jump_type"]         = 0;
    global.keybind[?"kb_jump"]              = vk_space;
    global.keybind[?"kb_activate_type"]     = 0;
    global.keybind[?"kb_activate"]          = ord("F");
    global.keybind[?"kb_start_type"]        = 0;
    global.keybind[?"kb_start"]             = vk_enter;
    global.keybind[?"kb_shoot_left_type"]   = 0;
    global.keybind[?"kb_shoot_left"]        = ord("Q");
    global.keybind[?"kb_shoot_right_type"]  = 0;
    global.keybind[?"kb_shoot_right"]       = ord("E");
    
    for(var i=0; i<4; i++;)
        {
        global.keybind[?"gp"+string(i)+"_up_type"]          = 0;
        global.keybind[?"gp"+string(i)+"_up"]               = gp_padu;
        global.keybind[?"gp"+string(i)+"_down_type"]        = 0;
        global.keybind[?"gp"+string(i)+"_down"]             = gp_padd;
        global.keybind[?"gp"+string(i)+"_left_type"]        = 0;
        global.keybind[?"gp"+string(i)+"_left"]             = gp_padl;
        global.keybind[?"gp"+string(i)+"_right_type"]       = 0
        global.keybind[?"gp"+string(i)+"_right"]            = gp_padr;
        global.keybind[?"gp"+string(i)+"_sprint_type"]      = 0;
        global.keybind[?"gp"+string(i)+"_sprint"]           = gp_face3;
        global.keybind[?"gp"+string(i)+"_jump_type"]        = 0;
        global.keybind[?"gp"+string(i)+"_jump"]             = gp_face1;
        global.keybind[?"gp"+string(i)+"_activate_type"]    = 0;
        global.keybind[?"gp"+string(i)+"_activate"]         = gp_face2;
        global.keybind[?"gp"+string(i)+"_start_type"]       = 0;
        global.keybind[?"gp"+string(i)+"_start"]            = gp_start;
        global.keybind[?"gp"+string(i)+"_shoot_left_type"]  = 0;
        global.keybind[?"gp"+string(i)+"_shoot_left"]       = gp_shoulderl;
        global.keybind[?"gp"+string(i)+"_shoot_right_type"] = 0;
        global.keybind[?"gp"+string(i)+"_shoot_right"]      = gp_shoulderr;
        }
    }

for(var i=0; i<5; i++;)
    global.deadzone[i] = 0.1;
