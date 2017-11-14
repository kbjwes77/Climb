/// settings_load();

if (file_exists(working_directory+"settings.ini"))
    {
    var file = file_text_open_read(working_directory+"settings.ini");
    
    global.fullscreen = file_text_read_real(file);
    file_text_readln(file);
    global.screenshake = file_text_read_real(file);
    file_text_readln(file);
    global.sfx_volume = file_text_read_real(file);
    file_text_readln(file);
    global.bgm_volume = file_text_read_real(file);
    file_text_readln(file);
    global.button_style = file_text_read_real(file);
    
    file_text_close(file);
    }
else
    {
    global.fullscreen = false;
    global.screenshake = 1.0;
    global.sfx_volume = 0.75;
    global.bgm_volume = 0.75;
    global.button_style = 1;
    }
