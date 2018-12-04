// This function creates a map for the Persian / Arabic  letters.
var i, alphabet;

// The characters definition.
alphabet[0, 0] = 1569; alphabet[0, 1] = 65152; alphabet[0, 2] = 0; alphabet[0, 3] = 0; alphabet[0, 4] = 0; // الألف على السطر
alphabet[1, 0] = 1570; alphabet[1, 1] = 65153; alphabet[1, 2] = 1; alphabet[1, 3] = 0; alphabet[1, 4] = 0; // الألف الممدودة
alphabet[2, 0] = 1571; alphabet[2, 1] = 65155; alphabet[2, 2] = 1; alphabet[2, 3] = 0; alphabet[2, 4] = 0; // الألف بالهمزة
alphabet[3, 0] = 1572; alphabet[3, 1] = 65157; alphabet[3, 2] = 1; alphabet[3, 3] = 0; alphabet[3, 4] = 0; // الألف على الواو
alphabet[4, 0] = 1573; alphabet[4, 1] = 65159; alphabet[4, 2] = 1; alphabet[4, 3] = 0; alphabet[4, 4] = 0; // همزة تحت الألف
alphabet[5, 0] = 1574; alphabet[5, 1] = 65161; alphabet[5, 2] = 1; alphabet[5, 3] = 1; alphabet[5, 4] = 1; // الألف على الياء
alphabet[6, 0] = 1575; alphabet[6, 1] = 65165; alphabet[6, 2] = 1; alphabet[6, 3] = 0; alphabet[6, 4] = 0; // الألف
alphabet[7, 0] = 1576; alphabet[7, 1] = 65167; alphabet[7, 2] = 1; alphabet[7, 3] = 1; alphabet[7, 4] = 1; // الباء
alphabet[8, 0] = 1577; alphabet[8, 1] = 65171; alphabet[8, 2] = 1; alphabet[8, 3] = 0; alphabet[8, 4] = 0; // التاء المربوطة
alphabet[9, 0] = 1578; alphabet[9, 1] = 65173; alphabet[9, 2] = 1; alphabet[9, 3] = 1; alphabet[9, 4] = 1; // التاء المفتوحة
alphabet[10, 0] = 1579; alphabet[10, 1] = 65177; alphabet[10, 2] = 1; alphabet[10, 3] = 1; alphabet[10, 4] = 1; // الثاء
alphabet[11, 0] = 1580; alphabet[11, 1] = 65181; alphabet[11, 2] = 1; alphabet[11, 3] = 1; alphabet[11, 4] = 1; // الجيم
alphabet[12, 0] = 1581; alphabet[12, 1] = 65185; alphabet[12, 2] = 1; alphabet[12, 3] = 1; alphabet[12, 4] = 1; // الحاء
alphabet[13, 0] = 1582; alphabet[13, 1] = 65189; alphabet[13, 2] = 1; alphabet[13, 3] = 1; alphabet[13, 4] = 1; // الخاء
alphabet[14, 0] = 1583; alphabet[14, 1] = 65193; alphabet[14, 2] = 1; alphabet[14, 3] = 0; alphabet[14, 4] = 0; // الدال
alphabet[15, 0] = 1584; alphabet[15, 1] = 65195; alphabet[15, 2] = 1; alphabet[15, 3] = 0; alphabet[15, 4] = 0; // الذال
alphabet[16, 0] = 1585; alphabet[16, 1] = 65197; alphabet[16, 2] = 1; alphabet[16, 3] = 0; alphabet[16, 4] = 0; // الراء
alphabet[17, 0] = 1586; alphabet[17, 1] = 65199; alphabet[17, 2] = 1; alphabet[17, 3] = 0; alphabet[17, 4] = 0; // الزين
alphabet[18, 0] = 1587; alphabet[18, 1] = 65201; alphabet[18, 2] = 1; alphabet[18, 3] = 1; alphabet[18, 4] = 1; // السين
alphabet[19, 0] = 1588; alphabet[19, 1] = 65205; alphabet[19, 2] = 1; alphabet[19, 3] = 1; alphabet[19, 4] = 1; // الشين
alphabet[20, 0] = 1589; alphabet[20, 1] = 65209; alphabet[20, 2] = 1; alphabet[20, 3] = 1; alphabet[20, 4] = 1; // الصاد
alphabet[21, 0] = 1590; alphabet[21, 1] = 65213; alphabet[21, 2] = 1; alphabet[21, 3] = 1; alphabet[21, 4] = 1; // الضاد
alphabet[22, 0] = 1591; alphabet[22, 1] = 65217; alphabet[22, 2] = 1; alphabet[22, 3] = 1; alphabet[22, 4] = 1; // الطاد
alphabet[23, 0] = 1592; alphabet[23, 1] = 65221; alphabet[23, 2] = 1; alphabet[23, 3] = 1; alphabet[23, 4] = 1; // الظاد
alphabet[24, 0] = 1593; alphabet[24, 1] = 65225; alphabet[24, 2] = 1; alphabet[24, 3] = 1; alphabet[24, 4] = 1; // العين
alphabet[25, 0] = 1594; alphabet[25, 1] = 65229; alphabet[25, 2] = 1; alphabet[25, 3] = 1; alphabet[25, 4] = 1; // الغين
alphabet[26, 0] = 1601; alphabet[26, 1] = 65233; alphabet[26, 2] = 1; alphabet[26, 3] = 1; alphabet[26, 4] = 1; // الفاء
alphabet[27, 0] = 1602; alphabet[27, 1] = 65237; alphabet[27, 2] = 1; alphabet[27, 3] = 1; alphabet[27, 4] = 1; // القاف
alphabet[28, 0] = 1705; alphabet[28, 1] = 64398; alphabet[28, 2] = 1; alphabet[28, 3] = 1; alphabet[28, 4] = 1; // الكاف
alphabet[29, 0] = 1604; alphabet[29, 1] = 65245; alphabet[29, 2] = 1; alphabet[29, 3] = 1; alphabet[29, 4] = 1; // اللام
alphabet[30, 0] = 1605; alphabet[30, 1] = 65249; alphabet[30, 2] = 1; alphabet[30, 3] = 1; alphabet[30, 4] = 1; // الميم
alphabet[31, 0] = 1606; alphabet[31, 1] = 65253; alphabet[31, 2] = 1; alphabet[31, 3] = 1; alphabet[31, 4] = 1; // النون
alphabet[32, 0] = 1607; alphabet[32, 1] = 65257; alphabet[32, 2] = 1; alphabet[32, 3] = 1; alphabet[32, 4] = 1; // الهاء
alphabet[33, 0] = 1608; alphabet[33, 1] = 65261; alphabet[33, 2] = 1; alphabet[33, 3] = 0; alphabet[33, 4] = 0; // الواو
alphabet[34, 0] = 1609; alphabet[34, 1] = 65263; alphabet[34, 2] = 1; alphabet[34, 3] = 0; alphabet[34, 4] = 0; // الألف المقصورة
alphabet[35, 0] = 1740; alphabet[35, 1] = 64508; alphabet[35, 2] = 1; alphabet[35, 3] = 1; alphabet[35, 4] = 1; // الياء

///Persian Special
alphabet[40, 0] = 1662; alphabet[40, 1] = 64342; alphabet[40, 2] = 1; alphabet[40, 3] = 1; alphabet[40, 4] = 1; // پ
alphabet[41, 0] = 1711; alphabet[41, 1] = 64402; alphabet[41, 2] = 1; alphabet[41, 3] = 1; alphabet[41, 4] = 1; // گ
alphabet[42, 0] = 1670; alphabet[42, 1] = 64378; alphabet[42, 2] = 1; alphabet[42, 3] = 1; alphabet[42, 4] = 1; // چ
alphabet[43, 0] = 1688; alphabet[43, 1] = 64394; alphabet[43, 2] = 1; alphabet[43, 3] = 0; alphabet[43, 4] = 0; // ژ



// The special characters definition.
alphabet[36, 0] = 65269; alphabet[36, 1] = 65269; alphabet[36, 2] = 1; alphabet[36, 3] = 0; alphabet[36, 4] = 0; // لام-ألف ممدودة
alphabet[37, 0] = 65271; alphabet[37, 1] = 65271; alphabet[37, 2] = 1; alphabet[37, 3] = 0; alphabet[37, 4] = 0; // لام-ألف بالهمزة
alphabet[38, 0] = 65273; alphabet[38, 1] = 65273; alphabet[38, 2] = 1; alphabet[38, 3] = 0; alphabet[38, 4] = 0; // همزة تحت الام-ألف
alphabet[39, 0] = 65275; alphabet[39, 1] = 65275; alphabet[39, 2] = 1; alphabet[39, 3] = 0; alphabet[39, 4] = 0; // لام-ألف

// Returning the unicode.
for (i = 0; i < array_height_2d(alphabet); i++)
    if (ord(argument0) == alphabet[i, 0]) return alphabet[i, argument1]; return -1; // Return the unicode of the character, else -1.
