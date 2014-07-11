# --- Description ---
# This batch file takes the name of a .tex file and compiles it with pdflatex into a PDF.
# Afterwards, it takes a .bib file UNDER THE SAME NAME and compiles it with bibtex into a .bbl file. 
# Lastly, it runs the first command two more times to avoid any referencing/linking issues pdflatex might have caused.
#
# --- Usage ---
# ./compile_tex_linux.sh <file_name>
#
# Where <file_name> is the name of the .tex and .bib files to compile WITHOUT EXTENSION. 
# Also, both files MUST have the same name.
#
# Example: compile a report.tex and report.bib
# ./compile_tex_linux.sh report
#
clear
echo "Compiling PDF..."
echo
# The "$1" means the first argument passed to the compile_tex_linux command.
pdflatex $1
echo 
echo "Compiling Bibliography..."
echo
bibtex $1
echo
echo "Compiling PDF two more times..."
echo
pdflatex $1
pdflatex $1
echo
echo "... Finished"