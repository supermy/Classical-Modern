#2022-11-23
rm source.txt target.txt
cat source/* > source.txt
cat target/* > target.txt
paste -d'[SEP]' source.txt  target.txt > c2m.txt
