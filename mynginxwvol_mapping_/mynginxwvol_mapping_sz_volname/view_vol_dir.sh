docker run --rm -it \
  -v mynginx-v:/var/lib/docker/volumes/mynginx-v/_data \
  alpine sh


note=cat<<EOT
mynginx-v ten vol muon xem

mo sh shell xong, chay lenh de xem thumuc
cd /var/lib/docker/volumes/mynginx-v/_data
ls

neu muon, thaydoi noidung index
echo '122 333' > index.html
EOT
