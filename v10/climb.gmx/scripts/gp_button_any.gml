/// gp_button_any(button);

return(gamepad_button_check(0,argument[0]) or gamepad_button_check(1,argument[0])
    or gamepad_button_check(2,argument[0]) or gamepad_button_check(3,argument[0]));
