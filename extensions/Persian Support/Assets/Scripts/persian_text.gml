///persian_text(string)
// This function does the whole letters' adjustment.
if (string_length(argument0) > 1)
{
    var i, intermed = "", result = "";

    // Fusing اللام and الألف.
    for (i = 0; i < string_length(argument0); i++)
    {
        if (string_char_at(argument0, i + 1) == chr(1604) && i < string_length(argument0) - 1) // Detecting اللام.
        switch (string_char_at(argument0, i + 2)) {
            case chr(1570) : intermed += chr(65269); break;
            case chr(1571) : intermed += chr(65271); break;
            case chr(1573) : intermed += chr(65273); break;
            case chr(1575) : intermed += chr(65275); break;
            default : intermed += chr(1604);
        }
        else
        if !((string_char_at(argument0, i + 1) == chr(1570) || string_char_at(argument0, i + 1) == chr(1571) ||
            string_char_at(argument0, i + 1) == chr(1573) || string_char_at(argument0, i + 1) == chr(1575)) && (i > 0 && string_char_at(argument0, i) == chr(1604)))
            intermed += string_char_at(argument0, i + 1);
    }

    for (i = 0; i < string_length(intermed); i++)
    {
        // If the character doesn't belong to the Arabic alphabet, add it right away.
        if (get_unicode(string_char_at(intermed, i + 1), 1) == -1) result += string_char_at(intermed, i + 1);
        else
        {
            // Fixing the first character in a word.
            if (i == 0 || (i > 0 && i != string_length(intermed) - 1 && get_unicode(string_char_at(intermed, i), 1) == -1))
            {
                if (!get_unicode(string_char_at(intermed, i + 1), 2))
                    result += chr(get_unicode(string_char_at(intermed, i + 1), 1));
                    else
                    if ((get_unicode(string_char_at(intermed, i + 2), 1) != -1) &&
                        (get_unicode(string_char_at(intermed, i + 2), 2) || get_unicode(string_char_at(intermed, i + 2), 4)) &&
                        (get_unicode(string_char_at(intermed, i + 1), 3)))
                        // Add the beginning form.
                        result += chr(get_unicode(string_char_at(intermed, i + 1), 1) + 2);
                    else
                        // Add the standard form (isolated).
                        result += chr(get_unicode(string_char_at(intermed, i + 1), 1));
            }
            else

            // Fixing the last character in a word.
            if (i == string_length(intermed) - 1 || (i < string_length(intermed) - 1 && i != 0 && get_unicode(string_char_at(intermed, i + 2), 1) == -1))
            {
                if (!get_unicode(string_char_at(intermed, i + 1), 2))
                    result += chr(get_unicode(string_char_at(intermed, i + 1), 1));
                    else
                    if ((get_unicode(string_char_at(intermed, i), 1) != -1) &&
                        (get_unicode(string_char_at(intermed, i), 2) != 0) &&
                        (get_unicode(string_char_at(intermed, i), 3) || get_unicode(string_char_at(intermed, i + 2), 4)) &&
                        (get_unicode(string_char_at(intermed, i + 1), 2)))
                        // Add the end form.
                        result += chr(get_unicode(string_char_at(intermed, i + 1), 1) + 1);
                    else
                        // Add the standard form (isolated).
                        result += chr(get_unicode(string_char_at(intermed, i + 1), 1));
            }
            else

            // Fixing the characters in the middle.
            if (i != 0 && i != string_length(intermed) - 1 &&
                get_unicode(string_char_at(intermed, i), 1) != -1 && get_unicode(string_char_at(intermed, i + 2), 1) != -1)
            {
                // If the character is isolated.
                if (get_unicode(string_char_at(intermed, i + 1), 2) == 0)
                    result += chr(get_unicode(string_char_at(intermed, i + 1), 1));
                    else
                    {
                    // It comes before or after an isolated character.
                    if (!get_unicode(string_char_at(intermed, i), 2) || !get_unicode(string_char_at(intermed, i + 2), 2))
                    {
                        // Between two isolated characters.
                        if (!get_unicode(string_char_at(intermed, i), 2) && !get_unicode(string_char_at(intermed, i + 2), 2))
                        result += chr(get_unicode(string_char_at(intermed, i + 1), 1));
                        else
                        // After an isolated character.
                        if (!get_unicode(string_char_at(intermed, i), 2))
                            if ((get_unicode(string_char_at(intermed, i + 1), 3)) && 
                                (get_unicode(string_char_at(intermed, i + 2), 2) || get_unicode(string_char_at(intermed, i + 1), 4)))
                                result += chr(get_unicode(string_char_at(intermed, i + 1), 1) + 2);
                                else
                                result += chr(get_unicode(string_char_at(intermed, i + 1), 1));
                        else
                        // Before an isolated character.
                        if (!get_unicode(string_char_at(intermed, i + 2), 2))
                            if ((get_unicode(string_char_at(intermed, i + 1), 2)) && 
                                (get_unicode(string_char_at(intermed, i), 3) || get_unicode(string_char_at(intermed, i), 4)))
                                result += chr(get_unicode(string_char_at(intermed, i + 1), 1) + 1);
                                else
                                result += chr(get_unicode(string_char_at(intermed, i + 1), 1));
                    }
                    else
                        // The end character follows a character that doesn't come at end.
                        if (!(get_unicode(string_char_at(intermed, i), 3) || get_unicode(string_char_at(intermed, i), 4)) &&
                            !(get_unicode(string_char_at(intermed, i + 1), 3)))
                            result += chr(get_unicode(string_char_at(intermed, i + 1), 1));
                        else
                        // The character is between two middle characters and it is a middle character.
                        if ((get_unicode(string_char_at(intermed, i + 2), 2) || get_unicode(string_char_at(intermed, i + 2), 4)) &&
                            (get_unicode(string_char_at(intermed, i), 3) || get_unicode(string_char_at(intermed, i), 4)) &&
                            (get_unicode(string_char_at(intermed, i + 1), 4)))
                            result += chr(get_unicode(string_char_at(intermed, i + 1), 1) + 3);
                        else
                        // The character is between two middle characters and it is an end character.
                        if ((get_unicode(string_char_at(intermed, i + 2), 2) || get_unicode(string_char_at(intermed, i + 2), 4)) &&
                            (get_unicode(string_char_at(intermed, i), 3) || get_unicode(string_char_at(intermed, i), 4)) &&
                            (get_unicode(string_char_at(intermed, i + 1), 2)))
                            result += chr(get_unicode(string_char_at(intermed, i + 1), 1) + 1);
                        else
                        // The character is before an end characters and it is a beginning character.
                        if (get_unicode(string_char_at(intermed, i + 2), 2) || get_unicode(string_char_at(intermed, i + 2), 4) &&
                            get_unicode(string_char_at(intermed, i + 1), 3))
                            result += chr(get_unicode(string_char_at(intermed, i + 1), 1) + 2);
                        else
                        // The character is after a beginning characters and it is an end character.
                        if (get_unicode(string_char_at(intermed, i), 3) || get_unicode(string_char_at(intermed, i), 4) &&
                            get_unicode(string_char_at(intermed, i + 1), 2))
                            result += chr(get_unicode(string_char_at(intermed, i + 1), 1) + 1);
                    }
            }
        }
    }

    return adjust_substrings(result);
}
else
    return argument0;
