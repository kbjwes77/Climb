/// keybind_check();

var dz = global.deadzone[slot];

input_up_pressed            = false;
input_down_pressed          = false;
input_left_pressed          = false;
input_right_pressed         = false;
input_sprint_pressed        = false;
input_jump_pressed          = false;
input_activate_pressed      = false;
input_start_pressed         = false;
input_shoot_left_pressed    = false;
input_shoot_right_pressed   = false;

input_up_released          = false;
input_down_released        = false;
input_left_released        = false;
input_right_released       = false;
input_sprint_released      = false;
input_jump_released        = false;
input_activate_released    = false;
input_start_released       = false;
input_shoot_left_released  = false;
input_shoot_right_released = false;

if (global.keybind[?"gp"+string(slot)+"_up_type"] == 0)
    {
    input_up            = gamepad_button_check(slot,global.keybind[?"gp"+string(slot)+"_up"]);
    input_up_pressed    = gamepad_button_check_pressed(slot,global.keybind[?"gp"+string(slot)+"_up"]);
    input_up_released   = gamepad_button_check_released(slot,global.keybind[?"gp"+string(slot)+"_up"]);
    }
else
    {
    input_up_last = input_up;
    input_up = gamepad_axis_value(slot,global.keybind[?"gp"+string(slot)+"_up"]);
    
    var axis_sign = (global.keybind[?"gp"+string(slot)+"_up_type"] > 0);
    if ( axis_sign and input_up_last < +dz and input_up >= +dz)
    or (!axis_sign and input_up_last >= -dz and input_up < -dz)
        input_up_pressed = true;
    if ( axis_sign and input_up_last >= +dz and input_up < +dz)
    or (!axis_sign and input_up_last < -dz and input_up >= -dz)
        input_up_released = true;
    }

if (global.keybind[?"gp"+string(slot)+"_down_type"] == 0)
    {
    input_down            = gamepad_button_check(slot,global.keybind[?"gp"+string(slot)+"_down"]);
    input_down_pressed    = gamepad_button_check_pressed(slot,global.keybind[?"gp"+string(slot)+"_down"]);
    input_down_released   = gamepad_button_check_released(slot,global.keybind[?"gp"+string(slot)+"_down"]);
    }
else
    {
    input_down_last = input_down;
    input_down = gamepad_axis_value(slot,global.keybind[?"gp"+string(slot)+"_down"]);
    
    var axis_sign = (global.keybind[?"gp"+string(slot)+"_down_type"] > 0);
    if ( axis_sign and input_down_last < +dz and input_down >= +dz)
    or (!axis_sign and input_down_last >= -dz and input_down < -dz)
        input_down_pressed = true;
    if ( axis_sign and input_down_last >= +dz and input_down < +dz)
    or (!axis_sign and input_down_last < -dz and input_down >= -dz)
        input_down_released = true;
    }

if (global.keybind[?"gp"+string(slot)+"_left_type"] == 0)
    {
    input_left            = gamepad_button_check(slot,global.keybind[?"gp"+string(slot)+"_left"]);
    input_left_pressed    = gamepad_button_check_pressed(slot,global.keybind[?"gp"+string(slot)+"_left"]);
    input_left_released   = gamepad_button_check_released(slot,global.keybind[?"gp"+string(slot)+"_left"]);
    }
else
    {
    input_left_last = input_left;
    input_left = gamepad_axis_value(slot,global.keybind[?"gp"+string(slot)+"_left"]);
    
    var axis_sign = (global.keybind[?"gp"+string(slot)+"_left_type"] > 0);
    if ( axis_sign and input_left_last < +dz and input_left >= +dz)
    or (!axis_sign and input_left_last >= -dz and input_left < -dz)
        input_left_pressed = true;
    if ( axis_sign and input_left_last >= +dz and input_left < +dz)
    or (!axis_sign and input_left_last < -dz and input_left >= -dz)
        input_left_released = true;
    }

if (global.keybind[?"gp"+string(slot)+"_right_type"] == 0)
    {
    input_right            = gamepad_button_check(slot,global.keybind[?"gp"+string(slot)+"_right"]);
    input_right_pressed    = gamepad_button_check_pressed(slot,global.keybind[?"gp"+string(slot)+"_right"]);
    input_right_released   = gamepad_button_check_released(slot,global.keybind[?"gp"+string(slot)+"_right"]);
    }
else
    {
    input_right_last = input_right;
    input_right = gamepad_axis_value(slot,global.keybind[?"gp"+string(slot)+"_right"]);
    
    var axis_sign = (global.keybind[?"gp"+string(slot)+"_right_type"] > 0);
    if ( axis_sign and input_right_last < +dz and input_right >= +dz)
    or (!axis_sign and input_right_last >= -dz and input_right < -dz)
        input_right_pressed = true;
    if ( axis_sign and input_right_last >= +dz and input_right < +dz)
    or (!axis_sign and input_right_last < -dz and input_right >= -dz)
        input_right_released = true;
    }

if (global.keybind[?"gp"+string(slot)+"_sprint_type"] == 0)
    {
    input_sprint            = gamepad_button_check(slot,global.keybind[?"gp"+string(slot)+"_sprint"]);
    input_sprint_pressed    = gamepad_button_check_pressed(slot,global.keybind[?"gp"+string(slot)+"_sprint"]);
    input_sprint_released   = gamepad_button_check_released(slot,global.keybind[?"gp"+string(slot)+"_sprint"]);
    }
else
    {
    input_sprint_last = input_sprint;
    input_sprint = gamepad_axis_value(slot,global.keybind[?"gp"+string(slot)+"_sprint"]);
    
    var axis_sign = (global.keybind[?"gp"+string(slot)+"_sprint_type"] > 0);
    if ( axis_sign and input_sprint_last < +dz and input_sprint >= +dz)
    or (!axis_sign and input_sprint_last >= -dz and input_sprint < -dz)
        input_sprint_pressed = true;
    if ( axis_sign and input_sprint_last >= +dz and input_sprint < +dz)
    or (!axis_sign and input_sprint_last < -dz and input_sprint >= -dz)
        input_sprint_released = true;
    }

if (global.keybind[?"gp"+string(slot)+"_jump_type"] == 0)
    {
    input_jump            = gamepad_button_check(slot,global.keybind[?"gp"+string(slot)+"_jump"]);
    input_jump_pressed    = gamepad_button_check_pressed(slot,global.keybind[?"gp"+string(slot)+"_jump"]);
    input_jump_released   = gamepad_button_check_released(slot,global.keybind[?"gp"+string(slot)+"_jump"]);
    }
else
    {
    input_jump_last = input_jump;
    input_jump = gamepad_axis_value(slot,global.keybind[?"gp"+string(slot)+"_jump"]);
    
    var axis_sign = (global.keybind[?"gp"+string(slot)+"_jump_type"] > 0);
    if ( axis_sign and input_jump_last < +dz and input_jump >= +dz)
    or (!axis_sign and input_jump_last >= -dz and input_jump < -dz)
        input_jump_pressed = true;
    if ( axis_sign and input_jump_last >= +dz and input_jump < +dz)
    or (!axis_sign and input_jump_last < -dz and input_jump >= -dz)
        input_jump_released = true;
    }

if (global.keybind[?"gp"+string(slot)+"_activate_type"] == 0)
    {
    input_activate            = gamepad_button_check(slot,global.keybind[?"gp"+string(slot)+"_activate"]);
    input_activate_pressed    = gamepad_button_check_pressed(slot,global.keybind[?"gp"+string(slot)+"_activate"]);
    input_activate_released   = gamepad_button_check_released(slot,global.keybind[?"gp"+string(slot)+"_activate"]);
    }
else
    {
    input_activate_last = input_activate;
    input_activate = gamepad_axis_value(slot,global.keybind[?"gp"+string(slot)+"_activate"]);
    
    var axis_sign = (global.keybind[?"gp"+string(slot)+"_activate_type"] > 0);
    if ( axis_sign and input_activate_last < +dz and input_activate >= +dz)
    or (!axis_sign and input_activate_last >= -dz and input_activate < -dz)
        input_activate_pressed = true;
    if ( axis_sign and input_activate_last >= +dz and input_activate < +dz)
    or (!axis_sign and input_activate_last < -dz and input_activate >= -dz)
        input_activate_released = true;
    }

if (global.keybind[?"gp"+string(slot)+"_start_type"] == 0)
    {
    input_start             = gamepad_button_check(slot,global.keybind[?"gp"+string(slot)+"_start"]);
    input_start_pressed     = gamepad_button_check_pressed(slot,global.keybind[?"gp"+string(slot)+"_start"]);
    input_start_released    = gamepad_button_check_released(slot,global.keybind[?"gp"+string(slot)+"_start"]);
    }
else
    {
    input_start_last = input_start;
    input_start = gamepad_axis_value(slot,global.keybind[?"gp"+string(slot)+"_start"]);
    
    var axis_sign = (global.keybind[?"gp"+string(slot)+"_start_type"] > 0);
    if ( axis_sign and input_start_last < +dz and input_start >= +dz)
    or (!axis_sign and input_start_last >= -dz and input_start < -dz)
        input_start_pressed = true;
    if ( axis_sign and input_start_last >= +dz and input_start < +dz)
    or (!axis_sign and input_start_last < -dz and input_start >= -dz)
        input_start_released = true;
    }
    
if (global.keybind[?"gp"+string(slot)+"_shoot_left_type"] == 0)
    {
    input_shoot_left             = gamepad_button_check(slot,global.keybind[?"gp"+string(slot)+"_shoot_left"]);
    input_shoot_left_pressed     = gamepad_button_check_pressed(slot,global.keybind[?"gp"+string(slot)+"_shoot_left"]);
    input_shoot_left_released    = gamepad_button_check_released(slot,global.keybind[?"gp"+string(slot)+"_shoot_left"]);
    }
else
    {
    input_shoot_left_last = input_shoot_left;
    input_shoot_left = gamepad_axis_value(slot,global.keybind[?"gp"+string(slot)+"_shoot_left"]);
    
    var axis_sign = (global.keybind[?"gp"+string(slot)+"_shoot_left"] > 0);
    if ( axis_sign and input_shoot_left_last < +dz and input_shoot_left >= +dz)
    or (!axis_sign and input_shoot_left_last >= -dz and input_shoot_left < -dz)
        input_shoot_left_pressed = true;
    if ( axis_sign and input_shoot_left_last >= +dz and input_shoot_left < +dz)
    or (!axis_sign and input_shoot_left_last < -dz and input_shoot_left >= -dz)
        input_shoot_left_released = true;
    }
    
if (global.keybind[?"gp"+string(slot)+"_shoot_right_type"] == 0)
    {
    input_shoot_right             = gamepad_button_check(slot,global.keybind[?"gp"+string(slot)+"_shoot_right"]);
    input_shoot_right_pressed     = gamepad_button_check_pressed(slot,global.keybind[?"gp"+string(slot)+"_shoot_right"]);
    input_shoot_right_released    = gamepad_button_check_released(slot,global.keybind[?"gp"+string(slot)+"_shoot_right"]);
    }
else
    {
    input_shoot_right_last = input_shoot_right;
    input_shoot_right = gamepad_axis_value(slot,global.keybind[?"gp"+string(slot)+"_shoot_right"]);
    
    var axis_sign = (global.keybind[?"gp"+string(slot)+"_shoot_right"] > 0);
    if ( axis_sign and input_shoot_right_last < +dz and input_shoot_right >= +dz)
    or (!axis_sign and input_shoot_right_last >= -dz and input_shoot_right < -dz)
        input_shoot_right_pressed = true;
    if ( axis_sign and input_shoot_right_last >= +dz and input_shoot_right < +dz)
    or (!axis_sign and input_shoot_right_last < -dz and input_shoot_right >= -dz)
        input_shoot_right_released = true;
    }

if (slot == 0)
    {
    input_up                = input_up                  or keyboard_check(global.keybind[?"kb_up"]);
    input_up_pressed        = input_up_pressed          or keyboard_check_pressed(global.keybind[?"kb_up"]);
    input_up_released       = input_up_released         or keyboard_check_released(global.keybind[?"kb_up"]);
    
    input_down              = input_down                or keyboard_check(global.keybind[?"kb_down"]);
    input_down_pressed      = input_down_pressed        or keyboard_check_pressed(global.keybind[?"kb_down"]);
    input_down_released     = input_down_released       or keyboard_check_released(global.keybind[?"kb_down"]);
    
    input_left              = input_left                or keyboard_check(global.keybind[?"kb_left"]);
    input_left_pressed      = input_left_pressed        or keyboard_check_pressed(global.keybind[?"kb_left"]);
    input_left_released     = input_left_released       or keyboard_check_released(global.keybind[?"kb_left"]);
    
    input_right             = input_right               or keyboard_check(global.keybind[?"kb_right"]);
    input_right_pressed     = input_right_pressed       or keyboard_check_pressed(global.keybind[?"kb_right"]);
    input_right_released    = input_right_released      or keyboard_check_released(global.keybind[?"kb_right"]);
    
    input_sprint            = input_sprint              or keyboard_check(global.keybind[?"kb_sprint"]);
    input_sprint_pressed    = input_sprint_pressed      or keyboard_check_pressed(global.keybind[?"kb_sprint"]);
    input_sprint_released   = input_sprint_released     or keyboard_check_released(global.keybind[?"kb_sprint"]);
    
    input_jump              = input_jump                or keyboard_check(global.keybind[?"kb_jump"]);
    input_jump_pressed      = input_jump_pressed        or keyboard_check_pressed(global.keybind[?"kb_jump"]);
    input_jump_released     = input_jump_released       or keyboard_check_released(global.keybind[?"kb_jump"]);
    
    input_activate          = input_activate            or keyboard_check(global.keybind[?"kb_activate"]);
    input_activate_pressed  = input_activate_pressed    or keyboard_check_pressed(global.keybind[?"kb_activate"]);
    input_activate_released = input_activate_released   or keyboard_check_released(global.keybind[?"kb_activate"]);
    
    input_start             = input_start               or keyboard_check(global.keybind[?"kb_start"]);
    input_start_pressed     = input_start_pressed       or keyboard_check_pressed(global.keybind[?"kb_start"]);
    input_start_released    = input_start_released      or keyboard_check_released(global.keybind[?"kb_start"]);
    
    input_shoot_left            = input_shoot_left          or keyboard_check(global.keybind[?"kb_shoot_left"]);
    input_shoot_left_pressed    = input_shoot_left_pressed  or keyboard_check_pressed(global.keybind[?"kb_shoot_left"]);
    input_shoot_left_released   = input_shoot_left_released or keyboard_check_released(global.keybind[?"kb_shoot_left"]);
    
    input_shoot_right            = input_shoot_right          or keyboard_check(global.keybind[?"kb_shoot_right"]);
    input_shoot_right_pressed    = input_shoot_right_pressed  or keyboard_check_pressed(global.keybind[?"kb_shoot_right"]);
    input_shoot_right_released   = input_shoot_right_released or keyboard_check_released(global.keybind[?"kb_shoot_right"]);
    }

return(true);
