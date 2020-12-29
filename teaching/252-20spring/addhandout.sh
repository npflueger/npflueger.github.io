# Usage ./addhandout.sh (month) (day) (filename with extension) (title)
# Looks for the line <!--handouts--> in the file index.html.
# Inserts a link to handouts/filename, in a list item.
# Preserved indentation.
sed -E -i.bak "s/([[:space:]]*)(<!--handouts-->)/\1<li>$1\/$2: <a href=\"handouts\/$3\">$4<\/a><\/li>"'\
'"\1\2/" index.html
