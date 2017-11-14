/// gp_button_pressed_any(button);

return(gamepad_button_check_pressed(0,argument[0]) or gamepad_button_check_pressed(1,argument[0])
    or gamepad_button_check_pressed(2,argument[0]) or gamepad_button_check_pressed(3,argument[0]));
