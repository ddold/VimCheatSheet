#
#     ##    ##    ####    ####  ####
#      ##  ##      ##     ## #### ##
#       ####       ##     ##  ##  ##
#        ##       ####    ##      ##
#
#
#     ######    ##    ##    ######        ##        ##########
#     ##        ##    ##    ##           ####           ##  
#     ##        ########    ####        ##  ##          ##
#     ##        ##    ##    ##         ########         ##
#     ######    ##    ##    ######    ##      ##        ##
#  
#
#     ######    ##    ##    ######    ######    ##########
#     ##        ##    ##    ##        ##            ##
#     ######    ########    ####      ####          ##
#         ##    ##    ##    ##        ##            ##
#     ######    ##    ##    ######    ######        ##  
#
#

#=====================================================================================================================================================================================

#   Sections
#   1. HOW TO EXIT
#   2. EDITING A FILE
#   3. INSERTING TEXT
#   4. INSERTING A FILE
#   5. DELETING TEXT
#   6. CHANGING (OR REPLACING) TEXT
#   7. SUBSTITUTING
#   8. COPYING AND MOVING TEXT
#   9. UNDO/REDO/REPEAT
#   10. MOVING AROUND
#   11. SCREEN MOVEMENT COMMANDS
#   12. MARKS
#   13. SEARCHING
#   14. SELECTING TEXT (VISUAL MODE)
#   15. HOW TO SUSPEND
#   16. OTHER WAYS TO OPEN A FILE IN VI
#   17. BOOKMARKS
#   18. SEARCHING AND REPLACING
#   19. REGULAR EXPRESSIONS
#   20. COMMAND MODE

#=====================================================================================================================================================================================

#
#  ---------------   
#  1. HOW TO EXIT
#  ---------------
#

# :q[uit]	        		Quit Vim. This fails when changes have been made.
# :q[uit]!	      			Quit without writing.
# :cq[uit]	      			Quit always, without writing.

# :wq	                    Write the current file and exit.
# :wq!	                  	Write the current file and exit always.
# :wq {file}	            Write to {file}. Exit if not editing the last
# :wq! {file}	            Write to {file} and exit always.
# :[range]wq[!]	[file]    	Same as above, but only write the lines in [range].

# ZZ	 					Write current file, if modified, and exit.
# ZQ	 					Quit current file and exit (same as ":q!").

#=====================================================================================================================================================================================

#
#  ------------------
#  2. EDITING A FILE
#  ------------------
#

# :e[dit]	          Edit the current file. This is useful to re-edit the current file, when it has been changed outside of Vim.
# :e[dit]!	          Edit the current file always. Discard any changes to the current buffer. This is useful if you want to start all over again.
# :e[dit] {file}	  Edit {file}.
# :e[dit]! {file}	  Edit {file} always. Discard any changes to the current buffer.
# gf	              Edit the file whose name is under or after the cursor. Mnemonic: "goto file".

#=====================================================================================================================================================================================

#
#  ------------------
#  3. INSERTING TEXT
#  ------------------
#

# a		Append text after the cursor [count] times.
# A		Append text at the end of the line [count] times.

# i		Insert text before the cursor [count] times.
# I		Insert text before the first non-blank in the line [count] times.

# gI	Insert text in column 1 [count] times.

# o		Begin a new line below the cursor and insert text, repeat [count] times.
# O		Begin a new line above the cursor and insert text, repeat [count] times.

# ea 	Insert (append) at the end of the line

# Esc 	Exit insert mode

#=====================================================================================================================================================================================

#
#  -------------------
#  4. INSERTING A FILE
#  -------------------
#

# :r[ead] [name]	Insert the file [name] below the cursor.
# :r[ead] !{cmd}	Execute {cmd} and insert its standard output below the cursor.

#=====================================================================================================================================================================================

#
#  -----------------
#  5. DELETING TEXT
#  -----------------
#

# <Del> or
# x	  						 Delete [count] characters under and after the cursor
# X	  						 Delete [count] characters before the cursor
 
# d{motion}	  				 Delete text that {motion} moves over
# dd	        			 Delete [count] lines
# 2dd						 Delete (cut) 2 lines
# D	          				 Delete the characters under the cursor until the end of the line
# dw 						 Delete (cut) the word
# d$						 Delete (cut) to the end of the line
 
# {Visual}x or
# {Visual}d	    			 Delete the highlighted text (for {Visual} see Selecting Text).

# {Visual}CTRL-H or
# {Visual}	    			 When in Select mode: Delete the highlighted text

# {Visual}X or
# {Visual}D	    			 Delete the highlighted lines

# :[range]d[elete]	         Delete [range] lines (default: current line)
# :[range]d[elete] {count}	 Delete {count} lines, starting with [range]

#=====================================================================================================================================================================================

#
#  --------------------------------
#  6. CHANGING (OR REPLACING) TEXT
#  --------------------------------
#

# r{char}	  	replace the character under the cursor with {char}.
# R	        	Enter Insert mode, replacing characters rather than inserting
# ~				Switch case of the character under the cursor and move the cursor to the right. If a [count] is given, do that many characters.
# ~{motion}		switch case of {motion} text.
# {Visual}~		Switch case of highlighted text

# c             Change text. Must be followed by movement command
# cw            Change one word forward
# cb            Change one word backward
# c0            Change everything till line start
# c$            Change everything till line end
# C             Same as c$

#=====================================================================================================================================================================================

#
#  ----------------
#  7. SUBSTITUTING
#  ----------------
#

# s     Substitute characters
# 3s    Replace the following 3 characters
# S     Same as cc

# :[range]s[ubstitute]/{pattern}/{string}/[c][e][g][p][r][i][I] [count]	For each line in [range] replace a match of {pattern} with {string}.
# :[range]s[ubstitute] [c][e][g][r][i][I] [count] :[range]&[c][e][g][r][i][I] [count]	Repeat last :substitute with same search pattern and substitute string, but without the same flags. You may add extra flags
#
# The arguments that you can use for the substitute commands:
# [c]  Confirm each substitution.  Vim positions the cursor on the matching
#   string.  You can type:
#       'y'      to substitute this match
#       'n'      to skip this match
#          to skip this match
#       'a'      to substitute this and all remaining matches {not in Vi}
#       'q'      to quit substituting {not in Vi}
#       CTRL-E  to scroll the screen up {not in Vi}
#       CTRL-Y  to scroll the screen down {not in Vi}.
# [e]     When the search pattern fails, do not issue an error message and, in
#   particular, continue in maps as if no error occurred.  
# [g]  Replace all occurrences in the line.  Without this argument,
#   replacement occurs only for the first occurrence in each line.
# [i]  Ignore case for the pattern.  
# [I]  Don't ignore case for the pattern.  
# [p]  Print the line containing the last substitute.

#=====================================================================================================================================================================================

#
#  ---------------------------
#  8. COPYING AND MOVING TEXT
#  ---------------------------
#

# "{a-zA-Z0-9.%#:-"}			Use register {a-zA-Z0-9.%#:-"} for next delete, yank or put (use uppercase character to append with delete and yank) ({.%#:} only work with put).
# :reg[isters]					Display the contents of all numbered and named registers.
# :reg[isters] {arg}			Display the contents of the numbered and named registers that are mentioned in {arg}.
# :di[splay] [arg]				Same as :registers.
 
# ["x]y{motion}					Yank {motion} text [into register x].
# ["x]yy						Yank [count] lines [into register x]
# ["x]Y							yank [count] lines [into register x] (synonym for yy).

# yy							yank (copy) a line
# 2yy							yank (copy) 2 lines
# yw							yank (copy) word
# y$							yank (copy) to the end of the line
# Y                             Same as y$

# {Visual}["x]y					Yank the highlighted text [into register x] (for {Visual} see Selecting Text).
# {Visual}["x]Y					Yank the highlighted lines [into register x]

# :[range]y[ank] [x]			Yank [range] lines [into register x].
# :[range]y[ank] [x] {count}	Yank {count} lines, starting with last line number in [range] (default: current line), [into register x].

# ["x]p							Put the text [from register x] after the cursor [count] times.
# ["x]P							Put the text [from register x] before the cursor [count] times.

# ["x]gp						Just like "p", but leave the cursor just after the new text.
# ["x]gP						Just like "P", but leave the cursor just after the new text.

# :[line]pu[t] [x]				Put the text [from register x] after [line] (default current line).
# :[line]pu[t]! [x]				Put the text [from register x] before [line] (default current line).

#=====================================================================================================================================================================================

#
#  --------------------
#  9. UNDO/REDO/REPEAT
#  --------------------
#

# u			Undo [count] changes.
# :u[ndo]	Undo one change.

# CTRL-R	Redo [count] changes which were undone.
# :red[o]	Redo one change which was undone.

# U			Undo all latest changes on one line. {Vi: while not moved off of it}
# .			Repeat last change, with count replaced with [count].

#=====================================================================================================================================================================================

#
#  ------------------
#  10. MOVING AROUND
#  ------------------
#

# Basic motion commands:
# 
#         k              
#       h   l          
#         j             

# h 				move cursor left
# l 				move cursor right
# k 				move cursor up
# j 				move cursor down

# 0					To the first character of the line (exclusive).
# <Home>			To the first character of the line (exclusive).
# ^					To the first non-blank character of the line
# #|                Go to position # of the current line

# $ 				jump to the end of the line

# g0 or
# g<Home>			When lines wrap ('wrap on): To the first character of the screen line (exclusive). Differs from "0" when a line is wider than the screen. When lines don't wrap ('wrap' off): To the leftmost character of the current line that is on the screen. Differs from "0" when the first character of the line is not on the screen.
# g^				When lines wrap ('wrap' on): To the first non-blank character of the screen line (exclusive). Differs from "^" when a line is wider than the screen. When lines don't wrap ('wrap' off): To the leftmost non-blank character of the current line that is on the screen. Differs from "^" when the first non-blank character of the line is not on the screen.

# G 				Go to the last line of the document
# 5G 				Go to the 5th linw of the document

# g$ 				When lines wrap ('wrap' on): To the last character of the screen line and [count - 1] screen lines downward (inclusive). Differs from "$" when a line is wider than the screen. When lines don't wrap ('wrap' off): To the rightmost character of the current line that is visible on the screen. Differs from "$" when the last character of the line is not on the screen or when a count is used.

# f{char}			To [count]'th occurrence of {char} to the right. The cursor is placed on {char} (inclusive).
# F{char}			To the [count]'th occurrence of {char} to the left. The cursor is placed on {char} (inclusive).

# t{char}			Till before [count]'th occurrence of {char} to the right. The cursor is placed on the character left of {char} (inclusive).
# T{char}			Till after [count]'th occurrence of {char} to the left. The cursor is placed on the character right of {char} (inclusive).

# ;					Repeat latest f, t, F or T [count] times.
# ,					Repeat latest f, t, F or T in opposite direction [count] times.

# - <minus>			[count] lines upward, on the first non-blank character (linewise).
# + or

# <CR>				[count] lines downward, on the first non-blank character (linewise).

# _ <underscore>	[count] - 1 lines downward, on the first non-blank character (linewise).

# G					Goto line [count], default last line, on the first non-blank character.

# gg				Goto line [count], default first line, on the first non-blank character.

# <S-Right> or
# w					jump forwards to the start of a word

# <C-Right> or
# W					[count] WORDS forward
# e					Forward to the end of word [count]
# E					Forward to the end of WORD [count]

# <S-Left> or
# b					[count] words backward

# <C-Left> or
# B					[count] WORDS backward

# ge				Backward to the end of word [count]
# gE				Backward to the end of WORD [count]

# ``                Move back to position before jumping to new line
# "                 Move back to the start of the line from where you made the jump

# These commands move over words or WORDS.
# A word consists of a sequence of letters, digits and underscores, 
# or a sequence of other non-blank characters, separated with white space (spaces, tabs, ). 
# This can be changed with the 'iskeyword' option.


# A WORD consists of a sequence of non-blank characters, 
# separated with white space. An empty line is also considered to be a word and a WORD.

# (		[count] sentences backward
# )		[count] sentences forward
# {		[count] paragraphs backward
# }		[count] paragraphs forward
# ]]	[count] sections forward or to the next '{' in the first column. When used after an operator, then the '}' in the first column.
# ][	[count] sections forward or to the next '}' in the first column
# [[	[count] sections backward or to the previous '{' in the first column
# []	[count] sections backward or to the previous '}' in the first column

# In VI, sentences are those that end with '.', '!' or '?'
# In VI, paragraphs are those that end with a line break or the next line is a blank line

#=====================================================================================================================================================================================

#
#  -----------------------------
#  11. SCREEN MOVEMENT COMMANDS
#  -----------------------------
# 

# CTRL-F    Move one screen forward
# CTRL-B    Move one screen backward
# CTRL-D    Move half the screen forward
# CTRL-U    Move half the screen backward
# CTRL-E    Move one line forward
# CTRL-Y    Move one line backward

# z.	    Center the screen on the cursor
# z <ENTER> Make the current line the top of the screen
# z-        Make hte current line the last one (bottom) of the screen
# zt	    Scroll the screen so the cursor is at the top
# zb	    Scroll the screen so the cursor is at the bottom

# H     Move to first line of page
# M     Move to middle line of page
# L     Move to bottom line of page
# #H    Move to the #th line below the first line
# #L    Move ot the #th line above the last line

# <ENTER> or +  Go to the first character of the next line
# -             Go to the first character of the previous line

#=====================================================================================================================================================================================

#
#  ----------
#  12. MARKS
#  ----------
# 

# m{a-zA-Z}					Set mark {a-zA-Z} at cursor position (does not move the cursor, this is not a motion command).

# m' or
# m`						Set the previous context mark. This can be jumped to with the "''" or "``" command (does not move the cursor, this is not a motion command).

# :[range]ma[rk] {a-zA-Z}	Set mark {a-zA-Z} at last line number in [range], column 0. Default is cursor line.
# :[range]k{a-zA-Z}			Same as :mark, but the space before the mark name can be omitted.

# '{a-z}					To the first non-blank character on the line with mark {a-z} (linewise).
# '{A-Z0-9}					To the first non-blank character on the line with mark {A-Z0-9} in the correct file
# `{a-z}					To the mark {a-z}
# `{A-Z0-9}					To the mark {A-Z0-9} in the correct file

# :marks					List all the current marks (not a motion command).
# :marks {arg}				List the marks that are mentioned in {arg} (not a motion command). For example:

#=====================================================================================================================================================================================

#
#  --------------
#  13. SEARCHING
#  --------------
# 

# /{pattern}[/]				Search forward for the [count]'th occurrence of {pattern}
# /{pattern}/{offset}		Search forward for the [count]'th occurrence of {pattern} and go {offset} lines up or down.

# /<CR>						Search forward for the [count]'th latest used pattern
# //{offset}<CR>			Search forward for the [count]'th latest used pattern with new. If {offset} is empty no offset is used.

# ?{pattern}[?]<CR>			Search backward for the [count]'th previous occurrence of {pattern}
# ?{pattern}?{offset}<CR>	Search backward for the [count]'th previous occurrence of {pattern} and go {offset} lines up or down
# ?<CR>						Search backward for the [count]'th latest used pattern
# ??{offset}<CR>			Search backward for the [count]'th latest used pattern with new {offset}. If {offset} is empty no offset is used.

# n							Repeat the latest "/" or "?" [count] times.
# N							Repeat the latest "/" or "?" [count] times in opposite direction.

# Searching within the one line
# fc                        Move to the next occurence of c character
# Fc                        Move to the previous occurence of c character
# tc                        Move to the character before the next occurrence of the c character
# Tc                        Move to the character after the next occurrence of the c character
# ;                         Repeat the last search command in the forward direction
# ,                         Repeat the last search command in the backward direction

#=====================================================================================================================================================================================

#
#  --------------------------------
#  14. SELECTING TEXT (VISUAL MODE)
#  --------------------------------
# 

# To select text, enter visual mode with one of the commands below, and use motion commands to highlight the text you are interested in. Then, use some command on the text.

# The operators that can be used are:
#   ~  switch case
#   d  delete
#   c  change
#   y  yank
#   >  shift right 
#   <  shift left 
#   !  filter through external command 
#   =  filter through 'equalprg' option command 
#   gq  format lines to 'textwidth' length 

# v	start Visual mode per character.
# V	start Visual mode linewise.
# <Esc>	exit Visual mode without making any changes

#=====================================================================================================================================================================================

#
#  -------------------
#  15. HOW TO SUSPEND
#  -------------------
# 

# CTRL-Z	Suspend Vim, like ":stop". Works in Normal and in Visual mode. In Insert and Command-line mode, the CTRL-Z is inserted as a normal character.
# :sus[pend][!] or
# :st[op][!]	Suspend Vim. If the '!' is not given and 'autowrite' is set, every buffer with changes and a file name is written out. If the '!' is given or 'autowrite' is not set, changed buffers are not written, don't forget to bring Vim back to the foreground later!

#=====================================================================================================================================================================================

#
#  ------------------------------------
#  16. OTHER WAYS TO OPEN A FILE IN VI
#  ------------------------------------
# 

# vi +n filename            open file and move to specific line number n
# vi + filename             open file and move to last line
# vi +/text                 open file and move to first occurrence of text
# vi -R filename            open file in read-only mode
# vi -r filename            recover a file from a crash and then remove the .swp file
# vim -b filename           open file in binary mode
# vim -c command filename   execute vi command after vim starts
# vim -d file1 file2        perform diff like command on 2 or more files
# vim -o file1, file2       opens the files in seperate windows - navigate with CTRL-ww
# vim -O file1, file2       opens the files in seperate windows, but in vertical - navigate with CTRL-ww

#=====================================================================================================================================================================================

#
#  --------------
#  17. BOOKMARKS
#  --------------
#

# m     mark the position of the bookmark
# ma    mark the position with a bookmark a
# 'a    move to first character of the line of bookmark a
# `a    move to exact location of bookmark

#=====================================================================================================================================================================================

#
#  ----------------------------
#  18. SEARCHING AND REPLACING
#  ----------------------------
# 

# :s                    Start search process
# :s/word               add '/word' to search for word
# :s/word/other         add '/other' to replace word - only happens on first occurrence of the first line only
# :s/word/other/g       replace word with other on all occurrences on the line
# :1,5s/word/other/g    replace word with other on all occurrences on the lines 1-5

# :%s/word/other/g      replace word with other globally
# :%s/word/other/gc     replace word with other globally but have to confirm before making change

# :%g/string/command    Search for a string and do a command on all of that string

#=====================================================================================================================================================================================

#
#  ------------------------
#  19. REGULAR EXPRESSIONS
#  ------------------------
# 

# .     matches any single character including spaces and not newline
# *     matches a range of zero or more characters of the same character that precedes it
# .*    matches any character any number of times except newlines
# ^     1. when used at start of pattern, it matches the occurrence of this pattern at the start of the line
#       2. when used alone it matches the literal ^
# $     1. when used at the end of the pattern, it matches the occurrence of this pattern at the end of the line
#       2. when used alone it matches the literal $
# \     excape character - it makes the following character be treated literally instead of a metacharacter

# []    characters inside square brackets are matched -> [ab2] match a, b or 2. [a-z] will match the range a-z
#       escape characters not needed except for hyphens
#       ^ negates the range -> [^0-9] matches numbers not in the range 0-9

# /\<pattern\>  matches only pattern - handy if you are looking for whole words
# /\<pattern    matches pattern only when it is at the start of the word
# /pattern\>    matches pattern only when it is at the end of the word

#=====================================================================================================================================================================================

#
#  -----------------
#  20. COMMAND MODE
#  -----------------
# 

# :set Used to customise appearence and behaviour of editor while working
# it has 2 types of usage
#   1. Toggle - when you want to turn an option on/off - format is :set option to turn on and :set nooption to turn off
#   2. Assign - when you want to set a specific value of an option 
# To view all set options that vi is currently using, use ':set all' 
# To view only the options youve changed use ':set'

# Save changes as default to .vimrc/.exrc file

# :!            is used to run UNIX commands - :!date displays date
# :r !date      used to append UNIX command response to file
# :r filename   insert contents of another file to current file

# :1,9!cat > newfile.txt    cut lines 1-9 and save in a file newfile.txt

# ab                    abbreviation
# :ab thats that's      autocorrect thats to that's
# :unab thats           turn off abbreviation for word

# :map          create shortcuts for commands
# :map d dw     create shortcut from dw to d
# :unmap d      disable shortcut
#=====================================================================================================================================================================================
