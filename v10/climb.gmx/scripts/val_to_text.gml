/// val_to_text(val,type);

/// 0 = percentage, 1 = toggle

if (argument[1])
    {
    if (argument[0] < 0.5)
        return("OFF");
    else
        return("ON");
    }
else
    return(string(argument[0]*100)+"%");
