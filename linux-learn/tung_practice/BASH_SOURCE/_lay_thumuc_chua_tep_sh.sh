echo "BASH_SOURCE chứa đường dẫn tới thư mục chứa tệp sh được gọi chạy

Lấy dirname của BASH_SOURCE
`dirname $BASH_SOURCE`

Lấy dirname của BASH_SOURCE khi có dấu . hoặc ..
$(cd `dirname $BASH_SOURCE` && pwd)"