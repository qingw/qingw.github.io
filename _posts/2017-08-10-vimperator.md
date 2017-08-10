---
layout: post
title: vimperator
categories: [firefox]
---


ContentsIntroductionHelp topicsFeaturesChangeLogContactStarting VimperatorInitializationSaving settingsRestartingBrowsingTemporarily disable VimperatorOpening web pagesNavigatingReloadingStoppingPastingWritingQuittingThe current directoryBufferBuffer informationMotion commandsJumping to elementsZoomingWorking with framesCopying textAlternate style sheetsCommand-line modeCommand-line editingCommand-line completionInsert modeInsert-mode special keysOptionsSetting optionsSetting Firefox optionsList of optionsText search commandsTabsListing tabsOpening tabsChanging tabsReordering tabsClosing tabsLooping over tabsHintsKey mappings, abbreviations, and user-defined commandsKey mappingMap commandsSpecial argumentsKey sequencesSpecial charactersAbbreviationsUser-defined commandsExamplesExpression evaluationMarksBookmarksHistoryQuickMarksLocal marksRepeating commandsSingle repeatsMacrosUsing scriptsProfilingAutomatic commandsExamplesPrintingFirefox printing dialogsVimperator's GUIMenusDialogsAdd-onsSidebarStatus barToolbarsStyling the GUI and web pagesError and informational messagesDeveloper informationWriting documentationHelp tagsWriting pluginsPlugin documentationOther helpVarious commandsOnline helpUncategorized helpUsing Plugins




First there was a Navigator, then there was an Explorer.
Later it was time for a Konqueror. Now it's time for an Imperator, the
VIMperator :)


introIntroduction


Vimperator is a
Firefox
browser extension with strong inspiration from the Vim text editor,
with a mind towards faster and more efficient browsing. It has similar key
bindings and you could call it a modal web browser, as key bindings differ
according to which mode you are in. For example, it has a special Hint mode,
where you can follow links easily with the keyboard only. Also most
functionality is available as commands, typing :back will go back
within the current page history, just like hitting the back button in the
toolbar.



    However, Vimperator does not try to be a 100% Vim clone, it rather brings Vim's
    ideas to the 21st century. This means making use of new graphical capabilities
    but also of faster computers. Furthermore, great care is taken into making
    its command line interface more consistent and easier to use, while still
    being a powerful extension for advanced users.



    But Vimperator is more than just a simple command interface to Firefox — it is a
    complete development environment as well. If you are a web developer, you can
    enjoy an interactive JavaScript shell — even with completion support. Or if you
    want to extend Vimperator, you can easily do that by just dropping a JavaScript
    file in its plugin directory.


authordonationsponsor


    Vimperator was initially written by
    Martin
    Stubenschrott but has found many other
    invaluable contributors
    who helped out fixing bugs and adding new features.

    If you appreciate the work on Vimperator and want to
    encourage us working on it more, you can send us greetings, patches, or
    donations:


Donate


    If you prefer getting some nice products for your money, you can also support
    us by buying some cool
    merchandise like
    t-shirts or mugs. Of course, as we believe in free, open source software, only
    support us financially if you really like Vimperator and the money doesn't hurt
    — otherwise just use it, recommend it, and like it :)


overviewHelp topics


    
        Quick-start tutorial:
        A quick-start tutorial for new users.
    
    
        Starting Vimperator:
        How Vimperator starts up, where it reads the config file…
    
    
        Browsing:
        Basic mappings and commands needed for a browsing session (how to open
        a web page or go back in history).
    
    
        Buffer:
        Operations on the current document like scrolling or copying text.
    
    
        Command-line mode:
        Command-line editing.
    
    
        Insert mode:
        Insert-mode editing.
    
    
        Options:
        A description of all options.
    
    
        Text search commands:
        Searching for text in the current buffer.
    
    
        Tabs:
        Managing your tabbed browsing session.
    
    
        Hints:
        Selecting hyperlinks and other page elements.
    
    
        Key mappings, abbreviations, and user-defined commands:
        Defining new key mappings, abbreviations and user commands.
    
    
        Expression evaluation:
        Executing JavaScript.
    
    
        Marks:
        Using bookmarks, QuickMarks, history and local marks.
    
    
        Repeating commands:
        Using macros to repeat recurring workflows.
    
    
        Automatic commands:
        Automatically executing code on certain events.
    
    
        Printing:
        Printing pages.
    
    
        Vimperator's GUI:
        Accessing Firefox menus, dialogs and the sidebar.
    
    
        Styling the GUI and web pages:
        Changing the styling of content pages and Vimperator itself.
    
    
        Error and informational messages:
        A description of messages and error messages.
    
    
        Developer information:
        How to write docs or plugins.
    
    
        Various commands:
        Other help which didn't fit into any other category.
    
    
        Plugins:
        Documentation for any plugins you may have installed.
    



You can also jump directly to the help of a specific command with :help o
or :help :set.


featuresFeatures


    Vim-like keybindings (h, j, k, l, gg, G, 0, $, ZZ, <C-f>, etc.)
    Ex commands (:quit, :open www.foo.com, …) with a proper command line
    Tab completion available for all commands, showing suggestions while you type
    Hint mode (start with f to follow a link)
    Extensions! Yes, you can extend Vimperator's functionality with scripts just like you can extend Firefox with extensions
    Explore JavaScript objects with :echo window and even context-sensitive tab completion
    Easily customizable GUI (easily hide all GUI elements with :set gui=none)
    Ability to :source JavaScript files, and to use a ~/.vimperatorrc file with syntax highlighting if you install vimperator.vim
    Easy quick searches (:open foo will search for "foo" in google, :open ebay terminator will search for "terminator" on ebay) with support for Firefox keyword bookmarks and search engines
    Count supported for many commands (3<C-o> will go back 3 pages)
    Beep on errors
    Marks support (ma to set mark a on a web page, 'a to go there)
    QuickMarks support (quickly go to previously marked web pages with go{a-zA-Z0-9})
    :map and :command support (and feedkeys() for script writers)
    :time support for profiling
    Move the text cursor and select text with Vim keys and a Visual mode
    External editor support
    Macros to replay key strokes
    AutoCommands to execute actions on certain events
    A comprehensive help system, explaining all commands, mappings and options


changelogversionChangeLog
We keep a list of changes between versions here.

contactbugspatchesContact

    Please report any bugs/feature requests using the project's issue tracker.
    You can also attach patches there.
    Another way is to use the mailing list.
    You will also find us on the #vimperator IRC channel
    on Freenode.




startingStarting Vimperator
ContentsInitializationSaving settingsRestarting

startup-options


    Command-line options can be passed to Vimperator via the -vimperator Firefox
    option. These are passed as a single string argument.
    E.g., firefox -vimperator ++cmd 'set exrc' +u 'tempRcFile' ++noplugin


+c+c {command}
        
            Execute a single Ex command after all initialization has been performed. See
            initialization.
        

        This option can be specified multiple times.
    


++cmd++cmd {command}
        
            Execute a single Ex command before any initialization has been performed. See
            initialization.
        

        This option can be specified multiple times.
    


+u+u {rcfile}
        
            The file {rcfile} is used for user initialization commands. If {rcfile} is
            "NORC" then no startup initialization is performed except for the loading of
            plugins, i.e., steps 1. and 2. in initialization are skipped. If {rcfile}
            is "NONE" then plugin loading is also skipped.
        
    


++noplugin++noplugin
        Prevents plugin scripts from being loaded at startup. See 'loadplugins'.
    


initializationstartupInitialization

At startup, Vimperator completes the following tasks in order. 


     Vimperator can perform user initialization commands. When
    one of the following is successfully located, it is executed,
    and no further locations are tried.

        
            $VIMPERATOR_INIT
                $VIMPERATOR_INIT — May contain a single Ex command (e.g.,
                ":source file").
            
            $MY_VIMPERATORRC
                ~/_vimperatorrc — Windows only. If this file exists, its contents
                are executed and $MY_VIMPERATORRC set to its path.
            
            
                ~/.vimperatorrc — If this file exists, its contents are executed.
            
        
    
    
        If 'exrc' is set and the +u command-line option was not
        specified, then any RC file in the current directory is also
        sourced.
    
    
        All directories in 'runtimepath' are searched for a
        "plugin" subdirectory and all yet unloaded plugins are loaded.
        For each plugin directory, all *.{js,vimp} files (including
        those in further subdirectories) are sourced alphabetically. No
        plugins will be sourced if:

        
            'noloadplugins' is set.
            the ++noplugin command-line option was specified.
            the +u=NONE command-line option specified set.
        

        Any particular plugin will not be loaded if it has already been
        loaded (e.g., by an earlier :loadplugins command).
    


The user's ~ (i.e., "home") directory is determined as follows:


    On Unix and Mac, the environment variable  $HOME is used.
    
        On Windows, Vimperator checks for the existence of
        %HOME%, then %USERPROFILE%, and then
        %HOMEDRIVE%%HOMEPATH%. It uses the first one it
        finds.
    


save-settingsSaving settings

:mkv:mkvimperatorrc:mkv[imperatorrc][!] [file]
        
            Write current key mappings and changed options to [file]. If no
            [file] is specified then ~/.vimperatorrc is written unless this file
            already exists. The special version :mkvimperatorrc! will overwrite
            [file] if it exists.
        

        
            Warning: this differs from Vim's behavior which defaults to writing the file
            in the current directory.
        
    


restartingRestarting

:res:restart:res[tart]
        Force Firefox to restart. Useful when installing extensions.
    





surfingbrowsingBrowsing
ContentsTemporarily disable VimperatorOpening web pagesNavigatingReloadingStoppingPastingWritingQuittingThe current directory

ignoringTemporarily disable Vimperator

Vimperator overrides nearly all Firefox keys in order to make browsing more
pleasant for Vim users. On the rare occasions when you want to pass a keystroke
to Firefox, or to the web page, and have it retain its original meaning you
have the following possibilities:

ignore-all-keys<S-Esc><Insert><S-Esc><Insert>
        
            Disable all Vimperator keys and pass them to the next event
            handler.  This mode is especially useful if JavaScript controlled
            forms (e.g., the RichEdit form fields of Gmail) don't work anymore
            or you want to work with web apps like Google Reader which have a
            lot of useful shortcuts themselves. To exit this mode, press <S-Esc> again. <Esc> is a special case as
            it is sent to the web page, but still handles unfocusing of input
            fields.
        
    


ignore-keyii
        
            If you only need to pass a single key to a JavaScript form field or another
            extension prefix the key with i. Also works to unshadow Firefox
            shortcuts like <C-o> which are otherwise hidden in Vimperator.
        
    


openingOpening web pages

o:o:open:o[pen] [arg1], [arg2], …o
        
            Open one or more URLs in the current tab.
            Multiple URLs can be separated with 'urlseparator' (default: ", " Note that the
            space after the comma is required.)
            The first URL is opened in the current tab, and all other URLs are
            opened in new tabs.
            Each token is analyzed and in this order:
        

        
            
                Opened as a local file if it is an existing relative or absolute filename.
                
                    :open /etc/fstab shows the file system table.
                    :open ../other/foo.html in your home directory opens /home/other/foo.html
                
            
            
                 Opened with the specified search engine if the
                 token looks like a search string and the first word
                 is the name of a search engine (
                 :open wikipedia linus torvalds opens the Wikipedia entry for
                 linus torvalds). The short name of a search engine
                 is automatically guessed from its name. If you want
                 to set a custom name, you can change it with
                 :dialog searchengines.
            
            
                Opened with the default search engine or keyword
                (specified with the 'defsearch' option) if the first
                word is no search engine (:open linus torvalds
                opens a Google search for linus torvalds).
           
           
               Passed directly to Firefox in all other cases
               (:open www.osnews.com, www.slashdot.org
               opens OSNews in the current, and Slashdot in a new
               background tab).
           
        

        
            You can use :open -tags linux torvalds to complete bookmarks with
            tag "linux" and which contain "torvalds". Note that -tags support is only
            available for tab completion, not for the actual command.
            The items which are completed on <Tab> are specified in the 'complete'
            option.
        
    


t:t:tabopen:tabnew:tabopen[!] [arg1], [arg2], …t
        
            Just like :open but also uses a new tab for the first URL. When
            used with [!], the tabopen value of the 'activate' option is negated.
        
    


TT
        
            Show a :tabopen prompt containing the current URL. Useful if you want to
            go somewhere by editing the URL of the current page.
        
    


:tabdu:tabduplicate:[count]tabdu[plicate][!]
        
            Duplicates current tab [count] times. Uses tabopen value of the 'activate'
            option to determine if the last cloned tab should be activated. When used with
            [!], tabopen value is negated.
        
    


OO
        
            Show an :open prompt containing the current URL. Useful if you want to
            go somewhere by editing the URL of the current page.
        
    


w:winopen:wopen:wino[pen][!] [arg1], [arg2], …w
        Just like :tabopen but opens the resulting web page(s) in a new window.
    


WW
        
            Open one or more URLs in a new window based on current location. Works like
            w but preselects current URL in the :winopen query.
        
    


<MiddleMouse>pp
        
            Open (put) a URL based on the current clipboard contents in the current buffer.
            You can also just select (for non-X11 users: copy) some non-URL text, and
            search for it with the default search engine or keyword (specified by the
            'defsearch' option) with p.
        
    


PP
        
            Open (put) a URL based on the current clipboard contents in a new buffer. Works
            like p but opens a new tab.
        
        
            Whether the new buffer is activated, depends on the 'activate' option.
        
    


gPgP
        
            Open (put) a URL based on the current clipboard contents in a new buffer.
            Works like P but inverts the 'activate' option.
        
    


<C-x>[count]<C-x>
        
            Decrements the last number in URL by 1, or by [count] if given. Negative
            numbers are not supported, as this is not generally useful, so the number cannot
            be decremented past 0.
        
    


<C-a>[count]<C-a>
        Increments the last number in URL by 1, or by [count] if given.
    


~~
        
            Open home directory. You can also use the hints and have the probably fastest
            file browser on earth. :)
        
    


navigatingNavigating

H<C-o>CTRL-O:ba:back:[count]ba[ck] [url]:ba[ck]!CTRL-o
        
            Go [count] pages back in the browser history. If [url] is specified go back to
            the first matching URL. The special version :back! goes to the beginning
            of the browser history.
        
    


L<C-i>CTRL-i:fo:fw:forward:[count]fo[rward] [url]:fo[rward]!CTRL-i
        
            Go [count] pages forward in the browser history. If [url] is specified go
            forward to the first matching URL. The special version :forward! goes to
            the end of the browser history.
        
    


:ju:jumps:ju[mps]
        List all jumps aka current tab's history aka session history.

        
            Current history position is marked with >, jump numbers are counters to be used
            with :back (above zero record) or :forward (below zero record).
        
    


ghgh
        Go home. Opens the homepage in the current tab.
    


gHgH
        
            Go home in a new tab. Opens the homepage in a new tab. Whether the new tab is
            activated or not depends on the 'activate' option.
        
    


gu[count]gu
        Go to [count]th parent directory.

        Pressing gu repeatedly would ascend the URL in this order:
        
            http://www.example.com/path/to/file.txt?query=value#anchor
            http://www.example.com/path/to/file.txt?query=value
            http://www.example.com/path/to/file.txt
            http://www.example.com/path/to/
            http://www.example.com/path/
            http://www.example.com/
            http://example.com/
        

    


gUgU
        Go to the root of the web site.

        
            gU on http://www.example.com/dir1/dir2/file.htm opens
            http://www.example.com/.
            When browsing a local directory, it goes to the root directory.
        
    

grgr
        View current tab in Reader View.

        
            gr on http://www.example.com opens
            about:reader?url=http://www.example.com/.
            Not all pages are compatible with Reader View, so the page will sometimes fail to load.
        
    

reloadingReloading

rr
        Force reloading of the current web page.
    


RR
        Force reloading of the current web page skipping the cache.
    


:re:reload:re[load][!]
        
            Reload current web page. Forces reloading of the current page. If [!] is given,
            skip the cache.
        
    


:reloada:reloadall:reloada[ll][!]
        Reload all pages. Forces reloading of all pages. If [!] is given, skip the cache.
    


stoppingStopping

<C-c><C-c>
        Stop loading the current web page. This only works if there is no selection, otherwise the
           selected text is copied to the clipboard. Usually this duality isn't a problem, as while
           a page is loading, there is seldom a text to copy.
        
    


:st:stop:st[op]
        Stop loading the current web page.
    


:stopa:stopall:stopa[ll]
        Stop loading all web pages.
    


pastingPasting

<S-Insert><S-Insert>
        
           On Linux this option paste from primary selection. On other operating systems like
           Windows and Mac, this option will paste from clipboard. To force vimperator always
           use pasting from clipboard regaring operating system, use:
        
       Example:

        
            :inoremap <S-Insert> <C-v>
            :cnoremap <S-Insert> <C-v>
        
    


writingsave-fileWriting

:w:write:sav:saveas:sav[eas][!] [file]
        
            Save current web page to disk. If [file] is omitted, save to the page's
            default filename. Existing documents will only be overwritten if [!] is given.
        
    


quittingsave-sessionQuitting

:q:quit:q[uit]
        
            Quit current tab. If this is the last tab in the window, close the window. If
            this was the last window, close Vimperator. When quitting Vimperator, the
            session is not stored.
        
    


:qa:qall:quita:quitall:quita[ll]
        
            Quit Vimperator. Quit Vimperator, no matter how many tabs/windows are open.
            The session is not stored.
        
    


:wc:wclose:winc:winclose:winc[lose]
        Close window.
    


:winon:winonly:winon[ly]
        Close all other windows.
    


:xa:xall:wq:wqa:wqall:wqa[ll]:xa[ll]
        
            Save the session and quit. Quit Vimperator, no matter how many tabs/windows
            are open. The session is stored. :wq is different from Vim, as it
            closes the window instead of just one tab by popular demand. Complain on the
            mailing list if you want to change that.
        
    


ZQZQ
        Quit and don't save the session. Works like :qall.
    


ZZZZ
        
            Quit and save the session. Quit Vimperator, no matter how many tabs/windows
            are open. The session is stored. Works like :xall.
        
    


current-directoryThe current directory

:chd:chdir:cd:cd [-|path]
        Change the current directory. :cd - changes to the last directory.
    


:pw:pwd:pw[d]
        Print the current directory name.
    




bufferdocumentBuffer
ContentsBuffer informationMotion commandsJumping to elementsZoomingWorking with framesCopying textAlternate style sheets

Vimperator holds exactly one buffer object for each tab. It is usually an
(X)HTML document with advanced features.

buffer-informationBuffer information

<C-g><C-g>
        
            Print the current file name. Also shows some additional file information like
            file size or the last modified date.
        
    


g<C-g>g<C-g>
        Print file information. Same as :pageinfo.
    


:pa:pageinfo:pa[geinfo]
        Show various page information. See :help pageinfo for available options.
    


gfgf
        
            Toggle between rendered and source view. Alternates the page in the current tab
            between a normally rendered view and the internal editor source view.
        
    


gFgF
        
            View source with an external editor. Opens the source code of the current web
            site with the external editor specified by the 'editor' option. For now the
            external editor must be able to download and open files from a remote URL.
        
    


:vie:viewsource:vie[wsource][!] [url]
        
            View source code of current document. If [url] is specified then view the
            source of that document. When [!] is given, it is opened with the external
            editor.
        
    



motionscrollingMotion commands

^00
        
            Scroll to the absolute left of the document. Unlike in Vim, 0 and ^
            work exactly the same way.
        
    


$$
        Scroll to the absolute right of the document
    


<Home>gg[count]gg
        
            Go to the top of the document. When used with [count] like in 35gg, it
            scrolls to 35% of the document.
        
    


<End>G[count]G
        
            Go to the end of the document. When used with [count] like in 35G, it
            scrolls to 35% of the document.
        
    


N%{count}%
        Scroll to {count} percent of the document.
    


<Left>h[count]h
        
            Scroll document to the left. If [count] is specified then move [count] times as
            much to the left.
        
        
            If the document cannot scroll more, a beep is emitted (unless 'visualbell' is
            set).
        
    


<C-e><Down>j[count]j
        
            Scroll document down. If [count] is specified then move [count] times as much
            down.
        
        
            If the document cannot scroll more, a beep is emitted (unless 'visualbell' is
            set).
        
    


<C-y><Up>k[count]k
        
            Scroll document up. If [count] is specified then move [count] times as much up.
        
        
            If the document cannot scroll more, a beep is emitted (unless 'visualbell' is
            set).
        
    


<Right>l[count]l
        
            Scroll document to the right. If [count] is specified then move [count] times
            as much to the right.
        
        
            If the document cannot scroll more, a beep is emitted (unless 'visualbell' is
            set).
        
    


<C-d>[count]<C-d>
        
            Scroll window downwards in the buffer. The number of lines is set by the
            'scroll' option which defaults to half a page. If [count] is given 'scroll' is
            first set to this value.
        
    


<C-u>[count]<C-u>
        
            Scroll window upwards in the buffer. The number of lines is set by the
            'scroll' option which defaults to half a page. If [count] is given 'scroll' is
            first set to this value.
        
    


<S-Space><PageUp><C-b>[count]<C-b>
        Scroll up a full page. Scroll window [count] pages Backwards (upwards) in the buffer.
    


<Space><PageDown><C-f>[count]<C-f>
        Scroll down a full page. Scroll window [count] pages Forwards (downwards) in the buffer.
    


jumpingJumping to elements

<Tab><Tab>
        Advance keyboard focus to the next element.
    


<S-Tab><S-Tab>
        Rewind keyboard focus to the previous element.
    


gi[count]gi
        
            Focus last used input field. If there is no last input field, it focuses the
            first input field. When used with [count] it directly jumps to the [count]th input
            field.
        
    


]f[count]]f
        
            Focus next frame. Transfer keyboard focus to the [count]th next frame in
            order. The newly focused frame is briefly colored red. Does not wrap.
        
    


[f[count][f
        
            Focus previous frame. Transfer keyboard focus to the [count]th previous frame
            in order. The newly focused frame is briefly colored red. Does not wrap.
        
    


]][count]]]
        
            Follow the link labeled next or >
            if it exists. Useful when browsing forums or
            documentation. Change 'nextpattern' to modify its
            behavior. It follows relations between files too.
        
    


[[[count][[
        
            Follow the link labeled prev,
            previous or < if it exists. Useful
            when browsing forums or documentation. Change
            'prevpattern' to modify its behavior. It
            follows relations between files too.
        
    


zoomingzoomZooming

The zooming commands are dependent on two properties -- a zoom range and a
series of levels within that range.

The absolute value of the page zoom is limited to a value within the configured
zoom range (default: 30%--300%). The zoom levels are used by
zi/zo, and similar commands, to change the zoom value in steps. The
default zoom levels are 30%, 50%, 67%, 80%, 90%, 100%, 110%, 120%, 133%, 150%,
170%, 200%, 240%, 300%.

The available zoom range can be changed by setting the
'zoom.minPercent' and
'zoom.maxPercent' Firefox
preferences. The zoom levels can be changed using the
'toolkit.ZoomManager.zoomLevels'
preference.

Note: 
    'toolkit.ZoomManager.zoomLevels' is specified as a list of
    values between 0 and 1, not as a percentage.


+zi[count]zi
        Enlarge text zoom of current web page. Mnemonic: zoom in.
    


zm[count]zm
        Enlarge text zoom of current web page by a larger amount. Mnemonic: zoom more.
    


-zo[count]zo
        Reduce text zoom of current web page. Mnemonic: zoom out.
    


zr[count]zr
        Reduce text zoom of current web page by a larger amount. Mnemonic: zoom reduce.
    


zz[count]zz
        
            Set text zoom value of current web page. Zoom value can be between 30% and 300%.
            If it is omitted, text zoom is reset to 100%.
        
    


zI[count]zI
        Enlarge full zoom of current web page. Mnemonic: zoom in.
    


zM[count]zM
        Enlarge full zoom of current web page by a larger amount. Mnemonic: zoom more.
    


zO[count]zO
        Reduce full zoom of current web page. Mnemonic: zoom out.
    


zR[count]zR
        Reduce full zoom of current web page by a larger amount. Mnemonic: zoom reduce.
    


zZ[count]zZ
        
            Set full zoom value of current web page. Zoom value can be between 30 and
            300%. If it is omitted, full zoom is reset to 100%.
        
    


:zo:zoom:zo[om][!] [value]:zo[om][!] +{value} | -{value}
        
            Set zoom value of current web page. [value] can be an absolute value
            between 30% and 300% or a relative value if prefixed with "-" or "+". If
            [value] is omitted, zoom is reset to 100%.
        

        
            Normally this command operates on the text zoom; if used with [!], it
            operates on full zoom.
        
    


framesWorking with frames

:frameo:frameonly:frameo[nly]
        Show only the current frame's page.
    


copyingyankingCopying text

When running in X11, the text of the following commands is not only
copied to the clipboard but is also put into the X11 selection, which
can be pasted with the middle mouse button:

yy
        
            Yank current location to the clipboard. When running in X11 the location is
            also put into the selection, which can be pasted with the middle mouse button.
        
    


YY
        Copy currently selected text to the system clipboard.
    


alternate-stylesheetAlternate style sheets

Page authors may specify alternate style sheets for an HTML document. Users can
then switch between these various style sheets, selecting their favorite.

:pagest:pagestyle:pagest[yle] [stylesheet]
        
            Select the author style sheet to apply. If [stylesheet] is not specified
            the page's default style sheet is used.
        

        All author styling can be removed by setting the 'usermode' option.
    




Command-line-modeCommand-linemode-cmdlineCommand-line mode
ContentsCommand-line editingCommand-line completion

Command-line mode is used to enter Ex commands (:) and text search patterns
(/ and ?).

::
        
            Start Command-line mode. In Command-line mode, you can perform extended
            commands, which may require arguments.
        
    



cmdline-editingCommand-line editing

c_<C-c><C-c>
        Quit Command-line mode without executing.
    


c_<C-]><C-]>
        Expand a command-line abbreviation.
    


c_<Up><Up>
        
            Recall the previous command line from the history list which matches the
            current command line.
        
    


c_<Down><Down>
        
            Recall the next command line from the history list which matches the current
            command line.
        
    


c_<S-Up>c_<PageUp><S-Up><PageUp>
        Recall the previous command line from the history list.
    


c_<S-Down>c_<PageDown><S-Down><PageDown>
        Recall the next command line from the history list.
    


cmdline-completionCommand-line completion

c_<Tab><Tab>
        
            Complete the word in front of the cursor according to the behavior specified in
            'wildmode'. If 'wildmode' contains "list" and there are multiple matches then
            the completion menu window is opened.
        
    


c_<S-Tab><S-Tab>
        Complete the previous full match when 'wildmode' contains "full".
    




Insert-modeInsertmode-insertInsert mode
ContentsInsert-mode special keys


    Insert mode is used to enter text in text boxes and text areas. When
    'insertmode' is set, focusing on a text area immediately switches to
    Insert mode.


i_ii_i
        Starts Insert mode in text areas when 'insertmode' is not set.
    



ins-special-keysInsert-mode special keys

i_<C-i><C-i>
        Launch the external editor. See the 'editor' option.
    


i_<C-]><C-]>
        Expand an Insert-mode abbreviation.
    




optionsOptions
ContentsSetting optionsSetting Firefox optionsList of options


    Vimperator has a number of internal variables and switches which can be set to
    achieve special effects. These options come in 5 forms:


booleancan only be on or offnumberhas a numeric valuestringhas a string valuecharlistlike a string but with unique charactersstringlista comma-separated list of strings

set-optionSetting options

:set:se:se[t]
        Show all options that differ from their default value.
    

:se[t] all
        Show all options.
    

:se[t] {option}?
        Show value of {option}.
    

:se[t] {option} […]
        Toggle optionset, switch it on.Number optionshow value.String optionshow value.
    

:se[t] no{option} […]
        Toggle option: Reset, switch it off.
    

:se[t] {option}! […]:se[t] inv{option} […]
        Toggle option: Invert value.
    

:se[t] inv{option}={value} […]:se[t] {option}!={value} […]
        For list options, toggle the specified values.

        If the option is a list, the given values are toggled. Given
        :set opt=foo,bar
        
then,
        :set opt!=foo,baz
        
has the same result as
        :set opt=bar,baz
    


:set-default:se[t] {option}& […]
        Reset option to its default value.
    

:se[t] all&
        Set all options to their default value.
    

:set-args:se[t] {option}={value} […]
        
            Set string or number option to {value}.
            For numeric options the value must be given in decimal.
            The old value can be inserted by typing <Tab>.
        
    

:set+=:se[t] {option}+={value} […]
        
            Add the {value} to a number option, or append the {value}
            to a string option.  When the option is a comma separated list, a
            comma is added, unless the value was empty. If the option is a list
            of flags, superfluous flags are removed.  When adding a flag that
            was already present the option value doesn't change.
        
    

:set^=:se[t] {option}^={value} […]
        
            Multiply the {value} to a number option, or prepend the
            {value} to a string option. When the option is a comma
            separated list, a comma is added, unless the value was empty.
        
    

:set-=:se[t] {option}-={value} […]
        
            Subtract the {value} from a number option, or remove the
            {value} from a string option if it is there. If the
            {value} is not found in a string option, there is no error or
            warning. When the option is a comma separated list, a comma is
            deleted, unless the option becomes empty. When the option is a list
            of flags, {value} must be exactly as they appear in the option.
            Remove flags one by one to avoid problems.
        
    

:setlocal:setl:setl[ocal]:setl[ocal] all:setl[ocal] {option}?:setl[ocal] {option}:setl[ocal] no{option}:setl[ocal] inv{option}:setl[ocal] {option}&:setl[ocal] all&:setl[ocal] {option}={value}:setl[ocal] {option}+={value}:setl[ocal] {option}^={value}:setl[ocal] {option}-={value}
        
            The same as :set command, but operates on current tab options
            only. See :set for details.
        
    

:setglobal:setg:setg[lobal]:setg[lobal] all:setg[lobal] {option}?:setg[lobal] {option}:setg[lobal] no{option}:setg[lobal] inv{option}:setg[lobal] {option}&:setg[lobal] all&:setg[lobal] {option}={value}:setg[lobal] {option}+={value}:setg[lobal] {option}^={value}:setg[lobal] {option}-={value}
        
            The same as :set command, but operates on global options only.
            See :set for details.
        
    

expand-environment-varexpand-env:set_env


    Environment variables are expanded for path options like 'cdpath' and
    'runtimepath'. The variable notation is $VAR (terminated by a non-word
    character) or ${VAR}. %VAR% is also supported on Windows.


Firefox-optionspreferencesSetting Firefox options

Firefox options can be viewed and set with the following commands:

:prefs:preferences:pref[erences]
        
            Show the Firefox preferences dialog. You can change the browser
            preferences from this dialog. Be aware that not all Firefox
            preferences work, because Vimperator overrides some key bindings and
            changes Firefox's GUI.
        
    

:prefs!:preferences!:pref[erences]!
        
            Opens about:config in the current tab where you can change advanced Firefox
            preferences.
        
    

:set!:set-!:se[t]! {preference}={value}
        
            Change any Firefox {preference} (those in the about:config
            window). You can also reset/delete those preferences with
            :set! preference&.
        
    

overridden-preferences


    Vimperator sets several Firefox preferences at startup. If this is undesirable,
    they can be changed to a different value in your RC file using
    :set! preference=value


The following preferences are set:


    dom.popup_allowed_events
    accessibility.typeaheadfind.autostart
    accessibility.typeaheadfind




list-optionsList of options

'act''activate''activate' 'act'stringlist(default: addons,downloads,extoptions,help,homepage,quickmark,tabopen,paste)
        
        Define when tabs are automatically activated. Available items:

        allAll tabs created by any commands and mappingsaddons:addo[ns] commanddownloads:downl[oads] commandextoptions:exto[ptions] commandhelp:h[elp] commandhomepagegH mappingquickmarkgo and gn mappingstabopen:tabopen[!] commandpasteP and gP mappings

    


'ac''autocomplete''autocomplete' 'ac'boolean(default: true)
        
        If set, automatically list completions while typing.
        Warning: Setting this option might be slow on older hardware, so turn that option off if you experience unwanted slowdowns.
    


$CDPATH'cd''cdpath''cdpath' 'cd'string
            (default: equivalent to $CDPATH or ,,)
        
        
            List of directories searched when executing the :cd
            command. This is only used for relative paths if an absolute path is
            specified then the option is ignored.
        
    


'cpt''complete''complete' 'cpt'charlist(default: sl)
        
        Items which are completed at the :open prompts. Available items:

        sSearch engines and keyword URLsfLocal fileslFirefox location bar entries (bookmarks and history sorted in an intelligent way)bBookmarkshHistorySSearch engine suggestionstOpen tabs

        
            The order is important, so :set complete=bs would list bookmarks first,
            and then any available quick searches.
        

        Warning: 
            Using b and h can make completion very slow if there are many items.
        
    


'ds''defsearch''defsearch' 'ds'string(default: Your default search engine keyword or "google")
        
        
            Sets the default search engine. The default search engine name is
            used in the :open [arg] command if [arg] neither
            looks like a URL nor like a specified search engine/keyword.
        

        
            This means that if you set 'defsearch' to youtube,
            then :open arnold schwarzenegger will be exactly the same as
            :open youtube arnold schwarzenegger. Therefore, you need
            to add a keyword or search engine youtube first.
        

        
            If 'defsearch' is empty, then Firefox will always attempt to
            open the raw [arg].
        
    


'editor''editor'string(default: gvim -f)
        
        
            Set the external text editor.
            Sets the editor to run when <C-i> is pressed in Insert and TextArea
            modes.
        

        Warning: 
            Vimperator will not behave correctly if the editor forks its own
            process, such as with gvim without the -f argument.
        
    


'noex''noexrc''ex''exrc''exrc' 'ex'boolean(default: off)
        
        
            Allow reading of an RC file in the current directory. This file is
            sourced in addition to, and after, your default RC file.
        
    


'eht''extendedhinttags''extendedhinttags' 'eht'string(default: //input[not(@type='hidden')] | //xhtml:input[not(@type='hidden')] |
//a | //xhtml:a | //area | //xhtml:area | //iframe | //xhtml:iframe |
//textarea | //xhtml:textarea | //button | //xhtml:button | //select |
//xhtml:select |
//*[@onclick or @onmouseover or @onmousedown or @onmouseup or @oncommand or @role='link'])
        
        The XPath string of hintable elements activated by ;.
    


'noeb''noerrorbells''eb''errorbells''errorbells' 'eb'boolean(default: off)
        
        Ring the bell when an error message is displayed.
    


'ei''eventignore''eventignore'stringlist(default: )
        
        
            A list of autocommand event names which should be ignored. If the list contains
            the value all then all events are ignored.
        
    

'enc''encoding''encoding'string(default: UTF-8)
        
        
            Changes the character encoding of the current buffer. Valid only for
            the current page.
        
    


'fenc''fileencoding''fileencoding'string(default: UTF-8)
        
        Changes the character encoding that Vimperator uses to read and write files.
    


'nofc''nofocuscontent''fc''focuscontent''focuscontent' 'fc'boolean(default: off)
        
        
            Focus the content after a page has loaded. This is useful if you
            always want to stay in Normal mode when browsing between web sites.
            When on, it blurs any textbox which often is
            automatically focused on page load.  If you usually like
            'focuscontent' but sometimes you'd like to focus the first
            input field, you can use gi to jump to it.
        
        Note: Some pages use JavaScript to focus the textfield, then 'focuscontent'
        might not work as expected.
    


'fh''followhints''followhints' 'fh'number(default: 0)
        
        Change the behaviour of <Return> in Hints mode.

        Possible values:

        0Follow the first hint as soon as typed text uniquely identifies it.1Follow the selected hint on <Return>.2Follow the selected hint on <Return> only if it's been <Tab>-selected.
    


'nofs''nofullscreen''fs''fullscreen''fullscreen' 'fs'boolean(default: off)
        
        
            Show the current window fullscreen. Also hide certain GUI elements like the
            statusline.
        
    


'hf''helpfile''helpfile' 'hf'string(default: intro)
        
        
            Name of the main help file. This is the tail component of the chrome
            URL as displayed in the status line when viewing the page.
        
    

'hc''hintchars''hintchars' 'hc'string(default: 0123456789)
        
        
            Controls which characters are used to generate hint labels.
            Case-sensitive.
        
    

'hin''hintinputs''hintinputs' 'hin'stringlist(default: label,value)
        
        
            When generating hints for input elements that do not have an
            explicit caption, this specifies the methods to try and generate a
            textual hint. It tries the options in the order that you give, and
            uses the first that it finds.
        

        valueThe hint is the value displayed in a text input, or the selected option for a dropdown.labelThe value of an explicit label for the input, this will not match most manually added labels that are found on sites.name The name of the input will be used, although the name is not designed for user consumption, it is frequently very similar to the label.
    

'sth''showtexthints''showtexthints' 'sth'boolean(default: on)
        
        Whether to show text picked by :hintinputs after the hint label.
    


'hm''hintmatching''hintmatching' 'hm'string(default: contains)
        
        Change the hint matching algorithm during Hints mode.

        Possible values:

        containsThe typed characters are split on whitespace, and these character groups have to match anywhere inside the text of the link.wordstartswithThe typed characters are matched with the beginning of the first word (see 'wordseparators') in the link as long as possible. If no matches occur in the current word, then the matching is continued at the beginning of the next word. The words are worked through in the order they appear in the link. If the typed characters contain spaces, then the characters are split on whitespace. These character groups are then matched with the beginning of the words, beginning at the first one and continuing with the following words in the order they appear in the link.firstlettersBehaves like wordstartswith, but non-matching words aren't overleaped.fuzzyHints are matched according to the fuzzy search algorithm.customDelegate to a custom function: liberator.plugins.customHintMatcher(hintString)
    


'ht''hinttags''hinttags' 'ht'string(default: //input[not(@type='hidden' or @disabled)] | //xhtml:input[not(@type='hidden')] | //a | //xhtml:a | //area | //xhtml:area | //iframe | //xhtml:iframe | //textarea | //xhtml:textarea | //button | //xhtml:button | //select | //xhtml:select | //*[@onclick or @onmouseover or @onmousedown or @onmouseup or @oncommand or @role='link'or @role='button' or @role='checkbox' or @role='combobox' or @role='listbox' or @role='listitem' or @role='menuitem' or @role='menuitemcheckbox' or @role='menuitemradio' or @role='option' or @role='radio' or @role='scrollbar' or @role='slider' or @role='spinbutton' or @role='tab' or @role='textbox' or @role='treeitem' or @tabindex])
        
        XPath string of hintable elements activated by f and F
    


'hto''hinttimeout''hinttimeout' 'hto'number(default: 0)
        
        
            Timeout before automatically following a non-unique numerical hint. Set to 0
            (the default) to only follow numeric hints after pressing <Return> or
            when the hint is unique.
        
    


'hi''history''history' 'hi'number(default: 500)
        
        Number of Ex commands and search patterns to store in the command-line history.
    


'nohls''nohlsearch''hls''hlsearch''hlsearch' 'hls'boolean(default: off)
        
        Highlight previous search pattern matches
    


'noic''noignorecase''ic''ignorecase''ignorecase' 'ic'boolean(default: on)
        
        Ignore case in search patterns.
    


'nois''noincsearch''is''incsearch''incsearch' 'is'boolean(default: on)
        
        Show where the search pattern matches as it is typed.

        Note: Incremental searching currently only works in the forward direction.
    


'noim''noinsertmode''im''insertmode''insertmode' 'im'boolean(default: on)
        
        
            Use Insert mode as the default for text areas. This is useful if you
            want to use the known Firefox interface for editing text areas.
            Input fields default to this behaviour irrespective of this option's
            setting.
        

        
            Textarea mode can be entered with <C-t> from Insert mode.
            
        
    



'status''status'stringlist(default: input,location,bookmark,history,ssl,tabcount,position)
        
        Determines which elements to show in the status bar.

        Possible values:

        inputA partial command like 'g' if you just start typing 'gg'locationThe URL of the currently loaded pagebookmark❤: indicates current page has been bookmarkedhistory<>: go backward and forward in history indicatorstabcount[N/M]: N is the index of the currently selected tab and M is
                                    the total number of tabs in the current window.positionThe vertical scroll positionsslShow an icon when the current buffer is connecting with SSL.zoomlevelThe main content's zoom level
    


'slv''statuslinevisibility''statuslinevisibility' 'slv'string(default: auto)
        
        Controls the visibility of the statusline.

        Possible values:

        autoHide statusline in fullscreen automaticallyhiddenNever show the statuslinevisibleAlways show the statusline

        Note: The statusline is always visible when a command is entered.
    


'nolks''nolinksearch''lks''linksearch''linksearch' 'lks'boolean(default: off)
        
        
            Limit the search to hyperlink text.  This includes (X)HTML elements
            with an href atrribute and XLink simple links.
        
    


'nolpl''lpl''noloadplugins''loadplugins''loadplugins' 'lpl'boolean(default: on)
        
        
            Load plugin scripts when starting up. When on, yet unloaded plugins
            are automatically loaded after the vimperatorrc file has been
            sourced. To load plugins earlier, use the :loadplugins
            command within the vimperatorrc.
        
    


'maxitems''maxitems'number(default: 20)
        
        Maximum number of items to display at once in a listing.
    


'msgs''messages''messages' 'msgs'number(default: 100)
        
        Number of messages to store in the message history.
    


'mto''messagetimeout''messagetimeout' 'mto'number(default: 5000)
        
        
            Timeout before hiding informational messages in milliseconds. If
            you have ever missed a message, you can always just type
            :messages to view the last messages.
            You can also disable this timeout completely by setting it to -1.
        
    


'nextpattern''nextpattern'stringlist(default: \bnext,^>$,^(>>|»)$,^(>|»),(>|»)$,\bmore\b)
        
        
            Patterns to use when guessing the 'next' page in a document
            sequence when the user hits ]]. Each pattern, in order, is
            matched against all links in the page with the first match being
            used. The patterns are case insensitive regular expressions and the
            link elements are those defined by 'hinttags'.
        
    


'newtab''newtab'stringlist(default: )
        
        
            Define which Ex commands output the result in a new tab
            automatically. You can also use :tab command to manually
            output a command in a new tab.
        

        The possible values:

        allAll commandsaddons:addo[ns] commanddownloads:downl[oads] commandextoptions:exto[ptions] commandhelp:h[elp] commandjavascript:javascript! or :js! commandprefs:pref[erences]! or :prefs! command

    


'noonline''online''online'boolean(default: on)
        
        Show and set the 'work offline' behavior.
    


'pageinfo''pa''pageinfo' 'pa'charlist(default: gfm)
        
        Desired info in the :pageinfo output.

        Available items:

        gGeneral infofFeedsmMeta tags

        
            The order of the options defines the order in which they appear in
            the result.
        
    


'nopassthrough''passthrough''passthrough'boolean(default: off)
        
        Define if keypresses are passed to webpages if you are not in Insert mode.
    


'pps''popups''popups' 'pps'stringlist(default: tab)
        
        
            Define where to show requested popup windows.  Does not apply to
            windows which are opened by middle clicking a link, they always open
            in a new tab.
        

        Possible values:

        tabOpen popups in a new tabwindowOpen popups in a new windowresizedOpen resized popups in a new window

        
            If neither tab nor window is provided, all popups open in the current tab.
            tab and window are mutually exclusive, and the last one listed is
            effective.
        

        Note: This option does not change the popup blocker of Firefox in any way.
    


'prevpattern''previouspattern''prevpattern' 'previouspattern'stringlist(default: \bprev\b|\bprevious\b,^<$,^(<<|«)$,^(<|«),(<|«)$)
        
        
            Patterns to use when guessing the 'previous' page in a document
            sequence when the user hits [[. Each pattern, in order, is
            matched against all links in the page with the first match being
            used. The patterns are case insensitive regular expressions and the
            link elements are those defined by 'hinttags'.
        
    


$VIMPERATOR_RUNTIME'rtp''runtimepath''runtimepath' 'rtp'stringlist
            (default: $VIMPERATOR_RUNTIME or
    Unix, Mac: ~/.vimperator,
    Windows: ~/vimperator)
        
        List of directories searched for runtime files:

        
            colors/
            macros/
            plugin/
        

        Example:

        :set runtimepath=~/myvimperator,~/.vimperator

        

            This will search for plugins in both
            ~/myvimperator/plugin and
            ~/.vimperator/plugin
        

        
            On startup, if the environment variable $VIMPERATOR_RUNTIME does not
            exist, Vimperator will set it to match this value.
        
    


'si''sanitizeitems''sanitizeitems' 'si'stringlist(default: cache,commandline,cookies,formdata,history,marks,sessions)
        
        The default list of private items to sanitize.

        cache       Cachecommandline Command-line historycookies     Cookiesdownloads   Download historyformdata    Saved form and search historyhistory     Browsing historymarks       Local and URL marksmacros      Saved macrosofflineapps Offline website datapasswords   Saved passwordssessions    Authenticated sessionssitesettingsSite preferences

        
            When history items are sanitized :open,
            :tabopen and :winopen command-line
            history entries are also removed.
        
    


'sts''sanitizetimespan''sanitizetimespan' 'sts'number(default: 1)
        
        
            The default sanitizer time span. Only items created within this timespan are
            deleted.
        

        Note: This only applies to cookies, history, formdata, and downloads.

        0Everything1Last hour2Last two hours3Last four hours4Today
    

'scr''scroll''scroll' 'scr'number(default: 0)
        
        
            Number of lines to scroll with <C-u> and <C-d>
            commands.  The number of lines scrolled defaults to half the window
            size.  When a [count] is specified to the <C-u> or
            <C-d> commands this is used to set the value of
            'scroll' and also used for the current command. The value can
            be reset to half the window height with :set scroll=0.
        
    


'nosb''noscrollbars''sb''scrollbars''scrollbars' 'sb'boolean(default: on)
        
        Show or hide the scrollbars in the main content window. If the
        document has a frameset, then only the outermost scrollbars are affected.

        Note: This option requires a page reload to take effect.
    


'nosi''nosmallicons''si''smallicons''smallicons' 'si'boolean(default: on)
        
        Defines the icon size in the main toolbar.
    


'shell''sh''shell' 'sh'string(default: _$SHELL_ or "sh", Windows: "cmd.exe")
        
        Shell to use for executing :! and :run commands.
    


'shellcmdflag''shcf''shellcmdflag' 'shcf'string
            (default: -c, Windows: /c)
        
        Flag passed to shell when executing :! and :run commands.

        bash -c gvim
    


'nosmd''noshowmode''smd''showmode''showmode' 'smd'boolean(default: on)
        
        Show the current mode in the command line.
    


'ssli''showstatuslinks''showstatuslinks' 'ssli'number(default: 1)
        
        
            Show the destination of the link under the cursor in the status bar.
            Also links which are focused by keyboard commands like
            <Tab> are shown.
        

        Possible values:

        0Don't show link destination1Show the link destination in the status line2Show the link destination in the command line3Show the link destination in the content area
    


'noscs''nosmartcase''scs''smartcase''smartcase' 'scs'boolean(default: on)
        
        
            Override the 'ignorecase' option if the pattern contains
            uppercase characters.  This is only used if the 'ignorecase'
            option is set.
        
    


'suggestengines''suggestengines'stringlist(default: google)
        
        
            Set the search engines which can be used for completion suggestions.
            Add S to the 'complete' option if you want to use
            this feature.
        

        Warning: 
            This feature could make tab-completion slower because it needs to
            wait for changes, so use it only if you have a fast internet
            connection.
        
    


'notn''notabnumbers''tn''tabnumbers''tabnumbers' 'tn'boolean(default: off)
        
        
            Tab numbers appear as small numbers in the right corner of tabs.
            They can be used to quickly get the position of a tab, which can
            be used by other commands like 12gt to go to tab number 12.
        
    


'titlestring''titlestring'string(default: Vimperator)
        
        
            Change the title of the browser window.  Vimperator changes the
            browser title from Title of web page - Mozilla Firefox
            to Title of web page - Vimperator.  If you don't like
            that, you can restore it with:
        
        :set titlestring=Mozilla Firefox
    



'gui''toolbars''toolbars' 'gui'stringlist(default: )
        
        Show or hide Firefox's GUI elements like the menu bar, toolbars or the tab bar.
        Note: Since everything in Firefox is basically a toolbar, the 'toolbars' and 'gui'
            aliases are equivalent and can be used interchangeably. :set gui=none,tabs
            might read better for some, whereas :set toolbars=nonavigation might be better
            in other cases.
        

        This option is designed to allow full UI customization with Firefox's capabilities,
            as well as with Vimperator's. Therefore the default value :set gui= just
            means that we don't touch any GUI elements by default. If you want a truly minimal
            GUI, you can - however - just use :set gui=none in your .vimperatorrc file.

        Individual elements can be shown with :set toolbars=<toolbar> and hidden with
            :set toolbars=no<toolbar>. If you want to toggle the display of an element,
            just use :set toolbars=inv<toolbar>, which also provides a good basis for
            adding some mappings to quickly toggle certain elements.
        

        Supported elements:

        menuMenu BartabsTab Bar Warning: Due to a bug, currently gets shown again by FirefoxnavigationMain toolbar which contains buttons for navigating back/forward as well as the location box.bookmarksBookmark baraddonsOptional add-on bar at the bottom. By default, only shown if there are addons using it.

        In order to quickly change the whole GUI, Vimperator provides two more meta elements:
        allShow as much GUI as possiblenoneHide all GUI

        Since the elements are processed sequentially, you can combine these items
        to change the whole GUI really quickly. E.g. to just show the tab bar, but
        no other GUI elements, use :set gui=none,tabs.


    


'noum''nousermode''um''usermode''usermode' 'um'boolean(default: off)
        
        Show current website with a minimal style sheet to make it easily accessible.

        Note: This is a local option for now, a global value may be supported in the future.
    


'urlseparator''urlseparator'string(default: ,\\s)
        
        
            Set the separator regex used to separate multiple URL args. Multiple
            arguments can be specified for :open, and similar commands,
            using this regex as the separator. Using whitespace alone is not
            generally useful since it is often contained in a single argument.
            E.g., :open linus torvalds should perform a single search
            for the key words linus and torvalds. If this
            is set to the empty string then these arguments will never be split.

        
        
            If regex special character is used as url separator, it has to be escaped.
            For instance, | should be escaped as \\|.
        
    


'verbose','vbs''verbose' 'vbs'number(default: 1)
        
        
            Define which info messages are displayed.  When bigger than zero,
            Vimperator will give messages about what it is doing.  These can be
            viewed at any time with the :messages command. The highest
            value is 15, being the most verbose mode.
        
        
    


'novb''novisualbell''vb''visualbell''visualbell' 'vb'boolean(default: off)
        
        
            Use visual bell instead of beeping on errors. The visual bell style is
            controlled by :hi Bell.
        

        
            To disable both the audible and visual bells use :set visualbell
            and :hi Bell display: none;
        
    


'wim''wildmode''wildmode' 'wim'stringlist(default: list:full)
        
        
            Defines how command-line completion works.  It is a comma-separated
            list of parts, where each part specifies what to do for each
            consecutive use of the completion key.  The first part specifies the
            behavior for the first use of the completion key, the second part
            for the second use, etc.
        

        These are the possible values for each part:

        Complete only the first match.fullComplete the next full match. After the last, the original string is used.longestComplete till the longest common string.listWhen more than one match, list all matches.list:fullWhen more than one match, list all matches and complete the first match.list:longest
                When more than one match, list all matches and
                complete till the longest common string. When there
                is only a single match, it is fully completed
                regardless of the case.
            

    


'wsp''wordseparators''wordseparators' 'wsp'string(default: [\.,!\?:;/\\"\^\$%&?\(\)\[\]\\<a>\\</a><>#\\*\+\\|=~ _\\-])
        
        
            A regex which defines the word separators which are used for the
            'hintmatching' types wordstartswith and
            "firstletters" to split the words in the text of a link.
        
    

'yankencodedurl''yankencodedurl'boolean(default: false)
        
        Set the yank mode for copying URLs. By default, only whitespace charaters are replaced by %20 to make pasting in other apps easy. If yankencodedurl is true, any non-ASCII character is URL encoded as well.
    

'ani''animations' 'animations' 'ani'boolean(default: false)
        
        animation on/off.
    


text-search-commandsText search commands
Contents


    Vimperator provides a Vim-like interface to Firefox's standard text search
    functionality. There is no support for using regular expressions in search
    commands as Firefox does not provide native regex support. It is unlikely that
    this will ever be available.


//{pattern}[/]<CR>
        Search forward for the first occurrence of {pattern}.

        
            If \c appears anywhere in the pattern the whole pattern is handled as though
            'ignorecase' is on. \C forces case-sensitive matching for the whole pattern.
        
        
            If \l appears in the pattern only the text of links is searched for a
            match as though 'linksearch' is on. \L forces the entire page to be searched
            for a match.
        
    


??{pattern}[?]<CR>
        Search backwards for {pattern}.

        {pattern} can use the same modifiers as for /.

        Note: Incremental searching currently only works in the forward direction.
    


nn
        Find next. Repeat the last search 1 time (until count is supported).
    


NN
        
            Find previous. Repeat the last search 1 time (until count is supported) in the
            opposite direction.
        
    


**
        Search forward for the next word under the cursor.
    


##
        Search backward for the previous word under the cursor.
    


:noh:nohlsearch:noh[lsearch]
        
            Remove the search highlighting. The document highlighting is turned back on
            when another search command is used or the 'hlsearch' option is set.
        
    



tabsTabs
ContentsListing tabsOpening tabsChanging tabsReordering tabsClosing tabsLooping over tabs


    Tabs are used to be able to view many web pages at the same time. Each tab
    contains exactly one buffer—multiple buffers per tab are not supported. As a
    result many buffer and tab commands are interchangeable.


listing-tabsListing tabs

B:tabs:ls:files:buffers:buffers [filter]B
        
            Show a list of buffers (=tabs) matching [filter]. Without [filter]
            list all tabs.
        

        A buffer may be marked with one of the following indicators:

        %The current buffer#The alternate buffer for :e # and <C-^>
    


:keepa:keepalt:keepa[lt] {cmd}
        Execute a command without changing the current alternate buffer.
    


opening-tabsOpening tabs

:tab:tab {cmd}
        
            Execute {cmd} and tell it to output in a new tab. Works only for commands that
            support it, currently:
        

        
            :tab addons
            :tab downloads
            :tab extoptions
            :tab help
            :tab javascript!
            :tab preferences!
        
    


:window:wind:wind[ow] {cmd}
        
            Execute {cmd} and tell it to output in a new window. See :tab for the
            list of supported commands.
        
    


:tabdu:tabduplicate:[count]tabdu[plicate]
        
            Duplicate the current tab and switch to the duplicate. If [count] is given,
            duplicate the tab [count] times.
        
    



See opening for other ways to open new tabs.

changing-tabsChanging tabs

gb[count]gb
        
            Repeat last :buffer! command. This is useful to quickly jump between
            buffers which have a similar URL or title.
        
    


gB[count]gB
        
            Repeat last :buffer! command in reverse direction. Just like gb
            but in the other direction.
        
    


gt[count]gt
        
            Go to the next tab. Cycles to the first tab when the last is selected.
            If [count] is specified go to the [count]th tab.
        
    


<C-PageDown><C-Tab><C-n>[count]<C-n>
        
            Go to the next tab. Cycles to the first tab when the last is selected.
            If [count] is specified go to the [count]th next tab.
        
    


<C-PageUp><C-S-Tab><C-p>gT[count]gT
        
            Go to the previous tab. Cycles to the last tab when the first is selected.
            If [count] is specified go to the [count]th previous tab.
        
    


:bn:bnext:tn:tnext:tabn:tabnext:[count]tabn[ext] [count]:[count]tn[ext] [count]:[count]bn[ext] [count]
        
            Switch to the next or [count]th tab. Cycles to the first tab when the last is
            selected and [count] is not specified.
        
    


:bN:bNext:bp:bprevious:tN:tNext:tabN:tabNext:tp:tprevious:tabp:tabprevious:[count]tabp[revious] [count]:[count]tp[revious] [count]:[count]tabN[ext] [count]:[count]bp[revious] [count]:[count]bN[ext] [count]
        
            Switch to the previous tab or go [count] tabs back. Wraps around from the
            first tab to the last tab.
        
    


<C-6><C-^>[count]<C-^>
        
            Select the previously selected tab. This provides a quick method of toggling
            between two tabs. If [count] is specified, go to the [count]th tab.
        
    


b:b:buffer:[count]b[uffer][!] [url|index][count]b
        
            Go to the specified buffer from the buffer list. Argument can be either the
            buffer index or the full URL. If [count] is given, go to the [count]th buffer.
        

        
            If the argument is neither a full URL nor an index but uniquely identifies a
            buffer, it is selected. With [!] the next buffer matching the argument is
            selected, even if it cannot be identified uniquely. Use b as a
            shortcut to open this prompt.
        

        If the argument is #, the alternate buffer will be selected (see <C-^>).

        If no argument is given the current buffer remains current.
    


g^g0:bf:bfirst:br:brewind:tabfir:tabfirst:tabr:tabrewind:tabr[ewind]:tabfir[st]:br[ewind]:bf[irst]g0g^
        Switch to the first tab.
    


g$:bl:blast:tabl:tablast:tabl[ast]:bl[ast]g$
        Switch to the last tab.
    


:tabde:tabdetach:tabde[tach]
        
            Detach the current tab, and open it in its own window. As each window must
            contain at least one tab it is not possible to detach the only tab in a window.
            Use :tabduplicate to copy the tab then call :tabdetach.
        
    


:taba:tabattach:taba[ttach] {window-index} [tab-index]
        
            Attach the current tab to another window. {window-index} is an index into the
            list of open windows and [tab-index] is the index at which to insert the
            tab in the other window's tab list. If this is the last tab in a window, the
            window will be closed.
        
    


reordering-tabsReordering tabs

:tabm:tabmove:tabm[ove] [N]:tabm[ove][!] [+N] | [-N]
        
            Move the current tab to a position after tab [N]. When [N] is 0, the
            current tab is made the first one. Without [N] the current tab is made the
            last one. [N] can also be prefixed with "+" or "-" to indicate a relative
            movement. If [!] is specified the movement wraps around the start or end of the
            tab list.
        
    



closing-tabsClosing tabs

:tabc:tabclose:bun:bunload:bw:bwipeout:bd:bdelete:[count]bd[elete][!] [-s[elect] 'lastactive|left|right'] [arg]
        
            Delete current tab. If [count] is specified then [count] tabs are
            removed. By default, the tab to the right of the deleted tab(s) is selected.
        

        
            When used with [arg], remove all tabs which contain [arg] in the
            hostname. [!] forces this command to also search for [arg] in the full
            URL and also the title of the tab, and closes even if the tab is an App tab.
            Use with care.
        
        
            The [-select] option specifies which tab is selected after closing the current one:
            Possible values are:
            
                left
                right
                lastactive
            

        
    

d[count]d
        
            Delete current buffer tab. If [count] is specified then [count] tabs are
            removed. Afterwards, the tab to the right of the deleted tab(s) is selected.
        
    

D[count]D
        Like d but selects the tab to the left of the deleted tab.
    


:tabo:tabonly:tabo[nly]
        Close all other tabs.
    


u:u:undo:[count]u[ndo] [url][count]u
        
            Undo closing of a tab. If a count is given, don't undo the last but the
            [count]th last closed tab. With [url] restores the tab matching the URL.
        
    


:undoa:undoall:undoa[ll]
        
            Undo closing of all closed tabs. Firefox stores up to 10 closed tabs, even
            after a browser restart.
        
    



looping-over-tabsLooping over tabs

:tabd:tabdo:bufd:bufdo:tabd[o] {cmd}
        
            Execute {cmd} in each tab. {cmd} is executed in each tab starting with the
            first and ending with the last which becomes the current tab.
        

        
            {cmd} should not alter the tab list state by adding, removing or reordering
            tabs.
        
    




quick-hintshintsHints
Contents

Hints are the way in which Vimperator allows you to follow links on a page. By
providing each link with a suitable hint, you can access all links with a
similar amount of minimal effort. This contrasts strongly with the traditional
approaches offered by the mouse, in which you must first find and then aim for
the link you would like, and by using repeated tabbing which quickly becomes
tedious unless you always visit the first link on a page.

ff{hint}
        
            Start QuickHint mode. In QuickHint mode, every hintable item
            (according to the 'hinttags' XPath query) is assigned a
            unique number. You can either type this number or type part of the
            link text as specified by the 'hintmatching' option, and it
            is followed as soon as it can be uniquely identified. Often it can
            be useful to combine these techniques to narrow down results with
            some letters, and then typing a single digit to make the match
            unique. Pressing <Leader> (defaults to
            :let mapleader = "\") toggles "escape-mode", where numbers are
            treated as normal text. <Esc> stops this mode at any
            time.
        
    


FF{hint}
        
            Start QuickHint mode, but open link in a new tab. Like normal QuickHint
            mode (activated with f) but opens the link in a new tab. The new
            tab will be loaded in background according to the
            browser.tabs.loadInBackground Firefox preference.
        
    


extended-hints

;;{mode}{empty}{hint}
        
            Start an extended hint mode. ExtendedHint mode is useful for
            performing operations on hinted elements other than the default
            left mouse click. For example, you can yank link locations, open
            them in a new window or save images.  If you want to yank the
            location of hint 24, press ;y to start this hint
            mode. Then press 24 to copy the hint location.
        

        {mode} can be one of:

        
            ;; ; to focus an element
            ;? ? to show information about an element (incomplete)
            ;s s to save a link's destination
            ;S S to save a media object
            ;a a to save a link's destination (prompting for save location)
            ;A A to save a media object (prompting for save location)
            ;f f to focus a frame
            ;o o to open its location in the current tab
            ;t t to open its location in a new tab
            ;b b to open its location in a new background tab
            ;w w to open its destination in a new window
            ;F F to follow a sequence of <CR>-delimited hints in background tabs
            ;O O to generate an :open with hint's URL (like O)
            ;T T to generate a :tabopen with hint's URL (like T)
            ;W W to generate a :winopen with hint's URL
            ;v v to view its destination source
            ;V V to view its destination source in the external editor
            ;y y to yank its destination location
            ;Y Y to yank its text description
            ;# # to yank its anchor URL
            ;c c to open its context menu
            ;i i to open a media object
            ;I I to open a media object in a new tab
            ;x x to display an element's title text, or alt text if none.
        

        
            Depending on the value of 'complete', you can get a list of
            extended hint modes by pressing <Tab> from the ;
            prompt.
        

        
            Hintable elements for all extended hint modes can be set in the
            'extendedhinttags' XPath string.
        
    



mapKey mappings, abbreviations, and user-defined commands
ContentsKey mappingMap commandsSpecial argumentsKey sequencesSpecial charactersAbbreviationsUser-defined commandsExamples

key-mappingmappingmapmacroKey mapping


    The key mapping commands can be used to either redefine the standard key
    bindings or define new ones. A mapping consists of a key, or key-sequence,
    which is translated to a string of characters. Example:

:map <F2> :echo new Date().toDateString()<CR"gt;

    will echo the current date to the command line when <F2> is pressed.


:map-modes


    Keys can be mapped in four distinct modes:



    Normal mode: When browsing normally
    Visual mode: When selecting text with the cursor keys
    Insert mode: When interacting with text fields on a website
    Command-line mode: When typing into the Vimperator command line


Warning: 
    Mappings are NOT saved between sessions, make sure you put them in your
    vimperatorrc file!


:map-commandsMap commands

:map:map {lhs} {rhs}:nm:nmap:nm[ap] {lhs} {rhs}:vm:vmap:vm[ap] {lhs} {rhs}:im:imap:im[ap] {lhs} {rhs}:cm:cmap:cm[ap] {lhs} {rhs}
        
            Map the key-sequence {lhs} to {rhs} for the applicable mode(s). The {rhs} is
            remapped, allowing for nested and recursive mappings.
        
    


:no:noremap:no[remap] {lhs} {rhs}:nn:nnoremap:nn[oremap] {lhs} {rhs}:vn:vnoremap:vn[oremap] {lhs} {rhs}:ino:inoremap:ino[remap] {lhs} {rhs}:cno:cnoremap:cno[remap] {lhs} {rhs}
        
            Map the key-sequence {lhs} to {rhs} for the applicable mode(s). No remapping of
            the {rhs} is performed.
        
    


:unm:unmap:unm[ap] {lhs} {rhs}:nun:nunmap:nun[map] {lhs} {rhs}:vun:vunmap:vun[map] {lhs} {rhs}:iu:iunmap:iu[nmap] {lhs} {rhs}:cu:cunmap:cu[nmap] {lhs} {rhs}
        Remove the mapping of {lhs} for the applicable mode(s).
    


:mapc:mapclear:mapc[lear]:nmapc:nmapclear:nmapc[lear]:vmapc:vmapclear:vmapc[lear]:imapc:imapclear:imapc[lear]:cmapc:cmapclear:cmapc[lear]
        
            Remove all mappings for the applicable mode(s). All user-defined mappings are
            cleared.
        
    


:map:nm[ap]:vm[ap]:im[ap]:cm[ap]
        List all mappings for the applicable mode(s).
    


:map_l:map {lhs}:nmap_l:nm[ap] {lhs}:vmap_l:vm[ap] {lhs}:imap_l:im[ap] {lhs}:cmap_l:cm[ap] {lhs}
        List all mappings starting with {lhs} for the applicable mode(s).
    



:map-argumentsSpecial arguments

:map-<silent>


    When the first argument to one of the mapping commands is <silent>,
    {rhs} is not echoed to the command line, nor, for that matter, anything
    else until the command has completed.



:map-urls


    The mapping becomes an effective mapping only on the page specifed by {urlpattern},
    if {-urls={urlpattern}} is given to a mappings command.
    {urlpattern} must be regular expression.




    Below is an overview of which modes each map command applies to:





:map   :noremap   :unmap   :mapclear  – both Normal and Visual modes
:nmap  :nnoremap  :nunmap  :nmapclear – Normal mode
:vmap  :vnoremap  :vunmap  :vmapclear – Visual mode
:imap  :inoremap  :iunmap  :imapclear – Insert mode
:cmap  :cnoremap  :cunmap  :cmapclear – Command-line mode


key-notation,key-sequenceKey sequences


    For most keys, the key-sequence is the same as the character you see when you
    type that key, however there are some exceptions which allow for a much larger
    number of keys to be used in mappings.



    <lt>, <, <Space>, \  allow a literal < or space character.
    ', " and \ must be used to avoid escaping issues when mapping a quote or backslash.
    
        <Left> <Right> <Up>
        <Down> <PageUp> <PageDown>
        <Esc> <CR> (for carriage return/enter)
    
    <CapsLock> <NumLock> <Ins> <Del> <Tab> <BS> (for a backspace)
    <F1> through <F12> work as expected



    Most keyboards have some modifiers such as the control, alt or meta keys. In
    order to create a mapping that uses these keys the correct prefix must be used
    within the angle brackets.



    <C-x>: The control or ctrl key.
    <A-x>: The alt key.
    <M-x>: The meta key, windows key, or command key
    <S-x>: The shift key.



    These prefixes can be combined however you see fit, though you should note that
    within angle brackets all alphabetic characters are read as lowercase. In order
    to force them to be uppercase, you must specify the S- prefix as well.
    Additionally, you should never use the S- prefix with a number or piece of
    punctuation, even if you require a shift to type that character; doing so will
    give you a mapping that cannot be typed. With non-character keys, tab and
    space, the S- modifier works just like C- A- and M-. Some examples may clarify
    the situation:



    xc: type x, and then type c
    <C-x>c: hold control and type x, then type c without control
    <C-2>: type 2 while holding control
    <C-@>: type @ while holding control
    <S-Space>: press space while holding shift
    <C-A-j>: press j while holding control and alt
    <C-A-J>: exactly the same as above
    <C-A-S-j>: press J while holding control and alt


:map-special-charsSpecial characters

<Nop><Nop>
        
            Do nothing. This command is useful for disabling a specific mapping.
            :map   will prevent <C-n> from doing anything.
        
    


<CR>map_return<CR>
        
            Expand to a line terminator in a key mapping. An Ex command in the {rhs} of a
            mapping requires a line terminator after it so that it is executed when the
            mapping is expanded. <CR> should be used for this purpose.
        
    


<Leader>mapleader<Leader>
        
            Expands to the value of the "mapleader" variable in key mapping. If
            "mapleader" is unset or empty then \ is used. Example:
        
        :map h :echo "Hello"
        
works like
        :map \h :echo "Hello"
        
but after
        let mapleader = ","
        
it works like
        :map ,h :echo "Hello"
    



abbreviationsAbbreviations


    Vimperator can automatically replace words identified as abbreviations,
    which may be used to save typing or to correct commonly misspelled
    words. An abbreviation can be one of three types that are defined by the
    types of constituent characters. Whitespace and quotes are non-keyword
    types, and all other characters are keyword types.



    A "full-id" abbreviation consists entirely of keyword characters (e.g., "teh", "msoft").
    An "end-id" abbreviation ends in keyword character but otherwise contains all non-keyword characters (e.g., "'i").
    A "non-id" abbreviation ends in a non-keyword character but otherwise contains any non-whitespace character (e.g., "def'").



    Strings that cannot be abbreviations include "a'b" and "a b".



    An abbreviation is recognized when a space, quote character, or
    <C-]> is typed after the abbreviation. There are no default
    abbreviations, and abbreviations are never recursive.


:ab:abbreviate:ab[breviate] [-j[avascript]] {lhs} {rhs}:ab[breviate] {lhs}:ab[breviate]
        
            Define an abbreviation. Expand {lhs} to {rhs}.
            If [-javascript] is given and {rhs} contains JavaScript code,
            {rhs} will be expanded to the result of the JavaScript code.
            If only {lhs} is given, list all abbreviations that start with {lhs}.
            If no arguments are given, list all abbreviations.
        
    


:ca:cabbrev:ca[bbrev] [-j[avascript]] {lhs} {rhs}:ca[bbrev] {lhs}:ca[bbrev]
        
            Define an abbreviation for Command-line mode. Same as :abbreviate,
            but for Command-line mode only.
        
    


:ia:iabbrev:ia[bbrev] [-j[avascript]] {lhs} {rhs}:ia[bbrev] {lhs}:ia[bbrev]
        
            Define an abbreviation for Insert mode. Same as :abbreviate but
            for Insert mode only.
        
    


:una:unabbreviate:una[bbreviate] {lhs}
        Remove an abbreviation.
    


:cuna:cunabbrev:cuna[bbrev] {lhs}
        
            Remove an abbreviation for Command-line mode. Same as :unabbreviate,
            but for Command-line mode only.
        
    


:iuna:iunabbrev:iuna[bbrev] {lhs}
        
            Remove an abbreviation for Insert mode. Same as :unabbreviate but for
            Insert mode only.
        
    


:abc:abclear:abc[lear]
        Remove all abbreviations.
    


:cabc:cabclear:cabc[lear]
        Remove all abbreviations for Command-line mode.
    


:iabc:iabclear:iabc[lear]
        Remove all abbreviations for Insert mode.
    


user-commandsUser-defined commands

:com:command:com[mand]
        List all user-defined commands.
    


:com[mand] {cmd}
        List all user-defined commands that start with {cmd}.
    


:com[mand][!] [{attr}…] {cmd} {rep}
        
            Define a new user command. The name of the command is {cmd} and its replacement
            text is {rep}. The command's attributes are {attr}. If a command with this name
            already exists an error is reported unless [!] is specified, in which case the
            command is redefined. Unlike Vim, the command may start with a lowercase
            letter.
        

        
            The command's behavior can be specified by providing attributes when the
            command is defined.
        

        :command-nargs
            Argument handling
        

        
            By default user commands accept no arguments. This can be changed by specifying
            the -nargs attribute.
        

        The valid values are:

        -nargs=0No arguments are allowed (default)-nargs=1One argument is allowed-nargs=*Zero or more arguments are allowed-nargs=?Zero or one argument is allowed-nargs=+One or more arguments are allowed

        :command-complete
            Argument completion
        

        
            Completion for arguments to user defined commands is not available by default.
            Completion can be enabled by specifying one of the following arguments to the
            -complete option when defining the command.
        

        altstylealternate author style sheetsbookmarkbookmarksbufferbufferscolorcolor schemescommandEx commandsdialogFirefox dialogsdirdirectoriesenvironmentenvironment variableseventautocommand eventsfilefileshelphelp tagshighlighthighlight groupshistoryhistoryjavascriptJavaScript expressionsmacronamed macrosmappinguser mappingsmenumenu itemsoptionVimperator optionspreferenceFirefox preferencessearchsearch engines and keywordsshellcmdshell commandssidebarsidebar panelsurlURLsusercommanduser commandscustom,{func}custom completion, provided by {func}

        :command-completion-custom
            Custom completion
        

        
            Custom completion can be provided by specifying the custom,{func} argument to
            -complete. The {func} is called with two arguments, a completion context, and
            an object describing the command's arguments. It should set the context's
            completions property, or return an object, with items and start
            properties, describing the completions and where the replacement is to start.
        

        
            start is the index into the word being completed at which the returned values
            should be applied and completions is a two dimensional array of the form:
            [[arg1, description1], [arg2, description2], …]
        

        

        :command-count
            Count handling
        

        
            By default user commands do not accept a count. Use the -count attribute if
            you'd like to have a count passed to your user command. This will then be
            available for expansion as <count> in the argument.
        

        :command-bang
            Special cases
        

        
            By default a user command does not have a special version, i.e. a version
            executed with the ! modifier. Providing the -bang attribute will enable this
            and <bang> will be available in the argument.
        

        :command-description
            Command description
        

        
            The command's description text can be set with -description. Otherwise it will
            default to "User-defined command".
        

        :command-replacement-text
            Replacement text
        

        
            The replacement text {rep} is scanned for escape sequences and these are
            replaced with values from the user-entered command line. The resulting string
            is then executed as an Ex command.
        

        The valid escape sequences are:

        <args>The command arguments exactly as supplied<count>Any supplied count, e.g. 5<bang>! if the command was executed with the ! modifier<lt>
                A literal '<' character to allow for a literal copy of one
                of the escape sequences. E.g., <lt>args> will expand to a
                literal <args>
            

        
            "q-" can be prefixed to the escape sequence so that the value is quoted, making
            it suitable for expression evaluation. Example: <q-args>
        
    


:comc:comclear:comc[lear]
        Delete all user-defined commands.
    


:delc:delcommand:delc[ommand] {cmd}
        Delete the user-defined command {cmd}.
    


command-examplesExamples

Add a :Google command to search via google:
:command -nargs=* Google open google <args>





expressionexprevalExpression evaluation
Contents



:ec:echo:ec[ho] {expr}
        
            Echo the expression. Useful for showing informational messages. Multiple lines
            can be separated by \n. {expr} can either be a quoted string, or any expression
            which can be fed to eval() like 4+5. You can also view the source code of
            objects and functions if the return value of {expr} is an object or function.
        
    


:echoe:echoerr:echoe[rr] {expr}
        
            Echo the expression as an error message. Just like :echo but echoes
            the result highlighted as ErrorMsg and saves it to the message history.
        
    


:echom:echomsg:echom[sg] {expr}
        
            Echo the expression as an informational message. Just like :echo but
            also saves the message in the message history.
        
    


:exe:execute:exe[cute] {expr}
        
            Execute the string that results from the evaluation of {expr} as an Ex command.
            Example: :execute "source " + io.getRCFile().path sources the appropriate
            RC file.
        

        Note: Unlike Vim this currently only supports a single argument.
    


:js:javas:javascript:javas[cript] {cmd}:javascript <<{endpattern}\n{empty}{script}\n{empty}{endpattern}:javascript[!]
        
            Run any JavaScript command through eval(). Acts as a JavaScript interpreter by
            passing the argument to eval().
            :javascript alert(Hello world) shows
            a dialog box with the text "Hello world".
            :javascript <<EOF reads all the lines
            until a line starting with "EOF"
            is found, and interpret them with the JavaScript eval() function.
        

        
            The special version :javascript! opens the JavaScript console of
            Firefox.
        

        
            <Tab> completion is available for :javascript cmd (but not
            yet for the :js <<EOF multiline widget). Be aware that Vimperator needs
            to run {cmd} through eval() to get the completions, which could have unwanted
            side effects.
        
    


:let:let {var-name} [+-.]= {expr1}:let {var-name}:let
        
            Sets or lists a variable. Sets the variable {var-name} to the value of the
            expression {expr1}. If no expression is given, the value of the variable is
            displayed. Without arguments, displays a list of all variables.
        
    


:unl:unlet:unl[et][!] {name} …
        
            Deletes the variable {name}. Several variable names can be given. When used
            with [!] no error message is output for non-existing variables.
        
    



different-marksmarksMarks
Contents


    Vimperator supports a number of different marks:



    Bookmarks which allow you to mark a web page as one of your favorites for easy access.
    QuickMarks allow you to define up to 62 (a-zA-Z0-9) web sites (or groups of web sites) which you visit most often.
    Local marks to store the position within a web page.
    History is also a special type of marks, as Vimperator automatically remembers sites which you have visited in the past.


bookmarksBookmarks
Contents

a:bma:bmark:bma[rk][!] [-title=title] [-keyword=kw] [-tags=tag1,tag2] [-folder=folderPath] [url]a
        Add a bookmark.

        The following options are interpreted:

        
            -title="custom title" (short option: -t)
            -tags=comma,separated,tag,list (short option: -T)
            -keyword=keyword (short option: -k)
            -folder=folderPath (short option: -f)
        

        
            If [!] is present, a new bookmark is always added. Otherwise, the first
            bookmark matching [url] is updated.
        

        
            When creating a new bookmark, if [-title] isn't given, either the web
            page's title or URL is used. You can omit the optional [url] argument, so
            just do :bmark to bookmark the currently loaded web page with a default
            title and without any tags.
            And the bookmark root folder is used when [-folder=folderPath] is omitted.
        
    

AA
        
            Toggle bookmarked state of current URL. Add/remove a bookmark for the current
            location, depending on if it is already bookmarked or not. In contrast to the
            :bmark command, the bookmark is just starred which means it is placed
            in the Unfiled Bookmarks Folder instead of the bookmarks menu.
        
    

:bmarks:bmarks[!] [filter]
        
            List or open multiple bookmarks. Open the message window at the bottom of the
            screen with all bookmarks which match [filter] either in the title or
            URL. You can then use extended hint commands like ;o to open the desired
            bookmark.
        

        
            The special version :bmarks! works the same as :bmarks except it
            opens all the found bookmarks in new tabs.
        

        Filter can also contain the following options:

        
            -tags=comma,separated,tag,list (short option: -T)
            -keyword=keyword (short option: -k)
            -max=N (short options: -m)
        
    

:delbm:delbmarks:delbm[arks] [url]:delbm[arks]!
        
            Delete a bookmark. Deletes all bookmarks which match the [url]. If
            omitted, [url] defaults to the URL of the current buffer. Use <Tab>
            key on a string to complete the URL which you want to delete.
        

        If ! is specified then all bookmarks will be deleted.
    

historyHistory
Contents

<C-o>[count]<C-o>
        
            Go to an older position in the jump list. The jump list is just the browser
            history for now. If [count] is specified go back [count] pages.
        
    

<C-i>[count]<C-i>
        
            Go to a newer position in the jump list. The jump list
            is just the browser history for now. If [count]
            is specified go forward [count] pages.
        
    

<M-Left><A-Left>H[count]H
        Go back in the browser history. If [count] is specified go back [count] pages.
    

<M-Right><A-Right>L[count]L
        
            Go forward in the browser history. If [count] is specified go forward [count]
            pages.
        
    

:ba:back:[count]ba[ck] [url]:[count]ba[ck]!
        
            Go back in the browser history. If [count] is specified go back [count] pages.
        
        
            The special version :back! goes to the beginning of the browser history.
        
    

:fw:fo:forward:[count]fo[rward] [url]:[count]fo[rward]!
        
            Go forward in the browser history. If [count] is specified go forward [count]
            pages.
        
        
            The special version :forward! goes to the end of the browser history.
        
    

:hs:hist:history:hist[ory][!] [-max=N] [-remove] [filter]
        
            Show recently visited URLs. Open the message window at the bottom of the screen
            with all history items which match [filter] either in the title or URL.
        

        
            The special version :history! works the same as :history except
            it opens all the found items in new tabs.
        

        Filter can also contain the following options:

        
            -max=N (short options: -m)
            -remove (short options: -r)
        

        
            With the [-remove] option all history items which match [filter] either
            in the title or URL are removed from the history.
            If no filter is given, the 1000 last entries are deleted.
        
    

quickmarksQuickMarks
Contents

goa-zA-Z0-9
        
            Jump to a QuickMark in the current tab. Open any QuickMark in the current tab.
            You can mark any URLs with M{a-zA-Z0-9}. These QuickMarks are
            persistent across browser sessions.
        
    

gna-zA-Z0-9
        
            Jump to a QuickMark in a new tab. Works like
            go{a-zA-Z0-9} but opens the QuickMark in a
            new tab. Whether the new tab is activated or not depends
            on the 'activate' option.
        
        
            Mnemonic: Go in a new tab. gt would make more
            sense but is already taken.
        
    

gwa-zA-Z0-9
        
            Jump to a QuickMark in a new window. Works like
            go{a-zA-Z0-9} but opens the QuickMark in a
            new windows single open and active tab. The new window
            is opened in foreground.
        
    

Ma-zA-Z0-9
        
            Add new QuickMark for current URL. You can go to a
            marked URL in the current tab with
            go{a-zA-Z0-9} or in a new tab with
            gn{a-zA-Z0-9}. These QuickMarks are
            persistent across browser sessions.
        
    

:delqm:delqmarksmarks:delqm[arks]!
        Delete the specified QuickMarks. QuickMarks are presented as a list.

        Examples:

        
            :delqmarks Aa b p deletes QuickMarks A, a, b and p
            :delqmarks b-p deletes all QuickMarks in the range b to p
            :delqmarks! deletes all QuickMarks
        
    

:qma:qmarka-zA-Z0-9
        
            Mark a URL with a letter for quick access. You can also mark whole groups
            like this:
        

        
             :qmark f http://forum1.com, http://forum2.com, imdb some artist
        

        
            'urlseparator' defines the delimiter between the URLs (default: ", ")
        
    

:qmarks:qmarks [arg]
        
            Show all QuickMarks. If [arg] is specified then
            limit the list to those QuickMarks mentioned.
        
    
localmarksLocal marks
Contents

ma-zA-Z
        
            Set mark at the cursor position. Marks a-z are local to the buffer, whereas
            A-Z are valid between buffers.
        
    

`'a-zA-Z
        
            Jump to the mark. Marks a-z are local to the buffer, whereas A-Z are valid
            between buffers.
        
    

:delm:delmarksmarks:delm[arks]!
        Delete the specified marks. Marks are presented as a list.

        Examples:

        
            :delmarks Aa b p deletes marks A, a, b and p
            :delmarks b-p deletes all marks in the range b to p
            :delmarks! deletes all marks for the current buffer
        

    

:ma:marka-zA-Z
        Mark current location within the web page.
    

:marks:marks [arg]
        
            Show all location marks of the current web page. If
            [arg] is specified then limit the list to those
            marks mentioned.
        
    


repeatingRepeating commands
ContentsSingle repeatsMacrosUsing scriptsProfiling

Vimperator can repeat a number of commands and record macros.

single-repeatSingle repeats

.[count].
        
            Repeat the last keyboard mapping [count] times. Note that, unlike in Vim, this
            does not apply solely to editing commands, mainly because Vimperator doesn't
            have them.
        
    


@:[count]@:
        Repeat the last Ex command [count] times.
    



macroscomplex-repeatMacros

qq{0-9a-zA-Z}
        
            Record a key sequence into a macro.
            Available macros are {0-9a-zA-Z} (uppercase to append).
            Type q to stop recording.
        
    


:macros:mac[ros] [pat]
        
            List recorded macros matching the optional regular expression [pat]. If
            no regex is given, list all macros.
        
    


:delmac:delmacros:delmac[ros] {args}:delmac[ros]!
        Delete the specified macros. Macros are presented as a list.

        Examples:

        
            :delmacros Aa b p deletes macros A, a, b and p
            :delmacros b-p deletes all macros in the range b to p
            :delmacros! deletes all macros
        
    


@:play:pl[ay] {arg}[count]@{arg}
        
            Plays the contents of macro with name {arg} [count] times. The @ mapping
            only accepts {0-9a-z} as {arg}.
        
    


@@[count]@@
        Replay the last executed macro [count] times.
    



using-scriptsUsing scripts

:so:source:so[urce][!] {file}
        
            Read Ex commands, JavaScript, or CSS from {file}. You can either source files
            which mostly contain Ex commands like map < gt and put JavaScript code
            within a:
        

        
js <<EOF
hello = function () {
   alert("Hello world");
}
EOF


        

            Or you can alternatively source a file which ends in .js. These files are
            automatically sourced as pure JavaScript files.
        

        
            Note: In both cases you must add functions to the global window object like
            shown above, functions written as:
        


function hello2() {
    alert("Hello world");
}

        
are only available within the scope of the script.

        
            The .vimperatorrc file in your home directory and any
            files in ~/.vimperator/plugin/ are always
            sourced at startup. ~ is supported as a
            shortcut for the $HOME directory. If [!] is
            specified, errors are not printed.
        
    


:lpl:loadplugins:loadplugins
        
            Load all unloaded plugins immediately. Because plugins are automatically
            loaded after vimperatorrc is sourced, this command must be placed early
            in the vimperatorrc file if vimperatorrc also includes commands that are
            implemented by plugins. Additionally, this command allows for sourcing
            new plugins without restarting Vimperator.
        
    


:ru:runtime:runt[ime][!] {file} …
        
            Source the specified file from each directory in 'runtimepath'. Example:
        
        :runtime plugin/foobar.vimp
        

            Only the first found file is sourced. When [!] is given, all found files are
            sourced.
        
    


:scrip:scriptnames:scrip[tnames]
        List all sourced script names, in the order they were first sourced.
    


:fini:finish:fini[sh]
        
            Stop sourcing a script file. This can only be called from within a Vimperator
            script file.
        
    


profileprofilingProfiling

:time:[count]time[!] {code|:command}
        
            Profile a piece of code or a command. Run {code} [count] times (default: 1)
            and returns the elapsed time. {code} is always passed to JavaScript's eval(),
            which might be slow, so take the results with a grain of salt.
        

        If {code} starts with a :, it is executed as a Vimperator command.

        
            Use the special version with [!] if you just want to run any command multiple
            times without showing profiling statistics.
        
    



autocommandsAutomatic commands
ContentsExamples


    Autocommands are a way to automatically execute code when
    certain events happen.


:au:autocmd:au[tocmd]
        Execute commands automatically on events.

        :au[tocmd] {event} {pat} {cmd}

        
            If the -javascript (short name -js)
            option is specified, {cmd} is executed as JavaScript
            code, with any supplied arguments available as
            variables.
        

        Add {cmd} to the list of commands Vimperator will execute on {event} for a URL matching {pat}:

        
            :autocmd[!] {events} {pat}: list/remove autocommands filtered by {events} and {pat}
            :autocmd[!] {events}: list/remove autocommands matching {events}
            :autocmd[!] {pat}: list/remove autocommands matching {pat}
            :autocmd[!]: list/remove all autocommands
        

        Available {events}:

        

        {pat} is a regular expression, use .* if you want to match all URLs.

        Note: This differs from Vim which uses a glob rather than a regex for {pat}.

        The following keywords are available where relevant:

        
    

:doautoa:doautoall:doautoa[ll] {event} [url]
        
            Apply the autocommands matching the specified URL to all buffers. If no
            [url] is specified use the current URL.
        
    

:do:doautocmd:do[autocmd] {event} [url]
        
            Apply the autocommands matching the specified URL to the current buffer. If no
            [url] is specified use the current URL.
        
    
autocmd-examplesExamples

Enable passthrough mode on all Google sites:

:autocmd LocationChange .* js modes.passAllKeys = /google\.com/.test(buffer.URL)

Enable passthrough mode on some Google sites:

:autocmd LocationChange .* js modes.passAllKeys = /(www|mail)\.google\.com/.test(buffer.URL)


    Set the filetype to mail when editing email at Gmail:



:autocmd LocationChange .* :set editor=gvim -f
:autocmd LocationChange mail\\.google\\.com :set editor=gvim -f -c 'set ft=mail'




printingPrinting
ContentsFirefox printing dialogs

:ha:hardcopy:ha[rdcopy][!]
        
            Print current document. Open a GUI dialog where you can select the printer,
            number of copies, orientation, etc. When used with [!], the dialog is skipped
            and the default printer used.
        
    


:ha[rdcopy][!] >{filename}
        As above, but write the output to {filename}.

        Note: Not available on Windows.
    


Firefox-print-dialogsFirefox printing dialogs


    The "Print Preview" and "Page Setup" dialogs can be opened via the :dialog
    command

:dialog printpreview

    and

:dialog printsetup

    respectively.




guiVimperator's GUI
ContentsMenusDialogsAdd-onsSidebarStatus barToolbars


    Although Vimperator offers the most frequently used Firefox functionality via
    Ex and Normal mode commands there may be times when directly accessing the GUI
    is required. There are commands for accessing the menu system, standard dialogs
    and the sidebar.


menuMenus

:emenu:emenu {menu}
        
            Execute {menu} from the command line. This command provides command-line access
            to all menu items available from the main Firefox menubar. {menu} is a
            hierarchical path to the menu item with each submenu separated by a period.
            E.g. :emenu File.Open File…
        
    


dialogsDialogs

:addo:addons:addo[ns]
        
            Show available Firefox Extensions and Themes.
            You can add/remove/disable browser extensions from this dialog.
            Be aware that not all Firefox extensions work, because Vimperator overrides
            some key bindings and changes Firefox's GUI.
        
    


:dia:dialog:dia[log] [Firefox-dialog]
        Open a Firefox dialog.

        Available dialogs:
        aboutAbout Mozilla Firefox;addbookmarkAdd bookmark for the current pageaddonsManage Add-onsbookmarksList your bookmarkscertmgrShow certificate managercheckupdatesCheck for updatescleardataClear private dataconnectionprefsShow connection settingsconsoleJavaScript consolecookiesList your cookiescustomizetoolbarCustomize the ToolbardominspectorDOM InspectordownloadsManage DownloadshistoryList your historyimportImport Preferences, Bookmarks, History, etc. from other browsersopenfileOpen the file selector dialogpageinfoShow information about the current pagepagesourceView page sourceplacesPlaces Organizer: Manage your bookmarks and historypreferencesShow Firefox preferences dialogprintShow print dialogprintpreviewPreview the page before printingprintsetupSetup the page size and orientation before printingsaveframeSave frame to disksavepageSave page to disksearchenginesManage installed search enginesselectionsourceView selection source
    


:dl:downl:downloads:downl[oads]
        
            Show progress of current downloads. Open the original Firefox download dialog
            in a new tab. Here, downloads can be paused, canceled and resumed.
        
    



extensionsadd-onsAdd-ons

:exta:extadd:exta[dd] {file}
        Install an extension. {file} is an extension XPInstall file (*.xpi).
    


:extde:extdelete:extde[lete] {extension}:extde[lete]!
        
            Uninstall an extension. {extension} is the extension's name. When [!] is given
            all extensions are uninstalled.
        
    


:extd:extdisable:extd[isable] {extension}:extd[isable]!
        
            Disable an extension. {extension} is the extension's name. When [!] is given
            all extensions are disabled.
        
    


:exte:extenable:exte[nable] {extension}:exte[nable]!
        
            Enable an extension. {extension} is the extension's name. When [!] is given all
            extensions are enabled.
        
    


:extens:extensions:extens[ions]
        List all installed extensions.
    


:exto:extoptions:extp:extpreferences:exto[ptions][!] {extension}:extp[references][!] {extension}
        
            Open the preferences dialog for an extension. If [!] is given, open a dialog,
            otherwise open a buffer. See also 'newtab'.
        
    


sidebarSidebar

:sbcl:sbclose:sbcl[ose]
        Close the sidebar window.
    


:sbope:sbopen:sb:sbar:sideb:sidebar:sidebar {name}
        
            Open the sidebar window. {name} is any of the menu items listed under the
            standard Firefox View->Sidebar menu. Add-ons, Preferences and Downloads are
            also available in the sidebar.
        
    


status-linestatus-barStatus bar


    The status line appears at the bottom right of each window. The 'status'
    option can be used to specify which elements appear in the status bar and in which order.



toolbarToolbars


    Vimperator allows quickly changing visible toolbars.
    See the 'toolbars' option for details.





stylingStyling the GUI and web pages
Contents


    Vimperator allows you to style both the browser and any web pages you view. All
    styling is specified via CSS. Although you may style any user interface element
    via the :style command, most Vimperator elements can be styled with the
    :highlight command, for convenience.


:colo:colorscheme:colo[rscheme] {name}
        
            Load a color scheme. {name} is found by searching the 'runtimepath' for the
            first file matching colors/{name}.vimp.
        

        
            The ColorScheme autocommand is triggered after the color scheme has been
            sourced.
        
    


:hi:highlight:hi[ghlight][!] [-append] {group} [[{selector}] {css}]
        
            Highlight {group} with {css}. {css} is one or more comma separated CSS
            declarations (E.g. color: blue; background-color: red). Normally, {css} is
            checked for valid syntax before it's applied. Once you're certain it's valid,
            [!] can be used to skip the check to speed up Vimperator startup. {selector}
            can be any valid CSS selector, such as :hover, and, if provided, will
            restrict the match to matching elements.
        

        Common highlight groups are:

        BellVimperator's visual bellBooleanA JavaScript Boolean objectCmdLineThe command lineCmdOutputCompDescThe description column of the completion listCompGroupCompIconThe favicon of a completion rowCompItemA row of completion listCompItem[selected]A selected row of completion listCompMsgCompResultThe result column of the completion listCompTitleCompletion row titlesErrorMsgError messagesFilterThe matching text in a completion listFrameIndicatorThe indicator shown when a new frame is selectedFunctionA JavaScript Function objectHintA hint indicator. See :help hintsHintActiveThe hint element of link which will be followed by <Return>HintElemThe hintable elementHintImageThe indicator which floats above hinted imagesIndicatorInfoMsgInformation messagesKeywordA bookmark keyword for a URLLineNrThe line number of an errorMessageModeMsgThe mode indicator in the command lineMoreMsgThe indicator that there is more text to viewNonTextNormalNormal text in the command lineNullA JavaScript Null objectNumberA JavaScript Number objectObjectA JavaScript ObjectPreviewQuestionA prompt for a decisionStatusLineThe status barStringA JavaScript String objectTabCloseThe close button of a browser tabTabIconThe icon of a browser tabTabIconNumberThe number of a browser tab, over its iconTabNumberThe number of a browser tab, next to its iconTabTextThe text of a browser tabTagA bookmark tag for a URLTitleThe title of a listing, including :pageinfo, :jumpsURLA URLWarningMsgA warning message

        
            The full list of supported highlight groups and there current values can be seen by calling :highlight without any arguments.
        

        
            Every invocation completely replaces the styling of any previous invocation,
            unless -append (short option: -a) is provided, in which case {css} is
            appended to its current value. If {css} is not provided, any styles matching
            {group} are listed, or all styles if no {group} provided.
        
    


:highlight-clear:hi[ghlight] clear [{group} [{selector}]]
        
            Reset the highlighting for {group} to its default value. If
            {group} is not given, reset all highlighting groups.
        
    


:sty:style:sty[le][!] [-name={name}] [-append] {filter} [{css}]
        
            Add CSS styles to the browser or to web pages. {filter} is a comma separated
            list of URLs to match. URLs ending with * are matched as prefixes, URLs not
            containing any : or / characters are matched as domains. {css} is a full
            CSS rule set (e.g., body { color: blue; }).
        

        
            If {name} (short option: -n) is provided, any existing style with the same
            name is overridden, and the style may later be deleted using {name}. If
            -append (short option: -a) is provided along with -name, {css} and
            {filter} are appended to its current value.
        

        If {css} isn't provided, matching styles are listed.
    


:dels:delstyle:dels[tyle] [-name={name}] [-index={index}] [{filter}] [{css}]
        
            Delete any matching styles. If {filter} is provided, only matching elements of
            the filter are disabled. For instance, a filter mozilla.org, given a
            style for www.google.com,mozilla.org, will result in a style for
            www.google.com. The available options are:
        

        
            -name:  The name provided to :style (short option: -n)
            -index: For unnamed styles, the index listed by :style
                (short option: -i)
        
    


:styleenable:stylee:styenable:stye:styled[isable] [-name={name}] [-index={index}] {filter} {css}
        Enable any matching styles. Arguments are the same as for :delstyle.
    


:styledisable:styled:stydisable:styd:stylee[nable] [-name={name}] [-index={index}] {filter} {css}
        Disable any matching styles. Arguments are the same as for :delstyle.
    


:styletoggle:stylet:stytoggle:styt:stylet[oggle] [-name={name}] [-index={index}] {filter} {css}
        Toggle any matching styles. Arguments are the same as for :delstyle.
    





messagesError and informational messages
Contents

message-history


    Vimperator stores all info and error messages in a message
    history. The type of info messages output can be controlled by
    the 'verbose' option. The number of stored messages can be set
    with the 'messages' option.


:mes:messages:mes[sages]
        Display previously given messages.
    


:messc:messclear:messc[lear]
        Clear the message history.
    


g<g<
        
            Redisplay the last command output. Only the most recent command's output is
            available.
        
    

pagermore-prompt


 -- More --
 -- More -- SPACE/d/j: screen/page/line down, b/u/k: up, q: quit



    This message is given when the message window is filled with messages. It is
    only given when the 'more' option is on. It is highlighted with the MoreMsg
    group.


<CR> or j or <Down>  one more lined                                        down a page (half a screen)<Space> or <PageDown>down a screenG                                        down all the way, until the hit-enter prompt<BS> or k or <Up>    one line backu                                        up a page (half a screen)b or <PageUp>                            back a screeng                                        back to the startq, <Esc> or CTRL-C             stop the listing:                                        stop the listing and enter a command-line;                                        start an extended-hints command<C-Y>                          yank (copy) a modeless selection to the clipboard



developer-informationDeveloper information
ContentsWriting documentationHelp tagsWriting pluginsPlugin documentation

writing-docsdocumentationWriting documentation


    For every new feature, writing documentation is mandatory for the
    patch to be accepted. The docs are written in an XML dialect similar to
    XHTML, with a few tags specific to our documentation. For example:



<item>
    <tags><![CDATA[<F1> :help :h help]]></tags>
    <spec>:h<oa>elp</oa> <a>subject</a></spec>
    <spec><![CDATA[<F1>]]></spec>
    <description>
        <p>
            Open help window.
            The default section is shown unless <a>subject</a> is specified.
            If you need help for a specific topic, try <ex>:help overview</ex>.
        </p>
    </description>
</item>



    creates a new help section for the command :help and for
    the related key binding, <F1>. It also creates help tags
    for the command, its shortcuts, the key binding, and the general
    topic, 'help'. These tags enable linking to this section from
    other mentions of the topic and from the :help command.
    The above code displays as:



<F1>:help:hhelp:h[elp] {subject}<F1>
        
            Open help window.
            The default section is shown unless {subject} is specified.
            If you need help for a specific topic, try :help overview.
        
    



    If you don't know in which file/section you should put some
    documentation, ask on the mailing list or on
    #vimperator.


help-tagshelp-xmlHelp tags


    The following is a list of the more common XML tags used in help pages,
    along with their highlight groups.


LayoutpA paragraph (HelpParagraph)h1A first-level heading (HelpHead)h2A second-level heading (HelpSubhead)h3A third-level heading (HelpSubsubhead)codeA pre-formatted code block. (HelpCode)noteNote: A note paragraph. (HelpNote)warningWarning: A warning paragraph. (HelpWarning)
GenericlinkA generic link. (HelpLink)   @topicThe topic of the link. Either a help topic or a fully-qualified URI.emEmphasized text. (HelpEm)strA string, with its contents wrapped in quotes. (HelpString)logoVimperator's logo. (Logo)
ItemsitemA help entry (HelpItem)   tagsSee the 'Tagging' section (HelpTags)   specThe specification for this item, such as an example command-line. (HelpSpec)   typeFor options, the type of the option.
                            number, boolean, string, string, stringlist, or charlist.
                            (HelpType)
                           defaultFor options, the default value. (HelpDefault)   descriptionThe description of this help item. (HelpDescription)aRequired {argument}. (HelpArg)oaOptional [argument]. (HelpOptionalArg)
TaggingtagsSpace-separated list of strings to tag. Displayed right-aligned, and used for cross-linking. (HelpTags)@tagThe tag attribute. Applied to any element, generates a <tags> element with its value for its contents. (HelpTag)
LinkingoLink to an option. (HelpOpt)exLink to an ex command. (HelpEx)kLink to a key. (HelpKey)   @nameThe name attribute to <k>. When provided, <{value}> is prepended to
                            the element's contents, i.e., <k name="F1"/> becomes <F1>.
                        tLinks to an arbitrary help topic. (HelpTopic)
PluginspluginThe container tag used for describing a plugin.   @nameThe name of the plugin. Used as the plugin's help tag.   @versionThe plugin's version number.   @hrefThe plugin's home page.   @summaryA short description of the plugin, shown in its section head.projectThe project for which this plugin was intended.   @nameThe name of the project (i.e., vimperator)   @minVersionThe minimum version of the project for which this plugin is intended to work.   @maxVersionThe maximum version of the project for which this plugin is intended to work.authorThe plugin's author. May appear more than once.   @hrefThe author's home page.   @emailThe author's email address.licenseThe plugin's license. May appear more than once.   @hrefThe URI of a page which shows or explains the license.



writing-pluginsWriting plugins


    Writing Vimperator plugins is incredibly simple.
    Plugins are simply JavaScript files which run with full chrome
    privileges and have full access to the Vimperator and
    Firefox APIs. Each plugin has its own global object,
    which means that the variables and functions that you create
    won't pollute the global window or private
    liberator namespaces. This means that there's no need
    to wrap your plugin in a closure, as is often the practice in
    JavaScript development. Furthermore, any plugin which is
    installed in your 'runtimepath'/plugin directory
    will find its context stored in
    plugins.<pluginName>, which is often invaluable
    during development and testing.


plugin-documentationPlugin documentation


    Plugins may provide inline documentation, which will appear on
    the :help plugins page. The markup for help entries
    is the same as the above, with a few more plugin specific
    entries. Here is an example from the popular
    flashblock extension:



var INFO = 
<plugin name="flashblock" version="1.0"
        href="http://ticket.vimperator.org/9"
        summary="Flash Blocker"
        xmlns="http://vimperator.org/namespaces/liberator">
    <author email="maglione.k@gmail.com">Kris Maglione</author>
    <license href="http://opensource.org/licenses/mit-license.php">MIT</license>
    <project name="Vimperator" minVersion="2.0"/>
    <p>
        This plugin provides the same features as the ever popular FlashBlock
        Firefox addon. Flash animations are substituted with place holders which
        play the original animation when clicked. Additionally, this plugin provides
        options to control which sites can play animations without restrictions, and
        triggers to toggle the playing of animation on the current page.
	commandline from the data in a given form.
    </p>
    <item>
	<tags>'flashblock' 'fb'</tags>
	<spec>'flashblock' 'fb'</spec>
        <type>boolean</type>
        <default>true</default>
	<description>
            <p>
                Controls the blocking of flash animations. When true, place
                holders are substituted for flash animations on untrusted sites.
            </p>
	</description>
    </item>
    …
</plugin>;




    The inline XML is made possible by
    E4X.
    It's important that the documentation be assigned to the
    INFO variable, or Vimperator will not be able
    to find it. The documentation that you provide behaves exactly
    as other Vimperator documentation, which means that
    the tags you provide are available via :help with
    full tag completion and cross-referencing support. Although
    documentation is not required, we strongly recommend that all
    plugin authors provide at least basic documentation of the
    functionality of their plugins and of each of the options,
    commands, and especially mappings that they provide.




other-helpOther help
ContentsVarious commandsOnline helpUncategorized help

variousVarious commands

:beep:beep
        Play a system beep.
    


:norm:normal:norm[al][!] {commands}
        
            Execute Normal mode commands {commands}. This makes it possible to execute
            Normal mode commands typed on the command line. {commands} is executed like it
            is typed. If the [!] is given, mappings will not be used. {commands} should be
            a complete command. {commands} cannot start with a space. Put 1 space before
            it, 1 space is one space.
        
    


:run:!:!cmd:!{cmd}
        
            Run a command. Runs {cmd} through system() and displays its output. Any '!' in
            {cmd} is replaced with the previous external command, but not when there is a
            backslash before the '!', then the backslash is removed.
        

        
            Warning: Input redirection (< foo) not done, also do not run commands which
            require stdin or it will hang Firefox! It is possible to launch background
            processes, though (e.g. :! xterm &).
        
    


:!!:!!
        Repeat last :!cmd.
    


:sa:sanitize:sa[nitize] [-timespan={timespan}] {item} …:sa[nitize]! [-timespan={timespan}]
        
            Clear private data items. Where {item} … is a list of private items to
            delete. These may be any of the items valid for 'sanitizeitems'.
        

        
            If [!] is specified then 'sanitizeitems' is used for the list of items to
            delete.
        

        
            If {timespan} is specified then only items within that timespan are deleted,
            otherwise the value of 'sanitizetimespan' is used.
        
    


:sil:silent:sil[ent] {command}
        
            Execute a command silently. Normal messages and error messages generated by the
            command invocation will not be given and will not be added to the message
            history.
        
    


:verb:verbose:[count]verb[ose] {command}
        
            Execute a command with 'verbose' set to [count]. If [count] is not specified
            then 1 is used as the value.
        
    


:ve:version:ve[rsion][!]
        
            Show version information. You can show the Firefox version page with
            :version!.
        
    


online-helpOnline help

<F1>:help:hhelp:h[elp] [subject]<F1>
        
            Open the help page. The default page, as specified by 'helpfile' is shown
            unless [subject] is specified. If you need help for a specific topic, try
            :help overview.
        
    


:helpall:helpahelp-all:helpa[ll] [subject]
        Open the single unchunked help page.

        See :help.
    


:us:usageindexcheat-sheet:us[sage] [subject]
        
            Show a quick overview of all Vimperator mappings, commands and options.
            The optional [subject] can be used to only show specific usage information.
        

        Available items:

        mappingsAll key bindingscommandsAll commandsoptionsAll options

        
    



42

What is the meaning of life, the universe and everything?
Douglas Adams, the only person who knew what this question really was about is
now dead, unfortunately. So now you might wonder what the meaning of death
is…


uncategorizedUncategorized help

<C-[><Esc><Esc>
        
            Focus content. Exits Command-line or Hints mode and returns to Normal
            mode. Also focuses the web page in case a form field has focus and eats
            our key presses.
        
    


ccaret-modec
        
            Start caret mode. This mode resembles the Vim's Normal mode where you see a
            text cursor and can move around. If you want to select text in this mode, press
            v to start its Visual mode.
        
    




                using-pluginsUsing Plugins

                
            


