/// keybind_default(slot);

var _slot = argument[0];

if (_slot == 0)
    {
    global.keybind[?"kb_up_type"]       = 0;
    global.keybind[?"kb_up"]            = ord("W");
    global.keybind[?"kb_down_type"]     = 0;
    global.keybind[?"kb_down"]          = ord("S");
    global.keybind[?"kb_left_type"]     = 0;
    global.keybind[?"kb_left"]          = ord("A");
    global.keybind[?"kb_right_type"]    = 0
    global.keybind[?"kb_right"]         = ord("D");
    global.keybind[?"kb_sprint_type"]   = 0;
    global.keybind[?"kb_sprint"]        = vk_shift;
    global.keybind[?"kb_jump_type"]     = 0;
    global.keybind[?"kb_jump"]          = vk_space;
    global.keybind[?"kb_activate_type"] = 0;
    global.keybind[?"kb_activate"]      = ord("E");
    global.keybind[?"kb_start_type"]    = 0;
    global.keybind[?"kb_start"]         = vk_enter;
    }
else
    {
    global.keybind[?"gp"+string(_slot)+"_up_type"]          = 0;
    global.keybind[?"gp"+string(_slot)+"_up"]               = gp_padu;
    global.keybind[?"gp"+string(_slot)+"_down_type"]        = 0;
    global.keybind[?"gp"+string(_slot)+"_down"]             = gp_padd;
    global.keybind[?"gp"+string(_slot)+"_left_type"]        = 0;
    global.keybind[?"gp"+string(_slot)+"_left"]             = gp_padl;
    global.keybind[?"gp"+string(_slot)+"_right_type"]       = 0
    global.keybind[?"gp"+string(_slot)+"_right"]            = gp_padr;
    global.keybind[?"gp"+string(_slot)+"_sprint_type"]      = 0;
    global.keybind[?"gp"+string(_slot)+"_sprint"]           = gp_face3;
    global.keybind[?"gp"+string(_slot)+"_jump_type"]        = 0;
    global.keybind[?"gp"+string(_slot)+"_jump"]             = gp_face1;
    global.keybind[?"gp"+string(_slot)+"_activate_type"]    = 0;
    global.keybind[?"gp"+string(_slot)+"_activate"]         = gp_face2;
    global.keybind[?"gp"+string(_slot)+"_start_type"]       = 0;
    global.keybind[?"gp"+string(_slot)+"_start"]            = gp_start;
    }
