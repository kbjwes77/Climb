/// keybind_save();

var file = file_text_open_write(working_directory+"keybind.ini");

file_text_write_string(file,ds_map_write(global.keybind));

file_text_close(file);
