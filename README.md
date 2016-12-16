**Setup**

1.  [Clone Org-Mode](http://orgmode.org/) to `~/src/`
2.  Go there.

    ```sh
     cd ~/src/org-mode
    ```
3.  Build it
    1.  Without `Make`: [Generating autoloads and Compiling Org without make](http://orgmode.org/worg/org-hacks.html)
        1.  As of <span class="timestamp-wrapper"><span class="timestamp">&lt;2016-01-19 Tue&gt; </span></span> this means doing this:

                emacs -batch -Q -L lisp -l ../mk/org-fixup -f org-make-autoloads
    2.  With `Make` use `make`.
4.  [Clone Org2Blog](https://github.com/punchagan/org2blog) to `~/src/`.
5.  [Clone Use-Package](https://github.com/jwiegley/use-package) to `~/src/`.
6.  Install supporting software adding their exectuable location to the `PATH`.
    1.  Install [Oracle Java](https://www.oracle.com/java/index.html).
    2.  Install [LanguageTool](https://www.languagetool.org/) renaming it&rsquo;s folder to `LanguageTool`.
    3.  Install PlantUML.
    4.  Install Ditaa.
    5.  Install [MacTeX](https://tug.org/mactex/).
7.  Link:
    -   The Eshell directory to HELP&rsquo;s.
        -   `ln -s ~/src/help/eshell/ ~/.emacs.d/eshell`
    -   The Initialization file to HELP&rsquo;s.
        -   `ln -s ~/src/help/.emacs.el ~/.emacs.el`
