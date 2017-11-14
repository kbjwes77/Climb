/// property_update(name);

if (input_map[?argument[0]] == noone)
    {
    return data[?argument[0]];
    }
else
    {
    return input_map[?argument[0]].logic_output;
    }
