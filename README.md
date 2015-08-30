    ID: 39A2F05A-BC60-4879-9B66-85E43297FC97

**Setup**

1.  [Clone Org-Mode](http://orgmode.org/) to `~/src/`.
    1.  Without `Make`: [Generating autoloads and Compiling Org without make](http://orgmode.org/worg/org-hacks.html)
2.  [Clone Use-Package](https://github.com/jwiegley/use-package) to `~/src/`.
3.  Create a folder for support libraries exporting it&rsquo;s location in a variable
    named `EELIB`.
    1.  Install [DITAA](http://ditaa.sourceforge.net/) renaming the JAR to `ditaa.jar`.
    2.  Install [PlantUML](http://plantuml.com/) renaming the JAR to `plantuml.jar`.
4.  Install supporting software adding their exectuable location to the `PATH`.
    1.  Install [Oracle Java](https://www.oracle.com/java/index.html).
    2.  Install [LanguageTool](https://www.languagetool.org/) renaming it&rsquo;s folder to `LanguageTool`.
    3.  Install [MacTeX](https://tug.org/mactex/).
5.  Link:
    -   The Eshell directory to HELP&rsquo;s.
        -   `ln -s ~/src/help/eshell/ ~/.emacs.d/eshell`
    -   The Initialization file to HELP&rsquo;s.
        -   `ln -s ~/src/help/.emacs.el ~/.emacs.el`
