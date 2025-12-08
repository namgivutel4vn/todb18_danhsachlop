# xoá dòng </pre> truoc khi them
sed -i'' '/<\/pre>/d' ./dslop.html
#                  /d de xoa cho enh sed
#   -i inplace la sed vao tep tructiep taicho ; ko co -i se in ketqua ra
#   -i'' de chay dc tren macbook va linux

echo $1 >> ./dslop.html

# them tro lai </pre>
echo '</pre>'  >> ./dslop.html

vidugoilenh=cat<<EOT
# add    $1
./add.sh Nam2,q2,vlai2
./add.sh 'Nam2,q2,Vuon Lai'  # co khcach trong thamso $1 -> dat vao nhay chuoi

cd ./crud_dslop
./add.sh 'tencuaban,quan tencuaban,phuong moi tencuaban'
EOT
