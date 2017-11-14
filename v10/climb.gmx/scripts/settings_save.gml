/// settings_save();

var file = file_text_open_write(working_directory+"settings.ini");

file_text_write_real(file,global.fullscreen);
file_text_writeln(file);
file_text_write_real(file,global.screenshake);
file_text_writeln(file);
file_text_write_real(file,global.sfx_volume);
file_text_writeln(file);
file_text_write_real(file,global.bgm_volume);

file_text_close(file);
