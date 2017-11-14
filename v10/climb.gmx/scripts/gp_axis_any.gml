/// gp_axis_any(axis,min,max);

return((gamepad_axis_value(0,argument[0]) > argument[1] and gamepad_axis_value(0,argument[0]) <= argument[2])
    or (gamepad_axis_value(1,argument[0]) > argument[1] and gamepad_axis_value(1,argument[0]) <= argument[2])
    or (gamepad_axis_value(2,argument[0]) > argument[1] and gamepad_axis_value(2,argument[0]) <= argument[2])
    or (gamepad_axis_value(3,argument[0]) > argument[1] and gamepad_axis_value(3,argument[0]) <= argument[2]));
