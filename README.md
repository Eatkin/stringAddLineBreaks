# stringAddLineBreaks
A Gamemaker script that will automatically format your strings in order to fit in a specified width

Simply call scr_addLineBreaks(str, maxWidth) where str is the string you want to format and maxWidth is the width you do not want it to exceed. It will return your string formatted.

The project shows a demo. Use numpad + and numpad - to increase or decrease the max width so you can see how it changes the string formatting.

Limitations: If you have a single word that exceeds maxWidth then the word will not have any line breaks added to it.
