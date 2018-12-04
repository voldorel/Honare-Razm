// This function adjusts the whole final string, it reverses only the substrings in Persian.
var i, j, substring = "", inverse = "", result = "";

for (i = 0; i < string_length(argument0); i++)
{
    // Adding the character to the substring.
    substring += string_char_at(argument0, i + 1);

    if (i == string_length(argument0) - 1)
    {
        // End of the string.
        if (!is_persian_character(string_char_at(argument0, i + 1)))
            result = adjust_foreign_text(substring) + result;
        else
        {
            inverse = "";
            for (j = string_length(substring); j > 0; j--) inverse += string_char_at(substring, j);
            result = inverse + result;
        }
    }
    else
    {
        // Not the end of the string.
        if (!is_persian_character(string_char_at(argument0, i + 1)) && is_persian_character(string_char_at(argument0, i + 2)))
        {
            result = adjust_foreign_text(substring) + result;
            substring = "";
        }

        if (is_persian_character(string_char_at(argument0, i + 1)) && !is_persian_character(string_char_at(argument0, i + 2)))
        {
            inverse = "";
            for (j = string_length(substring); j > 0; j--) inverse += string_char_at(substring, j);
            result = inverse + result;
            substring = "";
        }
    }
}

return result;
