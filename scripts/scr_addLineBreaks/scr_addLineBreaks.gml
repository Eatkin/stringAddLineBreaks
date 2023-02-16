// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_addLineBreaks(str, maxWidth){
	//Check if it's short enough to fit anyway
	if (string_width(str) < maxWidth)
		return str;
		
	str				=	str + " ";
	
	//Break up the string into individual words
	var wordsArray	=	[];
	var strLength	=	string_length(str);
	var strStart	=	1;
	for (var i = 1; i <= strLength; i++)	{
		//Find a space
		if (string_char_at(str, i) == " ")	{
			wordsArray[array_length(wordsArray)]	=	string_copy(str, strStart, i - strStart);
			strStart	=	i + 1;
		}
	}
	
	//Copy the final word
	wordsArray[array_length(wordsArray)]	=	string_copy(str, strStart, i + 1 - strStart);
	
	//Iterate through the array to verify
	/*
	for (var i = 0; i < array_length(wordsArray); i++)
		show_message(wordsArray[i]);*/
		
	//Now we can loop thru and fit everything on a new line
	var newStr	=	"";
	var line	=	[];
	line[0]		=	wordsArray[0] + " ";
	var lineNum	=	0;
	var words	=	array_length(wordsArray);
	for (var i = 1; i < words; i++)	{
		//If we exceed the width it moves onto a new line
		if (string_width(line[lineNum] + wordsArray[i]) > maxWidth)	{
			line[lineNum]	+=	"\n";
			lineNum++;
			line[lineNum]	=	wordsArray[i] + " ";
		}
		else	{
			line[lineNum]	+=	wordsArray[i] + " ";
		}
	}
	
	//Concaconate the lines into one string
	var lines	=	array_length(line);
	for (var i = 0; i < lines; i++)
		newStr	+=	line[i];
		
	return newStr;
}