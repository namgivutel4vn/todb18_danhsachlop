SH=$(cd `dirname ${BASH_SOURCE:-$0}` && pwd)  # lay SH thumuc chua tep .sh nay
cd $SH
docker build -t hiname-i .
#            -t tagname  . context folder
#                        . app source code folder

echo
cat <<EOT
docker image ls | grep -E 'TAG|hiname-i'
EOT
