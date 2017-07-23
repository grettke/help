# Control Files

    ID: org_gcr_2017-05-12_mara:3F5D7D24-91F0-4CBD-A514-C9D0B9821BDA


## Configuration

    ID: org_gcr_2017-05-12_mara:091465F6-8E3F-4736-9BF0-A498785F5E1D

The goal here is to get R set up thoughtfully and quickly. The profile and environ set it up correctly. Always remember this and run R using those configuration files.

-   Steps
    -   Review and Run `.Rsetup.sh` prepare the OS for R and R for your configuration
    -   Review `.Renviron` to verify it is what you expect
    -   Review `.Rprofile` to recall how you set it up
    -   Review and Source `Rinstall` to install required packages
        -   Verify the lib path is in the home directory `.libPaths()`
        -   When R starts, it won&rsquo;t find any of the required packages. It will complain a lot. That is OK. Just keep running the install script until it is happy: `source("~/.Rinstall.r")`. Then restart R and everything should be fine.
        -   Run the installation script 3-5 times, each time
            -   Check the version that is running
            -   Go back and read the transcript and make sure that it looks right
                -   Build warnings
                -   Configuration errors
                -   Mask warnings
                -   Package notifications
                    -   For example

                            data.table 1.9.6  For help type ?data.table or https://github.com/Rdatatable/data.table/wiki
                            The fastest way to learn (by data.table authors): https://www.datacamp.com/courses/data-analysis-the-data-table-way
                    -   …

                            Attaching package: ‘magrittr’

                            The following objects are masked from ‘package:testthat’:

                                equals, is_less_than, not
                    -   …

                            ------------------------------------------------------------------------------
                            data.table + dplyr code now lives in dtplyr.
                            Please library(dtplyr)!
                            ------------------------------------------------------------------------------
            -   Eventually that script will fail, for example
                -   there is no package called ‘devtools’
                    -   Called `install.packages("devtools")` manually
                    -   Install order error
            -   After running it a couple of times, it is finished

**.Rsetup**

```sh
«rsetup-defs»
```

**.Rprofile**

```R
## -*- mode: R; -*-
«rprofile-def»
.First <- function() {
    gcr <- new.env()
    «rfirst-defs»
    base::attach(gcr, name="gcr", warn.conflicts=FALSE)
}
fortune()
```

**.Renviron**

```sh
# -*- mode: sh; -*-
«renviron-def»
```

**.Rinstall**

```sh
«rinstall-def»
```


## .Rsetup

    header-args: :noweb-ref rsetup-defs

    ID: org_gcr_2017-05-12_mara:898031D5-9930-420A-9DDD-2F5FA0AA6D63

Prepare the operating system to host R.

Recreate the packages directory.

```sh
rm -rf ~/.Rpackages
mkdir ~/.Rpackages
```

Symbolically link all of the control files.

```sh
rm ~/.Rprofile
ln -sfn ~/src/help/.Rprofile ~/.Rprofile
rm ~/.Renviron
ln -sfn ~/src/help/.Renviron ~/.Renviron
rm ~/.Rinstall.r
ln -sfn ~/src/help/.Rinstall.r ~/.Rinstall.r
```


## .Rprofile <sup><a id="fnr.1" class="footref" href="#fn.1">1</a></sup>

    header-args: :noweb-ref rprofile-def

    ID: org_gcr_2017-05-12_mara:F665989E-724D-4983-A8B1-29F566291722

-   When you install packages, R needs to know which repository it should use. If you don&rsquo;t tell it, then it will ask you every time. It is just doing its job. Make it easier for yourself and specify a repo for once and for all.
    -   Via <sup><a id="fnr.2" class="footref" href="#fn.2">2</a></sup>
    -   Built-in docs explain that `local` should be used here
    -   This could also be a one-liner: `options("repos" = c(CRAN = "http://cran.r-project.org/"))`

```R
local({
    r = getOption("repos")
    r["CRAN"] = "https://cran.r-project.org/"
    options(repos = r)
})
```

-   By default, hitting enter in the `browser` will submit a `c` for &ldquo;continue execution at the next statement&rdquo;
    -   It is too easy to hit enter when you didn&rsquo;t mean it
    -   It just *feels* imprecise
    -   Never let this happen, disable that feature

```R
options(browserNLdisabled = TRUE)
```

Show timestamps to 3 sub-seconds:

```R
options("digits.secs"=3)
```

Do not allow automatic coercion of strings into factors, as you can specify this by argument to make it *real* obvious. Looks like the best way is to leave it alone globally and always do it by hand though. hwickam commented that it is bad, bad idea to make this option global not because of your code, but because of everyone else&rsquo;s that you are using which relies on the option being set to `TRUE`. Learning more about this, before this was an option, it was the default behavior (being true) because statisticians rarely dealth with character arrays. As the popularity of R skyrocketed, suddently people wanted to work with them a lot. It isn&rsquo;t custom code that expects it to be true, rather, it is library code that expects it to true. Definitely something that you don&rsquo;t want to mess with.

```R
options(stringsAsFactors=TRUE)
```

This might be *too much*, but always show a call stack when **any** warnings or errors occur

```R
options(showWarnCalls=TRUE)
options(showErrorCalls=TRUE)
```

Be highly conservative about errors and warnings: handle the former immediately and cause the latter to be errors. However, only do this after your workspace has initialized correctly. Do so too soon and most things won&rsquo;t work because this approach is only to handle *my* issues. Imagine of the whole work just handled their own issues! Anway, the safe values are set here, leave them alone. Making them more aggressive will break your startup. When you are ready to set things to be more aggressive, turn it on yourself

```R
options(error=NULL)
options(warn=0)
```

Don&rsquo;t print more than 500 lines. If you can grok more than 500 lines then please teach me. Be at ease, there is a helper to remove that restriction, just in case.

```R
options(max.print=500)
```

Partial matching is a neat and flexible feature for objects. In theory, it is quite powerful and convenient. In practice it seems like a really bad idea to me. It is a *personal preference*. It only makes sense from that perspective. This could bork 3rd party code.

```R
options(warnPartialMatchDollar = TRUE)
```

Locale:

-   Make sure that the language is set correctly. I couldn&rsquo;t find anything specific about setting it this way other than various posts. In practice you would really put all of this in your system environment configuration, but I&rsquo;m wanting to be a little more particular here because it affects operations on data structures, in particular sorting.
-   Error messages are mostly useful when they are displayed in English, so make sure that the locale is always English <sup><a id="fnr.3" class="footref" href="#fn.3">3</a></sup>. &ldquo;Note that the LANGUAGE environment variable has precedence over `LC_MESSAGES` in selecting the language for message translation on most R platforms.&rdquo; <sup><a id="fnr.4" class="footref" href="#fn.4">4</a></sup>
-   Note:
    -   My previous approach was to define a top level binding for the locale string and pass that reference to bind each of the following settings. That was fine until I wanted to be able to easily clear out all of the top-level bindngs to &ldquo;reset&rdquo; it with a `rm(ls())` kind of thing. For that reason, I just use the manifest strings here.

```R
Sys.setenv(LANG = "en_US.UTF-8")
Sys.setlocale("LC_COLLATE", "en_US.UTF-8")
Sys.setlocale("LC_MESSAGES", "en_US.UTF-8")
```

Set the same random seed.

```R
set.seed(970396220)
```


### Packages

    ID: org_gcr_2017-05-12_mara:E5E7A597-B53A-476B-83A4-0B4114125E0C

<span class="timestamp-wrapper"><span class="timestamp">&lt;2014-11-14 Fri&gt;</span></span> Below is a try to auto-install packages if they are not available, and, it seems to have failed. Perhaps there is a better way, and I do need to find it. Until then I will install as-needed. As such, I suppose that I&rsquo;ve found it.

1.  assertthat

        ID: org_gcr_2017-05-12_mara:404A7BC2-F0E1-4E49-8CCA-D693D3430741

    Design-by-contract <sup><a id="fnr.5" class="footref" href="#fn.5">5</a></sup> is a great, great thing. Make it much easier with valuable functions and useful messages!

    Cheatsheet:

    -   Always use `assert_that`
    -   Use
        -   ℝ built ins to check tests
        -   Additionally via `assertthat`:
            -   `is.flag`
            -   `is.string`
            -   `has_name`
            -   `has_attr`
            -   `is.count`
            -   `are_equal`
            -   `not_empty`
            -   `noNA`
            -   `is.dir`
            -   `is.writeable` and `is.readable`
            -   `has_extension`

    ```R
    library(assertthat)
    ```

    ```R
    if(! require(assertthat)){
        install.packages("assertthat")
    }
    ```

2.  testthat

        ID: org_gcr_2017-05-12_mara:8B68967C-5F28-47AC-BD20-758661328199

    Design-by-contract and unit-tests <sup><a id="fnr.6" class="footref" href="#fn.6">6</a></sup> go hand-in-hand.

    Expectations:

    -   `equals() :`: uses `all.equal()` to check for equality with numerical tolerance
        -   Shorthand: `expect_equal(x, y)`
    -   **`is_identical_to()`:** uses `identical()` to check for exact equality
        -   Shorthand: `expect_identical(x, y)`
    -   **`is_equivalent_to()`:** is a more relaxed version of `equals()` that ignores attributes
        -   Shorthand: `expect_equivalent(x, y)`
    -   **`is_a()`:** checks that an object `inherit()`&rsquo;s from a specified class
        -   Shorthand: `expect_is(x, y)`
    -   **`matches()`:** matches a character vector against a regular expression.
        -   The optional all argument controls where all elements or just one element need to match.
        -   Shorthand: `expect_matches(x, y)`
    -   **`prints_text()`:** matches the printed output from an expression against a regular expression
        -   Shorthand: `expect_output(x, y)`
    -   **`shows_message()`:** checks that an expression shows a message
        -   Shorthand: `expect_message(x, y)`
    -   **`gives_warning()`:** expects that you get a warning
        -   Shorthand: `expect_warning(x, y)`
    -   **`throws_error()`:** verifies that the expression throws an error.
        -   You can also supply a regular expression which is applied to the text of the error
        -   Shorthand: `expect_error(x, y)`
    -   **`is_true()`:** is a useful catchall if none of the other expectations do what you want - it checks that an expression is true
        -   `is_false()` is the complement of `is_true()`
        -   Shorthand: `expect_true(x)`
        -   Shorthand: `expect_false(x)`

    -   Notes
        -   &ldquo;Each test is run in its own environment so it is self-contained.&rdquo;
            -   Plain old code so you can modify the global environment FYI

    ```R
    library(testthat)
    ```

    ```R
    if(! require(testthat)) {
        install.packages("testthat")
    }
    ```

3.  stringr

        ID: org_gcr_2017-05-12_mara:A25AE0EF-0169-4D2A-9907-D59FA7F0E9C4

    Make it really easy to work with strings <sup><a id="fnr.7" class="footref" href="#fn.7">7</a></sup>. That is indeed a good goal, and the reason that I installed this initially was because `testthat` mentions that it is used.

    ```R
    library(stringr)
    ```

    ```R
    if(! require(stringr)) {
        install.packages("stringr")
    }
    ```

4.  sqldf

        ID: org_gcr_2017-05-12_mara:D6EBC636-F22D-452F-B777-15F7C4C025A4

    How you extract data from a dataframe is flexible and everyone can and may do it differently. One option available is to use `SQL` <sup><a id="fnr.8" class="footref" href="#fn.8">8</a></sup>, so make it available.

    Comments taken from <sup><a id="fnr.9" class="footref" href="#fn.9">9</a></sup>

    -   &ldquo;This [using SQL] is a skill that every analyst should possess&rdquo;
    -   &ldquo;Being able to write SQL will save you time and provide you with a way of getting repeatable results so that you don&rsquo;t have to focus on doing the calculations all the time and worrying about errors in Excel&rdquo;
    -   &ldquo;[instead] You can focus on the task of actually analyzing your data&rdquo;

    Notes from the user manual <sup><a id="fnr.10" class="footref" href="#fn.10">10</a></sup>

    -   Interesting package info
        -   &ldquo;Title Perform SQL Selects on R Data Frames&rdquo;
        -   &ldquo;Author G. Grothendieck <ggrothendieck@gmail.com>&rdquo;
        -   &ldquo;Description Description: Manipulate R data frames using SQL.&rdquo;
        -   &ldquo;Depends R (>= 2.14.0), gsubfn (>= 0.6), proto, RSQLite (>= 0.8-0),RSQLite.extfuns&rdquo;
    -   Google group mentioned <sup><a id="fnr.11" class="footref" href="#fn.11">11</a></sup>, joined it
    -   Official site mentioned and it has good docs
    -   Seems to uses SQLLite
    -   `read.csv.sql`
        -   &ldquo;Read a file into R filtering it with an sql statement. Only the filtered portion is processed by R so that files larger than R can otherwise handle can be accommodated.&rdquo;
        -   Parms
            -   Handles `http` and `ftp` `URLs`
            -   `filter`
                -   &ldquo;If specified, this should be a shell/batch command that the input file is piped through. For read.csv2.sql it is by default the following on non-Windows systems: tr , .. This translates all commas in the file to dots.&rdquo;
                    -   Why is that specific example mentioned?
            -   `field.types`
                -   State the SQLite types for the column names
                -   Rarely needed
            -   `dbname`
                -   &ldquo;As in `sqldf` except that the default is `tempfile()`. Specifying `NULL` will put the database in memory which may improve speed but will limit the size of the database by the available memory.&rdquo;
        -   Details
            -   &ldquo;Reads the indicated file into an sql database creating the database if it does not already exist. Then it applies the sql statement returning the result as a data frame. If the database did not exist prior to this statement it is removed.&rdquo;
            -   &ldquo;Note that it uses facilities of SQLite to read the file which are intended for speed and therefore not as flexible as in R. For example, it does not recognize quoted fields as special but will regard the quotes as part of the field. See the sqldf help for more information.&rdquo;
            -   &ldquo;`read.csv2.sql` is like `read.csv.sql` except the default sep is &rdquo;;&ldquo; and the default filter translates all commas in the file to decimal points (i.e. to dots).&rdquo;
        -   Value
            -   &ldquo;If the sql statement is a select statement then a data frame is returned.&rdquo;
    -   `sqldf`
        -   **Description:** SQL select on data frames
        -   Arguments
            -   =stringsAsFactors does what you think
            -   `row.names` could be useful
            -   `envir` could make it safer
            -   `method` determines how to type the data from the database into a dataframe
                -   Looks like a **powerhouse** feature
                -   Could greatly simplify data brokering
            -   `file.format`
                -   `eol` handling mentioned across platforms
                -   Ran into this with the built-in reader
            -   `dbname`
                -   SQLite creates an in-memory database!
        -   Details
            -   The typical action of sqldf is to
            -   **create a database:** in memory
            -   **read in the data frames and files:** used in the select statement. This is done by scanning the select statement to see which words in the select statement are of class &ldquo;data.frame&rdquo; or &ldquo;file&rdquo; in the parent frame, or the specified environment if envir is used, and for each object found by reading it into the database if it is a data frame. Note that this heuristic usually reads in the wanted data frames and files but on occasion may harmlessly reads in extra ones too.
            -   **run the select statement:** getting the result as a data frame
            -   **assign the classes:** of the returned data frame’s columns if method = &ldquo;auto&rdquo;. This is done by checking all the column names in the read-in data frames and if any are the same as a column output from the data base then that column is coerced to the class of the column whose name matched. If the class of the column is &ldquo;factor&rdquo; or &ldquo;ordered&rdquo; or if the column is not matched then the column is returned as is. If method = &ldquo;auto.factor&rdquo; then processing is similar except that &ldquo;factor&rdquo; and &ldquo;ordered&rdquo; classes and their levels will be assigned as well. The &ldquo;auto.factor&rdquo; heuristic is less reliable than the &ldquo;auto&rdquo; heuristic. If method = &ldquo;raw&rdquo; then the classes are returned as is from the database.
            -   **cleanup:** If the database was created by sqldf then it is deleted; otherwise, all tables that were created are dropped in order to leave the database in the same state that it was before. The database connection is terminated.
            -   **Warning:** Although sqldf is usually used with on-the-fly databases which it automatically sets up and destroys if you wish to use it with existing databases be sure to back up your database prior to using it since incorrect operation could destroy the entire database.
        -   Value
            -   The result of the specified select statement is output as a data frame.
            -   If a vector of sql statements is given as x then the result of the last one is returned.
            -   If the x and connection arguments are missing then it returns a new connection and also places this connection in the option sqldf.connection.
                -   Great to know that the connection is cached!
        -   Notes
            -   Big FYI: Commas in columns will be parsed as column separators!
                -   Recommends using `read.table` if this matter
        -   Examples
            -   They all demonstrate how to do it in R and then again with SQL
            -   Super helpful
            -   You seem to be able to do everything that you would expect possible
        -   Thoughts
            -   Need to grok both R and SQL to use this safely
            -   Using temp tables is kind of huge
            -   Via <sup><a id="fnr.12" class="footref" href="#fn.12">12</a></sup>
                -   Use `_` instead lf `.` in column names from a R call
                    -   Where is this in the documentation?

    Notes from the official site <sup><a id="fnr.13" class="footref" href="#fn.13">13</a></sup>

    -   Opening
        -   How it works
            -   The user simply specifies an SQL statement
            -   in R using data frame names in place of table names
            -   and a database with appropriate table layouts/schema is automatically created,
            -   the data frames are automatically loaded into the database,
            -   the specified SQL statement is performed,
            -   the result is read back into R
            -   and the database is deleted all automatically behind the scenes making the database&rsquo;s existence transparent to the user who only specifies the SQL statement.
        -   Supports
            -   SQLite
            -   H2
            -   PostgreSQL
            -   MySQL
        -   The FAQ mostly talks about SQLite
    -   Overview
        -   with sqldf the user is freed from having to do the following, all of which are automatically done:
            -   database setup
            -   writing the create table statement which defines each table
            -   importing and exporting to and from the database
            -   coercing of the returned columns to the appropriate class in common cases
        -   It an be used for
            -   learning R if you know SQL
            -   Doing it faster than R
            -   Load portions of a really large file
    -   Troubleshooting
        -   Set the driver expicitly
        -   &ldquo;error messages regarding a data frame that has a dot in its name. The dot is an SQL operator. Either quote the name appropriately or change the name of the data frame to one without a dot.&rdquo;
    -   FAQ
        -   Column class conversion touched upon
        -   Dots in names
            -   Dots are SQL operators so can&rsquo;t use them
                -   See `?SQL92Keywords`
            -   For columns
                -   Either use underscore
                -   Or simply remove them
            -   For tables
                -   Double quote the name
        -   H2 supports date types, which seems quite helpful
        -   Name a column ending with two underscores and a type and the library will convert the type to R correctly
            -   Mentioned in the docs
        -   SQL is case **insensitive**
            -   Don&rsquo;t rely on casing to differentiate column names
        -   We may examine the in-memory database table structure
        -   Be quite careful about CSV data that contains commas again as this lib won&rsquo;t handle it
        -   Good examples of cleaning data gettig int into a R friendly format
        -   Be sure to specify numeric values as integers or doubles so you get expected results from division
    -   Examples
        -   Example 1. Ordering and Limiting
        -   Example 2. Averaging and Grouping
        -   Example 3. Nested Select
        -   Example 4. Join
        -   Example 5. Insert Variables
            -   Hugely convenient
        -   Example 6. File Input
        -   Example 7. Nested Select
        -   Example 8. Specifying File Format
        -   Example 9. Working with Databases
        -   Example 10. Persistent Connections
        -   Example 11. Between and Alternatives
        -   Example 12. Combine two files in permanent database
        -   Example 13. read.csv.sql and read.csv2.sql
            -   Uses SQLite&rsquo;s import facility to create an in-memory database
            -   Then it reads the results of the query into R
            -   The import does not involve R so it can handle larger files than R can assuming that the query results in a size that does fit
        -   Example 14. Use of spatialite library functions
        -   Example 15. Use of RSQLite.extfuns library functions
        -   Example 16. Moving Average

    SQLite, SQL As Understood By SQLite:

    -   [Core Functions](https://www.sqlite.org/lang_corefunc.html)
    -   [Aggregate Functions](https://www.sqlite.org/lang_aggfunc.html)
    -   [Date And Time Functions](https://www.sqlite.org/lang_datefunc.html)
    -   These previous are all provided by [RSQLite.extfuns](http://cran.r-project.org/web/packages/RSQLite.extfuns/index.html)

    `proto` wouldn&rsquo;t load, so first configure `sqldf` via [this solution](https://stackoverflow.com/questions/17128260/r-stuck-in-loading-sqldf-package).

    ```R
    options(gsubfn.engine="R")
    ```

    ```R
    library(sqldf)
    ```

    ```R
    if(! require(sqldf)) {
        install.packages("sqldf")
    }
    ```

5.  MASS

        ID: org_gcr_2017-05-12_mara:A577D755-41C6-4E7E-9637-6118FCD5944B

    &ldquo;Functions and datasets to support Venables and Ripley, &lsquo;Modern Applied Statistics with S&rsquo; (4th edition, 2002).&rdquo; Also, `sqldf` recommended it be installed, so it is the right time. <sup><a id="fnr.14" class="footref" href="#fn.14">14</a></sup>

    ```R
    library(MASS)
    ```

    ```R
    if(! require(MASS)) {
        install.packages("MASS")
    }
    ```

6.  jsonlite

        ID: org_gcr_2017-05-12_mara:B2715DBA-4A80-4DB8-B3BD-C660302D3FB9

    Make it easy to work with JSON [37138455: <http://cran.r-project.org/web/packages/jsonlite/index.html>]. Reading the vignette&rsquo;s, it does a lot more, for example `rbind.pages`.

    ```R
    library(jsonlite)
    ```

    ```R
    if(! require(jsonlite)) {
        install.packages("jsonlite")
    }
    ```

7.  dplyr

        ID: org_gcr_2017-05-12_mara:F2C4419D-59D8-423F-97A8-2C4ED2246186

    dplyr: a grammar of data manipulation in R

    The fact that I am loading both `plyr` and `dplyr` is something that I am questioning. I do so because I learned them in that order, so left it that way. However, this just results in **more** binding shadowing, and I am not sure of the implications, and they are usually never good.

    > [A fast, consistent tool](http://cran.r-project.org/web/packages/dplyr/index.html) for working with data frame like objects, both in memory and out of memory.

    [Readme](http://cran.r-project.org/web/packages/dplyr/README.html). [Manual](http://cran.r-project.org/web/packages/dplyr/dplyr.pdf). [Introduction to dplyr](http://cran.r-project.org/web/packages/dplyr/vignettes/introduction.html).

    ```R
    library(dplyr)
    ```

8.  data.table

        ID: org_gcr_2017-05-12_mara:1604B2A7-7110-45B5-BB29-C27BDE9F37C4

    `data.table` <sup><a id="fnr.15" class="footref" href="#fn.15">15</a></sup> is quite nice.

    ```R
    library(data.table)
    ```

    ```R
    if(! require(data.table)) {
        install.packages("data.table")
    }
    ```

    1.  dtplyr

            ID: org_gcr_2017-05-12_mara:169E4CE8-D5BE-48F7-A43F-E89CEE4C6211

        ```R
        library(dtplyr)
        ```

        ```R
        if(! require(dplyr)) {
            install.packages("dplyr")
        }
        ```

        ```R
        if(! require(dtplyr)) {
            install.packages("dtplyr")
        }
        ```

9.  XML

        ID: org_gcr_2017-05-12_mara:4F801FC6-2D93-495E-9B7A-5FE6C5A1003A

    Make ℝ truly enterprise <sup><a id="fnr.16" class="footref" href="#fn.16">16</a></sup>.

    ```R
    library(XML)
    ```

    ```R
    if(! require(XML)) {
        install.packages("XML")
    }
    ```

10. devtools

        ID: org_gcr_2017-05-12_mara:6BC90505-4FF2-4DB0-8020-F5F8057BA984

    `devtools`: Tools to make developing ℝ code easier

    > [Collection of package development tools](http://cran.r-project.org/web/packages/devtools/index.html)

    That is a bit too terse. Intro to the README follows

    > The aim of devtools is to make your life as a package developer easier by providing R functions that simplify many common tasks. R packages are actually really simple, and with the right tools it should be easier to use the package structure than not. Package development in R can feel intimidating, but devtools does every thing it can to make it as welcoming as possible. devtools comes with a small guarantee: if because of a bug in devtools a member of R-core gets angry with you, I will send you a handwritten apology note. Just forward me the email and your address, and I&rsquo;ll get a card in the mail.

    Excellent.

    [Readme](http://cran.r-project.org/web/packages/devtools/README.html). [Manual](http://cran.r-project.org/web/packages/devtools/devtools.pdf). [Github](https://github.com/hadley/devtools).

    At the very least, just *know of* this package, as you will be installing it if you want to us `tidyr`.

    ```R
    library(devtools)
    ```

    ```R
    if(! require(devtools)) {
        install.packages("devtools")
        devtools::install_github("hadley/devtools")
    }

    ```

11. magrittr

        ID: org_gcr_2017-05-12_mara:E4F80968-F698-4B63-B3F8-745625D74C39

    This is a add from the *most understated package definition* of the year department. `magrittr` <sup><a id="fnr.17" class="footref" href="#fn.17">17</a></sup> is, much like every Scheme library ever, deceptively simple in its power and ease of use that it provides.

    ```R
    library(magrittr)
    ```

    ```R
    if(! require(magrittr)) {
        devtools::install_github("smbache/magrittr")
    }
    ```

12. reshape2

        ID: org_gcr_2017-05-12_mara:68274778-C58F-43D2-92D3-EBD90025A8D0

    `reshape2`: Flexibly reshape data: a reboot of the `reshape` package

    > Reshape lets you flexibly restructure and aggregate data using just two functions: melt and cast.

    [CRAN](http://cran.r-project.org/web/packages/reshape2/index.html). [Manual](http://cran.r-project.org/web/packages/reshape2/reshape2.pdf). [Github](https://github.com/hadley/reshape/blob/master/README.md).

    This seems to be a defacto standard.

    ```R
    library(reshape2)
    ```

    ```R
    if(! require(reshape2)) {
        install.packages("reshape2")
    }
    ```

13. tidyr

        ID: org_gcr_2017-05-12_mara:5CE86E38-28A9-48F0-92F8-0874C7B89DEE

    `tidyr`: Easily tidy data with spread and gather functions for ℝ

    > [tidyr](http://cran.r-project.org/web/packages/tidyr/index.html) is an evolution of reshape2. It&rsquo;s design specifically for data tidying (not general reshaping or aggregating) and works well with dplyr data pipelines.

    [Readme](http://cran.r-project.org/web/packages/tidyr/README.html). [Manual](http://cran.r-project.org/web/packages/tidyr/tidyr.pdf). [Github](https://github.com/hadley/tidyr).

    Not on CRAN yet so install via

    ```R
    library(tidyr)
    ```

    ```R
    if(! require(tidyr)) {
        devtools::install_github("hadley/tidyr")
    }

    ```

14. lubridate

        ID: org_gcr_2017-05-12_mara:7F0E1F05-B547-4E6A-AFBF-E9E9D3FF1059

    lubridate: Make dealing with dates a little easier in ℝ

    > [Lubridate](http://cran.r-project.org/web/packages/lubridate/index.html) makes it easier to work with dates and times by providing functions to identify and parse date-time data, extract and modify components of a date-time (years, months, days, hours, minutes, and seconds), perform accurate math on date-times, handle time zones and Daylight Savings Time. Lubridate has a consistent, memorable syntax, that makes working with dates fun instead of frustrating.

    [Manual](http://cran.r-project.org/web/packages/lubridate/lubridate.pdf). [Vignette](http://cran.r-project.org/web/packages/lubridate/vignettes/lubridate.html).

    ```R
    library(lubridate)
    ```

    ```R
    if(! require(lubridate)) {
        install.packages("lubridate")
    }
    ```

    Perhaps in some *time* there will be a unified approach to time-management among all programming languages.

15. testit

        ID: org_gcr_2017-05-12_mara:4D15CAB4-E41F-4329-ABD3-6352BB53211C

    testit: A simple package for testing R packages

    [GitHub](https://github.com/yihui/testit). [CRAN](http://cran.rstudio.com/web/packages/testit/index.html). [Manual](http://cran.rstudio.com/web/packages/testit/testit.pdf).

    Gives you `assert` and `test_pkg`. Save characters.

    ```R
    library(testit)
    ```

    ```R
    if(! require(testit)) {
        install.packages("testit")
    }
    ```

16. markdown

        ID: org_gcr_2017-05-12_mara:A060E8EA-7F3C-4A33-8001-EE936782065A

    -   [CRAN](http://cran.r-project.org/web/packages/markdown/index.html)
        -   [reference](http://cran.r-project.org/web/packages/markdown/markdown.pdf)
        -   [vignettes: markdown-examples](http://cran.r-project.org/web/packages/markdown/vignettes/markdown-examples.html)
        -   [vignettes: markdown-output](http://cran.r-project.org/web/packages/markdown/vignettes/markdown-output.html)
    -   [GitHub](https://github.com/rstudio/markdown)

    ```R
    library(markdown)
    ```

    ```R
    if(! require(markdown)) {
        install.packages("markdown")
    }
    ```

    > This package is referred to as R Markdown v1 when combined with knitr. The primary output format is HTML. Now we have introduced R Markdown v2, which is based on Pandoc and knitr, and supports much more types of output formats.

17. knitr

        ID: org_gcr_2017-05-12_mara:90B8880A-A32A-4761-A05A-164144AE93AF

    knitr: A general-purpose package for dynamic report generation in R

    Read the [home page](http://yihui.name/knitr/). It has great resources.

    Watched [the video](https://www.screenr.com/qcv8). Very nice to see; comfortable and familiar. Need to set up RStudio for it. Clearly a critical tool. Cites Knuth.

    Features are amazingly understated. If you&rsquo;ve worked with all of these tools, you will appreciate the importance of the author&rsquo;s effort!

    `Objects`, `Options`, `Hooks`, and `Patterns` … what is this, Emacs?

    There are demo [links](http://yihui.name/knitr/demos). There is a [project for examples](https://github.com/yihui/knitr-examples). This [showcase](http://yihui.name/knitr/demo/showcase/) has links to websites, book reviews, solutions, R packages, courses, workshops and presentations, books, papers and reports, wrappers, and blog posts on `knitr`.

    [Here](https://github.com/yihui/knitr) is the GitHub project. Read the motivations and see the hours and days and weeks that you have had spared! Uses `testit`, so read up on that and added it.

    Read the [Frequently Asked Questions](https://github.com/yihui/knitr/blob/master/FAQ.md). Joined the [mailing list](https://groups.google.com/forum/#!forum/knitr). `ess` supports it. Sure that I can configure the custom prompt. Great `README`.

    [CRAN](http://cran.r-project.org/web/packages/knitr/index.html) as expected. Much better summary eg HTML, Makrdown, reStructuredText, and AsciiDoc are mentioned. Curious about the cacheing, and how I would do it in `org`. Custom code to run before and after a hunk are another thoughtful touch one would expect coming from `org`. Also support Python and shell. The LaTeX and LyX support is also pretty neat. Same [READM](http://cran.r-project.org/web/packages/knitr/README.html)E. [Reference](http://cran.r-project.org/web/packages/knitr/knitr.pdf).

    Somehow missed the [reference card](http://cran.r-project.org/web/packages/knitr/vignettes/knitr-refcard.pdf) initially.

    [How to build package vignettes with knitr](http://yihui.name/knitr/demo/vignette/).

    ```R
    library(knitr)
    ```

    ```R
    if(! require(knitr)) {
        install.packages("knitr")
    }
    ```

18. fortunes

        ID: org_gcr_2017-05-12_mara:420C813F-A6C0-41C9-8F4A-042DD8C4D059

    R Fortunes.

    [CRAN](http://cran.r-project.org/web/packages/fortunes/index.html).

    ```R
    library(fortunes)
    ```

    ```R
    if(! require(fortunes)) {
        install.packages("fortunes")
    }
    ```

19. ggplot2

        ID: org_gcr_2017-05-12_mara:2CB46933-90E6-4366-BA74-71D2B1A4DE8D

    -   [CRAN](http://cran.r-project.org/web/packages/ggplot2/index.html)
        -   [reference](http://cran.r-project.org/web/packages/ggplot2/ggplot2.pdf)
    -   [Github](https://github.com/hadley/ggplot2)
        -   [wiki](https://github.com/hadley/ggplot2/wiki)
            -   Lots of great resources
                -   Whyu use it, how to support it, improvide i
                -   Publications using it, around the web
                -   FAQ, roadmap
            -   Case studies
            -   Tips and tricks
            -   Enhancements
    -   [Mail list](https://groups.google.com/forum/#!forum/ggplot2)
    -   [Homepage](http://ggplot2.org/)
        -   [Documentation](http://docs.ggplot2.org/current/)

    ```R
    library(ggplot2)
    ```

    ```R
    if(! require(ggplot2)) {
        install.packages("ggplot2")
    }
    ```

20. tikzDevice

        ID: org_gcr_2017-05-12_mara:9CDF266B-9DE6-42A4-846E-212B11070D6F

    -   [CRAN](http://cran.r-project.org/web/packages/tikzDevice/index.html)
        -   [reference](http://cran.r-project.org/web/packages/tikzDevice/tikzDevice.pdf)
        -   [vignettes: tikzDevice](http://cran.r-project.org/web/packages/tikzDevice/vignettes/tikzDevice.pdf)
    -   [GitHub](https://github.com/yihui/tikzDevice)

    ```R
    library(tikzDevice)
    ```

    ```R
    if(! require(tikzDevice)) {
        install.packages("tikzDevice")
    }
    ```

21. ascii

        ID: org_gcr_2017-05-12_mara:1645490F-7DEB-4227-8EAA-FBB1EFC329A0

    -   [CRAN](http://cran.r-project.org/web/packages/ascii/index.html)
        -   [reference](http://cran.r-project.org/web/packages/ascii/ascii.pdf)
    -   [GitHub](https://github.com/eusebe/ascii/)

    ```R
    library(ascii)
    ```

    ```R
    if(! require(ascii)) {
        install.packages("ascii")
    }
    ```

    Always display `org` representations; I&rsquo;m assuming that it will be *the* dominant vehicle for analysis.

    ```R
    options(asciiType="org")
    ```

22. xtable

        ID: org_gcr_2017-05-12_mara:6438AA32-0335-4527-91BC-A90404AB36DD

    -   [CRAN](http://cran.r-project.org/web/packages/xtable/index.html)
        -   [reference](http://cran.r-project.org/web/packages/xtable/xtable.pdf)
        -   [vignettes: margintable](http://cran.r-project.org/web/packages/xtable/vignettes/margintable.pdf)
        -   [vignettes: xtableGallery](http://cran.r-project.org/web/packages/xtable/vignettes/xtableGallery.pdf)
    -   [R-Forge](http://xtable.r-forge.r-project.org/)

    ```R
    library(xtable)
    ```

    ```R
    if(! require(xtable)) {
        install.packages("xtable")
    }
    ```

23. Hmisc

        ID: org_gcr_2017-05-12_mara:F42F3746-7E10-478D-ACAE-125BE4A15D5C

    -   [CRAN](http://cran.r-project.org/web/packages/Hmisc/index.html)
        -   [reference](http://cran.r-project.org/web/packages/Hmisc/Hmisc.pdf)
    -   [GitHub](https://github.com/harrelfe/Hmisc)

    ```R
    library(Hmisc)
    ```

    ```R
    if(! require(Hmisc)) {
        install.packages("Hmisc")
    }
    ```

24. log4r

        ID: org_gcr_2017-05-12_mara:C6F05623-CF1C-46D0-A911-2ABB014267AF

    -   [CRAN](http://cran.r-project.org/web/packages/log4r/index.html)
        -   [reference](http://cran.r-project.org/web/packages/log4r/log4r.pdf)
    -   [GitHub](https://github.com/johnmyleswhite/log4r)

    ```R
    library(log4r)
    ```

    ```R
    if(! require(log4r)) {
        install.packages("log4r")
    }
    ```

25. boot

        ID: org_gcr_2017-05-12_mara:1EC5636D-D340-4F00-BBEF-579000725366

    -   [CRAN](http://cran.r-project.org/web/packages/boot/index.html)
        -   [reference](http://cran.r-project.org/web/packages/boot/boot.pdf)

    ```R
    library(boot)
    ```

    ```R
    if(! require(boot)) {
        install.packages("boot")
    }
    ```

26. kernlab

        ID: org_gcr_2017-05-12_mara:1860ABE6-06F1-449C-A5E4-EBCDEE4B8EB8

    -   [CRAN](http://cran.r-project.org/web/packages/kernlab/index.html)
        -   [reference](http://cran.r-project.org/web/packages/kernlab/kernlab.pdf)
        -   [vignettes: kernlab](http://cran.r-project.org/web/packages/kernlab/vignettes/kernlab.pdf)
    -   GitHub

    ```R
    library(kernlab)
    ```

    ```R
    if(! require(kernlab)) {
        install.packages("kernlab")
    }
    ```

27. R Utils

        ID: org_gcr_2017-05-12_mara:5AAB5490-A3D4-42E1-9630-15E9CE8A6D63

    Programatically extract BZ2 files. Helpful for making decompression a separarate task from loading.

    ```R
    library(R.utils)
    ```

    ```R
    if(! require(R.utils)) {
        install.packages("R.utils")
    }
    ```

28. Not explicitly loaded, but interesting packages

        ID: org_gcr_2017-05-12_mara:62914096-7336-4480-B8E4-950E2A553AA8

    -   [ProjectTemplate](http://projecttemplate.net/index.html)
    -   [evaluate](http://cran.r-project.org/web/packages/evaluate/index.html).utils
    -   [yaml](http://cran.r-project.org/web/packages/yaml/index.html)
    -   [whisker](http://cran.r-project.org/web/packages/whisker/index.html)
    -   [formatR](http://cran.r-project.org/web/packages/formatR/index.html)
    -   General caching <sup><a id="fnr.18" class="footref" href="#fn.18">18</a></sup>
    -   [stringi](http://cran.r-project.org/web/packages/stringi/index.html)
        -   [Via](http://www.r-bloggers.com/faster-easier-and-more-reliable-character-string-processing-with-stringi-0-3-1/?utm_source%3Dfeedburner&utm_medium%3Dfeed&utm_campaign%3DFeed%253A%2BRBloggers%2B%2528R%2Bbloggers%2529)
        -   Seems focused on Unicode details
        -   Why this instead of `stringr`?
    -   [futile.options: Futile options management](http://cran.r-project.org/web/packages/futile.options/index.html)
        -   Referenced by the `settings` article
    -   [settings: Software Option Settings Manager for R](http://cran.r-project.org/web/packages/settings/)
        -   [Via](http://www.r-bloggers.com/easy-to-use-option-settings-management-with-the-settings-package/?utm_source%3Dfeedburner&utm_medium%3Dfeed&utm_campaign%3DFeed%253A%2BRBloggers%2B%2528R%2Bbloggers%2529)
    -   [r-travis](https://github.com/craigcitro/r-travis)
        -   [Via](http://www.r-bloggers.com/travis-ci-to-github-pages/?utm_source%3Dfeedburner&utm_medium%3Dfeed&utm_campaign%3DFeed%253A%2BRBloggers%2B%2528R%2Bbloggers%2529)
    -   [testCoverage](https://github.com/MangoTheCat/testCoverage)
        -   [Via](http://www.r-statistics.com/2014/11/analyzing-coverage-of-r-unit-tests-in-packages-the-testcoverage-package/)
    -   [xkcd](http://cran.r-project.org/web/packages/xkcd/index.html)
        -   [Via](http://www.exegetic.biz/blog/2014/11/creating-more-effective-graphs/?utm_source%3Drss&utm_medium%3Drss&utm_campaign%3Dcreating-more-effective-graphs)
    -   [circ.graph.R](https://github.com/EconometricsBySimulation/Ninja/blob/master/2014/11/circ.graph.R)
        -   [Via](http://www.r-bloggers.com/make-your-own-hotly-criticised-circle-graph/?utm_source%3Dfeedburner&utm_medium%3Dfeed&utm_campaign%3DFeed%253A%2BRBloggers%2B%2528R%2Bbloggers%2529)
    -   [pandasql](https://github.com/yhat/pandasql)
        -   [Via](http://www.r-bloggers.com/query-pandas-dataframe-with-sql/?utm_source%3Dfeedburner&utm_medium%3Dfeed&utm_campaign%3DFeed%253A%2BRBloggers%2B%2528R%2Bbloggers%2529)
    -   [qdap: Bridging the Gap Between Qualitative Data and Quantitative Analysis](http://cran.r-project.org/web/packages/qdap/index.html)
        -   Glad to find this
        -   [Via](http://www.r-bloggers.com/exploration-of-letter-make-up-of-english-words/?utm_source%3Dfeedburner&utm_medium%3Dfeed&utm_campaign%3DFeed%253A%2BRBloggers%2B%2528R%2Bbloggers%2529)
    -   [Rsenal](https://github.com/environmentalinformatics-marburg/Rsenal)
        -   [Via](http://www.r-bloggers.com/introducing-rsenal-magic-r-functions-for-things-various/?utm_source%3Dfeedburner&utm_medium%3Dfeed&utm_campaign%3DFeed%253A%2BRBloggers%2B%2528R%2Bbloggers%2529)
        -   Wished I had this the ohther day
    -   [pander](https://rapporter.github.io/pander/)
        -   [Via](http://www.r-bloggers.com/pander-0-5-0-the-next-generation-of-markdown-tables-in-r/?utm_source%3Dfeedburner&utm_medium%3Dfeed&utm_campaign%3DFeed%253A%2BRBloggers%2B%2528R%2Bbloggers%2529)
    -   [DeployR](http://deployr.revolutionanalytics.com/)
        -   [Via](http://www.r-bloggers.com/integrate-r-into-applications-with-deployr-open/?utm_source%3Dfeedburner&utm_medium%3Dfeed&utm_campaign%3DFeed%253A%2BRBloggers%2B%2528R%2Bbloggers%2529)
    -   [openssl: Bindings to OpenSSL](http://cran.r-project.org/web/packages/openssl/)
        -   [Via](http://www.r-bloggers.com/generating-secure-random-numbers-with-openssl/?utm_source%3Dfeedburner&utm_medium%3Dfeed&utm_campaign%3DFeed%253A%2BRBloggers%2B%2528R%2Bbloggers%2529)
    -   [simmer](https://github.com/Bart6114/simmer)
        -   Again I would have had to have written this myself
        -   [Via](http://www.r-bloggers.com/simmer-2-0-a-performance-boost-revised-syntax/?utm_source%3Dfeedburner&utm_medium%3Dfeed&utm_campaign%3DFeed%253A%2BRBloggers%2B%2528R%2Bbloggers%2529)
    -   [checkpoint: Install Packages from Snapshots on the Checkpoint Server for Reproducibility](http://cran.r-project.org/web/packages/checkpoint/index.html)
        -   [Via](http://www.r-bloggers.com/introducing-the-reproducible-r-toolkit-and-the-checkpoint-package/?utm_source%3Dfeedburner&utm_medium%3Dfeed&utm_campaign%3DFeed%253A%2BRBloggers%2B%2528R%2Bbloggers%2529)
    -   [miniCRAN: Tools to create an internally consistent, mini version of CRAN with selected packages only](http://cran.r-project.org/web/packages/miniCRAN/index.html)
        -   [Via](http://www.r-bloggers.com/introducing-minicran-an-r-package-to-create-a-private-cran-repository/?utm_source%3Dfeedburner&utm_medium%3Dfeed&utm_campaign%3DFeed%253A%2BRBloggers%2B%2528R%2Bbloggers%2529)
    -   [roxyPackage](http://reaktanz.de/?c%3Dhacking&s%3DroxyPackage)
        -   [Via](http://www.r-bloggers.com/managing-r-package-dependencies/?utm_source%3Dfeedburner&utm_medium%3Dfeed&utm_campaign%3DFeed%253A%2BRBloggers%2B%2528R%2Bbloggers%2529)
    -   [roxygen2: In-source documentation for R](http://cran.r-project.org/web/packages/roxygen2/index.html)
        -   `roxypackage` mentioend it
    -   [archivist: Tools for storing, restoring and searching for R objects](http://cran.r-project.org/web/packages/archivist/index.html)
        -   [Via](http://www.r-bloggers.com/lazy-load-with-archivist/?utm_source%3Dfeedburner&utm_medium%3Dfeed&utm_campaign%3DFeed%253A%2BRBloggers%2B%2528R%2Bbloggers%2529)
    -   [pkgKitten](http://dirk.eddelbuettel.com/code/pkgkitten.html)
        -   [Via](http://www.r-bloggers.com/pkgkitten-0-1-1-still-creating-r-packages-that-purr/?utm_source%3Dfeedburner&utm_medium%3Dfeed&utm_campaign%3DFeed%253A%2BRBloggers%2B%2528R%2Bbloggers%2529)
    -   [rCharts](https://ramnathv.github.io/rCharts/)
        -   [Via](http://www.r-bloggers.com/interactive-visualizations-from-r-using-rcharts/?utm_source%3Dfeedburner&utm_medium%3Dfeed&utm_campaign%3DFeed%253A%2BRBloggers%2B%2528R%2Bbloggers%2529)
    -   [broom: Convert statistical analysis objects from R into tidy format](https://github.com/dgrtwo/broom)
        -   [Via](http://www.r-bloggers.com/r-package-to-convert-statistical-analysis-objects-to-tidy-data-frames/?utm_source%3Dfeedburner&utm_medium%3Dfeed&utm_campaign%3DFeed%253A%2BRBloggers%2B%2528R%2Bbloggers%2529)
    -   [igraph: Network analysis and visualization](http://mran.revolutionanalytics.com/packages/info/?igraph)
        -   Why did they link to MRAN?
        -   Looks like a great tool for learning about graphcs
        -   [Via](http://www.r-bloggers.com/a-look-at-the-igraph-package/?utm_source=feedburner&utm_medium=feed&utm_campaign=Feed%253A+RBloggers+%2528R+bloggers%2529)


## .First

    header-args: :noweb-ref rfirst-defs

    ID: org_gcr_2017-05-12_mara:DB8DE38B-83C2-4CF9-B428-4629E4E06547

Reading:

-   **[Startup](http://stat.ethz.ch/R-manual/R-devel/library/base/html/Startup.html):** mandatory reading, the definitive source
-   **[Kickstarting R](http://cran.r-project.org/doc/contrib/Lemon-kickstart/kr_first.html):** I just like this tutorial

-   `attach` is a powerfuly convenient function. Sure, it can make you and your program go bonkers, but you know, it is worth it for the convenience. Joking aside, it has its place, so it should not go away completely. However, it ought not be used much, and if you do need to use it, the it should be really really obvious.
    -   Eg: <sup><a id="fnr.19" class="footref" href="#fn.19">19</a></sup>

```R
gcr$attach.unsafe <- attach
gcr$attach <- function(...) {
    warning("NEVER USE ATTACH! Use `unsafe.attach` if you must.")
    attach.unsafe(...)
}
```

-   `library` reports issues immediately, and by design, `require` does not… remind the useR that they *may* want the former not the latter
    -   Via <sup><a id="fnr.20" class="footref" href="#fn.20">20</a></sup>
    -   Just like everything else here, this is a *personal preference* thing!

```R
gcr$require <- function(...) {
    warning("Are you sure you wanted `require` instead of `library`?")
    base::require(...)
}
```

Sometimes you only want to list everything **but** functions <sup><a id="fnr.21" class="footref" href="#fn.21">21</a></sup>:

```R
gcr$lsnofun <- function(name = parent.frame()) {
    obj <- ls(name = name)
    obj[!sapply(obj, function(x) is.function(get(x)))]
}
```

Make it really simple to specify how to handle errors in a given session:

```R
gcr$recoveronerror <- function() {
    options(error=recover)
}

gcr$recoveronerroroff <- function() {
    options(error=NULL)
}
```

Make it really simple to specify how to handle warnings in a given session:

```R
gcr$erroronwarn <- function() {
    options(warn=2)
}

gcr$erroronwarnoff <- function() {
    options(warn=0)
}
```

`sqldf` should always use `SQLite`.

```R
options(sqldf.driver = "SQLite")
```

Save your fingers from having to type `head` the next `n` thousand times <sup><a id="fnr.22" class="footref" href="#fn.22">22</a></sup> because I can&rsquo;t. `ess-rdired` and friends use the dataframe print function, so I didn&rsquo;t make dataframes print using it.

```R
gcr$printdf <- function(df) {
    if (nrow(df) > 10) {
        print(head(df, 5))
        cat("---\n")
        print(tail(df, 5))
    } else {
        print(df)
    }
}
```

Sometimes you want to see all of the data in a dataframe, and sometimes you don&rsquo;t. Make it really easy to change whenever you feel like it.

```R
gcr$printlen <- function(len=500) {
    options("max.print" = len)
}
```

When you&rsquo;ve got `n`-thousand rows of data, make it easier to get a sample from it, just make it specific and keep it simple.

```R
gcr$hundred <- function(df, idx=0) {
    df[idx:(idx+100),]
}
```


## .Renviron

    header-args: :noweb-ref renviron-def

    ID: org_gcr_2017-05-12_mara:9C053DA5-163C-4C31-9590-15F1BC5EF2DD

Install all packages to my home directory <sup><a id="fnr.23" class="footref" href="#fn.23">23</a></sup>

-   Call `.libPaths()` to verify
-   The directory must exist otherwise ℝ will ignore it
    -   Solution:
        -   Manual for now
        -   Unsure of best way to generalize it

```sh
R_LIBS=~/.Rpackages
```

For the time being, GUI work will only be performed on OSX so utilize OSX&rsquo;s renderer [91578029: <http://emacs.1067599.n5.nabble.com/unable-to-start-device-X11-td330804.html>].

That worked fine until I actually starting using that graphics device!

Then even though I was on OSX I **had** to switch to `X11`.

<span class="timestamp-wrapper"><span class="timestamp">&lt;2014-11-05 Wed&gt;</span></span> That was probably a mistake. The folks on-list said that `quartz` should be super. Perhaps the error was between the keyboard and the chair, so I am switching back.

<span class="timestamp-wrapper"><span class="timestamp">&lt;2014-11-08 Sat&gt;</span></span> When I us `ggplot` and quarts on this system, it blows up.

<span class="timestamp-wrapper"><span class="timestamp">&lt;2014-11-25 Tue&gt;</span></span> Switched to the official CRAN R build, which works fine on OSX.

```sh
R_INTERACTIVE_DEVICE=quartz
```

Explicitly state the timezone. This could be done either here or in the `.profile`. I&rsquo;m not totally sure where to put it. Because I am trying to do **everything** with, I will put it here. Perhaps this should get set via `Sys.setenv` instead? I&rsquo;ll leave it for now and fix it later if necessary. I did test this out with a call to `Sys.time()` and it worked correctly.

```sh
TZ=America/Chicago
```

## Footnotes

<sup><a id="fn.1" class="footnum" href="#fnr.1">1</a></sup> <https://stackoverflow.com/questions/1189759/expert-r-users-whats-in-your-rprofile>

<sup><a id="fn.2" class="footnum" href="#fnr.2">2</a></sup> <http://www.r-bloggers.com/installing-r-packages/>

<sup><a id="fn.3" class="footnum" href="#fnr.3">3</a></sup> <http://cran.r-project.org/doc/manuals/r-patched/R-admin.html#Localization-of-messages>

<sup><a id="fn.4" class="footnum" href="#fnr.4">4</a></sup> <http://stat.ethz.ch/R-manual/R-devel/library/base/html/locales.html>

<sup><a id="fn.5" class="footnum" href="#fnr.5">5</a></sup> <http://cran.r-project.org/web/packages/assertthat/index.html>

<sup><a id="fn.6" class="footnum" href="#fnr.6">6</a></sup> <http://cran.r-project.org/web/packages/testthat/index.html>

<sup><a id="fn.7" class="footnum" href="#fnr.7">7</a></sup> <http://cran.r-project.org/web/packages/stringr/index.html>

<sup><a id="fn.8" class="footnum" href="#fnr.8">8</a></sup> <http://cran.r-project.org/web/packages/sqldf/index.html>

<sup><a id="fn.9" class="footnum" href="#fnr.9">9</a></sup> <http://randyzwitch.com/sqldf-package-r/>

<sup><a id="fn.10" class="footnum" href="#fnr.10">10</a></sup> <http://cran.r-project.org/web/packages/sqldf/index.html>

<sup><a id="fn.11" class="footnum" href="#fnr.11">11</a></sup> <https://groups.google.com/forum/#!forum/sqldf>

<sup><a id="fn.12" class="footnum" href="#fnr.12">12</a></sup> <https://stackoverflow.com/questions/19019883/how-to-handle-column-names-not-supported-by-sqldf-in-r>

<sup><a id="fn.13" class="footnum" href="#fnr.13">13</a></sup> <https://code.google.com/p/sqldf/>

<sup><a id="fn.14" class="footnum" href="#fnr.14">14</a></sup> <http://cran.r-project.org/web/packages/MASS/index.html>

<sup><a id="fn.15" class="footnum" href="#fnr.15">15</a></sup> <http://cran.r-project.org/web/packages/data.table/index.html>

<sup><a id="fn.16" class="footnum" href="#fnr.16">16</a></sup> <http://cran.r-project.org/web/packages/XML/index.html>

<sup><a id="fn.17" class="footnum" href="#fnr.17">17</a></sup> <http://cran.r-project.org/web/packages/magrittr/index.html>

<sup><a id="fn.18" class="footnum" href="#fnr.18">18</a></sup> <https://stackoverflow.com/questions/7262485/options-for-caching-memoization-hashing-in-r>

<sup><a id="fn.19" class="footnum" href="#fnr.19">19</a></sup> <http://www.r-bloggers.com/to-attach-or-not-attach-that-is-the-question/>

<sup><a id="fn.20" class="footnum" href="#fnr.20">20</a></sup> <http://www.r-bloggers.com/library-vs-require-in-r/>

<sup><a id="fn.21" class="footnum" href="#fnr.21">21</a></sup> <https://stackoverflow.com/questions/13094324/hiding-function-names-from-ls-results-to-find-a-variable-name-more-quickly>

<sup><a id="fn.22" class="footnum" href="#fnr.22">22</a></sup> <https://stackoverflow.com/questions/13024167/how-to-make-head-be-applied-automatically-to-output>

<sup><a id="fn.23" class="footnum" href="#fnr.23">23</a></sup> <http://www.r-bloggers.com/installing-r-packages/>
