# owquickchat
An autohotkey script for Quick chat lines in Overwatch.

## setup
1. Download autohotkey and run the script
2. Make sure the "all chat" option is set to the multiplication sign ( * ) on your numpad.

## controlls
* Scroll lock switches between grouped and solo mode. Turn on scroll lock to make sure the team chat is selecten when you are grouped.

### By default the following lines are set:
* Numpad 7: (match chat) GG
* Numpad 8: (team chat)  I need help 
* Numpad 9: (team chat)  Can someone take out the snipers
* Numpad 4: (team chat)  My barrier is at 50%
* Numpad 5: (team chat)  My barrier is at 25%

## adding chat lines
* For match chat add:

`$[key]::matchChat("[text]")`

* For team chat add:

`$[key]::teamChat("[text]")`

* Replace [key] with the desired key [reference](https://autohotkey.com/docs/KeyList.htm)

* Replace [text] with the desired text