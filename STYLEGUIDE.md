    ID: 03E0F0E3-DB81-4033-8F04-5D8BB5CBB2F0

-   Appearance.
    -   Never override theme colors.
    -   When the theme doesn&rsquo;t configure a face then submit a patch.
-   Content
    -   When importing update to conform with Style-Guide.
    -   Keep tangled and weaved documents synchronized with their web.
    -   Ask yourself:
        -   Does it belong in this web?
        -   Does it belong in this headline?
-   Dictionary
    -   **Exemple Complet Minimal (ECM):** The minimal complete example of expected
        versus actual behavior. [Source](http://orgmode.org/worg/org-faq.html).
    -   **Key-Bind:** A verb. The act of creating a Key Binding.
    -   **Literate Programming (LP):** As Knuth intended.
    -   **Out of the Box (OOTB):** The default configuration.
    -   **Sysop:** A proper noun. The System-Operator. The human operating this EMACS
        based Org-Mode enabled literate programming system. The reader.
    -   **Tangle:** A verb. Assemble a document for consumption by another program or
        machine.
    -   **Weave:** A verb. Prepare a document for consumption by a human.
    -   **Web:** A document contained Source-Block definitions that define a system.
-   Encoding
    -   Prefer Unicode characters over ASCII equivalents.
    -   Consider Org-Mode automatic handling of ASCII to UTF-8 symbols.
-   File/Package Loading
    -   Load every one with `use-package` whether it came with EMACS OOTB or ELPA.
        -   `ensure t` tells the reader which one it came from.
    -   Binding definitions often live in Piano Lessons.
    -   Configurations aren&rsquo;t meant to be fully transplant-able because this system
        monolithic. In the interest of collaboration as much of the package
        configuration lives in the `use-package` block as possible.
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
        -   Acronyms are all upper case to distinguish from words for example &ldquo;GNU&rdquo;
            vs &ldquo;Gnu&rdquo;.
-   Headline.
    -   Be sure that every one has an `ID` property with a `UUID` value.
        -   `org-id-get-create` does this. So does code in Hacking/Org Mode/Utility.
    -   Capitalize: nouns, verbs, and adjectives.
    -   Don&rsquo;t capitalize conjunctions unless they are starting the definition.
    -   Sell this &ldquo;chapter&rdquo; to the reader.
    -   Some headlines will be empty and significant; keep them.
        -   Some modes don&rsquo;t require any configuration. The headline still needs to be
            present to remind the reader to keep it in her cognitive landscape.
            Configure other properties and modes taking it into account.
        -   Every language under Hacking should show up in `org-babel-load-languages`.
        -   The `Prog*-Mode` system configuration can result in Headlines that don&rsquo;t
            need any configuration. The Headline still communicates the mode&rsquo;s
            value to the reader even if it doesn&rsquo;t configure EMACS.
    -   It is important to include headlines that are empty and that you may not
        even end up keeping. You need them to help you explore the cognitive
        landscape with them present. In this one case, premature optimization is
        *not* the root of all evil.
    -   Sometimes headlines might better be:
        -   List items.
        -   Stand-alone bold text without punctuation.
-   Hyperlink.
    -   External.
        -   Exclude those easily found with a search-engine unless you are willing to
            verify their existence frequently.
        -   Include when they make the task at hand immensely easier.
    -   Internal.
        -   Minimize usage.
-   Literate Programming.
    -   Comments.
        -   Exclude from tangle-blocks and rely on source-block for traceability.
    -   Noweb-Ref.
        -   Same as Headline.
        -   Replace spaces with dashes.
        -   Probably the Heading name.
        -   Keep depth shallow
    -   Weaver and mode configurations are tightly bound.
-   Maintenance.
    -   Frequently check spelling, grammar, and weasel-words.
    -   Only keep working features in the system.
-   Macros
    -   Rendered as written-text.
    -   Don&rsquo;t contain source code.
    -   Create for ideas expressed more than 2 times.
    -   Expanded during weaving, not during tangling.
-   Plain List.
    -   End single sentences with a period.
-   Programming Language.
    -   Emacs-Lisp.
        -   Almost always use `defun` instead of `advice-add`.
            -   Functions are more normal and predictable.
            -   Advice can subtly break without you noticing.
        -   Parameter.
            -   `nil` for `FALSE`.
            -   `t` for `TRUE`.
            -   `n` for numerical values.
        -   Never `custom-set-variables`.
        -   Always use relative file paths.
        -   Byte-compile frequently to minimize System warnings.
        -   Prefer to byte-compile all references by using `function`.
            -   Fail-fast: it is better to know immediately if there are resolution
                issues.
        -   Prefer to declare anonymous functions with `function`.
        -   [Quoted via](https://www.gnu.org/software/emacs/manual/html_node/elisp/Using-Lexical-Binding.html#Using-Lexical-Binding).
        -   If a non-special variable appears outside of a let form, the byte-compiler
            will warn about reference or assignment to a &ldquo;free variable&rdquo;. An
            unused non-special variable binding within a let form provokes the
            byte-compiler will warn about an &ldquo;unused lexical variable&rdquo;. The
            byte-compiler will also issue a warning if you use a special variable as a
            function argument.
-   Source Block
    -   Be sure that every one has a `NAME` property with a `UUID` value.
        -   YASnippet `sc` does this. So does code in Hacking/Org Mode/Utility.
    -   Tell the story in speech, and then in code.
    -   Consider it another paragraph and indent appropriately.
    -   When contained within a list:
        -   Indent begin/end blocks with list content; this makes it clear to Org-Mode
            to export it as a code block.
    -   Tangle `:file` should have the same `NAME`.
    -   Virtually never edit the contents within buffer-of-origin.
        -   Out of buffer edits:
            -   Fast when spoken language.
            -   Risky when LISP.
    -   While similar to Org-Macro, the `RESULT` formatting indicates to the reader
        that the value is the result of an evaluation.
-   Spelling
    -   Place `LocalWords` at the beginning of the document. That way it won&rsquo;t get
        stomped on during development.
-   Synonyms.
    -   Document and System and Web.
        -   A Web defines a system.
        -   This document is a Web.
    -   Weave and Export.
    -   Sysop and Reader.
-   Tangling.
    -   When ordering matters, rely on block-reuse to enforce correct order.
-   Voice.
    -   Provide answers; do not pose questions or observations.
    -   Simple and detailed.
    -   Pleasant conversation style.
    -   Audience is Sysop; the author included.
-   Weaving.
    -   Strive to keep the weaving in synchronization with the tangling.
-   Word Choice.
    -   Use Arabic numerals.
    -   Instead of writing &ldquo;tells EMACS&rdquo;, communicate the result.
    -   &ldquo;EMACS&rdquo; refers to the EMACS software
    -   &ldquo;HELP&rdquo; refers to the system configured by tangling this we.
    -   Never describe something as &ldquo;perfect&rdquo; or &ldquo;delightful&rdquo;. If it is part of this
        system then it is perfect and delightful.
