    ID: F651B86D-86C2-43A9-B0E6-CB94963BB502

# HELP Enables Literate Programming

    ID: 39A2F05A-BC60-4879-9B66-85E43297FC97

**Setup**

1.  [Pull Org-Mode](http://orgmode.org/) to `~/src/`.
    1.  If necessary: [Generating autoloads and Compiling Org without make](http://orgmode.org/worg/org-hacks.html)
2.  [Pull Use-Package](https://github.com/jwiegley/use-package) to `~/src/`.
3.  Create a folder for support libraries exporting it&rsquo;s location in a variable
    named `EELIB`.
    1.  Install [DITAA](http://ditaa.sourceforge.net/) renaming the JAR to `ditaa.jar`.
    2.  Install [PlantUML](http://plantuml.com/) renaming the JAR to `plantuml.jar`.
4.  Install supporting systems adding their exectuables to the `PATH`.
    1.  Install [Oracle Java](https://www.oracle.com/java/index.html).
    2.  Install [LanguageTool](https://www.languagetool.org/) unpacking it renaming it to `LanguageTool`.
    3.  Install [MacTeX](https://tug.org/mactex/) or [MiKTeX](http://miktex.org/).
5.  Link.
    -   The Eshell directory to HELP&rsquo;s.
        -   `ln -s ~/src/help/eshell/ ~/.emacs.d/eshell`
    -   The Init file to HELP&rsquo;s.
        -   `ln -s ~/src/help/.emacs.el ~/.emacs.el`
