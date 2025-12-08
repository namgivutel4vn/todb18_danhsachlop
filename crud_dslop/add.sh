# xoá dòng </pre> truoc khi them
sed -i '' '/<\/pre>/d' ./dslop.html
#                  /d de xoa cho enh sed
#   -i inplace la sed vao tep tructiep taicho ; ko co -i se in ketqua ra
#   -i '' de chay dc tren macbook va linux

echo 'Ten MOI' >> ./dslop.html

# them tro lai </pre>
echo '</pre>'  >> ./dslop.html
