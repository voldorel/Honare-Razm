// This function adjusts the spaces.
var i, j, k, space = false, result = "";

// Counting the spaces at the beginning of the string.
i = 0;
while (string_char_at(argument0, i + 1) == chr(32) && i < string_length(argument0)) i++;

// Empty string (all spaces), the string will be replaced by one space. Change this to "return argument0" to retain the spaces.
if (i == string_length(argument0)) return chr(32);

// Counting the spaces at the end of the string.
j = 0;
while (string_char_at(argument0, string_length(argument0) - j) == chr(32) && string_length(argument0) - j > 0) j++;


// Beginning adjustment.
if (string_char_at(argument0, string_length(argument0)) == chr(32)) result += chr(32);

// Middle adjustment.
for (k = i; k < string_length(argument0) - j; k++) {
    if (string_char_at(argument0, k + 1) == chr(32)) {
        if (!space) {space = true; result += chr(32);}
    }
    else {
        if (space) space = false;
        result += string_char_at(argument0, k + 1);
    }
}

// Ending ajdustment.
if (string_char_at(argument0, 0) == chr(32)) result += chr(32);

return result;
