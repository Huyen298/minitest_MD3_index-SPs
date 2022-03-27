create database vattu;
use vattu;
create table vattu(
    id int primary key not null auto_increment,
    code varchar(20),
    name varchar(50),
    donVi varchar(20),
    price int
);
create table tonkho(
    id                 int,
    vattu_id           int,
    so_luong_dau       int,
    tong_so_luong      int,
    tong_so_luong_xuat int,
    foreign key (vattu_id) references vattu (id)
);
create table NCC1(
    id int primary key ,
    code varchar(20),
    name varchar(50),
    address varchar(50),
    phone varchar(20)
);
create table DĐH1(
    id int primary key ,
    orderCode varchar(20),
    date_order date,
    NCC_id int,
    foreign key (NCC_id) references NCC1(id)
);
create table phieuNhap(
    id int auto_increment primary key ,
    code varchar(20),
    dateAdd date,
    order_id int,
    foreign key (order_id) references DĐH1(id)
);
create table phieuXuat(
    id int auto_increment primary key ,
    code varchar(20),
    dateOut date,
    customer varchar(50)
);
create table detailOrder(
    id int,
    don_hang_id int,
    vattu_id int,
    quality int,
    foreign key (don_hang_id) references DĐH1(id),
    foreign key (vattu_id) references vattu(id)
);
create table chi_tiet_nhap(
    id int,
    phieuNhap_id int,
    vattu_id int,
    quality int,
    donGia int,
    note varchar(50),
    foreign key (phieuNhap_id) references phieuNhap(id),
    foreign key (vattu_id) references vattu(id)
);
create table chi_tiet_xuat(
    id int,
    phieuXuat_id int,
    vattu_id int,
    quality int,
    giaXuat int,
    note varchar(50),
    foreign key (phieuXuat_id) references phieuXuat(id),
    foreign key (vattu_id) references vattu(id)
);
insert into vattu(id, code, name, donVi, price) VALUES (1,'001','Sắt','kg',30);
insert into vattu( code, name, donVi, price) VALUES ('002','Thép','kg',35);
insert into vattu( code, name, donVi, price) VALUES ('003','Chì','kg',40);
insert into vattu( code, name, donVi, price) VALUES ('004','Thủy ngân','mg',135);
insert into vattu( code, name, donVi, price) VALUES ('005','Đồng','kg',50);
insert into tonkho(id, vattu_id, so_luong_dau, tong_so_luong, tong_so_luong_xuat) VALUES (1,1,100,200,150);
insert into tonkho(id, vattu_id, so_luong_dau, tong_so_luong, tong_so_luong_xuat) VALUES (2,2,50,200,100);
insert into tonkho(id, vattu_id, so_luong_dau, tong_so_luong, tong_so_luong_xuat) VALUES (3,3,200,200,350);
insert into tonkho(id, vattu_id, so_luong_dau, tong_so_luong, tong_so_luong_xuat) VALUES (4,4,150,200,300);
insert into tonkho(id, vattu_id, so_luong_dau, tong_so_luong, tong_so_luong_xuat) VALUES (5,5,500,700,550);
insert into NCC1(id, code, name, address, phone) VALUES (1,'NCC1','HN','Hà Nội','012345');
insert into NCC1(id, code, name, address, phone) VALUES (2,'NCC2','HP','Hải Phòng','0524185');
insert into NCC1(id, code, name, address, phone) VALUES (3,'NCC3','ĐN','Đà Nẵng','02251');
insert into DĐH1(id, orderCode, date_order, NCC_id) VALUES (1,'ĐH1','2022-3-10',1);
insert into DĐH1(id, orderCode, date_order, NCC_id) VALUES (2,'ĐH2','2022-3-25',2);
insert into DĐH1(id, orderCode, date_order, NCC_id) VALUES (3,'ĐH3','2022-4-10',3);
insert into phieuNhap(id, code, dateAdd, order_id) VALUES (1,'P1','2022-2-15',1);
insert into phieuNhap(id, code, dateAdd, order_id) VALUES (2,'P2','2022-3-15',2);
insert into phieuNhap(id, code, dateAdd, order_id) VALUES (3,'P3','2022-4-15',3);
insert into phieuXuat(id, code, dateOut, customer) VALUES (1,'X1','2022-3-20','K1');
insert into phieuXuat(id, code, dateOut, customer) VALUES (2,'X2','2022-4-20','K2');
insert into phieuXuat(id, code, dateOut, customer) VALUES (3,'X3','2022-5-20','K3');
insert into detailOrder(id, don_hang_id, vattu_id, quality) VALUES (1,1,1,10);
insert into detailOrder(id, don_hang_id, vattu_id, quality) VALUES (2,1,1,15);
insert into detailOrder(id, don_hang_id, vattu_id, quality) VALUES (3,2,3,10);
insert into detailOrder(id, don_hang_id, vattu_id, quality) VALUES (4,2,2,15);
insert into detailOrder(id, don_hang_id, vattu_id, quality) VALUES (5,3,3,10);
insert into detailOrder(id, don_hang_id, vattu_id, quality) VALUES (6,3,2,10);
insert into chi_tiet_nhap(id, phieuNhap_id, vattu_id, quality, donGia, note) VALUES (1,1,1,10,30,'Không');
insert into chi_tiet_nhap(id, phieuNhap_id, vattu_id, quality, donGia, note) VALUES (2,2,2,20,35,'Không');
insert into chi_tiet_nhap(id, phieuNhap_id, vattu_id, quality, donGia, note) VALUES (3,3,3,15,40,'Không');
insert into chi_tiet_nhap(id, phieuNhap_id, vattu_id, quality, donGia, note) VALUES (4,1,1,10,135,'Không');
insert into chi_tiet_nhap(id, phieuNhap_id, vattu_id, quality, donGia, note) VALUES (5,2,2,30,50,'Không');
insert into chi_tiet_nhap(id, phieuNhap_id, vattu_id, quality, donGia, note) VALUES (6,3,3,20,30,'Không');
insert into chi_tiet_xuat(id, phieuXuat_id, vattu_id, quality, giaXuat, note) VALUES (1,1,1,100,40,'Không');
insert into chi_tiet_xuat(id, phieuXuat_id, vattu_id, quality, giaXuat, note) VALUES (2,2,2,150,150,'Không');
insert into chi_tiet_xuat(id, phieuXuat_id, vattu_id, quality, giaXuat, note) VALUES (3,3,3,50,40,'Không');
insert into chi_tiet_xuat(id, phieuXuat_id, vattu_id, quality, giaXuat, note) VALUES (4,1,1,100,200,'Không');
insert into chi_tiet_xuat(id, phieuXuat_id, vattu_id, quality, giaXuat, note) VALUES (5,2,3,250,400,'Không');
insert into chi_tiet_xuat(id, phieuXuat_id, vattu_id, quality, giaXuat, note) VALUES (6,3,2,150,150,'Không');
create view CTPN as
    select id,phieuNhap_id, vattu_id as 'Mã vật tư',quality,donGia,quality*donGia as 'Thành tiền' from chi_tiet_nhap;
select *from CTPN;
create view CTPN_PN as
    select chi_tiet_nhap.id,phieuNhap_id, vattu_id as 'Mã vật tư', quality,dateAdd,donGia*quality as 'Thành tiền' from chi_tiet_nhap join phieuNhap pN on pN.id = chi_tiet_nhap.phieuNhap_id;
select * from CTPN_PN;
create view CTPN_VT_PN_DH as
    select phieuNhap_id, dateAdd as 'Ngày nhập hàng',  NCC_id as 'Mã nhà cung cấp', vattu_id as 'Mã vật tư', name as 'Tên vật tư',
           quality,donGia,quality*donGia as 'Thành tiền' from chi_tiet_nhap join phieuNhap pN on pN.id = chi_tiet_nhap.phieuNhap_id join vattu v on chi_tiet_nhap.vattu_id = v.id
join DĐH1 D on pN.order_id = D.id;
select * from CTPN_VT_PN_DH;
create view CTPN_loc as
    select phieuNhap_id, vattu_id, quality, donGia, quality*donGia as'Thành tiền'
           from chi_tiet_nhap join vattu v on chi_tiet_nhap.vattu_id = v.id where quality>=5;
select * from CTPN_loc;
create view CTPX as
    select phieuXuat_id, vattu_id, quality, giaXuat, quality*giaXuat as'Thành tiền xuất' from chi_tiet_xuat
join vattu.vattu v on v.id = chi_tiet_xuat.vattu_id;
select * from CTPX;
delimiter //
create procedure so_luong_vat_tu(vattu_id1 int)
begin
   select sum(quality) from chi_tiet_nhap where vattu_id1=vattu_id;
end //
call so_luong_vat_tu(3);
delimiter //
drop procedure if exists `addNew`//
# tổng tiền xuất
delimiter //
create procedure tong_tien_xuat(vattu_id1 int)
begin
    select sum(quality*giaXuat) as 'Tổng tiền xuất vật tư' from chi_tiet_xuat where vattu_id1 = vattu_id;
end //
call tong_tien_xuat(2);
# Thêm đơn đặt hàng
delimiter //
create procedure addNew(id int, orderCode varchar(20), date_order date, NCC_id int)
begin
    insert into DĐH1(id, orderCode, date_order, NCC_id) VALUES (5,'ĐH5','2022-6-30',1);
end //
call addNew(5,'ĐH5','2022-6-30',1);
select * from DĐH1;

