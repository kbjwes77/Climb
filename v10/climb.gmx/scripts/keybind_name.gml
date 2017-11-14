/// keybind_name(name);

var _input      = string(argument[0]);
var _input_type = string(argument[0])+"_type";

if (global.keybind[?_input_type] == 0)
    {
    switch(global.keybind[?_input])
        {
        case gp_face1: return("A"); break;
        case gp_face2: return("B"); break;
        case gp_face3: return("X"); break;
        case gp_face4: return("Y"); break;
        case gp_padu: return("D-PAD UP"); break;
        case gp_padd: return("D-PAD DOWN"); break;
        case gp_padl: return("D-PAD LEFT"); break;
        case gp_padr: return("D-PAD RIGHT"); break;
        case gp_shoulderlb: return("LB"); break;
        case gp_shoulderrb: return("RB"); break;
        case gp_shoulderl: return("LT"); break;
        case gp_shoulderr: return("RT"); break;
        case gp_stickl: return("LEFT STICK CLICK"); break;
        case gp_stickr: return("RIGHT STICK CLICK"); break;
        case gp_select: return("BACK"); break;
        case gp_start: return("START"); break;
        
        case vk_space: return("SPACEBAR"); break;
        case vk_shift: case 160: case 161: return("SHIFT"); break;
        case vk_control: case 163: return("CONTROL"); break;
        case vk_left: return("LEFT"); break;
        case vk_up: return("UP"); break;
        case vk_right: return("RIGHT"); break;
        case vk_down: return("DOWN"); break;
        case vk_numpad0: return("NUM0"); break;
        case vk_numpad1: return("NUM1"); break;
        case vk_numpad2: return("NUM2"); break;
        case vk_numpad3: return("NUM3"); break;
        case vk_numpad4: return("NUM4"); break;
        case vk_numpad5: return("NUM5"); break;
        case vk_numpad6: return("NUM6"); break;
        case vk_numpad7: return("NUM7"); break;
        case vk_numpad8: return("NUM8"); break;
        case vk_numpad9: return("NUM9"); break;
        default: return(string_upper(string(chr(global.keybind[?_input])))); break;
        }
    }
else if (global.keybind[?_input_type] == -1)
    {
    switch(global.keybind[?_input])
        {
        case gp_axislh: return("LEFT STICK LEFT"); break;
        case gp_axislv: return("LEFT STICK UP"); break;
        case gp_axisrh: return("RIGHT STICK LEFT"); break;
        case gp_axisrv: return("RIGHT STICK UP"); break;
        default: return("FUCK2"); break;
        }
    }
else if (global.keybind[?_input_type] == +1)
    {
    switch(global.keybind[?_input])
        {
        case gp_axislh: return("LEFT STICK RIGHT"); break;
        case gp_axislv: return("LEFT STICK DOWN"); break;
        case gp_axisrh: return("RIGHT STICK RIGHT"); break;
        case gp_axisrv: return("RIGHT STICK DOWN"); break;
        default: return("FUCK3"); break;
        }
    }

return("FUCK4");
