/// gp_button_released_any(button);

return(gamepad_button_check_released(0,argument[0]) or gamepad_button_check_released(1,argument[0])
    or gamepad_button_check_released(2,argument[0]) or gamepad_button_check_released(3,argument[0]));
