# Usage ./addpset.sh (pset number) (due month) (due date)
# Looks for the line <!--psets--> in the file index.html.
# Inserts a link to psets/psetn.pdf, in a list item.
# Preserved indentation.
sed -E -i.bak "s/([[:space:]]*)(<!--psets-->)/\1<li><a href=\"psets\/pset$1.pdf\">Problem Set $1<\/a> (due $2\/$3)<\/li>"'\
'"\1\2/" index.html
