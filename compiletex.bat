@ECHO OFF
:: --- Description ---
:: This batch file takes the name of a .tex file and compiles it with pdflatex into a PDF.
:: Afterwards, it takes a .bib file UNDER THE SAME NAME and compiles it with bibtex into a .bbl file. 
:: Lastly, it runs the first command two more times to avoid any referencing/linking issues pdflatex might have caused.
::
:: --- Usage ---
:: compiletex <file_name>
::
:: Where <file_name> is the name of the .tex and .bib files to compile. 

ECHO Compiling PDF... 
ECHO.
:: The "%1" means the first argument passed to the compiletex command.
pdflatex %1
ECHO. 
ECHO Compiling Bibliography... 
ECHO.
bibtex %1
ECHO.
ECHO Compiling PDF twice... 
ECHO.
pdflatex %1
pdflatex %1
ECHO.
ECHO ... Finished!
