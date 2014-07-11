Usage:

1.- Put your team members' names in report.tex. It's like the "main" of the template.

2.- The actual content of the report is to be placed inside the "contents/" folder.
For every new file created under this folder, you have to create a new "\input" line in report.tex under the section "REPORT CONTENTS".

3.- All images are to be stored inside "images/".

4.- The list of sources (bibliography) is defined in the "literature.bib" file.

5.- Compilation is done on "report.tex" file (there is a Makefile included).


NOTE: Two addtional scripts ars included to compile the LaTeX file and the bibliography properly. 
(I did not like the Makefile, and it is useless under Windows.)

Script 1 - Used under Windows: compiletex.bat <file_name_no_extension>. 
	Example: "C:\your_report_folder\compiletex.bat report"

Script 2 - Used under Linux: ./compile_tex_linux.sh <file_name_no_extension>
	Used in the exact same way as compiletex.bat.
