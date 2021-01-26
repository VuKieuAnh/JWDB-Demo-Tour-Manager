# JWDB-Demo-Tour-Manager
Các bạn thân mến, trong dịp dịch vụ du lịch đang đi lên 1 cách vượt bậc thế này, chúng ta sẽ cùng nhau thiết kết 1 database cho xịn như sau:
Quản lý Tour du lịch bao gồm các đối tượng như sau:
Tour
Điểm đến du lịch
Khách hàng đặt tour
Thành phố
Loại tour
Hóa đơn đặt tour

Bảng Điểm đến du lịch (id, tên điểm đến, mô tả, giá trung bình, thành phố _id)
Thêm 5 bản ghi của điểm đến du lịch

Bảng Khách hàng đặt tuor(id, name, số căn cước, năm sinh, thành phố_id)
Thêm 10 khách hàng

Bảng Thành phố (id, tên thành phố)
Thêm 5 thành phố


Bảng Tuor (id, mã tuor, loại tuor_id, giá điểm đến du lịch, id ngày bắt đầu (dạng ngày tháng), ngày kết thúc (dạng ngày tháng))
Thêm 15 tuor

Loại tour(id, mã loại, tên loại)
Thêm 2 loại

Bảng hóa đơn đặt tuor(id, Tuor_id, khách hàng_id, trạng thái)
Thêm 10 hóa đơn đặt tuor


Viết các câu lệnh SQL thực hiện các yêu cầu sau:
Thống kê số lượng tuor của các thành phố
Tính số tuor có ngày bắt đầu trong tháng 3 năm 2020 -))))
Tính số tour có ngày kết thúc trong tháng 4 năm 2020 -)))
