#Developed by: Π2018076

echo "Εισάγετε το όνομα του αρχείου MD"

read file

echo "Σε ποιά μορφή να μετατραπεί το αρχείο:
i) .docx
ii) .html
iii) .txt"
read type

echo "Παρακαλώ περιμένετε"

if [ $type = "i" ];
then
    pandoc -o $file.docx -f markdown -t docx $file.md
elif [ $type = "ii" ];
then
    pandoc -s $file.md --metadata title="$file" -o $file.html
else
    pandoc -f markdown -t plain $file.md -o $file.txt
fi

echo "Ολοκληρώθηκε η μετατροπή!"
