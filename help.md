
# README

## HELP Enables Literate Programming

**Setup**

1.  [Pull Org-Mode](http://orgmode.org/) to `~/src/`.
    1.  If necessary: [Generating autoloads and Compiling Org without make](http://orgmode.org/worg/org-hacks.html)
2.  [Pull Use-Package](https://github.com/jwiegley/use-package) to `~/src/`.
3.  Create a folder for support libraries exporting it's location in a variable
    named `EELIB`.
    1.  Install [DITAA](http://ditaa.sourceforge.net/) renaming the JAR to `ditaa.jar`.
    2.  Install [PlantUML](http://plantuml.com/) renaming the JAR to `plantuml.jar`.
4.  Install supporting systems adding their exectuables to the `PATH`.
    1.  Install [Oracle Java](https://www.oracle.com/java/index.html).
    2.  Install [LanguageTool](https://www.languagetool.org/) unpacking it renaming it to `LanguageTool`.
    3.  Install [MacTeX](https://tug.org/mactex/) or [MiKTeX](http://miktex.org/).
5.  Link.
    -   The Eshell directory to HELP's.
        -   `ln -s ~/src/help/eshell/ ~/.emacs.d/eshell`
    -   The Init file to HELP's.
        -   `ln -s ~/src/help/.emacs.el ~/.emacs.el`

# Style Guide

-   Source Block
    -   Be sure that every one has a `NAME` property with a `UUID` value.
        -   YASnippet `sc` does this. So does code in Hacking/Org Mode/Utility.
    -   Tell the story in speech, and then in code.
    -   Consider it another paragraph and indent appropriately.
    -   When contained within a list.
        -   Indent begin/end blocks with list content; this makes it clear to Org-Mode
            to export it as a code block.
        -   Source code is indented according to existing settings. This system keeps
            it left-aligned, saving space.
    -   Tangle `:file` should have the same `NAME`.
    -   Virtually never edit the contents within buffer-of-origin.
        -   Out of buffer edits:
            -   Fast when spoken language.
            -   Risky when LISPY.
-   Headline.
    -   Be sure that every one has an `ID` property with a `UUID` value.
        -   `org-id-get-create` does this. So does code in Hacking/Org Mode/Utility.
    -   Capitalize nouns, verbs, and adjectives.
    -   Don't capitalize conjunctions unless they are starting the definition.
    -   Sell this "chapter" to the reader.
    -   Some headlines will be empty and significant; keep them.
        -   Some modes don't require any configuration. The headline still needs to be
            present to remind Sysop to keep it in her cognitive landscape.
        -   Configure other properties and modes taking it into account.
        -   Pros:
            -   For example:
                -   Every language under Hacking should show up in
                    `org-babel-load-languages`.
            -   The Prog\*-Mode system configuration can result in Headlines that don't
                need any configuration. The Headline still communicates the mode's
                value to Sysop even if it doesn't configure EMACS.
        -   Cons:
            -   Gives reader impression that modes are configured and ready to use.
    -   It is important to include headlines that are empty and that you may not
        even end up keeping. You need them to help you explore the cognitive
        landscape with them present. In this one case, premature optimization is
        *not* the root of all evil.
    -   Sometimes headlines might better be:
        -   List items.
        -   Stand-alone bold'ed text without punctuation.
-   Org-Macro
-   Content
    -   When importing, update to conform with Style-Guide.
-   Dictionary
    -   **Exemple Complet Minimal (ECM):** The minimal complete example of expected
        versus actual behavior. Comes from the [Org-Mode](http://orgmode.org/worg/org-faq.html) community.
    -   **Key-Bind:** A verb. The act of creating a Key Binding.
    -   **Literate Programming (LP):** As Knuth intended.
    -   **Out of the Box (OOTB):** The default configuration of something.
    -   **Sysop:** A proper noun. The System-Operator. The human operating this EMACS
        based Org-Mode enabled literate programming system. The reader.
    -   **Tangle:** A verb. Assemble a document for consumption by another program or
        machine.
    -   **Weave:** A verb. Prepare a document for consumption by a human.
    -   **Web:** A Source-Block definition of one or more that define part or all of
        a system.
-   ISpell
    -   Place `LocalWords` at the beginning of the document. That way it won't get
        stomped on during development.
-   Synonyms.
    -   Document and System.
        -   A Document defines a System.
-   File/Package Loading
    -   Load every one with `use-package` whether it came with EMACS OOTB or ELPA.
        -   `ensure` tells the reader which one it came from.
    -   Binding definitions often live in Piano Lessons. Use-Package definitions
        aren't meant to be fully transplant-able because this system is meant to be
        used as a whole. If a single sub-system is broken then the entire system is
        broken. Everything is conceptually and literally tightly woven. It is a
        monolithic system.
-   Formatting
    -   Code Snippet.
        -   Programming language expressions.
        -   Use `code style`.
    -   Non-Code Snippet.
        -   Program names, file types
        -   Use `verbatim` style
    -   Package.
        -   Same as Headline.
        -   Dashes separate definition.
        -   Acronyms are all upper case to distinguish from words for example "GNU"
            vs "Gnu".
-   Hyperlink.
    -   External.
        -   Exclude those easily found with a search-engine unless you are willing to
            verify their existence frequently.
        -   Include when they make the task at hand immensely easier.
    -   Internal.
        -   Heading artifacts can be referenced so the need here is minimal to
            non-existent.
-   Literate Programming.
    -   Comments.
        -   Exclude from tangle-blocks and rely on source-block for traceability.
    -   Noweb-Ref.
        -   Same as Headline.
        -   Replace spaces with dashes.
        -   Probably the Heading name.
        -   Keep depth shallow
-   Maintenance.
    -   Frequently check spelling, grammar, and weasel-words.
-   Macros
    -   Define as many as are useful.
    -   Mostly for speech; infrequently custom-code.
    -   Never implement new ones; use inline Source-Blocks instead.
    -   Add once an important idea is express more than 2 times.
    -   Expanded during weaving, not during tangling.
-   Plain List.
    -   End single sentences with a period.
-   Programming Language.
    -   Emacs-Lisp.
        -   Use `t` for `true`.
        -   Almost always use `defun` instead of `advice-add`.
            -   Functions are more normal and predictable.
            -   Advice can subtly break without you noticing.
        -   Paramemter.
            -   `nil` for `FALSE`.
            -   `t` for `TRUE`.
            -   `n` for numerical values.
        -   Try never to advise functions.
        -   Never `custom-set-variables`.
    -   Always use relative file paths.
    -   Byte-compile frequently to minimize System warnings.
    -   Prefer to byte-compile all references by using `function`.
        -   Fail-fast: it is better to know immediately if there are resolution
            issues.
    -   Prefer to declare anonymous functions with `function`.
    -   [Quoted via](https://www.gnu.org/software/emacs/manual/html_node/elisp/Using-Lexical-Binding.html#Using-Lexical-Binding).
        -   If a non-special variable is used outside of a let form, the byte-compiler
            will warn about reference or assignment to a “free variable”. If a
            non-special variable is bound but not used within a let form, the
            byte-compiler will warn about an “unused lexical variable”. The
            byte-compiler will also issue a warning if you use a special variable as a
            function argument.
    -   If only for weaving, consider making it a Macro.
-   Tangling.
    -   When ordering matters, rely on block-reuse to enforce correct generation.
-   Voice.
    -   Provide answers; do not pose questions or observations.
    -   Simple and detailed.
    -   Pleasant conversation style.
    -   Audience is Sysop; the author included.
-   Weaving.
    -   Periodically Weave this Web and publish it on GitHub. The Org-Mode rendering
        there is delightful. It is important to see the difference between a Web and
        it's Weaved result.
-   Word Choice.
    -   Use Arabic numerals.
    -   Instead of writing "tells EMACS", communicate the result.
    -   "EMACS" refers to this software.
    -   "This system" refers to this configuration of EMACS.

# Webs We Weave

## Org-Mode Exemple Complet Minimal

Configure EMACS to easily provide ECMs.

Sysop is likely to use this often.

Start EMACS with this command:

`open /Applications/Emacs.app --args --quick --load ~/src/help/.org-mode-ecm.emacs.el`

```lisp
;; -*- lexical-binding: t -*-
```

```lisp
«Principle-of-Least-Astonishment»
«Org-Mode-ECM»
```

## Org-Mode Fundamentals

Configure Org-Mode core functionality to compile this system.

Sysop is likely to use this periodically.

Start EMACS with this command:

`open /Applications/Emacs.app --args --quick --load ~/src/help/.org-mode-fundamentals.emacs.el`

```lisp
;; -*- lexical-binding: t -*-
```

```lisp
«Org-Mode-ECM-Web»
«Org-Mode-Helper-Functions»
«Org-Mode-Tangle»
«Org-Mode-Execute»
«Org-Mode-Weave»
```

## The Whole Enchilada

Configure EMACS to do everything provided by this document.

Sysop is likely to use this constantly.

Start EMACS with this command:

`open /Applications/Emacs.app`

```lisp
;; -*- lexical-binding: t -*-
```

```lisp
«Org-Mode-Fundamentals-Web»
«Watch-What-You-Eat»
«Special-Operating-Procedure»
«Standard-Operating-Procedure»
«Hacking-Common-Configurations»
«Hacking-Literate-Programming-Emacs-Lisp»
«Hacking-Literate-Programming-Org-Mode»
«Hacking-Applied-Mathematics-ESS»
«Hacking-Applied-Mathematics-ESS-SAS»
«Hacking-Applied-Mathematics-ESS-R»
«Hacking-Applied-Mathematics-YASnippet»
«Hacking-Publishing-TeX»
«Hacking-Publishing-KOMA»
«Hacking-Publishing-Markdown»
«Hacking-Publishing-Beamer»
«Hacking-Publishing-HTML»
«Hacking-Diagram-Artist»
«Hacking-Diagram-DITAA»
«Hacking-Diagram-Graphviz»
«Hacking-Diagram-PlantUML»
«Quiet-and-Pleasant-Appearance»
«Piano-Lessons»
```

## Eshell

```sh
alias clear recenter 0
alias d 'dired $1'
alias ff find-file $1
alias gb git branch $*
alias gpom git push origin master
alias gst git status
alias la ls -lha $*
alias ll ls -lh $*
```

# Literate Programming

This system enables you to perform 3 Literate Document activities. These
activities combine to provide a rich Literate Programming environment. Their
configuration is defined with more granularity here to make sense of how the
system is configured, where, and how it works. These activities are not
performed interactively by the user. They are automatic operations that occur
as a result of the configuration of the document itself.

The following is the guide for the default configuration of this system and how
it behaves.

Key:

-   Columns
    -   **S:** Source document modified?
    -   **T:** Destination tangled-document modified?
    -   **W:** Destination weaved-document modified?
    -   **C:** Source-Block Evaluation occurred?
    -   **O:** Org-Macro Expansion occurred?

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">Activity</th>
<th scope="col" class="org-left">S</th>
<th scope="col" class="org-left">T</th>
<th scope="col" class="org-left">W</th>
<th scope="col" class="org-left">C</th>
<th scope="col" class="org-left">O</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">Tangling</td>
<td class="org-left">F</td>
<td class="org-left">T</td>
<td class="org-left">F</td>
<td class="org-left">F</td>
<td class="org-left">F</td>
</tr>


<tr>
<td class="org-left">Evaluating</td>
<td class="org-left">T</td>
<td class="org-left">F</td>
<td class="org-left">F</td>
<td class="org-left">T</td>
<td class="org-left">F</td>
</tr>


<tr>
<td class="org-left">Weaving</td>
<td class="org-left">F</td>
<td class="org-left">F</td>
<td class="org-left">T</td>
<td class="org-left">F</td>
<td class="org-left">T</td>
</tr>
</tbody>
</table>

They are separate and distinct operations and are defined as such.

The last logical action is the activity of "Programming". It is a combination of
three 3 activities listed above combined with the configuration of EMACS to do
so. This is an interactive activity performed Sysop. The results of Sysop's
activities are contained within the document. Those contents are input for the
activities here.

## Org-Mode Exemple Complet Minimal

A stable version of Org-Mode is provided OOTB. It's release cycle is tied to
EMACS release cycle. To get hot-fixes, cutting edge features, and easy patch
creation though, you need to use the version from Git.

The [directions](http://orgmode.org/manual/Installation.html) of how to run Org-Mode from Git are detailed and clear. The only
thing worth mentioning again is that in order to use **any** version of Org-Mode
other than the one that comes OOTB you **must** load Org-Mode **before** anything else
in your initialization file. This can be surprisingly easy to do! When you get
unexpected Org-Mode behavior be sure to stop and investigate `org-version` and
decide whether or not it is what you expect and prepare an ECM if necessary.

Add the Org-Mode core distribution the load path.

```lisp
(add-to-list 'load-path "~/src/org-mode/lisp")
```

Add the Org-Mode-Contributions distribution to the load path. The contributions
are critical to and inseparable from the core distribution.

```lisp
(add-to-list 'load-path "~/src/org-mode/contrib/lisp")
```

This system allows for single-character alphabetical bullet lists. For Org-Mode
to provide that, the following property must exist before Org-Mode is even
loaded. This configuration must occur here. **Never** remove this from a submitted
ECM.

```lisp
(setq org-list-allow-alphabetical t)
```

Load Org-Mode.

```lisp
(require 'org)
```

Org-Mode already uses the guillemot for demarcating noweb references, but it
does it using the work-around of just using less-than and greater-than
characters twice. That is fine. Because EMACS supports Unicode just fine though,
configure Org-Mode to use the real symbol. Another option would be to configure
Pretty-Mode. This is in the ECM section because so that I can verify behavior of
my code.

```lisp
(setq org-babel-noweb-wrap-start "«")
(setq org-babel-noweb-wrap-end "»")
```

## Helper Functions

```lisp
(defun help/set-org-babel-default-header-args (property value)
  "Easily set system header arguments in org mode.

PROPERTY is the system-wide value that you would like to modify.

VALUE is the new value you wish to store.

Attribution: URL `http://orgmode.org/manual/System_002dwide-header-arguments.html#System_002dwide-header-arguments'"
  (setq org-babel-default-header-args
        (cons (cons property value)
              (assq-delete-all property org-babel-default-header-args))))

(defun help/set-org-babel-default-inline-header-args (property value)
  "See `help/set-org-babel-default-header-args'; same but for inline header args."
  (setq org-babel-default-inline-header-args
        (cons (cons property value)
              (assq-delete-all property org-babel-default-inline-header-args))))

(defun help/set-org-babel-default-header-args:R (property value)
  "See `help/set-org-babel-default-header-args'; same but for R.

This is a copy and paste. Additional languages would warrant a refactor."
  (setq org-babel-default-header-args:R
        (cons (cons property value)
              (assq-delete-all property org-babel-default-header-args:R))))

(defun help/org-toggle-macro-markers ()
  (interactive)
  (setq org-hide-macro-markers (not org-hide-macro-markers)))

(defun help/org-prp-hdln ()
  "Visit every Headline. If it doesn't have an ID property then add one and
  assign it a UUID. Attribution: URL `http://article.gmane.org/gmane.emacs.orgmode/99738'"
  (interactive)
  (save-excursion
    (goto-char (point-min))
    (dolist (p (nreverse
                (org-element-map (org-element-parse-buffer 'headline) 'headline
                  (lambda (headline) (org-element-property :begin headline)))))
      (goto-char p)
      (org-id-get-create))
    (save-buffer)))

(defun help/org-prp-src-blk ()
  "If it doesn't have a NAME property then add one and
   assign it a UUID. Attribution: URL `http://article.gmane.org/gmane.emacs.orgmode/99740'"
  (interactive)
  (help/org-2every-src-block
   #'(lambda (element)
       (if (not (org-element-property :name element))
           (let ((i (org-get-indentation)))
             (beginning-of-line)
             (save-excursion (insert "#+NAME: " (org-id-new) "\n"))
             (indent-to i)
             (forward-line 2))))))

(defun help/org-2every-src-block (fn)
  "Visit every Source-Block and evaluate `FN'."
  (interactive)
  (save-excursion
    (goto-char (point-min))
    (let ((case-fold-search t))
      (while (re-search-forward "^\s*#[+]BEGIN_SRC" nil t)
        (let ((element (org-element-at-point)))
          (when (eq (org-element-type element) 'src-block)
            (funcall fn element)))))
    (save-buffer)))

(defun help/org-babel-demarcate-block ()
  "Add a NAME property then assign it a UUID."
  (interactive)
  (org-babel-demarcate-block)
  (insert "\n#+NAME: " (org-id-new)))
```

## Tangling

`ID` and `NAME` are essential for successful `LP` using `org-babel-tangle-jump-to-org`.

Generate the `README`.

```lisp
(add-hook 'org-babel-pre-tangle-hook #'help/org-prp-hdln)
(add-hook 'org-babel-pre-tangle-hook #'help/org-prp-src-blk)
```

There is a way to disable property inheritance that speeds up tangling a lot.
This is only for user-defined properties; **not** Org-Mode properties.

The problem is that you lose property inheritance which is unacceptable. Never,
never allow that. Its inconsistent with how Org-Mode works.

```lisp
(setq org-babel-use-quick-and-dirty-noweb-expansion nil)
```

### comments

> Toggle insertion of comments in tangled code files

Provide as much information as possible in the tangled artifact about the
origin artifact.

```lisp
(help/set-org-babel-default-header-args :comments "noweb")
```

### mkdirp

> Toggle creation of parent directories of target files during tangling

```lisp
(help/set-org-babel-default-header-args :mkdirp "yes")
```

### no-expand

> Turn off variable assignment and noweb expansion during tangling

Likely only ever to be configured per Source-Block or System.

### noweb

> Toggle expansion of noweb references

Expand noweb references in source-blocks before:

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">Activity</th>
<th scope="col" class="org-left">Expand</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">Tangling</td>
<td class="org-left">T</td>
</tr>


<tr>
<td class="org-left">Evaluating</td>
<td class="org-left">T</td>
</tr>


<tr>
<td class="org-left">Weaving</td>
<td class="org-left">F</td>
</tr>
</tbody>
</table>

This embraces the notion that you are telling the right thing to the
computer and the right thing to the human. By the time you get to exporting, you
ought to refer to the generated document.

```lisp
(help/set-org-babel-default-header-args :noweb "no-export")
```

### noweb-ref

> Specify block's noweb reference resolution target

Likely only ever to be configured per Source-Block or System.

### noweb-sep

> String used to separate noweb references

Likely only ever to be configured per Source-Block or System.

### padline

> Control insertion of padding lines in tangled code files

`org-babel-tangle-jump-to-org` requires padded lines. This configuration could
arguably appear in the "Programming" heading because it impacts operation. It
lives here because it **must** occur as part of the Tangling activity so that it
can be used in the Programming activity.

```lisp
(help/set-org-babel-default-header-args :padline "yes")
```

### session

> Preserve the state of code evaluation

Likely only ever to be configured per Source-Block or System.

For some situations, this may be the same for every source block for a
particular language. R is a good example.

### shebang

> Make tangled files executable

Likely only ever to be configured per Source-Block or System.

### tangle

> Toggle tangling and specify file name

```lisp
(help/set-org-babel-default-header-args :tangle "no")
```

### tangle-mode

> Set permission of tangled files

Likely only ever to be configured per Source-Block or System.

## Evaluating

Org-Mode may evaluate all of the listed languages.

```lisp
(org-babel-do-load-languages
 'org-babel-load-languages
 '((emacs-lisp . t)
   (org . t)
   ;;
   (sass . t)
   (R . t)
   (sql . t)
   ;;
   (latex . t)
   ;;
   (sh . t)
   (makefile . t)
   ;;
   (ditaa . t)
   (dot . t)
   (plantuml . t)))
```

### cache

> Avoid re-evaluating unchanged code blocks

{{{lp-configure-each-sb}}

Default `no` is correct for nearly every scenario.

### colnames

> Handle column names in tables

Likely only ever to be configured per Source-Block or System

### dir

> Specify the default (possibly remote) directory for code block execution

Likely only ever to be configured per Source-Block or System

### epilogue

> Text to append to code block body

See Prologue.

### eval

> Limit evaluation of specific code blocks

Never evaluate source-blocks or in-line-source-blocks **on export**.

```lisp
(help/set-org-babel-default-header-args :eval "never-export")
(help/set-org-babel-default-inline-header-args :eval "never-export")
```

Never evaluate in-line-source-blocks **on export**.

```lisp
(setq org-export-babel-evaluate nil)
```

### file

> Specify a path for file output

Likely only ever to be configured per Source-Block or System

### file-desc

> Specify a description for file results

Likely only ever to be configured per Source-Block or System

### file-ext

> Specify an extension for file output

Likely only ever to be configured per Source-Block or System

### hlines

> Handle horizontal lines in tables

Likely only ever to be configured per Source-Block or System

### output-dir

> Specify a directory to write file output to

Likely only ever to be configured per Source-Block or System

One example is a System where **all** intermediate results are stored to individual
files.

### post

> Post processing of code block results

Likely only ever to be configured per Source-Block or System.

### prologue

> Text to prepend to code block body

Likely only ever to be configured per Source-Block or System.

For some situations, this may be the same for every source block for a
particular language. The user manual described `gnuplot`, which often shows up on
the list and the solution is to `reset` the session.

Another example, say that you've got a bunch of R Source-Blocks and you want to
be able to rearrange them as you please. You want to be sure that there are no
dependencies between them on bindings created in the workspace. Set `prologue`
to `rm(list = ls())`.

Epilgue works hand-in-hand with this.

### results

> Specify the type of results and how they will be collected and handled

Ways to configure `:results:` `224`.

This system stores the results of evaluation in the source document. It believes
that the results are critical to the research.

Keep the document as close to being executable as possible; make it very visible
when it is not.

Always display results like you would seem them in a REPL. For source-blocks
this means an `output` display and for in-line-source-blocks it means a `value`
display. The former cares most the data in the context of a REPL. The latter
cares most about the data in the context of the written content referencing that
data.

Replace theme each time you evaluate the block.

```lisp
(help/set-org-babel-default-header-args :results "output replace")
(help/set-org-babel-default-inline-header-args :results "value replace")
```

### rownames

> Handle row names in tables

Likely only ever to be configured per Source-Block or System..

### sep

> Delimiter for writing tabular results outside Org

Likely only ever to be configured per Source-Block or System

### var

> Pass arguments to code blocks

-   **The** most revealing of the power of Org-Mode's LP offering
-   Values-by-reference
    -   Table
    -   List
    -   Source-Block without and with parameters
    -   Literal-Block
-   Idexable variable values
-   Emacs Lisp evaluation of variables

### wrap

> Mark source block evaluation results

Likely only ever to be configured per Source-Block or System.

## Weaving

Make sure that exported files are Unicode UTF-8.

```lisp
(setq org-export-coding-system 'utf-8)
```

Do not preserve line-breaks when exporting instead let the destination
format handle it as it sees fit. This doesn't work like I had expected and makes
me wonder what I am confused about here. When I export to HTML text containing
linebreaks no longer has linebreaks. This is what I expect. When I export that
same text to a buffer though, the line breaks are included. Currently I use
`sacha/unfill-paragraph` on that code.

```lisp
(setq org-export-preserve-breaks nil)
```

When exporting anything, do not insert the exported content into the kill ring.

```lisp
(setq org-export-copy-to-kill-ring nil)
```

By default I never want a table of contents generated. It is so easy to enable
it with a property, it will be fine to turn it off.

```lisp
(setq org-export-with-toc nil)
```

On export, maintain the literal spacing as found in the source block. Obviously
this is important for make-files. It is really important everywhere because
anything else would violate the law of least surprise.

```lisp
(setq org-src-preserve-indentation t)
```

### exports

> Export code and/or results

Always share source blocks and their results. Whether or not to generate a
result for a particular source block is configured per-block. If you don't want
to share a result for a source block then disable storage of results on that
block.

```lisp
(help/set-org-babel-default-header-args :exports "both")
```

# Piano Lessons

## A Fine Cup of EMACS

Every EMACS user ought to have a [Emacs Reference Mug](http://shop.fsf.org/product/gnu-emacs-reference-mugs/) at their desk. The mug
invites other users to ask questions. Give the mug as a gift to every user you
know who would benefit from learning EMACS. The mug reminds us all that EMACS is
the perfect configuration of EMACS. It is available on every machine. When you
break your system, you can always fall back to the good and reliable default
EMACS configuration to get your system up and running again. The OOTB
configuration of EMACS is one of the most important system configurations that
you will every find. That is why it is important never to ruin it.

This system wants to maximize accessibility for new users. It wants anyone to be
able to download and use it without surprises. It wants the mug to serve as a
fine reference for anyone to use. It wants to keep things simple and familiar so
that anyone who has learned EMACS OOTB can use it pleasantly and productively.
These goals are essential to configuring the keyboard for this system. This
system will always respect the POLA.

## A Keyboard on Every Desk

The configuration of the keyboard on an EMACS system can completely change the
experience. No keyboard makes it impossible. A Kinesis Ergo makes it feel
really good. Soft keys make it feel soft; hard keys make it feel faster. The
[layout of letters](http://xahlee.info/kbd/dvorak_and_all_keyboard_layouts.html) is claimed to make you "more productive" using statistics.
You may even study the statistics of your own writing and choose a layout
optimized for you. The ways to configure your keyboard are limitless because
everyone is unique. How to get the best configuration tips for your system? Do
what works for everyone.

Choose a keyboard that will satisfy 80% of EMACS users using 80% of the
keyboards out there. Make this system easy to use on any one of those keyboards.
Make this system easy to use in English. Make this system easy to use with
average hand strength using two hands. These goals are essential to configuring
the keyboard for this system.

## A Display with Every Keyboard

Every system requires an output. You have two options. The first is a terminal
that only displays characters. The second is a display that provides detailed
graphics. "Display" is the EMACS term for a GUI.

Some users prefer the former. Some users prefer the latter. Some users prefer to
use a $4000USD machine to emulate the latter. Both are good options.

This system is configured to work pleasantly for either type of output.

## A Full Pot of EMACS on Every Desk

### Keyboard Layout & Operation

-   Use QWERTY layout.
    -   Everyone knows it.
    -   Easy to learn.
    -   Available on every keyboard.
    -   Inexpensive.
    -   When graduation time comes, plenty of great alternatives available like
        DVORAK and Colemak.
-   Keep hands in home position as much as possible.
    -   Every finger is strong in the home position so RSI reduced.
    -   Single key presses are easy there.
-   Table-bang the shift, caps-lock and enter keys.
    -   Table-bang is a position of your hand. Make it by:
        -   Starting with your hands in the home position.
        -   Make a "high-five" with both of them parallel to the keyboard.
        -   Turn your left hand counter-clockwise and right hand clockwise to make
            them perpendicular to the keyboard.
        -   Squeeze all of your fingers together.
        -   Push the keys using the side of your Pinky.
        -   In this position you are using the strength of all of your fingers.
    -   Never use those key using your Pinky alone.
    -   Practice depends 100% on user-discipline.
-   Try to achieve balance with meta keys.
    -   Provide same key of each side of the keyboard.
-   Be conscious of key operations [on different outputs](http://ergoemacs.org/emacs/emacs_key_notation_return_vs_RET.html).
    -   Always provide both.
    -   Note what is getting stomped on.
    -   For return bind to:
        -   `RET` in the terminal.
        -   `<return>` in the GUI.
    -   Also for tab `TAB` vs `C-i`.
    -   Also for escape `ESC` vs `C-[`

### Understanding Your Cognitive Landscape.

You operate within a cognitive landscape. Every moment you are in a single
`place`. While residing in each `place` you perform logically related `activities`.
Activities facilitate logical actions like modification within that `place`.
Modifications are performed objects. Objects include things like the contents of
a buffer, contents of memory, or the file that backs a buffer. While performing
those `activities` there is a logical sense of "flow". That should never be
interrupted. Usually an interruption occurs when you are going to go to a new
`place`. The `distance` between `places` is measured in the similarity between the
`actions` that you find there. As you develop these ides it will be obvious where
key-bindings should go

### Key-Bindings Take You to Places to Perform Activities

OOTB you wil be visiting many `places` and performing many `activities`. EMACS comes
with a good configuration that minimizes `distance`. This isn't worth changing.
You can use EMACS for a lifetime without ever having to customize any of the
key-bindings. This is what lets anyone use your system. This is what lets you
use the system with `-Q` when you break it. You need to decide if you every want
to alter the default configuration. This system does not want to. It wants to
keep EMACS true to EMACS and your hands happy. To satisfy those goals the
following practices were defined.

-   99.999% of the time never bind to the `C` or `M` name-space.
    -   They are for system key-bindings. You can break them. Don't.
    -   In theory `C-c` is the "user name-space" but packages stomp on this all of the
        time anyway so don't use it.
    -   Some bindings are just too valuable to pass up:
        -   `C-;`
            -   Your hands are in the home position already.
        -   Every modifier key with return.
-   Never bind to `F` keys.
    -   They are a painful stretch on most keyboards.
    -   Some require a lone Pinky with is worse.
    -   Most operating systems bind actions to them OOTB anyway.
    -   EMACS comes with key-bindings OOTB.
-   Don't try to set up a Hyper-key.
-   Use shift as a name-space expansion vehicle.
    -   Shift doubles every name-space in which you use it.
    -   Use cautiously, not every name-space vehicle supports it.
-   About the `s` (super) name-space.
    -   In theory it is the best place for user-defined key-bindings because
        EMACS OOTB uses `C` and `M` completely leaving `s` mostly open.
    -   In practice `C` and `M` are running out of space because there are a lot of
        new packages being added to EMACS. Most new packages are binding key
        in the `s` name-space.
    -   This system reserves `s` completely for Sysop.

These practices say nothing about the `places` or `activities` that you choose to
peform. The practices only look at the key-binding configuration. There are a
limited number of keys on a keyboard and there are physical limitations on your
hands. Along with the previous assuptions it may look like there are less.
Fortunately it just looks that way and it isn't true. There are a lot of
powerful ways to "go places" with EMACS. The next heading contains my attempt.

### How to Get There Pleasantly and Quickly

You need to learn how to use EMACS. You need to develop a personal preference.
You need to develop an idea of `places` and `activities` and `distance`. The following
headings are delineated by breaks in flow.

The examples try to talk about doing those things and do it by exploring:

-   "going places to do things".
-   "how quickly I will get there and how long I will be there"
-   "how quickly I want to go somewhere else".

They were initially described by the properties:

-   **Actions:** The number of related actions in that place.
-   **Expertise:** The level of skill and speed with which you are performing the
    activity.
-   **Relationship:** How closely those activities are related in the current place.
-   **Frequency:** How many times you perform these actions when you here.

The relationship between "doing those things" and those 4 properties is still
unclear and being explored.

1.  `s`

    -   `Actions` here are for the `place` inside of the buffer itself. They are for
        immediate acting upon the contents of the buffer. They are logically
        related, used frequently, and likely to be memorized.
    -   When you come here, you are likely to stay for some time before getting
        out.
    -   Only use single key bindings; anything more may be a new logical
        name-space and may use a Hydra.
    -   Split the home sides of the keyboard in half.
    -   The left side of the keyboard should be use for operations common to
        every mode.
        -   For example `goto-line` and `ispell`.
        -   It has 15 bindings available; 20 if you use 1-5. 40 if you shift them.
    -   The right side of the keyboard should be used operations specific to the
        current major mode.
        -   For example in Org-Mode navigating between source-blocks and
            evaluating them.
        -   It has 19 bindings available; 26 if you use 6-=. 52 if you shift them.

    For example, in Org-Mode:

    -   I traverse the entire document very quickly with
        `org-babel-previous-src-block` and and `org-babel-next-src-block.`
    -   I execute source-blocks.
    -   I edit source-blocks.

    Every activity is related to reading, modifying, executing, and tangling code.

2.  `Key-Chord`

    Key-Chord is intriguing because it works on every keyboard. It is powerful
    because it can you bring you to any `place` easily. It is good for taking you
    places in two differnt kinds of scenarios.

    One example is grammar-checking. There are a few ways to do that. I don't
    remember them all. In a given mode I want to see a list of all the ways.
    I really just want to see all of the stuff that I value for a given mode and
    don't use frequently.

    Another example are things that I value for a mode and use a lot but are not
    logically related to other activities in that place. For example moving the
    mark around and going to lines are performed a lot so they need to be done
    quickly and left. This is a place where key-chords and the shift modifier are
    a fast and intuitive way to go places.

    1.  Single-Key Key-Chord Name-Space.

        :Actions:          High
        :Expertise:        Low
        :Frequency:        High
        :Relationship:     Low

        -   Nice if you don't mind hitting the same key twice.
        -   You will use come here often, perform your single `action`, and be done
            and leave very frequently and quickly.
        -   Using alphabetical characters always results in unpleasant surprises.
        -   Harder for breakage but it still occurs.
            -   `#FF` color code.
            -   `cc` carbon copy.
            -   JJ nick-name.
        -   Symbols are more likely to be safer bets.
            -   Only use the symbols.
                -   8 if you use rows 3-4; 16 if you shift.
                -   Fifth row has 13; 26 with shift.
        -   Good vehicle to reach a Hydra.

    2.  Two-Key Key-Chord Name-Space.

        :Actions:          Low
        :Expertise:        High
        :Frequency:        High
        :Relationship:     Low

        -   Very attractive.
        -   Nice if you don't like hitting the same key twice.
        -   Easy to use all fingers.
            -   Finger strength is not an issue here; use any of them.
        -   Unexpected breakage very easy.
            -   `cd` in `=eshell=`.
        -   Use sparingly.
        -   Not worth analyzing ideal combinations; just use it and see if it
            doesn't break.
        -   Bringing over existing bindings. They are all for every mode so I will
            keep it that way.

3.  `Hydra`

    -   Sometimes you want to do something in a `place` but you aren't sure what
        and you aren't sure where you will go next from there. For example you
        might want to perform an Org-Mode `action` that is important but you don't
        really use much. For example exporting to HTML might not be common for
        you but you value.
    -   `Hydras` can be used for very related actions too. The difference between
        the `s` name-space is the distance between them and where you are now.
        In the `s` namespace you go there very quickly. For `Hydras` sometimes you
        can get the fast and sometimes more slowly. They are complementary to
        every name-space.
    -   `SHIFT` doubles your key-space.
    -   Use `C-g` to exit the Hydra.

    For example, in Org-Mode I am still learning about functions and haven't used
    them much and forget their names. It is faster to put them in a Hydra. If they
    get used a lot, I will add them to `s`.

### Building Your Own Keyboard

As your mastery of EMACS grows so too will your desire to build your own
keyboard. It is natural. As you explore various dimensions of expression you
will have a lot of fun. You will act more quickly and skillfully. Even with the
goals of this system in place the desire grows.

3D printing is one area worth exploring. A lot of EMACS users design and print
their own custom keyboards. That looks very fun. [Ukulele](http://scripts.sil.org/cms/scripts/page.php?site_id%3Dnrsi&id%3Dukelele) is softer way to
explore your keyboard. Reading its user manual is important. It contains ideas
about stack-able-environments for bindings. You may use Ukulele or Hydras to do
the same thing. [Karabiner](https://pqrs.org/osx/karabiner/) is a nice way to re-map your keys. It's easiest
adjustment is to make return act as return when pressed alone and as control
when pressed with another key. That introduces a symmetry to your keyboard which
can be helpful. All of those dimensions are worth exploring.

When I explored them I felt that they led me further away from the majority of
users. Every time explored a different key-mapping (not key-binding) it reduced
accessibility for new users. Each time I tried to work around that hiccup. The
last pursuit was `;` and space.

It would be great to set up your keyboard with the meta keys on the bottom
like this:

    +---------------------------------------+
    | +-----+                       +-----+ |
    | |RET  |                       |  RET| |
    | +-----+                       +-----+ |
    | +------+                     +------+ |
    | |SHIFT |                     | SHIFT| |
    | +------+                     +------+ |
    |        +-+ +-+ +-----+ +-+ +-+        |
    |        |s| |M| |C/spc| |M| |s|        |
    |        +-+ +-+ +-----+ +-+ +-+        |
    |                                       |
    +---------------------------------------+

Karabiner was too slow for my typing speed though. It [happens](https://www.reddit.com/r/emacs/comments/38qllb/karabiner_space_as_control/). It seemed like a
minimal change to use Ukelele to:

-   Make space send `C`
-   Make `;` send space
-   Make ='= a dead key
    -   In it's dead key state make
        -   `;` &rarr; `;`
        -   `:` &rarr; `:`
        -   ='= &rarr; ='=
        -   ="= &rarr; ="=

The trouble is that it violates the POLA. Therefore, I left it alone and stuck
with a simple "Get C on both sides".

That has worked out very well. It is very easy to do on every operating system.
It holds true to the values of this system. When you develop an idea of `places` and
how often you go there the key-mapping becomes more obvious. Make it easy to get
to key-bindings that take you to familiar places. For this system it is the home
keys, `s`, and `key-chord`. Make those keys more easily accessible. `C` and `M` often
have symmetric-definitions. `s` and `SHIFT` also often have symmetric definitions in
this system (mostly through Key-Chords). Therefore those key-mappings are kept
close together

    +---------------------------------------+
    | +-----+                       +-----+ |
    | |s    |                       |s/ret| |
    | +-----+                       +-----+ |
    | +------+                     +------+ |
    | |SHIFT |                     | SHIFT| |
    | +------+                     +------+ |
    |        +-+ +-+ +-----+ +-+ +-+        |
    |        |M| |C| |spc  | |C| |M|        |
    |        +-+ +-+ +-----+ +-+ +-+        |
    |                                       |
    +---------------------------------------+

## Take a Sip

### Left Side

1.  5

2.  4

    ```lisp
    (global-set-key (kbd "s-w") #'imenu)
    ```

3.  3

    ```lisp
    (defhydra help/hydra/left-side/global (:color blue
                                                  :hint nil)
      "
    _1_ -font  _2_ +font _3_ ellipsis _4_ UUID
    _q_ apropos _w_ widen _r_ obtj2o     _i_ scrollUp _I_ prevLogLine
                     _j_ back-char _k_ scrollDown _K_ _K_ nextLogLine _l_ forw-char"
      ("q" hydra-apropos/body)
      ("w" widen)
      ("1" help/text-scale-decrease :exit nil)
      ("2" help/text-scale-increase :exit nil)
      ("r" org-babel-tangle-jump-to-org)
      ("i" scroll-down-command :exit nil)
      ("k" scroll-up-command :exit nil)
      ("I" previous-logical-line :exit nil)
      ("K" next-logical-line :exit nil)
      ("j" backward-char :exit nil)
      ("l" forward-char :exit nil)
      ("3" help/insert-ellipsis)
      ("4" help/uuid))
    (key-chord-define-global "gg" #'help/hydra/left-side/global/body)
    ```

    [Attribution.](https://github.com/abo-abo/hydra/blob/master/hydra-examples.el)

    ```lisp
    (defhydra hydra-apropos (:color blue
                                    :hint nil)
      "
    _a_propos        _c_ommand
    _d_ocumentation  _l_ibrary
    _v_ariable       _u_ser-option
    ^ ^          valu_e_"
      ("a" apropos)
      ("d" apropos-documentation)
      ("v" apropos-variable)
      ("c" apropos-command)
      ("l" apropos-library)
      ("u" apropos-user-option)
      ("e" apropos-value))
    ```

4.  2

    ```lisp
    (global-set-key (kbd "C-x C-c") #'help/safb-save-buffers-kill-terminal)
    ```

5.  1

6.  Unsorted

    VC activities.

    ```lisp
    (define-prefix-command 'help/vc-map)
    (global-set-key (kbd "s-r") #'help/vc-map)
    (define-key help/vc-map "e" #'help/safb-vc-ediff)
    (define-key help/vc-map "d" #'help/safb-vc-diff)
    (define-key help/vc-map "u" #'help/safb-vc-revert)
    (global-set-key (kbd "s-f") #'help/safb-help/vc-next-action)
    ```

    Go to a line.

    ```lisp
    (key-chord-define-global "fg" #'help/safb-help/goto-line)
    ```

    Pop the mark back.

    ```lisp
    (key-chord-define-global "FG" #'pop-to-mark-command)
    ```

    Do the *right thing* for getting to the start of the line.

    ```lisp
    (global-set-key (kbd "C-a") #'beginning-of-line-dwim)
    ```

    Occur has 3 cases. I like to use it to explore the unknown.

    ```lisp
    (global-set-key (kbd "M-s p") #'help/occur-dwim)
    ```

    Simpler buffer movement.

    ```lisp
    (key-chord-define-global "fv" #'help/safb-other-window)
    ```

    Toggle utility buffers ("logical F" key, so left side; "logical J" key on
    right).

    ```lisp
    (key-chord-define-global "f9" #'help/util-cycle)
    ```

    Hide and show code blocks.

    ```lisp
    (global-set-key (kbd "s-b") #'hs-toggle-hiding)
    ```

### Left & Right Side

```lisp
(key-chord-define-global "qi" #'help/comment-or-uncomment)
```

Make `ispell` accessible.

```lisp
(key-chord-define-global "qp" #'ispell)
(key-chord-define-global "qo" #'ispell-word)
```

Writegood too.

```lisp
(key-chord-define-global "wm" #'writegood-mode)
(key-chord-define-global "wl" #'writegood-grade-level)
(key-chord-define-global "wz" #'writegood-reading-ease)
```

Use the default Langtool bindings.

```lisp
(define-prefix-command 'help/langtool-map)
(key-chord-define-global "qk" #'help/langtool-map)
(define-key help/langtool-map "c" #'langtool-check-buffer)
(define-key help/langtool-map "C" #'langtool-correct-buffer)
(define-key help/langtool-map "j" #'langtool-goto-previous-error)
(define-key help/langtool-map "k" #'langtool-show-message-at-point)
(define-key help/langtool-map "l" #'langtool-goto-next-error)
(define-key help/langtool-map "q" #'langtool-check-done)
```

### Right Side

Try to reserve the right side for mode-specific activities.

### Exceptions

Return.

Do smart new line inside, indenting given the mode.

```lisp
(help/not-on-gui (global-set-key (kbd "s-RET") #'help/smart-open-line))
(help/on-gui (global-set-key (kbd "s-<return>") #'help/smart-open-line))
```

Scroll the whole buffer by one line keeping the cursor with it.

```lisp
(global-set-key (kbd "M-n") (kbd "C-u 1 C-v"))
(global-set-key (kbd "M-p") (kbd "C-u 1 M-v"))
```

Use a nicer `eval-expression` approach.

```lisp
(global-set-key (kbd "s-:") #'my-eval-expression)
```

```lisp
(global-set-key (kbd "s-C-n") #'next-line)
(global-set-key (kbd "C-n") #'next-logical-line)
(global-set-key (kbd "s-C-p") #'previous-line)
(global-set-key (kbd "C-p") #'previous-logical-line)
```

# Special Operating Procedure

The following code and packages are special to this configuration. They provide
critical functionality for configuring the rest of the system. They provide
ideas that make the entire system usable, productive, expressive, and fast.

## Display

Make it easy to conditionally evaluate code when running with a graphical
display.

```lisp
(defmacro help/on-gui (statement &rest statements)
  "Evaluate the enclosed body only when run on GUI."
  `(when (display-graphic-p)
     ,statement
     ,@statements))

(defmacro help/not-on-gui (statement &rest statements)
  "Evaluate the enclosed body only when run on GUI."
  `(when (not (display-graphic-p))
     ,statement
     ,@statements))
```

## Hydra

```lisp
(use-package hydra
  :ensure t)
```

## Keyboard

Key-Chord mode is amazing. Piano-Lessons shows you how.

```lisp
(use-package key-chord
  :ensure t
  :config
  (key-chord-mode t))
```

Echo keystrokes immediately.

```lisp
(setq echo-keystrokes 0.02)
```

## Libraries

Dash is nice to use.

```lisp
(use-package dash
  :ensure t
  :config
  (dash-enable-font-lock))
(use-package dash-functional
  :ensure t)
```

F is nice to use.

```lisp
(use-package f
  :ensure t)
```

S is nice to use.

```lisp
(use-package s
  :ensure t)
```

## Modeline

Reduce information about modes in the Modeline.

```lisp
(use-package diminish)
```

Show the file size.

```lisp
(size-indication-mode)
```

Show the column number.

```lisp
(column-number-mode t)
```

## OSX

Make it easy to evaluate code only when running on OSX.

```lisp
(defmacro help/on-osx (statement &rest statements)
  "Evaluate the enclosed body only when run on OSX."
  `(when (eq system-type 'darwin)
     ,statement
     ,@statements))
```

Pull in the `ENVIRONMENT` variables because the GUI version of EMACS does not.

```lisp
(help/on-osx
 (use-package exec-path-from-shell
   :ensure t
   :config
   (exec-path-from-shell-initialize)))
```

Configure the meta keys.

Enable the `super` key-space.

```lisp
(help/on-osx
 (setq mac-control-modifier 'control)
 (setq mac-command-modifier 'meta)
 (setq mac-option-modifier 'super))
```

EMACS dialogues don't work OSX. They lock up EMACS.

This is a known issue. [Here](https://superuser.com/questions/125569/how-to-fix-emacs-popup-dialogs-on-mac-os-x) is the solution.

```lisp
(help/on-osx
 (defun help/yes-or-no-p (orig-fun &rest args)
   "Prevent yes-or-no-p from activating a dialog."
   (let ((use-dialog-box nil))
     (apply orig-fun args)))
 (advice-add #'yes-or-no-p :around #'help/yes-or-no-p)
 (advice-add #'y-or-n-p :around #'help/yes-or-no-p))
```

## Windows

Make it easy to evaluate code only when running on Windows.

```lisp
(defmacro help/on-windows (statement &rest statements)
  "Evaluate the enclosed body only when run on Microsoft Windows."
  `(when (eq system-type 'windows-nt)
     ,statement
     ,@statements))
```

Provide the proper shell.

```lisp
(help/on-windows
 (setq shell-file-name "cmdproxy.exe"))
```

Enable the `super` key-space.

```lisp
(help/on-windows
 (defvar w32-lwindow-modifier 'super)
 (defvar w32-rwindow-modifier 'super))
```

# Standard Operating Procedure

Configure EMACS to maximum utility.

## Buffer

Maintain buffers across sessions. Desktop-Save-Mode persists very part of the
buffer. If you upgrade a package that uses buffer-variables that have changed
you may get unexpected behavior. Close all buffers and open them again after
making such breaking changes.

```lisp
(desktop-save-mode t)
(setq desktop-restore-eager 10)
```

Provide expected "Undo" functionality.

```lisp
(use-package undo-tree
  :ensure t
  :config
  (global-undo-tree-mode 1)
  :diminish undo-tree-mode)
```

Ensure that buffers do not end with a new line. This is the decision of Sysop.
This is important to YASnippets and Source-Blocks. Doing so would violate POLA.

```lisp
(setq require-final-newline nil)
```

If you are on the end of a line, and go up or down, then go to the end of
line on that new line. Do not account for anything special about the character
there.

```lisp
(setq track-eol t)
(setq line-move-visual nil)
```

Take the cursor with scroll activities.

```lisp
(setq scroll-preserve-screen-position t)
```

More easily visualize tabular data. Considered to non-subjective.

```lisp
(use-package stripe-buffer
  :ensure t)
```

End sentences with a single space.

```lisp
(setq sentence-end-double-space nil)
```

Ban white-space at end of lines, globally.

```lisp
(add-hook 'before-save-hook #'help/delete-trailing-whitespace)
```

Intelligently select the current char, then word, then object, then block,
then document.

```lisp
(use-package expand-region
  :ensure t
  :config
  (global-set-key (kbd "s-d") #'er/expand-region))
```

80 characters is wide enough for most documents.

```lisp
(setq help/column-width 80)
```

## Code Folding

```lisp
(use-package hideshow
  :config
  (setq hs-hide-comments-when-hiding-all t)
  (setq hs-isearch-open t)
  (defun display-code-line-counts (ov)
    "Displaying overlay content in echo area or tooltip"
    (when (eq 'code (overlay-get ov 'hs))
      (overlay-put ov 'help-echo
                   (buffer-substring (overlay-start ov)
                                     (overlay-end ov)))))
  (setq hs-set-up-overlay #'display-code-line-counts)
  (defun help/goto-line ()
    "How do I get it to expand upon a goto-line? hideshow-expand affected block
    when using goto-line in a collapsed buffer."
    (call-interactively #'goto-line)
    (save-excursion
      (hs-show-block)))
  :diminish hs-minor-mode)
```

## Colors

Colorize color names.

Rainbow-Mode handles most major modes color definitions as expected.

```lisp
(use-package rainbow-mode
  :ensure t
  :config
  :diminish rainbow-mode)
```

## Evaluation

```lisp
(setq-default eval-expression-print-level nil)
```

Allow most commands.

```lisp
(put #'upcase-region 'disabled nil)
(put #'downcase-region 'disabled nil)
(put #'narrow-to-region 'disabled nil)
```

## Encryption

Easy to use file-based AES encryption.

```lisp
(add-to-list 'load-path (getenv "CCRYPT"))
(use-package ps-ccrypt)
```

## Eshell

Provide a cross-platform command line shell that is a first-class EMACS citizen.

Commands input in eshell are delegated in order to an alias, a built in command,
an Elisp function with the same name, and finally to a system call. Semicolons
separate commands. `which` tells you what implementation will satisfy the call
that you are going to make. The flag `eshell-prefer-lisp-functions` does what it
says. `$$` is the result of the last command. Aliases live in
`eshell-aliases-file`. History is maintained and expandable. `eshell-source-file`
will run scripts. Since Eshell is not a terminal emulator, you need to configure
it for any commands that need to run using a terminal emulator by adding it to
to `eshell-visual-commands`.

```lisp
(setq eshell-prefer-lisp-functions nil
      eshell-cmpl-cycle-completions nil
      eshell-save-history-on-exit t
      eshell-cmpl-dir-ignore "\\`\\(\\.\\.?\\|CVS\\|\\.svn\\|\\.git\\)/\\'")

(eval-after-load "esh-opt"
  '(progn
     (use-package em-cmpl)
     (use-package em-prompt)
     (use-package em-term)
     (setenv "PAGER" "cat")
     (add-hook 'eshell-mode-hook
               (lambda ()
                 (message "Welcome to Eshell.")
                 (setq pcomplete-cycle-completions nil)))
     (add-to-list 'eshell-visual-commands "ssh")
     (add-to-list 'eshell-visual-commands "tail")
     (add-to-list 'eshell-command-completions-alist
                  '("tar" "\\(\\.tar|\\.tgz\\|\\.tar\\.gz\\)\\'"))))
```

Configure a `PS1` like prompt.

```lisp
(setq eshell-prompt-regexp "^.+@.+:.+> ")
(setq eshell-prompt-function
      (lambda ()
        (concat
         (user-login-name)
         "@"
         (system-name)
         ":"
         (eshell/pwd)
         "> ")))
```

## File Based System

This system uses artifacts stored in files. It tries to persist file-stores
every chance it gets without interrupting the user's flow. Flow is important.

Don't create backup files. Instead Git for versioning

Automatically back file-stores if no activity has occurred.

```lisp
(setq auto-save-default t)
(setq make-backup-files nil)
(setq auto-save-visited-file-name t)
(setq auto-save-interval 0)
(setq auto-save-timeout (* 60 5))
```

Backup file-stores when the frame loses focus.

```lisp
(add-hook 'focus-out-hook #'help/save-all-file-buffers)
```

Always keep buffers in-sync with changes in-file.

```lisp
(global-auto-revert-mode 1)
```

Save all file befores before common activities. Functions are easier to
use than advice.

```lisp
(defun help/safb-help/vc-next-action ()
  (interactive)
  (help/save-all-file-buffers)
  (help/vc-next-action))

(defun help/safb-vc-ediff ()
  (interactive)
  (help/save-all-file-buffers)
  (vc-ediff nil))

(defun help/safb-vc-diff ()
  (interactive)
  (help/save-all-file-buffers)
  (vc-diff nil))

(defun help/safb-vc-revert ()
  (interactive)
  (help/save-all-file-buffers)
  (vc-revert))

(defun help/safb-help/magit-status ()
  (interactive)
  (help/save-all-file-buffers)
  (help/magit-status))

(defun help/safb-org-babel-tangle ()
  (interactive)
  (help/save-all-file-buffers)
  (let ((start (current-time)))
    (message (concat "org-babel-tangle BEFORE: <"
                     (format-time-string "%Y-%m-%dT%T%z")
                     ">"))
    (org-babel-tangle)
    (let* ((dur (float-time (time-since start)))
           (msg (format "Tangling complete after: %.06f seconds" dur)))
      (message (concat "org-babel-tangle AFTER: <"
                       (format-time-string "%Y-%m-%dT%T%z")
                       ">"))
      (message msg)
      (help/on-gui (alert msg :title "org-mode")))))

(defun help/safb-other-window ()
  (interactive)
  (help/save-all-file-buffers)
  (other-window 1))

(defun help/safb-org-edit-src-code ()
  (interactive)
  (help/save-all-file-buffers)
  (org-edit-src-code))

(defun help/safb-org-export-dispatch ()
  (interactive)
  (help/save-all-file-buffers)
  (org-export-dispatch))

(defun help/safb-TeX-command-master (&optional arg)
  (interactive)
  (help/save-all-file-buffers)
  (TeX-command-master arg))

(defun help/safb-org-babel-execute-buffer ()
  "Immediately save results."
  (interactive)
  (help/save-all-file-buffers)
  (org-babel-execute-buffer)
  (help/save-all-file-buffers))

(defun help/safb-org-babel-execute-subtree ()
  "Immediately save results."
  (interactive)
  (help/save-all-file-buffers)
  (org-babel-execute-subtree)
  (help/save-all-file-buffers))

(defun help/safb-help/org-babel-demarcate-block ()
  (interactive)
  (help/org-babel-demarcate-block)
  (help/save-all-file-buffers))

(defun help/safb-save-buffers-kill-terminal ()
  "Partially redundant; kept for consistency among `SAFB' functions."
  (interactive)
  (help/save-all-file-buffers)
  (save-buffers-kill-terminal))

(defun help/safb-help/goto-line ()
  (interactive)
  (help/save-all-file-buffers)
  (help/goto-line))
```

Selection:

-   Don't perform on frequent keys like enter and line navigation.

Future candidates:

-   avy jump
-   dired
-   eshell
-   ess-rdired
-   eval-defun
-   eval-region
-   help/newline
-   goto-line
-   ido-switch-buffer
-   ielm
-   ispell
-   ispell-word
-   langtool-check-buffer
-   newline-and-indent
-   next-line
-   org-edit-src-exit
-   org-return
-   pop-to-mark-command
-   previous-line
-   sp-newline
-   with-current-buffer
-   writegood-mode

Try to visit a non-existent file and get prompted to create its parent
directories.

```lisp
(add-to-list 'find-file-not-found-functions #'help/create-non-existent-directory)
```

## File-system/directory management (Console)

You can use the usual machinery to work with the files. Highlight a region
and operation selections occur for all files in that region. Commands are
scheduled, and then executed, upon your command. Files can be viewed in modify
or read-only mode, too. There is an idea of `mark` in files, which is to select
them and perform operations on the marked files. There are helper methods for
most things you can think if like directories or modified-files or whatever,
meaning you can use regexen to mark whatever you like however you like. If that
suits you, then don't be afraid of using the regular expression builder
that is built into EMACS. Bulk marked file operations include additionally
copying, deleting, creating hard links to, renaming, modifying the mode,
owner, and group information, changing the time-stamp, listing the marked
files, compressing them, decrypting, verifying and signing, loading or byte
compiling them (Lisp files).

`g` updates the current buffer; `s` orders the listing by alpha or date-time.

`find-name-dired` beings the results back into Dired, which is nifty.

Wdired lets you modify files directly via the UI, which is interesting. Image-Dired
lets you do just that.

`+` creates a new directory. `dired-copy-filename-as-kill` stores the list of
files you have selected in the kill ring. `dired-compare-directories` lets you
perform all sorts of directory comparisons, a handy tool that you need once in
a while but definitely do need.

```lisp
(defun help/dired-copy-filename ()
  "Push the path and filename of the file under the point to the kill ring.
  Attribution: URL `https://lists.gnu.org/archive/html/help-gnu-emacs/2002-10/msg00556.html'"
  (interactive)
  (message "Added %s to kill ring" (kill-new (dired-get-filename))))
(defun help/dired-copy-path ()
  "Push the path of the directory under the point to the kill ring."
  (interactive)
  (message "Added %s to kill ring" (kill-new default-directory)))
(setq dired-listing-switches "-alh")
(setq dired-recursive-deletes 'top)
(use-package dired-details+
  :ensure t)
(setq-default dired-details-hidden-string "")
(defun help/dired-mode-hook-fn ()
  "HELP dired customizations."
  (local-set-key "c" #'help/dired-copy-filename)
  (local-set-key "]" #'help/dired-copy-path)
  (diff-hl-dired-mode)
  (load "dired-x")
  (turn-on-stripe-buffer-mode)
  (stripe-listify-buffer))
(add-hook 'dired-mode-hook #'help/dired-mode-hook-fn)
```

Try to guess the target directory for operations.

```lisp
(setq dired-dwim-target t)
```

Use EMACS `ls`.

```lisp
(help/on-osx
 (setq ls-lisp-use-insert-directory-program nil)
 (use-package ls-lisp))
```

After dabbling, something happened that really changed my mind. These three
articles changed everything: [Dired Shell Command](http://www.masteringemacs.org/articles/2014/04/10/dired-shell-commands-find-xargs-replacement/), [
Working with multiple files in dired](https://www.masteringemacs.org/article/working-multiple-files-dired), and [WDired: Editable Dired Buffers](https://www.masteringemacs.org/article/wdired-editable-dired-buffers)..
They just made the power of Dired so obvious, and so easy to use, that it
instantly because delightful to use. That was very, very cool. Even though I
was really, really happy with Finder and Explorer… suddenly it just became so
obvious and pleasant to use Dired. That is so wild.

Key notes when executing shell commands on file selection…

Substitution:

-   **`<cmd> ?`:** 1\* calls to cmd, each file a single argument
-   **`<cmd> *`:** 1 call to `cmd`, selected list as argument
-   **=<cmd> \*""=:** have the shell expand the \* as a globbing wild-card
    -   Not sure what this means

Synchronicity:

-   **`<cmd> …`:** by default commands are called synchronously
-   **`<cmd> &`:** execute in parallel
-   **`<cmd> ;`:** execute sequentially, asynchronously
-   **`<cmd> ;&`:** execute in parallel, asynchronously

Key notes on working with files in multiple directories… use the following:

Use `find` just like you would at the command line and all of the results show
up in a single Dired buffer that you may work with just like you would any other
file appearing in a Dired buffer. The abstraction here becomes so obvious, you
may ask yourself why you never considered such a thing *before* now (as I did):

```lisp
(use-package find-dired
  :ensure t
  :config
  (setq find-ls-option '("-print0 | xargs -0 ls -ld" . "-ld")))
```

Noting that:

-   **`find-dired`:** is the general use case
-   **`find-name-dired`:** is for simple, single string cases

And if you want to use the faster Elisp version, that uses lisp regex, use:

-   **`find-lisp-find-dired`:** for anything
-   **`find-lisp-find-dired-subdirectories`:** for only directories

Key notes on working with editable buffers…

As the author notes, you probably already instinctually knew what is possible.
After reading his brief and concise exposition, it would be hard *not* to
intuit what is possible! The options are big if you make a writable file buffer.
Think about using multiple cursors. Done? Well, that is a no-brainer. Once you
grok multiple cursors just `find-dired` what you need and then do what you need
to do to it. Very cool.

-   **`dired-toggle-read-only, C-x C-q`:** cycle between dired-mode and wdired-mode
-   **`wdired-finish-edit, C-c C-c`:** commit your changes
-   **`wdired-abort-changes, C-c ESC`:** revert your changes

```lisp
(use-package wdired
  :ensure t
  :config
  (setq wdired-allow-to-change-permissions t)
  (setq wdired-allow-to-redirect-links t)
  (setq wdired-use-interactive-rename t)
  (setq wdired-confirm-overwrite t)
  (setq wdired-use-dired-vertical-movement 'sometimes))
```

When you selected a bunch of files or directories, you *may* want to communicate
somewhere your selection somehow. The simplest way to do this is to utilize
`dired-copy-filename-as-kill`. What a nice idea, and its default binding is `w`.

Since I started using a menu bar again, and wanting to get Imenu really
exercised, Dired in Imenu seems like an obvious choice.

```lisp
(use-package dired-imenu
  :ensure t)
```

## IMenu

Major productivity hack

```lisp
(use-package imenu
  :config
  (setq imenu-sort-function #'imenu--sort-by-name))
(defun help/try-to-add-imenu ()
  "Add Imenu to modes that have `font-lock-mode' activated.

Attribution: SRC http://www.emacswiki.org/emacs/ImenuMode"
  (condition-case nil (imenu-add-to-menubar "Imenu") (error nil)))
(add-hook 'font-lock-mode-hook #'help/try-to-add-imenu)
```

## Interactively DO Things”

IDO is used everywhere possible.

Access nearly every object available in this system from one place.

These configurations are performed in the correct order. Any attempt to refactor
this Source-Block will break Ido in this system.

```lisp
(use-package ido)
(use-package flx-ido
  :ensure t
  :config
  (ido-mode t))
(use-package ido-hacks
  :ensure t)
(use-package ido-ubiquitous
  :ensure t
  :config
  (ido-ubiquitous-mode t)
  (setq ido-create-new-buffer 'always)
  (flx-ido-mode t)
  (setq ido-use-faces nil))
(use-package ido-vertical-mode
  :ensure t
  :config
  (ido-vertical-mode t)
  (setq ido-vertical-define-keys 'C-n-C-p-up-down-left-right))
(global-set-key (kbd "s-x") #'ido-find-file)
(global-set-key (kbd "s-c") #'ido-switch-buffer)
```

Make functions search-able.

```lisp
(use-package smex
  :ensure t
  :config
  (smex-initialize)
  (global-set-key (kbd "s-v") #'smex))
```

Make URLs a first-class object.

```lisp
(setq ido-use-url-at-point t)
(setq ido-use-filename-at-point 'guess)
```

## Font

Use Unicode-Font to provide as many Unicode fonts as possible.

Here are the Unicode fonts that provide nearly everything.

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-right" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">Name</th>
<th scope="col" class="org-right">Version</th>
<th scope="col" class="org-left">URL</th>
<th scope="col" class="org-left">Comments</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">[DejaVu](http://sourceforge.net/projects/dejavu/files/dejavu/2.34/dejavu-fonts-ttf-2.34.tar.bz2)</td>
<td class="org-right">2.43</td>
<td class="org-left">[.](http://sourceforge.net/projects/dejavu/files/dejavu/2.34/dejavu-fonts-ttf-2.34.tar.bz2)</td>
<td class="org-left">Modern classic</td>
</tr>


<tr>
<td class="org-left">[Symbola](http://users.teilar.gr/~g1951d/)</td>
<td class="org-right">7.17</td>
<td class="org-left">[.](http://users.teilar.gr/~g1951d/Symbola.zip)</td>
<td class="org-left">Neat</td>
</tr>


<tr>
<td class="org-left">[Quivira](http://www.quivira-font.com/)</td>
<td class="org-right">4.0</td>
<td class="org-left">[.](http://www.quivira-font.com/files/Quivira.otf)</td>
<td class="org-left">Amazing</td>
</tr>


<tr>
<td class="org-left">[Noto](https://code.google.com/p/noto/)</td>
<td class="org-right">?</td>
<td class="org-left">[1](http://noto.googlecode.com/git/fonts/individual/hinted/NotoSans-Regular.ttc) [2](http://noto.googlecode.com/git/fonts/individual/unhinted/NotoSansSymbols-Regular.ttf)</td>
<td class="org-left">Has morse code, and more</td>
</tr>
</tbody>
</table>

To test it run `view-hello-file` and `M-x list-charset-chars RET unicode-bmp RET`.

Perhaps educationally there is a character for bowel-movements: 💩.

```lisp
(use-package unicode-fonts
  :ensure t
  :config
  (unicode-fonts-setup))
```

Activate font locking everywhere possible.

```lisp
(global-font-lock-mode t)
```

Visualize ASCII values as their most likely Unicode representation.

```lisp
(use-package pretty-mode
  :ensure t
  :config
  (global-pretty-mode))
```

## Going to Objects

Go to any object in the frame quickly.

```lisp
(use-package avy
  :ensure t
  :config
  (key-chord-define-global "df" #'avy-goto-word-1)
  (key-chord-define-global "DF" #'avy-pop-mark))
```

## Grammar

```lisp
(use-package writegood-mode
  :ensure t)
```

```lisp
(use-package langtool
  :ensure t
  :init
  (setq langtool-language-tool-jar (concat (getenv "EELIB") "/LanguageTool-2.8/languagetool-commandline.jar"))
  (setq langtool-mother-tongue "en")
  (setq langtool-java-bin (concat (getenv "JAVA_HOME") "/bin/java")))
```

## Helper Functions

```lisp
(defun help/comment-or-uncomment ()
  "Comment or uncomment the current line or selection."
  (interactive)
  (cond ((not mark-active) (comment-or-uncomment-region (line-beginning-position)
                                                      (line-end-position)))
        ((< (point) (mark)) (comment-or-uncomment-region (point) (mark)))
        (t (comment-or-uncomment-region (mark) (point)))))

(defun help/save-all-file-buffers ()
  "Saves every buffer associated with a file."
  (interactive)
  (dolist (buf (buffer-list))
    (with-current-buffer buf
      (when (and (buffer-file-name) (buffer-modified-p))
        (save-buffer)))))

(defun describe-thing-in-popup ()
  "Attribution: URL `http://blog.jenkster.com/2013/12/popup-help-in-emacs-lisp.html'."
  (interactive)
  (let* ((thing (symbol-at-point))
         (help-xref-following t)
         (description (with-temp-buffer
                        (help-mode)
                        (help-xref-interned thing)
                        (buffer-string))))
    (popup-tip description
               :point (point)
               :around t
               :height 30
               :scroll-bar t
               :margin t)))

(defun help/kill-other-buffers ()
  "Kill all other buffers."
  (interactive)
  (mapc #'kill-buffer (delq (current-buffer) (buffer-list))))

(defvar help/delete-trailing-whitespace-p t
  "Should trailing whitespace be removed?")

(defun help/delete-trailing-whitespace ()
  "Delete trailing whitespace for everything but the current line.

If `help/delete-trailing-whitespace-p' is non-nil, then delete the whitespace.
This is useful for fringe cases where trailing whitespace is important."
  (interactive)
  (when help/delete-trailing-whitespace-p
    (let ((first-part-start (point-min))
          (first-part-end (point-at-bol))
          (second-part-start (point-at-eol))
          (second-part-end (point-max)))
      (delete-trailing-whitespace first-part-start first-part-end)
      (delete-trailing-whitespace second-part-start second-part-end))))

(defun help/insert-timestamp ()
  "Produces and inserts a full ISO 8601 format timestamp."
  (interactive)
  (insert (format-time-string "%Y-%m-%dT%T%z")))

(defun help/insert-timestamp* ()
  "Produces and inserts a near-full ISO 8601 format timestamp."
  (interactive)
  (insert (format-time-string "%Y-%m-%dT%T")))

(defun help/insert-datestamp ()
  "Produces and inserts a partial ISO 8601 format timestamp."
  (interactive)
  (insert (format-time-string "%Y-%m-%d")))

(defun help/indent-curly-block (&rest _ignored)
  "Open a new brace or bracket expression, with relevant newlines and indent. URL: `https://github.com/Fuco1/smartparens/issues/80'"
  (newline)
  (indent-according-to-mode)
  (forward-line -1)
  (indent-according-to-mode))

(defun beginning-of-line-dwim ()
  "Toggles between moving point to the first non-whitespace character, and
    the start of the line. Src: http://www.wilfred.me.uk/"
  (interactive)
  (let ((start-position (point)))
    ;; see if going to the beginning of the line changes our position
    (move-beginning-of-line nil)

    (when (= (point) start-position)
      ;; we're already at the beginning of the line, so go to the
      ;; first non-whitespace character
      (back-to-indentation))))

(defun help/lazy-new-open-line ()
  "Insert a new line without breaking the current line."
  (interactive)
  (beginning-of-line)
  (forward-line 1)
  (newline)
  (forward-line -1))

(defun help/smart-open-line ()
  "Insert a new line, indent it, and move the cursor there.

This behavior is different then the typical function bound to return
which may be `open-line' or `newline-and-indent'. When you call with
the cursor between ^ and $, the contents of the line to the right of
it will be moved to the newly inserted line. This function will not
do that. The current line is left alone, a new line is inserted, indented,
and the cursor is moved there.

Attribution: URL `http://emacsredux.com/blog/2013/03/26/smarter-open-line/'"
  (interactive)
  (move-end-of-line nil)
  (newline-and-indent))

(defun help/insert-ellipsis ()
  "Insert an ellipsis into the current buffer."
  (interactive)
  (insert "…"))

(defun help/insert-noticeable-snip-comment-line ()
  "Insert a noticeable snip comment line (NSCL)."
  (interactive)
  (if (not (bolp))
      (message "I may only insert a NSCL at the beginning of a line.")
    (let ((ncl (make-string 70 ?✂)))
      (newline)
      (forward-line -1)
      (insert ncl)
      (comment-or-uncomment-region (line-beginning-position) (line-end-position)))))

(progn

  (defvar my-read-expression-map
    (let ((map (make-sparse-keymap)))
      (set-keymap-parent map read-expression-map)
      (define-key map [(control ?g)] #'minibuffer-keyboard-quit)
      (define-key map [up]   nil)
      (define-key map [down] nil)
      map))

  (defun my-read--expression (prompt &optional initial-contents)
    (let ((minibuffer-completing-symbol t))
      (minibuffer-with-setup-hook
          (lambda ()
            (emacs-lisp-mode)
            (use-local-map my-read-expression-map)
            (setq font-lock-mode t)
            (funcall font-lock-function 1))
        (read-from-minibuffer prompt initial-contents
                              my-read-expression-map nil
                              'read-expression-history))))

  (defun my-eval-expression (expression &optional arg)
    "Attribution: URL `https://lists.gnu.org/archive/html/help-gnu-emacs/2014-07/msg00135.html'."
    (interactive (list (read (my-read--expression ""))
                       current-prefix-arg))
    (if arg
        (insert (pp-to-string (eval expression lexical-binding)))
      (pp-display-expression (eval expression lexical-binding)
                             "*Pp Eval Output*"))))

(defun help/util-ielm ()
  "HELP buffer setup for ielm.

Creates enough space for one other permanent buffer beneath it."
  (interactive)
  (split-window-below -20)
  (help/safb-other-window)
  (ielm)
  (set-window-dedicated-p (selected-window) t))

(defun help/util-eshell ()
  "HELP buffer setup for eshell.

Depends upon `help/util-ielm' being run first."
  (interactive)
  (split-window-below -10)
  (help/safb-other-window)
  (eshell)
  (set-window-dedicated-p (selected-window) t))

(defvar help/util-state nil "Track whether the util buffers are displayed or not.")

(defun help/util-state-toggle ()
  "Toggle the util state."
  (interactive)
  (setq help/util-state (not help/util-state)))

(defun help/util-start ()
  "Perhaps utility buffers."
  (interactive)
  (help/util-ielm)
  (help/util-eshell)
  (help/util-state-toggle))

(defun help/util-stop ()
  "Remove personal utility buffers."
  (interactive)
  (if (get-buffer "*ielm*") (kill-buffer "*ielm*"))
  (if (get-buffer "*eshell*") (kill-buffer "*eshell*"))
  (help/util-state-toggle))

(defun help/ielm-auto-complete ()
  "Enables `auto-complete' support in \\[ielm].

Attribution: URL `http://www.masteringemacs.org/articles/2010/11/29/evaluating-elisp-emacs/'"
  (setq ac-sources '(ac-source-functions
                     ac-source-variables
                     ac-source-features
                     ac-source-symbols
                     ac-source-words-in-same-mode-buffers))
  (add-to-list 'ac-modes #'inferior-emacs-lisp-mode)
  (auto-complete-mode 1))

(defun help/uuid ()
  "Insert a UUID."
  (interactive)
  (insert (org-id-new)))

(defun endless/sharp ()
  "Insert #' unless in a string or comment.

SRC: URL `http://endlessparentheses.com/get-in-the-habit-of-using-sharp-quote.html?source=rss'"
  (interactive)
  (call-interactively #'self-insert-command)
  (let ((ppss (syntax-ppss)))
    (unless (or (elt ppss 3)
                (elt ppss 4))
      (insert "'"))))

(defun help/chs ()
  "Insert opening \"cut here start\" snippet."
  (interactive)
  (insert "--8<---------------cut here---------------start------------->8---"))

(defun help/che ()
  "Insert closing \"cut here end\" snippet."
  (interactive)
  (insert "--8<---------------cut here---------------end--------------->8---"))

(defmacro help/measure-time (&rest body)
  "Measure the time it takes to evaluate BODY.

Attribution Nikolaj Schumacher: URL `https://lists.gnu.org/archive/html/help-gnu-emacs/2008-06/msg00087.html'"
  `(let ((time (current-time)))
     ,@body
     (message "%.06f" (float-time (time-since time)))))

(defun help/create-non-existent-directory ()
  "Attribution URL: `https://iqbalansari.github.io/blog/2014/12/07/automatically-create-parent-directories-on-visiting-a-new-file-in-emacs/'"
  (let ((parent-directory (file-name-directory buffer-file-name)))
    (when (and (not (file-exists-p parent-directory))
               (y-or-n-p (format "Directory `%s' does not exist. Create it?" parent-directory)))
      (make-directory parent-directory t))))

(defun help/occur-dwim ()
  "Call `occur' with a mostly sane default.

Attribution Oleh Krehel (abo-abo): URL `http://oremacs.com/2015/01/26/occur-dwim/'"
  (interactive)
  (push (if (region-active-p)
            (buffer-substring-no-properties
             (region-beginning)
             (region-end))
          (let ((sym (thing-at-point 'symbol)))
            (when (stringp sym)
              (regexp-quote sym))))
        regexp-history)
  (call-interactively 'occur))

(defun help/util-cycle ()
  "Display or hide the utility buffers."
  (interactive)
  (if help/util-state
      (help/util-stop)
    (help/util-start)))

(defun sacha/unfill-paragraph (&optional region)
  "Takes a multi-line paragraph and makes it into a single line of text.

ATTRIBUTION: SRC https://github.com/sachac/.emacs.d/blob/gh-pages/Sacha.org#unfill-paragraph"
  (interactive (progn
                 (barf-if-buffer-read-only)
                 (list t)))
  (let ((fill-column (point-max)))
    (fill-paragraph nil region)))
(defun help/text-scale-increase ()
  "Increase font size"
  (interactive)
  (help/on-gui
   (setq help/font-size (+ help/font-size 1))
   (help/update-font))
  (help/not-on-gui
   (message "Please resize the terminal emulator font.")))
(defun help/text-scale-decrease ()
  "Reduce font size."
  (interactive)
  (help/on-gui
   (when (> help/font-size 1)
     (setq help/font-size (- help/font-size 1))
     (help/update-font)))
  (help/not-on-gui
   (message "Please resize the terminal emulator font.")))

(defun help/org-xprt-rdme ()
  (interactive)
  (help/save-all-file-buffers)
  (save-excursion
    (let ((hidx (org-find-property "ID" "F651B86D-86C2-43A9-B0E6-CB94963BB502")))
      (when hidx
        (goto-char hidx)
        (org-export-to-file 'gfm "README.md" nil t nil)))))
```

## Intellisense (Auto Completion)

```lisp
(use-package fuzzy
  :ensure t)
(use-package auto-complete
  :ensure t
  :config
  (use-package auto-complete-config)
  (setq ac-quick-help-prefer-pos-tip nil)
  (ac-config-default)
  (setq ac-auto-start nil)
  (help/not-on-gui (ac-set-trigger-key "\t"))
  (help/on-gui (ac-set-trigger-key "<tab>"))
  :diminish auto-complete-mode)
(use-package auto-complete-chunk
  :ensure t)
```

Auto-completion for `.`-separated words.

```lisp
(use-package auto-complete-chunk
  :ensure t)
```

## Macros

The macro recorder and Multiple-Cursors provide two ways to do the right thing
in different situations. Be very thoughtful and allow every function.

```lisp
(use-package multiple-cursors
  :ensure t
  :config
  (global-set-key (kbd "s-4") #'mc/mark-next-like-this)
  (global-set-key (kbd "s-3") #'mc/mark-previous-like-this)
  (global-set-key (kbd "s-2") #'mc/mark-all-like-this)
  (global-set-key (kbd "s-1") #'mc/edit-lines))
```

## Mark and Region

When you start typing and text is selected, replace it with what you are typing,
or pasting

```lisp
(delete-selection-mode t)
```

## Minibuffer

Make it easier to answer questions.

```lisp
(fset #'yes-or-no-p #'y-or-n-p)
```

Comfortably display information.

```lisp
(setq resize-mini-windows t)
(setq max-mini-window-height 0.33)
```

Allow recursive commands-in-commands and highlight the levels of recursion.

```lisp
(setq enable-recursive-minibuffers t)
(minibuffer-depth-indicate-mode t)
```

## Mouse

Scroll pleasantly with the mouse wheel. A slow turn moves the buffer up and down
one line at a time. So does a fast turn. Anything further than 5-10 lines deserves
a fast navigation vehicle.

```lisp
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))
(setq mouse-wheel-progressive-speed nil)
(setq mouse-wheel-follow-mouse t)
```

## Occur

```lisp
(defun help/occur-mode-hook-fn ()
  "HELP customizations."
  (interactive)
  (turn-on-stripe-buffer-mode)
  (stripe-listify-buffer))
(add-hook 'occur-mode-hook #'help/occur-mode-hook-fn)
(define-key occur-mode-map (kbd "n") #'next-logical-line)
(define-key occur-mode-map (kbd "p") #'previous-logical-line)
```

## Popups

Provide popup notifications.

```lisp
(use-package alert
  :ensure t
  :config
  (setq alert-fade-time 10)
  (help/on-gui
   (help/on-osx
    (setq alert-default-style 'growl)))
  (setq alert-reveal-idle-time 120))
```

## Projects

Directories that have Git working copies are logically projects. Manage them
with Projectile.

```lisp
(use-package projectile
  :ensure t
  :config
  (projectile-global-mode t)
  (global-set-key (kbd "s-z") #'projectile-find-file)
  (help/on-windows
   (setq projectile-indexing-method 'alien))
  :diminish projectile-mode)
```

Notify Magit about every working copy that Projectile knows about.

```lisp
(eval-after-load "projectile"
  '(progn (setq magit-repository-directories (mapcar (lambda (dir)
                                                       (substring dir 0 -1))
                                                     (remove-if-not (lambda (project)
                                                                      (file-directory-p (concat project "/.git/")))
                                                                    (projectile-relevant-known-projects)))

                magit-repository-directories-depth 1)))
```

## Printing

```lisp
(use-package pp
  :commands (pp-display-expression))
```

## Replacing

Display information about search-and-or-replace operation.

```lisp
(use-package anzu
  :ensure t
  :config
  (global-anzu-mode t)
  (global-set-key (kbd "M-%") #'anzu-query-replace)
  (global-set-key (kbd "C-M-%") #'anzu-query-replace-regexp)
  (setq anzu-mode-lighter "")
  (setq anzu-deactivate-region t)
  (setq anzu-search-threshold 1000)
  (setq anzu-replace-to-string-separator " => "))
```

## Save History of All Things

It is nice to have commands and their history saved so that every time you get
back to work, you can just re-run stuff as you need it.

```lisp
(setq savehist-save-minibuffer-history 1)
(setq savehist-additional-variables
      '(kill-ring
        search-ring
        regexp-search-ring))
(savehist-mode t)
```

## Searching

When searching allow a space to many any number.

```lisp
(setq isearch-lax-whitespace t)
(setq isearch-regexp-lax-whitespace t)
```

Make searches case-insensitive.

```lisp
(setq-default case-fold-search t)
```

## Spell Checking

Ispell is simple and powerful.

### Org-Mode

Never ispell the following objects.

Source-Blocks.

```lisp
(add-to-list 'ispell-skip-region-alist '("^#\\+begin_src ". "#\\+#+end_src$"))
(add-to-list 'ispell-skip-region-alist '("^#\\+BEGIN_SRC ". "#\\+#+END_SRC$"))
```

Example-Blocks. This system often uses Source-Blocks to edit content and
Example-Blocks to make it easily renderable when it is not for running.

```lisp
(add-to-list 'ispell-skip-region-alist '("^#\\+begin_example ". "#\\+end_example$"))
(add-to-list 'ispell-skip-region-alist '("^#\\+BEGIN_EXAMPLE ". "#\\+END_EXAMPLE$"))
```

Properties.

```lisp
(add-to-list 'ispell-skip-region-alist '("\:PROPERTIES\:$" . "\:END\:$"))
```

Footnotes.

```lisp
(add-to-list 'ispell-skip-region-alist '("\\[fn:.+:" . "\\]"))
```

Footnotes with URLs that contain line-breaks.

```lisp
(add-to-list 'ispell-skip-region-alist '("^http" . "\\]"))
```

Verbatim

```lisp
(add-to-list 'ispell-skip-region-alist '("=.*" . ".*="))
```

Bold text list items.

```lisp
(add-to-list 'ispell-skip-region-alist '("- \\*.+" . ".*\\*: "))
```

Export properties.

```lisp
(defun help/ispell-org-header-lines-regexp (h)
  "Help ispell ignore org header lines."
  (interactive)
  (cons (concat "^#\\+" h ":") ".$"))

(defun help/ispell-a2isra (block-def)
  "Add to the ispell skip region alist the BLOCK-DEF."
  (interactive)
  (add-to-list 'ispell-skip-region-alist block-def))

(let ()
  (--each
      '("ATTR_LATEX"
        "AUTHOR"
        "CREATOR"
        "DATE"
        "DESCRIPTION"
        "EMAIL"
        "EXCLUDE_TAGS"
        "HTML_CONTAINER"
        "HTML_DOCTYPE"
        "HTML_HEAD"
        "HTML_HEAD_EXTRA"
        "HTML_LINK_HOME"
        "HTML_LINK_UP"
        "HTML_MATHJAX"
        "INFOJS_OPT"
        "KEYWORDS"
        "LANGUAGE"
        "LATEX_CLASS"
        "LATEX_CLASS_OPTIONS"
        "LATEX_HEADER"
        "LATEX_HEADER_EXTRA"
        "OPTIONS"
        "SELECT_TAGS"
        "STARTUP"
        "TITLE")
    (help/ispell-a2isra (help/ispell-org-header-lines-regexp it))))
```

## Sudo

Configure Sudo with Ido.

```lisp
(help/on-osx
 (defun help/ido-find-file ()
   "Find file as root if necessary.

Attribution: SRC `http://emacsredux.com/blog/2013/04/21/edit-files-as-root/'"
   (unless (and buffer-file-name
              (file-writable-p buffer-file-name))
     (find-alternate-file (concat "/sudo:root@localhost:" buffer-file-name))))

 (advice-add #'ido-find-file :after #'help/ido-find-file))
```

## Syntax Checking

Perform syntactic analysis all the time.

```lisp
(use-package flycheck
  :ensure t
  :config
  (add-hook 'after-init-hook #'global-flycheck-mode)
  :diminish flycheck-mode)
```

## TAB

Most modes in this system will never use TAB.

```lisp
(setq-default indent-tabs-mode nil)
```

Remove TAB from all buffers before persisting to the backing file unless it is
configured to retain TAB. The use case is a Makefile.

```lisp
(defun help/untabify-if-not-indent-tabs-mode ()
  "Untabify if `indent-tabs-mode' is false.

Attribution: URL `http://www.emacswiki.org/emacs/UntabifyUponSave'"
  (interactive)
  (when (not indent-tabs-mode)
    (untabify (point-min) (point-max))))

(add-hook 'before-save-hook #'help/untabify-if-not-indent-tabs-mode)
```

Most programing modes indent to 2 spaces. TABs should be the same width.

```lisp
(setq-default tab-width 2)
```

## Version Control

Use Magit for Git. The commit log editor uses With-Editor and Server modes.
They are not not diminshed because they are infrequently used.

```lisp
(use-package magit
  :ensure t
  :config
  (global-set-key (kbd "s-e") #'help/safb-help/magit-status))
```

Leave the VC message template empty.

```lisp
(eval-after-load "log-edit"
  '(remove-hook 'log-edit-hook 'log-edit-insert-message-template))
```

Git ignore files are text files.

```lisp
(add-to-list 'auto-mode-alist '(".gitignore$" . text-mode))
```

## Whitespace Management

Make control characters easily visible.

```lisp
(use-package whitespace
  :ensure t
  :config
  (setq whitespace-style '(trailing lines tab-mark))
  (setq whitespace-line-column help/column-width)
  (global-whitespace-mode t)
  :diminish whitespace-mode global-whitespace-mode)
```

## Word Wrap

```lisp
(use-package visual-line-mode
  :config
  (eval-after-load "visual-line-mode"
    '(diminish 'visual-line-mode)))
```

# Quiet and Pleasant Appearance

Configure EMACS to personal-taste for "noise" and "form".

## Buffer

Give buffers backed by identically named files distinguishable names.

```lisp
(use-package uniquify)
(setq uniquify-buffer-name-style 'forward)
```

Don't use audible bells, use visual bells.

```lisp
(setq ring-bell-function 'ignore)
(setq visible-bell t)
```

Highlight s-expressions.

```lisp
(setq blink-matching-paren nil)
(show-paren-mode)
(setq show-paren-delay 0)
(setq show-paren-style 'expression)
```

The cursor should not blink and distract you. On a graphic display make the
cursor a box and stretch it as wide as the character below it.

```lisp
(blink-cursor-mode 0)
(help/on-gui
 (setq-default cursor-type 'box)
 (setq x-stretch-cursor 1))
```

EMACS used UTF-8 by default. Make copying and pasting easier.

```lisp
(prefer-coding-system 'utf-8)
(help/on-gui
 (setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING))
 (help/on-windows
  (set-clipboard-coding-system 'utf-16le-dos)))
```

Make it very easy to see the line with the cursor.

```lisp
(global-hl-line-mode t)
```

## Color Theme

The Solarized theme is the perfect theme for everything. bozhidar's
release. It is soft and gentle yet easy to read in any situation.

```lisp
(use-package solarized-theme
  :ensure t
  :config
  (setq solarized-distinct-fringe-background t)
  (setq solarized-high-contrast-mode-line t)
  (setq solarized-use-less-bold t)
  (setq solarized-use-more-italic nil)
  (setq solarized-emphasize-indicators nil)
  (load-theme 'solarized-dark t))
```

## Comint

`comint-mode` is only maybe the second most important thing for making Emacs
really, really special.

```lisp
(setq comint-scroll-to-bottom-on-input 'this)
(setq comint-scroll-to-bottom-on-output 'others)
(setq comint-move-point-for-output 'others)
(setq comint-show-maximum-output t)
(setq comint-scroll-show-maximum-output t)
(setq comint-move-point-for-output t)
```

This configuration had been working fine for a long time. The intent was for it
to be crystal clear that the prompt line in comint buffers would be read only.
This turned out to be a mistake; though I am not sure why, when, or how it
became a mistake. Nonetheless, this should be left alone. The way the issue here
manifested was that all ℝ buffers opened by `ess` were 100% read only which
obviously is a **big issue** if you actually want to use! ROFL

```lisp
(setq comint-prompt-read-only nil)
```

## Font

The best programming font is Deja Vu Sans Mono because it sans-serif and
support a lot of Unicode characters. Set it to a good default for an 80
character wide buffer and make it easy to adjust it.

```lisp
(help/on-gui
 (defvar help/font-size 10 "The preferred font size.")
 (help/on-osx (setq help/font-size 17))
 (help/on-windows (setq help/font-size 13))
 (defconst help/font-base "DejaVu Sans Mono" "The preferred font name.")
 (defun help/font-ok-p ()
   "Is the configured font valid?"
   (interactive)
   (member help/font-base (font-family-list)))
 (defun help/font-name ()
   "Compute the font name and size string."
   (interactive)
   (let* ((size (number-to-string help/font-size))
          (name (concat help/font-base "-" size)))
     name))
 (defun help/update-font ()
   "Updates the current font given configuration values."
   (interactive)
   (if (help/font-ok-p)
       (progn
         (message "Setting font to: %s" (help/font-name))
         (set-frame-font (help/font-name)))
     (message (concat "Your preferred font is not available: " help/font-base))))
 (help/update-font))
```

## Frame

The scroll-bars are helpful for new users.

```lisp
(scroll-bar-mode 0)
```

The tool-bar is helpful for new users. Isn't the argument funny?

```lisp
(tool-bar-mode -1)
```

## Pointer

Hide the pointer when typing.

```lisp
(setq make-pointer-invisible t)
```

## Version Control

Provide VC file status indicators.

```lisp
(use-package diff-hl
  :ensure t)
```

## Window

Menu bars make EMACS more accessible to non-EMACS users.

```lisp
(menu-bar-mode t)
```

Easily return to previous configurations.

```lisp
(winner-mode t)
```

# Principle of Least Astonishment (POLA)

## Scoping Behavior

EMACS values dynamic-scoping for now and in the future.

EMACS values lexical-scoping in the future.

There are pecuilar interactions between [lexically and dynamically scope closures](https://yoo2080.wordpress.com/2011/12/31/lexical-scoping-and-dynamic-scoping-in-emacs-lisp/)
and [special variables](https://yoo2080.wordpress.com/2013/08/14/invasion-of-special-variables-in-emacs-lisp/).

With the future in mind, make the switch now.

It is enabled with a non-nil buffer-local variable `lexical-binding`. The variable
is inserted into each of the Web definitions that this system provides. Those
definitions can't use Org-Mode comments so they are defined individually in each
Web.

## Load Behavior

EMACS can load 3 different representations of a Emacs-Lisp source file code
OOTB. The name of source code file is the value before the file extension. When
you pass `load` a name it searches for an acceptable representation. Representation
types are indicated by their extension name. `.el` is a human readable and
uncompiled. `.elc` is not human readable and compiled. `.gz` is Gzip compressed and
contains `.el` or `.elc` files.

The variable `load-suffixes` determines the order for which text and byte-code
representations are first searched by extension-name. The variable
`load-file-rep-suffixes` determines the order for all other extension types.

OOTB, EMACS combines the productivity of REPL style of development with the
speed of compiled code by `load`'ing byte-code first, text second, and compressed
third. This workflow gives you the fastest code at run-time and lets you
experiment with new features stored in text. When you are ready to use them
every time, you compile them. There is only one downside of this approach: when
you forget that it works this way it can be confusing.

When you forget about that style of system you end up with surprising behavior.
The surprise comes when you forget to compile code and then write new code that
depends on the now old version of that code. After the next build, your system
can break in surprising ways. This violates the Principle of Least Astonishment.

This system values predictability so it does the simplest thing possible: `load`
searches for the newest representation of a file and uses that one. It assumes
that Sysop has total and complete control over the management of file
representations.

This is the **first** thing that *ought* to happen in the initialization of **any**
tangled system.

```lisp
(setq load-prefer-newer t)
```

# Watch What You Eat

**Code requiring package-management can only follow this block.**

Before ELPA, I used SVN to manage software packages for EMACS. After ELPA,
I used ELPA-packages. Now this system uses MELPA and GNU. MELPA packages always
have their issues fixed very quickly. GNU packages rarely have issues.

Initialize Package.

```lisp
(package-initialize)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("gnu" . "http://elpa.gnu.org/packages/") t)
```

Use-Package is the most configurable and performant way to manage ELPA packages.

Add the Use-Package distribution the load path.

```lisp
(add-to-list 'load-path"~/src/use-package")
```

Load Use-Package and it's partner Diminish. Every package loaded before this
point uses `require`. Every package loaded after this point uses `use-package`.

```lisp
(eval-when-compile
  (require 'use-package))
(use-package diminish)
```

# Hacking

## Common Configurations

This system configures `text-mode` and `prog-mode` very similarly:

-   EMACS **exists** to help you work with text.
-   EMACS' entire configuration helps you work with text whether it is in a
    specific mode or not.
-   Org-Mode's motto is "**Organize Your Life In Plain Text!**".
-   From an EMACS and a LP perspective `text-mode` **is a** programming mode.
-   In this system: **Text is the User-Interface**.

This system does not rely on `prog-mode` inheritance to configure it's hacking
modes:

-   The EMACS literature advises that modes extend `text-mode` or `prog-mode`
-   That *would* make it easier to configure nearly everything using `prog-mode-hook`.
-   In practice `prog-mode` is too new.
-   Not all programming modes inherit from it. Not even `IELM` is ready.

With that in mind this system:

-   Defines common configuration here for reuse in every desired mode starting
    with `text-mode` and then all logical programming modes.
-   Explicitly utilizes it directly instead of using inheritance.
-   This system refers to this configuration of programming modes as `prog*-mode`.
-   The line between "configuring EMACS", "configuring `text-mode`", and
    "configuring `prog*-mode`" is often blurred and sometimes confusing. The lines
    become wavy and intertwined with mastery of EMACS and LP.

### Text-Mode

-   Line numbers make documents easier to read.
-   Indicate that Text-Mode buffers ought to be 80 characters wide.

    ```lisp
    (use-package fill-column-indicator
      :ensure t
      :config
      (setq-default fill-column help/column-width))
    ```

```lisp
(defun help/text-prog*-setup ()
  "HELP's standard configuration for buffer's working with text, often for
   programming."
  (interactive)
  (visual-line-mode)
  (linum-mode)
  (fci-mode)
  (rainbow-mode)
  (help/try-to-add-imenu))

(add-hook 'text-mode-hook #'help/text-prog*-setup)
```

### Prog\*-Mode Modes

-   Mode inheritance is represented by list definition & indentation.
-   Some modes are so simple that inheritance isn't defined.

-   Hacking mode hooks.
    -   Configurations common to every hacking vehicle.

        ```lisp
        (setq help/hack-modes '(makefile-mode-hook ruby-mode-hook sh-mode-hook plantuml-mode-hook tex-mode-hook ess-mode-hook graphviz-dot-mode-hook))
        ```
    -   LISP mode hooks.
        -   Are hacking modes.

            ```lisp
            (setq help/hack-lisp-modes
                  '(emacs-lisp-mode-hook
                    ielm-mode-hook
                    lisp-interaction-mode))
            (setq help/hack-modes (append help/hack-modes help/hack-lisp-modes))
            ```
        -   IELM mode hook.
            -   Does one or two more things.

### Prog\*-Mode Hook

1.  Goal

    -   Indent at every opportunity and automatically. Verify that it makes sense
        for the mode. Explicitly define instead of relying on `prog-mode` inheritance;
        use this documents logical `prog*-mode` approach instead.

        ```lisp
        (use-package aggressive-indent
          :ensure t
          :config)
        ```
    -   Always maintain balanced brackets. Easily wrap the selected region. Auto-escape
        strings pasted into other strings. Smartparens provides built-in correct
        behavior for most modes.

        ```lisp
        (use-package smartparens-config
          :ensure smartparens
          :config
          (setq sp-show-pair-from-inside nil)
          :diminish smartparens-mode)
        ```

2.  Implementation.

    ```lisp
    (defun help/hack-prog*-mode-hook-fn ()
      (interactive)
      (help/text-prog*-setup)
      (smartparens-strict-mode)
      (aggressive-indent-mode)
      (hs-minor-mode)
      (help/not-on-gui (local-set-key (kbd "RET") #'newline-and-indent))
      (help/on-gui (local-set-key (kbd "<return>") #'newline-and-indent)))
    ```

### Wiring

```lisp
(let ()
  (--each help/hack-modes
    (add-hook it #'help/hack-prog*-mode-hook-fn)))

(let ()
  (--each help/hack-lisp-modes
    (add-hook it #'help/emacs-lisp-mode-hook-fn)))

(add-hook 'ielm-mode-hook #'help/ielm-mode-hook-fn)
```

## (Literate Programming)

## Emacs Lisp

```lisp
(setq initial-scratch-message nil)
(use-package lexbind-mode)

(defun help/elisp-eval-buffer ()
  "Intelligently evaluate an Elisp buffer."
  (interactive)
  (help/save-all-file-buffers)
  (eval-buffer))

(defun help/elisp-mode-local-bindings ()
  "Helpful behavior for Elisp buffers."
  (local-set-key (kbd "s-l eb") #'help/elisp-eval-buffer)
  (local-set-key (kbd "s-l ep") #'eval-print-last-sexp)
  (local-set-key (kbd "s-l td") #'toggle-debug-on-error)
  (local-set-key (kbd "s-l mef") #'macroexpand)
  (local-set-key (kbd "s-l mea") #'macroexpand-all)
  (local-set-key (kbd "s-:") #'my-eval-expression)
  (local-set-key (kbd "#") #'endless/sharp))

(defun help/emacs-lisp-mode-hook-fn ()
  (interactive)
  (help/elisp-mode-local-bindings)
  (lexbind-mode)
  (eldoc-mode)
  (diminish 'eldoc-mode))

(setq ielm-noisy nil)

(setq ielm-prompt "𝔼LISP> ")

(setq ielm-dynamic-return nil)

(setq ielm-dynamic-multiline-inputs nil)

(defun help/ielm-mode-hook-fn ()
  "HELP customizations."
  (interactive)
  (help/ielm-auto-complete))
```

### Keybinding

```lisp
(define-key emacs-lisp-mode-map (kbd "s-p") #'describe-thing-in-popup)
```

## Org-Mode

When source blocks are evaluated, their results get stored in a result area,
typically for display. If the results are small, they are displayed with colons
instead of an `example` block. Instead, **always** place them in an
example block. This makes exports more consistent and other Org-Mode features seem
to behave more predictably.

```lisp
(setq org-babel-min-lines-for-block-output 0)
```

Configure Org-Mode to manage it's Source-Block backed buffers the same as the
rest of this system.

```lisp
(setq org-edit-src-auto-save-idle-delay 0)
(setq org-edit-src-turn-on-auto-save nil)
```

Update in-buffer images after Source-Block execution. This is a programming task.
That is why it is under this heading and Evaluation. This is a setting configuring
how the results of evaluation are refreshed in EMACS.

```lisp
(defun help/org-babel-after-execute-hook ()
  "HELP settings for the `org-babel-after-execute-hook'.

This does not interfere with exports.

Attribution: URL `https://lists.gnu.org/archive/html/emacs-orgmode/2015-01/msg00534.html'"
  (interactive)
  (org-redisplay-inline-images))

(add-hook 'org-babel-after-execute-hook #'help/org-babel-after-execute-hook)
```

Never "automatically" evaluate a source block.

```lisp
(setq org-confirm-babel-evaluate nil)
```

Make it unpleasant for Sysop to modify source-block outside of a source-block
backed buffer. The next step is to write some code to prevent modifying
source-blocks outside of that place.

```lisp
(setq org-src-tab-acts-natively nil)
```

My personal TODO workflow.

```lisp
(setq org-todo-keywords
      '((sequence "TODO" "IN-PROGRESS" "BLOCKED" "REVIEW" "DONE")))
```

When running in a GUI, I would like linked images to be displayed inside of
Emacs.

```lisp
(setq org-startup-with-inline-images (display-graphic-p))
```

Use Ido completion in Org-Mode.

```lisp
(setq org-completion-use-ido t)
(setq org-outline-path-complete-in-steps nil)
(setq org-completion-use-iswitchb nil)
```

Org-Mode lets you use single letter commands to do stuff on headers. I like to
use `c` for cycling the header expansion.

```lisp
(setq org-use-speed-commands t)
```

Ask before execution of shell links. This might seem like an Evaluation
activity. It is. It is interactive.

```lisp
(setq org-confirm-shell-link-function 'y-or-n-p)
```

Ask before execution of Emacs-Lisp.

```lisp
(setq org-confirm-elisp-link-function 'y-or-n-p)
```

Make sure that incomplete TODO entries prevent the enclosing parent from every
turning to DONE.

```lisp
(setq org-enforce-todo-dependencies t)
```

Allow the mouse to do Org-Mode things like expand and collapse headings.

```lisp
(when (display-graphic-p)
  (use-package org-mouse))
```

Use a real ellipsis to render an ellipsis for Org-Mode stuff like showing that a
header is collapsed.

```lisp
(setq org-ellipsis "…")
```

It is easy to see indentation of headlines without having to count asterisks, so
don't show them, only show the significant and last one.

```lisp
(setq org-hide-leading-stars t)
```

Display emphasized text as you would in a WYSIWYG editor.

```lisp
(setq org-fontify-emphasized-text t)
```

Use Unicode characters to visualize things like right arrow eg &rarr; . Most of those
symbols are correctly exported to the destination format. The most obvious is
this example in LaTeX versus Text.

```lisp
(setq org-pretty-entities t)
```

Highlight LaTeX and related markup.

Normally, I don't do any syntax highlighting, as I believe that should be
delegated to source buffers, thinking that to do otherwise is distracting.
However, I already do configure subscripts and Greek letters to be displayed
with syntax highlighting, because I want to indicate to the human reader that
they are special, and specifically *not*-Unicode. Do the same thing for LaTeX
and related markup.

```lisp
(setq org-highlight-latex-and-related '(latex script entities))
```

Allow "refactoring" of Footnotes between documents.

```lisp
(setq org-footnote-define-inline t)
(setq org-footnote-auto-label 'random)
(setq org-footnote-auto-adjust nil)
(setq org-footnote-section nil)
```

This is an amazingly easy way to screw up your document. The more you edit
org docs, the more you realize how you must truly protect it.

```lisp
(setq org-catch-invisible-edits 'error)
```

Though I am not delving deep, it is hard not to want to customize some stuff
and perhaps this is the start. Even though I enabled this, I don't think that I
ever used it.

```lisp
(setq org-loop-over-headlines-in-active-region t)
```

It is *almost always* faster to work with org documents when they are fully
expanded. Anyway, the structure cycling makes it really, really easy to get an
*outline view* again.

```lisp
(setq org-startup-folded "nofold")
```

When images are displayed in the buffer, display them in their actual size. As
the operator, I want to know their true form. Any modifications required for
export will be stated explicitly.

```lisp
(setq org-image-actual-width t)
```

Hide the delimeter for emphasized text. Unicode characters break table
alignment.

```lisp
(setq org-hide-emphasis-markers t)
```

Realign tables automatically.

```lisp
(setq org-startup-align-all-tables t)
```

Always use Unicode checkboxes.

```lisp
(setq org-html-checkbox-type 'unicode)
```

You may display syntax highlighting for code in source blocks. I don't.

```lisp
(setq org-src-fontify-natively nil)
```

Never indent the contents of a source-block automatically.

```lisp
(setq org-edit-src-content-indentation 0)
```

When edit mode is exited, the option exists to automatically remove empty
opening and closed lines for the source block. Never do this. The thing is that
I forgot why. When I was working on a recent analysis with ℝ there was a
space appearing in the opening and closing line of the source block that didn't
appear in the source editing buffer. That surprised me. I am sure that I've
forgotten why this is the case. I don't like it because you add a bunch of
empty lines in the source buffer for every source block. With that in mind I
will enable this feature and try it out again.

```lisp
(setq org-src-strip-leading-and-trailing-blank-lines t)
```

The source block buffer may be configured to appear in a few different places.
For a while I really liked `reorganize-frame` because sometimes you want to be
able to see the code you are editing in edition to the rest of the document. At
least that is what I am telling myself. Once I learned you could change it I
realized that 1 I should have asked if it could be changed and 2 I should have
changed it. The flow that I've got configured here is that you are either in the
source document where code blocks are not highlighted or you are in the source
block so you are editing in a buffer that is full-fledged HELP. That is the best
way so you can focus completely on each task at hand in the ideal mode for that
task. Anything else results in distractions and errors.

```lisp
(setq org-src-window-setup 'current-window)
```

Org-Mode has a really nice feature that hitting `C-c C-c` will generally just do
the *right thing*. It is really nice. That feature extends to source blocks of
course. Ironically I had a typo here, typing *of curse* instead of *of course*.
The thing is that you really, really need to develop a personal workflow, and
then configure the tool to enable it. The more I learn about Org-Mode, the more
leery I am about making it really easy to evaluate code. I want it to be a
really, really specific and decided action to evaluate a code block, so don't
make it so easy as `C-c C-c`.

```lisp
(setq org-babel-no-eval-on-ctrl-c-ctrl-c t)
```

Configure the system to successfully use `vc-next-action` while editing a
Source-Block. Before perfoming the edit, check if it is Org-Mode and
exit the Source-Block Buffer (SBB). If this system stays in the SBB
when calling `vc-next-action` the entire contents of the buffer are escaped
as Org-Mode source code upon returning to the source buffer (this). Do the same
thing before any version control modes that would result in the same condition.

```lisp
(defun help/vc-next-action ()
  "If in org source block, exit it before `vc-next-action'."
  (interactive)
  (when (condition-case nil
            (org-src-edit-buffer-p)
          (error nil))
    (org-edit-src-exit))
  (vc-next-action nil))
(defun help/magit-status ()
  "If in org source block, exit it before `magit-status'."
  (interactive)
  (when (condition-case nil
            (org-src-edit-buffer-p)
          (error nil))
    (org-edit-src-exit))
  (magit-status))
```

Never use the original version.

```lisp
(setq org-edit-src-code nil)
```

Easily wrap text in Org-Mode. This is not used by the rest of HELP because
Smartparens provides that functionality for programming modes.

```lisp
(use-package wrap-region
  :ensure t
  :config
  :diminish wrap-region-mode)
```

**Bold**.

```lisp
(wrap-region-add-wrapper "*" "*" nil 'org-mode)
```

*Italic*.

```lisp
(wrap-region-add-wrapper "/" "/" nil 'org-mode)
```

`Verbatim`.

```lisp
(wrap-region-add-wrapper "=" "=" nil 'org-mode)
```

`Code`.

```lisp
(wrap-region-add-wrapper "~" "~" nil 'org-mode)
```

.

```lisp
(wrap-region-add-wrapper "+" "+" nil 'org-mode)
```

Generate the README for GitHub.

```lisp
(add-hook 'org-babel-pre-tangle-hook #'help/org-xprt-rdme)
```

Minimize Macro text.

```lisp
(setq org-hide-macro-markers t)
```

### Keybindings

Started questioning why after hitting RETURN while in lists I have to hit TAB to
get indented properly. Kind of a dead giveaway that I should be
return-and-indenting! Looked at `org-return` to find that it has an argument
about indenting and then saw that `org-return-indent` passes it for you. With that
in mind, RETURN is bound to that now. Now HELP has four different kinds of
"returns" in Org in order of likelihood of usage:

-   **org-return-indent:** Make it really easy to work in existing list items,
    headings, and tables
    -   This is listed first because I often go back to modify entries
    -   <return> because it is used the most
-   **org-meta-return:** Make it really easy to add new list items, headings, and
    table contents
    -   M-<return> because the binding comes with Org
-   **electric-indent-just-newline:** For when I want to break out of the default
    Org indentation to start working at the beginning of the line for example when
    I'm done working in a list or have just created a new heading
    -   C-M-<return> because it is next step "lower" in the binding
-   **help/smart-open-line:** When I want to insert a new line between the current
    and next line then position the cursor correctly indented at the start of it.
    -   s-<return> because it is that is the last place in the modifier key chain

```lisp
(help/not-on-gui
 (define-key org-mode-map (kbd "RET") #'org-return-indent)
 (define-key org-mode-map (kbd "C-M-RET") #'electric-indent-just-newline))
(help/on-gui
 (define-key org-mode-map (kbd "<return>") #'org-return-indent)
 (define-key org-mode-map (kbd "C-M-<return>") #'electric-indent-just-newline))
```

```lisp
(define-key org-mode-map (kbd "s-7") #'org-babel-load-in-session)
(define-key org-mode-map (kbd "s-8") #'org-babel-switch-to-session)
(define-key org-mode-map (kbd "s-9") #'org-babel-switch-to-session-with-code)
(define-key org-mode-map (kbd "s-j") #'org-babel-next-src-block)
(define-key org-mode-map (kbd "s-y") #'help/safb-org-babel-execute-subtree)
(define-key org-mode-map (kbd "s-u") #'help/safb-org-babel-execute-buffer)
(define-key org-mode-map (kbd "s-U") #'org-mark-ring-goto)
(define-key org-mode-map (kbd "s-k") #'org-babel-previous-src-block)
(define-key org-mode-map (kbd "s-i") #'help/safb-org-babel-tangle)
(define-key org-mode-map (kbd "s-l") #'help/safb-org-edit-src-code)
(define-key org-mode-map (kbd "s-o") #'org-babel-execute-src-block-maybe)
(define-key org-mode-map (kbd "s-;") #'org-babel-view-src-block-info)
(define-key org-mode-map (kbd "s-'") #'org-babel-open-src-block-result)
(define-key org-mode-map (kbd "s-p") #'help/safb-help/org-babel-demarcate-block)
```

```lisp
(defhydra help/hydra/right-side/org-mode (:color blue
                                                 :hint nil)
  "
_1_ SHA-1_4_ +imgs _5_ -imgs                   _8_ detangle _9_ igc  _0_ tglmcro
_q_ n2sbtre _w_ tbletfld _e_ g2nmrst _r_ g2nms-b _t_ g2s-b/hd      _u_ goto
_a_ inshdrgs _s_ oblobigst            _h_ dksieb
_c_ cksrcblk _b_ swtch2sessn _n_ <-/w-code _m_ xpndsrcblk"
  ("1" org-babel-sha1-hash)
  ("s" org-babel-lob-ingest)
  ("e" org-babel-goto-named-result)
  ("r" org-babel-goto-named-src-block)
  ("t" org-babel-goto-src-block-head)
  ("a" org-babel-insert-header-arg)
  ("h" org-babel-do-key-sequence-in-edit-buffer)
  ("m" org-babel-expand-src-block-maybe)
  ("c" org-babel-check-src-block)
  ("w" org-table-edit-field)
  ("q" org-narrow-to-subtree)
  ("u" org-goto)
  ("8" org-babel-detangle)
  ("9" org-id-get-create)
  ("0" help/org-toggle-macro-markers)
  ("b" org-babel-switch-to-session)
  ("n" org-babel-switch-to-session-with-code)
  ("4" org-display-inline-images)
  ("5" org-remove-inline-images))
(key-chord-define-global "hh" #'help/hydra/right-side/org-mode/body)
```

Safe all buffers before working with Exports.

```lisp
(define-key org-mode-map (kbd "C-c C-e") #'help/safb-org-export-dispatch)
```

Make `s-l` do the same thing to leave the Source-Block-Buffer.

```lisp
(define-key org-src-mode-map (kbd "s-l") #'org-edit-src-exit)
```

Easily enter guillemots.

```lisp
(key-chord-define org-src-mode-map "<<" (lambda () (interactive) (insert "«")))
(key-chord-define org-src-mode-map ">>" (lambda () (interactive) (insert "»")))
```

## (Applied Mathematics)

## Emacs Speaks Statistics (ESS)

```lisp
(use-package ess
  :ensure t)
```

-   For a minimalist release history read the [news file](http://ess.r-project.org/Manual/news.html).
-   For a brief overview and release history read the [readme](http://ess.r-project.org/Manual/readme.html).
-   For a comprehensive overview read the [manual](http://ess.r-project.org/Manual/ess.html).

-   Multiple `ESS` processes may run simultaneously, and may be selected by a
    specific language via their buffer name that has a number appended, or may be
    accessed via a menu using `ess-request-a-process`.

Various user interaction stuff:

-   Return sends the input from wherever you hit return, nice.
-   `M-{` and `M-}` cycle through commands you ran
-   `M-h` select a whole "paragraph", a block in their terms
-   `C-x [` moves through the previous ESS sessions, `C-x ]` forward.
-   `C-c C-p` and `C-c C-n` cycle through previous commands.
    -   How is this different than the other one?
-   `C-c RET` copies an old command to the prompt without running it
    -   Great idea
-   Keep your session transcript pruned
    -   `ess-transcript-clean-region` removes non-commands from a transcript for you
-   Previous command look-up can be done by completion via `comint-*-matching`.
    -   `M-p` and `M-n` seem to work just fine though.
-   Previous command execution, by name, offset, or just the last one, are by `!`
    -   This feature is actually quite rich and a real regexen style system.

Always show eldoc for things.

```lisp
(setq ess-eldoc-show-on-symbol t)
```

Data viewing:

-   **Never** rely upon on the REPL for data viewing
    -   Will mix up exploratory code with data
        -   Can't easily distinguish between code and data
        -   Distracting you
        -   Breaking your flow
-   Sometimes
    -   You end up somewhere
        -   And the `ess` buffer cursor is at the top!
        -   No problem, call `ess-switch-to-end-of-ESS`
-   Make it easier to know what object values are.
    -   `ess-describe-object-at-point`

```lisp
(setq ess-describe-at-point-method 'tooltip)
```

Always start `ess` within the curent `emacs` frame, it doesn't need to be separate.

```lisp
(setq inferior-ess-same-window nil)
(setq inferior-ess-own-frame nil)
```

Help buffers all belong in the same frame.

```lisp
(setq ess-help-own-frame nil)
```

When commands are executed, display their output within the current buffer,
rather than to a new dedicated buffer for them.

```lisp
(setq ess-execute-in-process-buffer t)
```

When you cycle between a the ℝ buffer and the script, you get to the process
buffer, you will go to the end of the buffer. This setting is specifically to
handle a buffer that is scrolling when you want to see the last result and will
scroll back after the fact to see the history.

```lisp
(setq ess-switch-to-end-of-proc-buffer t)
```

Use typical auto completion in buffers here, but don't do it when the
next char is a symbol or closed paren.

```lisp
(setq ess-tab-complete-in-script t)
(setq ess-first-tab-never-complete 'symbol-or-paren-or-punct)
```

Use `ido` completion whenever possible.

```lisp
(setq ess-use-ido t)
```

Use `eldoc` for this mode. Always show it when the point is on a symbol.
Try to keep help strings at 10 chars or less.

```lisp
(setq ess-use-eldoc t)
(setq ess-eldoc-show-on-symbol t)
(setq ess-eldoc-abbreviation-style 'normal)
```

These functions are metioned, and I am not sure where or how to use them yet,
but Vitalie Spinu mentioned them as being useful:

-   `comint-previous-matching-input-from-input`
-   `comint-history-isearch-backward-regexp`

Personal customizations for this mode. For some currently unknown reason,
`smartparens` only runs when you call `smartparens-strict-mode` and not
`turn-on-smartparens-strict-mode` like it does everywhere else.

For a while I used `ess-eval-buffer-and-go`, but now I know that it is insanely
faster to use `ess-eval-buffer` instead. Previously I've read people saying that,
and it is true.

When I started to standardize arrows across modes, I recalled the `ess`
documentation and was also reminded <sup><a id="fnr.1" class="footref" href="#fn.1">1</a></sup>
here how easy it is to customize it.

**Philosophy**

The current `ESS` maintainers philosophies about how to maintain an ℝ code-base
make sense to me and are virtually the same as my own. Quite simply, the rule is
that the code artifacts are the single source of system definition. Consequently,
the system should be configured in this manner:

We want to keep dump files after loading them; never delete them. The idea
is that if we use them, then they are a valid part of the system definition and
need to be kept.

```lisp
(setq ess-keep-dump-files +1)
```

`ESS` allows us to quite easily modify live 𝕊 objects and functions. It provides
this functionality via `ess-dump-object-into-edit-buffer`. These changes are
considered to be experimental, and not part of the master record according to
our philosophy. As such, we don't care to know that these new versions ever
existed and their record will be forgotten from history. In other words, that
new, modified version of the object or function, is never saved to a file for
later reuse.

```lisp
(setq ess-delete-dump-files nil)
```

Since our systems are entirely file-based, the entirety of the system most
likely lives in different files. Before loading any file for sourcing, save
any ESS source buffers. This approach is in addition to two other things:
(1) Emacs is auto-saving every file buffer quite frequently and (2) there is
advice before every manual `eval` call so that the buffers and their files stay
in sync. Yes, it is really that important.

```lisp
(setq ess-mode-silently-save +1)
```

Indent curly brackets correctly:

`smartparens` is serving me well. In this mode it is for curly, round, and square brackets. `ESS` handles indenting mostly right, too. One thing was unpleasant, though. When you define a new function, hitting return brings the curely bracket down to the newline but doesn't give it an empty line and indent the cursor one indentation over so that you may begin implementing the function. That is a big hassle; 4 unnecessary keystroke, it is really distracting and takes you out of the flow. It is such a little thing yet it is so powerfully distracting. It is like a mosquito in your tent! Searching for a solution revealed that I am not alone here.

This post <sup><a id="fnr.2" class="footref" href="#fn.2">2</a></sup> handles brackets,
indentation quite well <sup><a id="fnr.3" class="footref" href="#fn.3">3</a></sup> but doesn't provide the behavior that I want.
This post <sup><a id="fnr.4" class="footref" href="#fn.4">4</a></sup> captured exactly what I was facing, yet didn't end with a
solution which was kind of shocking. Searching some more I ended up here <sup><a id="fnr.5" class="footref" href="#fn.5">5</a></sup>, and this seems like the
ideal solution by the author of smartparens himself. This is probably a common thing
 as I found another post
with exactly my situation referencing that aforementioned solution, too <sup><a id="fnr.6" class="footref" href="#fn.6">6</a></sup>. This is a nice generalizable
approach that should serve me well for just about everything in this solution-area. Here <sup><a id="fnr.7" class="footref" href="#fn.7">7</a></sup> is a post
showing a more advanced usage that handles context which is nice to know is an option.

```lisp
(sp-local-pair #'ess-mode "{" nil :post-handlers '((gcr/indent-curly-block "RET")))
```

`ESS` executes code in another process. That is no secret. When displaying output
from that code running in another process though, it can look like Emacs is
locking up. That is not the case <sup><a id="fnr.8" class="footref" href="#fn.8">8</a></sup>.
What is happening that Emacs is waiting for the output. Configure this mode to
continue to accept user input, which is obviously critical, but don't wait for
the process to provide its output. Instead, all output is printed after the last
input lines. What we gain is perceived speed, and what we lose is the nice
sequential this/that/this/that we get from a typical REPL interaction. As I
write this, I'm not totally sure how this will work, but the documentation and
post are consistent and describe what I had wanted here so I will give it a try
and see how it goes.

```lisp
(setq ess-eval-visibly 'nowait)
```

## SAS (ESS)

## R (ESS)

ℝ first notes:

-   ℝ will start ℝ via `Emacs`
-   `ESS` works transparently on remote machines using `TRAMP` to manage a remote
    ℝ instance. An example is provided for Amazon. Means exist for supporting remote
    graphical displays or redirecting to a file. Excellent support seems to exist
    to quite flexibly support unexpected things like starting an `ESS` supported
    program in a plain old shell and being able to convert it to an `ESS` supported
    buffer.

In it:

-   𝕊 refers to any language in the family.
    -   ℝ is what I'm interested in.
-   First 2.5 pages do some nice expectation-setting.
-   Generally seems like a highly rich development environment with support for
    editing, debugging, and support with everything that you would expect from
    the best of Emacs.
-   Manual covers most requested variables for configuring, but the customize
    facility covers more, and mentions that either way you should avoid doing so
    until you have used `ESS` for a while.

Various session interaction stuff

-   Show objects in the work-space: `C-c C-x`
-   Search for what libraries are available to the work-space: `C-c C-s`
-   Load file with source: `C-c C-l`
-   Visit errors: =C-c '= and =C-x '=
-   Show help on an object: `C-c C-v`
-   Quit: `C-c C-q`
-   Abort: `C-c C-c`
-   Switch between the console and the most recent file buffer: `C-c C-z`

Sending code to the ESS process

-   `ess-eval-region-or-line-and-step`: Eval the region, or the line, move to next
    line
-   `C-M-x`: Eval the current region, function, or paragraph
-   `C-c C-c`: Do that and then go to the next line
-   `C-c C-j`: Eval the current line
-   `C-c M-j`: Eval line and jump to the console
-   `C-c C-f`: Eval the currently selected function
-   `C-c M-f`: Eval the currently selected function and jump to the console
-   `C-c C-r`: Eval the region
-   `C-c M-r`: Eval the region and jump to the console
-   `C-c C-b`: Eval the buffer
-   `C-c M-b`: Eval the buffer and jump to the console
-   You can do all this stuff from transcript files, too.
    -   My thought is that I never, ever will and if I do need to, I'm looking up the
        commands again as I don't want to make a habit of doing that kind of
        thing (running old transcripts).

Editing objects and functions:

-   `C-c C-e C-d`: Edit the current object
-   `C-c C-l`: Load source file into the ESS process
-   `TAB` Indents/re-formats or completes code.
-   `M-;`: Correctly indents the current comment

Help mode inside of ESS:

-   `C-c C-v`: `ess-display-help-on-object`: Get help on anything
-   `?`: Show commands available in help mode
-   `h`: Show help for a different object. Currently focused object defaults.
-   `n` and `p`: Cycle through sections
-   `l`: Eval the current line in the console; usually sample code.
-   `r`: Eval current region, too
-   `q`: Quit out of that buffer
-   `k`: Kill that buffer
-   `x`: Kill that buffer and return to ESS
-   `i`: Get info on a package
-   `v`: Show vignettes
-   `w`: Show current help page in browser

Completion:

-   `TAB`: Complete anything
-   `M-?`: Show completions available
-   `ess-resynch`: Refreshes the completion cache

**ess-tracebug** start

```lisp
(setq ess-use-tracebug t)
```

For all `ess-tracebug` stuff, the map prefix is `C-c C-t`

<span class="timestamp-wrapper"><span class="timestamp">&lt;2014-11-11 Tue&gt;</span></span>
The documentation for `ess-tracebug-help` provides all of this documentation that
I copied from the website into here. Someday I should clean this up!

Breakpoints `ess-dev-map`:

-   **b `ess-bp-set`:** Set BP (repeat to cycle BP type)
-   **B `ess-bp-set-conditional`:** Set conditional BP
-   **k `ess-bp-kill`:** Kill BP
-   **K `ess-bp-kill-all`:** Kill all BPs
-   **o `ess-bp-toggle-state`:** Toggle BP state
-   **l `ess-bp-set-logger`:** Set logger BP
-   **n `ess-bp-next`:** Goto next BP
-   **p `ess-bp-previous`:** Goto previous BP

Note: `C-` prefixed equivalents are also defined

Debugging `ess-dev-map`:

-   **\` `ess-show-traceback` (also on C-c ):** Show traceback
-   **~ `ess-show-call-stack` (also on C-c ~):** Show callstack
-   **e `ess-debug-toggle-error-action`:** Toggle error action (repeat to cycle)
-   **d `ess-debug-flag-for-debugging`:** Flag for debugging
-   **u `ess-debug-unflag-for-debugging`:** Unflag for debugging
-   **w `ess-watch`:** Watch window

Note: `C-` prefixed equivalents are also defined)

Interactive Debugging `ess-debug-minor-mode-map`:

-   **M-C `ess-debug-command-continue`:** Continue
-   **M-C-C `ess-debug-command-continue-multi`:** Continue multi
-   **M-N `ess-debug-command-next`:** Next step
-   **M-C-N `ess-debug-command-next-multi`:** Next step multi
-   **M-U `ess-debug-command-up`:** Up frame
-   **M-Q `ess-debug-command-quit`:** Quit debugging

Navigation to errors (general Emacs functionality):

-   **`` C-x ` ``, =M-g n:** `next-error`
-   **`M-g p`:** `previous-error`

**ess-tracebug** stop

Be sure to specify this per-project.

```lisp
(setq ess-tracebug-search-path '())
```

Make error navigation simpler.

```lisp
(define-key compilation-minor-mode-map [(?n)] #'next-error-no-select)
(define-key compilation-minor-mode-map [(?p)] #'previous-error-no-select)
```

The font size for watched variables..

```lisp
(setq ess-watch-scale-amount -1)
```

When `ess` starts, or when ℝ starts, it takes the current directory as its
working directory. This is totally fine; so don't ask what the working directory
should be.

```lisp
(setq ess-ask-for-ess-directory nil)
```

My preference is for ESS to quit and not ask me whether or not I am sure. There
is an intentional line-break after the closing round bracket because that is the
approach of the original value here.

```lisp
(setq inferior-ess-exit-command "q('no')
")
```

Visualize just about anything with `ess-R-object-popup`.

```lisp
(use-package ess-R-object-popup
  :ensure t)
```

Rdired is another way to work with object:

-   `ess-rdired`
-   View, delete, plot, and update buffer (ala *revert*) are single key commands

```lisp
(autoload 'ess-rdired "ess-rdired")
```

Visualize data frames better:

-   `ess-R-dv-ctable`
-   `ess-R-dv-pprint`

```lisp
(use-package ess-R-data-view
  :ensure t)
```

inlineR

-   *Not* a competitor to `org-mode`
-   Ultra lightweight LP, really

```lisp
(use-package inlineR
  :ensure t)
```

Documentation:

-   Whole section on native documentation; I'll re-visit as needed.
-   Roxygen, too.

`ess-developer` helps you to easily work within specific name-spaces.

Rutils: key-bindings to aid real usage

-   `C-c C-. l`: List all packages in all available libraries.
-   `C-c C-. r`: List available packages from repositories listed by `getOptions(‘‘repos’’)`

in the current R session.

-   `C-c C-. u`: Update packages in a particular library lib and repository repos.
-   `C-c C-. a`: Search for a string using apropos.
-   `C-c C-. m`: Remove all R objects.
-   `C-c C-. o`: Manipulate R objects; wrapper for `ess-rdired`.
-   `C-c C-. w`: Load a workspace file into R.
-   `C-c C-. s`: Save a work-space file.
-   `C-c C-. d`: Change the working directory for the current R session.
-   `C-c C-. H`: Use `browse-url` to navigate R HTML documentation.

`ess-mode-silently-save` is worth a million bucks; usually I have to hand code
this.

As of <span class="timestamp-wrapper"><span class="timestamp">&lt;2014-01-31 Fri&gt;</span></span>, you need to manually load ESS when you pull it from
MELPA <sup><a id="fnr.9" class="footref" href="#fn.9">9</a></sup>. That is totally fine with me, that is really the best way to load stuff.
Out of curiosity, I read more about it here <sup><a id="fnr.10" class="footref" href="#fn.10">10</a></sup>, but that occurred before
this previous post made by the maintainers. Even the source code in
`ess-autoloads.el` has a license from 2012, which is before the aforementioned
post. As such, this configuration step seems correct and necessary for now.
Additionally, this how the user manual expects a typical manual setup to be
configured.

Looked a tiny bit at how R hackers are formatting their code <sup><a id="fnr.11" class="footref" href="#fn.11">11</a></sup> <sup>, </sup><sup><a id="fnr.12" class="footref" href="#fn.12">12</a></sup>.
The simple (dumb) part of me suspects that C++ formatting is generally just fine <sup><a id="fnr.13" class="footref" href="#fn.13">13</a></sup>.

There is strangely nice discussion about where temp files may be stored;
specifically for cases where you edit identically-named objects and want to keep
them in the same directory but per-project. That is not the need now, and it is
nice to know that it is an option.

Store history files and dump files in a single known location. If that location
doesn't exist, then make it.

```lisp
(setq help/r-dir "~/.R/")
(defun help/make-warn-R-dir ()
  "Handle of R directory misconfiguration."
  (interactive)
  (unless (f-directory? help/r-dir)
    (progn
      (message "Couldn't find %S… creating it." help/r-dir)
      (f-mkdir help/r-dir))))
(help/make-warn-R-dir)
(setq ess-history-directory help/r-dir)
(setq ess-source-directory help/r-dir)
```

Since I'm using ℝ for everything, configure *everything* to be using ℝ.

```lisp
(setq inferior-ess-program "R")
(setq inferior-R-program-name "R")
(setq ess-local-process-name "R")
```

Handle rdoc and rmd files, though I have never used them… yet.

```lisp
(add-to-list 'auto-mode-alist '("\\.rd\\'" . Rd-mode))
(add-to-list 'auto-mode-alist '("\\.Rmd$" . r-mode))
```

Make it really easy to search the ℝ archives for anything.

```lisp
(local-set-key (kbd "C-c C-. S") #'ess-rutils-rsitesearch)
```

Make it really easy to do common stuff for ℝ with good keybindings.

```lisp
(use-package ess-rutils
  :config
  (setq ess-rutils-keys t))
```

`r-autoyas` does argument completion. I had it working nice, and didn't use it for
a while, and now it doesn't work. This needs some TLC.

```lisp
(use-package r-autoyas
  :ensure t
  :config
  (setq r-autoyas-debug t)
  (setq r-autoyas-expand-package-functions-only nil)
  (setq r-autoyas-remove-explicit-assignments nil))
```

Save two spaces showing function information in the mini-buffer.

```lisp
(setq ess-R-argument-suffix "=")
```

Not sure where I put the notes, but long ago I researched the ℝ coding
standards. [This post](http://stackoverflow.com/questions/7502540/make-emacs-ess-follow-r-style-guide) by Eddelbuettel led me to believe that the ℝ [standard](http://cran.r-project.org/doc/manuals/R-ints.html#R-coding-standards)
definition is the best. That made me think that `RRR` would be the best because
it has identical settings to the `C++` style at the time of the post. That makes
sense to me. I only want to change one thing to make Magrittr chains easier to
read. The stock `RRR` indenting makes expressions trail off to the right forever.
Here is how, make a copy of `RRR` and change one property.

```lisp
;; (setq help/ess-style
;;       (copy-alist
;;        (assoc 'RRR ess-style-alist)))
;; (setf (nth 0 help/ess-style) 'HELP)
;; (setf (cdr
;;        (assoc 'ess-continued-statement-offset
;;               (cdr help/ess-style)))
;;       0)
;; (add-to-list 'ess-style-alist help/ess-style)
;; (setq ess-default-style 'HELP)
```

This <sup><a id="fnr.14" class="footref" href="#fn.14">14</a></sup>
post shares a nice setup for the assignment key; primarily if
you use underscores in your variable names, which I do on occasions. After
coding like this for just 10 short minutes it drove me nuts and that is totally
counter intuitive to me; I never would have expected that having to type two
characters to do an assignment would give me nuts. Anyway, the default behavior
is just fine; hit underscore twice gives you an underscore, and one gives you an
assignment!

```lisp
(setq ess-S-assign-key (kbd "C-,"))
(ess-toggle-S-assign-key t)
(ess-toggle-underscore nil)
```

Don't save the workspace when you quit ℝ and don't restore **ANYTHING** when you
start it, either. This adheres to the philosopy that the system is file based.
Period.

```lisp
(setq inferior-R-args "--no-save --no-restore")
```

```lisp
(defun help/R-mode-hook-fn ()
  (local-set-key (kbd "s-e") #'ess-switch-to-end-of-ESS)
  (local-set-key (kbd "s-x") #'r-autoyas-expand)
  (local-set-key (kbd "s-p") #'ess-R-object-popup)
  (local-set-key (kbd "s-v o") #'ess-describe-object-at-point)
  (local-set-key (kbd "s-v d") #'ess-rdired)
  (local-set-key (kbd "s-v cc") #'ess-R-dv-ctable)
  (local-set-key (kbd "s-v cp") #'ess-R-dv-pprint)
  (local-set-key (kbd "C-.") (lambda () (interactive) (insert " -> ")))
  (local-set-key (kbd "C-M-,") (lambda () (interactive) (insert " <<- ")))
  (local-set-key (kbd "C-M-.") (lambda () (interactive) (insert " ->> ")))
  (key-chord-define-local (kbd ",.") (lambda () (interactive) (insert " %<>% ")))
  (local-set-key (kbd "s-.") (lambda () (interactive) (insert " %>% ")))
  (local-set-key (kbd "C-0") #'ess-eval-buffer)
  (r-autoyas-ess-activate)
  (help/turn-on-r-hide-show)
  (lambda () (add-hook 'ess-presend-filter-functions
                  (lambda ()
                    (warn
                     "ESS now supports a standard pre-send filter hook. Please update your configuration to use it instead of using advice.")))))

(add-hook 'R-mode-hook #'help/R-mode-hook-fn)

(defun help/turn-on-r-hide-show ()
  "Attribution: SRC https://github.com/mlf176f2/EmacsMate/blob/master/EmacsMate-ess.org"
  (when (string= "S" ess-language)
    (set (make-local-variable 'hs-special-modes-alist) #'((ess-mode "{" "}" "#" nil nil)))
    (hs-minor-mode 1)
    (when (fboundp 'foldit-mode)
      (foldit-mode 1))
    (when (fboundp 'fold-dwim-org/minor-mode)
      (fold-dwim-org/minor-mode))))

(defun help/Rd-mode-hook-fn ()
  (help/R-mode-hook-fn))

(add-hook 'Rd-mode-hook #'help/Rd-mode-hook-fn)

(defun help/inferior-ess-mode-hook-fn ()
  (help/R-mode-hook-fn))

(add-hook 'inferior-ess-mode-hook #'help/inferior-ess-mode-hook-fn)

(defun help/ess-rdired-mode-hook-fn ()
  "Personal customizations."
  (interactive)
  (turn-on-stripe-buffer-mode)
  (stripe-listify-buffer))

(add-hook 'ess-rdired-mode-hook #'help/ess-rdired-mode-hook-fn)
```

## YASnippet

-   Enable everywhere.
-   Never expand with `TAB` **anywhere**.
    -   Allow expansion to occur within fields.
-   Load HELP snippets.
-   Use Ido to handle user decisions.

```lisp
(use-package yasnippet
  :ensure t
  :config
  (yas-global-mode t)
  (help/not-on-gui (define-key yas-minor-mode-map (kbd "TAB") nil))
  (help/on-gui (define-key yas-minor-mode-map (kbd "<tab>") nil))
  (define-key yas-minor-mode-map (kbd "s-t") #'yas-expand)
  (help/not-on-gui (define-key yas-keymap (kbd "TAB") #'yas-next-field))
  (help/on-gui (define-key yas-keymap (kbd "<tab>") #'yas-next-field))
  (add-to-list #'yas-snippet-dirs "~/src/help/yasnippet")
  (yas-reload-all)
  (setq yas-prompt-functions '(yas-ido-prompt))
  :diminish yas-minor-mode)
```

## Structured Query Language (SQL)

## (Publishing)

## TeX

```lisp
(use-package tex-site
  :ensure auctex
  :config
  (eval-after-load "tex"
    '(define-key TeX-mode-map (kbd "C-c C-c") #'help/safb-TeX-command-master)))
```

Save style info. This doesn't control the buffer save.

```lisp
(setq TeX-auto-save t)
```

Parse on load.

```lisp
(setq TeX-parse-self t)
```

Parse on save.

```lisp
(setq TeX-auto-save t)
```

Use PDFTeX to generate both DVI and PDF files.

```lisp
(setq TeX-PDF-mode t)
(setq TeX-DVI-via-PDFTeX t)
```

Don't prompt every time you run `C-c C-c` about saving the file, instead, just
save it.

```lisp
(setq TeX-save-query nil)
```

Load LCO files with AucTeX.

```lisp
(add-to-list 'auto-mode-alist '("\\.lco?\\'" . TeX-latex-mode))
```

## KOMA-Script

I enjoy writing letters. I enjoy reading letters. LaTeX produces letters that
are easy to print and read. Org provides a [KOMA Script exporter](http://orgmode.org/worg/exporters/koma-letter-export.html) for [KOMA-script](https://www.ctan.org/pkg/koma-script?lang%3Den).
The Org documentation mentions that the user should read the [ox-koma-letter.el](http://orgmode.org/cgit.cgi/org-mode.git/plain/contrib/lisp/ox-koma-letter.el)
header documentation.

The [babel](https://www.ctan.org/pkg/babel?lang%3Den) packages is mentioned in the Org documentation. The package
documentation explains that it should be used with LaTeX, but not XeTeX. Some
time ago I decided to stick with LaTeX.

Load the KOMA exporter.

```lisp
(eval-after-load "ox" '(require 'ox-koma-letter))
```

-   Understanding KOMA and how to use it
    -   There are 4 ways to set letter metadata, listed "from the most specific to
        the most general" (not sure exactly what this statement means, and the conclusion of my notes tries to make sense of what is really going on here and what is the best way to do things)
        -   Org option lines (ORG)
        -   Separate Org latex classes (LTX)
        -   Emacs Lisp variables (LISP)
        -   Letter Class Option files (LCO)
-   Notes and thoughts on the ways to use it
    -   LTX
        -   By following the setup directions, you do this, creating "my-letter" class
        -   Familiar and easy if you already know LaTeX
            -   At some point in your workflow, you **must** define a class to use, anyway
        -   Very easy to do, just define the class template and set `org-koma-letter-default-class`
    -   ORG
        -   Simple way that makes it very easy to just focus on the document content
        -   This metadata takes highest priority in the workflow
            -   So you should set your typical defaults in LISP or LCO and customize it
                here. This is exactly what I wanted to know.
            -   This lets you do your tweaking in each unique file while relying on the
                most common defaults defined elsewhere
    -   LISP
        -   Very familiar style of configuring things
    -   LCO
        -   LCO == Letter Class Option files
        -   LCO files are TeX
        -   They are included in the generated TeX source code from the letter
        -   Gives **full** access to KOMA-Script
            -   Big deal, because not everything is exposed through ORG or LISP
            -   Also gives full access to any and all TeX and LaTeX code
        -   LCO files are a KOMA-Script thing, so they are a LaTeX thing
        -   > Letter metadata set in LCO files overwrites letter metadata set in Emacs
            > variables but not letter metadata set in the Org file.
        -   When you include multiple LCO files, they are evaluated LIFO. Properties
            are set as they first appear, and are not set again. Say you include
            "MyGeneralStuffForAnyLetter.lco" and then include
            "MyStuffSpecificToThisLetter.lco". The specific stuff will get set first.
            Then general stuff will get set last.
            -   Surely there is a better way to phrase this. I will work on that.
-   Recommendations
    -   What is the easiest way to start using KOMA-Script based on what you know
        today?
    -   If you don't know any of the approaches
        -   Then choose between learning LaTeX and Org
    -   If you only know LaTeX
        -   Then you will use the LTX/LCO metadata approach
    -   If you only know ORG
        -   Then you will use the ORG metadata approach
    -   If you only know ORG and LISP
        -   Then you will use the LISP approach for general metadata and the ORG
            approach specific metadata
    -   If you know LTX/LCO, ORG, and LISP
        -   Then you have total flexibility
        -   The fact is that
            -   ORG settings always trump LTX/LCO and LISP
            -   LISP settings are a subset of all of the settings available in
                KOMA-Script, so you will always have to fall back to LTX/LCO if you want
                to use unexposed features
            -   LCO files are just plain old LaTeX, which you already know
        -   So the best thing to do
            -   Is to use ORG for letter-specific settings
            -   And LTX for general settings
            -   Everything is a lot simpler this way because
                -   One less metadata approach to keep track of
                -   All KOMA-Script features are present
                -   Need to learn details of KOMA-Script package anyway

Configure the default class.

[This](https://tex.stackexchange.com/questions/102922/how-can-i-get-us-letter-output-from-koma-scripts-scrlttr2-class) post explains how to default the US letter size. That is the likely default
for my printed correspondence.

```lisp
(eval-after-load "ox-koma-letter"
  '(progn
     (add-to-list 'org-latex-classes
                  '("my-letter"
                    "\\documentclass[paper=letter, pagesize, fontsize=10pt, parskip]{scrlttr2}
\\usepackage[english]{babel}
\\usepackage[osf]{mathpazo}"))

     (setq org-koma-letter-default-class "my-letter")))
```

There are two formats for the letters: [heading-based](http://orgmode.org/w/?p%3Dworg.git%3Ba%3Dblob%3Bf%3Dexporters/koma-letter-new-example.org%3Bh%3D180a9a0e10dd8f7483a67946daf36732c316f821%3Bhb%3D180a9a0e10dd8f7483a67946daf36732c316f821) and [property-based](http://orgmode.org/w/?p%3Dworg.git%3Ba%3Dblob%3Bf%3Dexporters/koma-letter-example.org%3Bh%3De21b8b00c3e895be9dd573d02ea84b08796296a3%3Bhb%3De21b8b00c3e895be9dd573d02ea84b08796296a3).

Set up my default LCO files.

```lisp
(setq org-koma-letter-class-option-file "UScommercial9 KomaDefault")
```

## Texinfo

## Pandoc

## Markdown

Provide Github Flavored Markdown (GFM).

```lisp
(use-package ox-gfm)
```

Program GFM.

```lisp
(use-package markdown-mode
  :ensure t
  :config
  (add-to-list 'auto-mode-alist '("\\.md\\'" . gfm-mode))
  (setq markdown-coding-system "utf-8"))
```

## WordPress

## HTML

Load Htmlize for HTML export. Use in-line CSS.

```lisp
(use-package htmlize
  :config
  (setq org-html-htmlize-output-type htmlize-output-type)
  (setq htmlize-output-type 'inline-css))
```

## Beamer

Load Beamer for creating presentations.

```lisp
(use-package ox-beamer)
```

## (DevOps)

## Shell Script

## Make

## Vagrant

`ruby-mode` supports `Vagrantfile` OOTB.

## (Diagram)

## Artist

```lisp
(add-to-list 'auto-mode-alist '("\\.asc" . artist-mode))
(add-to-list 'auto-mode-alist '("\\.art" . artist-mode))
(add-to-list 'auto-mode-alist '("\\.asc" . artist-mode))
```

## DITAA

When a drop of water joins the ocean it becomes the ocean.

![img](./image/ditaa-drop_in_the_ocean.png)

![img](./image/ditaa-not_a_sailboat.png)

```lisp
(defconst help/ditaa-jar (concat (getenv "EELIB") "/ditaa.jar"))
(setq org-ditaa-jar-path help/ditaa-jar)
```

## Graphviz

```lisp
(use-package graphviz-dot-mode
  :ensure t
  :config
  (setf (cdr (assoc "dot" org-src-lang-modes)) 'graphviz-dot))
```

![img](./image/graphviz-life_is_simple.png)

## PlantUML

```lisp
(use-package plantuml-mode
  :ensure t
  :init
  (defconst help/plantuml-jar (concat (getenv "EELIB") "/plantuml.jar"))
  (setq plantuml-jar-path help/plantuml-jar)
  :config
  (eval-after-load "ob-plantuml"
    (setq org-plantuml-jar-path help/plantuml-jar)))
```

**Sequence Diagram**

-   Feature rich.
-   Information rich.

![img](./image/plantuml-sequence_diagram.png)

**Use Case Diagram**

-   Actor variable aliasing feature.

![img](./image/plantuml-use_case_diagram.png)

**Class Diagram**

-   Valuable for all sorts of ideas in addition to classes.
-   `hide`, `show`, and `include` are mentioned.
    -   Could be a great reuse mechanism combined with noweb and tangling.
-   Spotted characters might be useful to indicating other things.
    -   Example is data which is clearly a first-class citizen.
    -   Six package visualization types.
    -   Packaging vs. namespaceing.
    -   Good support for splitting large images among output pages.

![img](./image/plantuml-class_diagram.png)

**Activity Diagram**

-   May indicate top to bottom flow using `top`.
-   May label arrows.
-   May force arrow direction.
-   if/else structure for branching.
-   Partition construct.
-   [New syntax](http://plantuml.sourceforge.net/activity2.html) with more examples.

![img](./image/plantuml-activity_diagram.png)

**Component Diagram**

-   The names to define all of the diagram entity types.
-   Identify "Modern UML".
-   Good for summaries.

![img](./image/plantuml-component_diagram.png)

**State Diagram**

![img](./image/plantuml-state_diagram.png)

**Object Diagram**

![img](./image/plantuml-object_diagram.png)

-   Commands.
    -   Header and footer values.
    -   Zoom level.
    -   Creole markup for most text elements.
    -   Lists and sub-lists.
    -   Horizontal lines. Will appear in most containers.
    -   Headings.
    -   Plain old HTML.
    -   Tables, LaTeX style.
    -   Use [OpenIconic icons](https://useiconic.com/open) anywhere.

-   Fonts and colors.
    -   You can change just about everything.
    -   You may nest definitions.
    -   `monochrome true` option.
        -   If you are printing
        -   Or don't want color.

-   Internationalization.
    -   Full Unicode character support.
