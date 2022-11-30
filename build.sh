#2022-11-23
rm source.txt target.txt
for file in `ls source`; do awk -v fname=$file '{print fname"@"$0}' source/$file >> source.txt; done
for file in `ls target`; do awk -v fname=$file '{print fname"@"$0}' target/$file >> target.txt; done
paste -d@ source.txt  target.txt > c2m.csv
sed -i '' '1i \
type@source@type2@target\
' c2m.csv