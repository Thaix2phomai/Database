## Quản Lý Library

**Tạo DATABASE**
```sql
CREATE DATABASE librarymanagement
```
---
**Thể Loại**
```sql
CREATE TABLE category(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name TEXT NOT NULL
)
```
---
**Tác Giả**
```sql
CREATE TABLE author(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name TEXT NOT NULL,
    birth DATE NOT NULL,
    country TEXT NOT NULL,
    death_day DATE
)
```
---
**NXB**
```sql
CREATE TABLE company(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name TEXT NOT NULL,
    address TEXT NOT NULL,
    email TEXT NOT NULL,
    mobile VARCHAR(11) NOT NULL
)
```
---
**Quản Lý**
```sql
CREATE TABLE manager(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name TEXT NOT NULL,
    mobile VARCHAR(11) NOT NULL,
    email TEXT NOT NULL,
    address TEXT NOT NULL,
    position TEXT NOT NULL
)
```
---
**Độc Giả**
```sql
CREATE TABLE reader(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name TEXT NOT NULL,
    mobile VARCHAR(11) NOT NULL,
    email TEXT NOT NULL,
    address TEXT NOT NULL
)
```
---
**Sách**
```sql
CREATE TABLE book(
	id INT PRIMARY KEY AUTO_INCREMENT,
    name TEXT NOT NULL,
    amount INT NOT NULL,
    page INT NOT NULL,
    publish_date DATE NOT NULL,
    id_company INT NOT NULL,
    FOREIGN KEY (id_company) REFERENCES company(id),
    position TEXT NOT NULL
)
```
---
**Sách-Thể loại**
```sql
CREATE TABLE book_category(
    id_book INT NOT NULL,
    id_category INT NOT NULL,
    FOREIGN KEY (id_book) REFERENCES book(id),
    FOREIGN KEY (id_category) REFERENCES category(id),
    PRIMARY KEY (id_book, id_category)
)
```
---
**Sách-Tác giả**
```sql
CREATE TABLE book_author(
    id_book INT NOT NULL,
    id_author INT NOT NULL,
    FOREIGN KEY (id_book) REFERENCES book(id),
    FOREIGN KEY (id_author) REFERENCES author(id),
    PRIMARY KEY (id_book, id_author)
)
```
---
**Phiếu mượn**
```sql
CREATE TABLE borrow_ticket(
	id INT PRIMARY KEY AUTO_INCREMENT,
    id_reader INT NOT NULL,
    borrow_date DATE NOT NULL,
    return_date DATE NOT NULL,
    id_manager INT NOT NULL,
    FOREIGN KEY (id_reader) REFERENCES reader(id),
    FOREIGN KEY (id_manager) REFERENCES manager(id)
)
```
---
**Chi tiết phiếu mượn**
```sql
CREATE TABLE borrow_info(
	id INT PRIMARY KEY AUTO_INCREMENT,
    id_borrow INT NOT NULL,
    id_book INT NOT NULL,
    amount INT NOT NULL,
    FOREIGN KEY (id_borrow) REFERENCES borrow_ticket(id),
    FOREIGN KEY (id_book) REFERENCES book(id)
)
```
---
**Phiếu trả**
```sql
CREATE TABLE return_ticket(
	id INT PRIMARY KEY AUTO_INCREMENT,
    id_borrow INT NOT NULL,
    status ENUM('Complete','Uncomplete'),
    FOREIGN KEY (id_borrow) REFERENCES borrow_ticket(id)
)
```
---
**Chi tiết phiếu trả**
```sql
CREATE TABLE return_info(
	id INT PRIMARY KEY AUTO_INCREMENT,
    id_return INT NOT NULL,
    FOREIGN KEY (id_return) REFERENCES return_ticket(id),
    id_book INT NOT NULL,
    FOREIGN KEY (id_book) REFERENCES book(id),
    id_manager INT NOT NULL,
    FOREIGN KEY (id_manager) REFERENCES manager(id),
    return_date DATE NOT NULL
)
```
---
**Phiếu nhập**
```sql
CREATE TABLE enter_ticket(
	id INT PRIMARY KEY AUTO_INCREMENT,
    id_manager INT NOT NULL,
    FOREIGN KEY (id_manager) REFERENCES manager(id)
)
```
---
**Chi tiết phiếu nhập**
```sql
CREATE TABLE enter_info(
	id INT PRIMARY KEY AUTO_INCREMENT,
    id_book INT NOT NULL,
    amount INT NOT NULL,
    price BIGINT NOT NULL,
    FOREIGN KEY (id_book) REFERENCES book(id)
)
```
---

***Thêm dữ liệu vào DATABASE***
  
**Thêm dữ liệu vào bảng category**
```sql
insert into category (id, name) values (null, 'Horror');
insert into category (id, name) values (null, 'Action');
insert into category (id, name) values (null, 'Animation');
insert into category (id, name) values (null, 'Romance');
insert into category (id, name) values (null, 'Crime');
```
---  
**Thêm dữ liệu vào bảng author**  
```sql
insert into author (id, name, birth, country, death_day) values (null, 'Marv Rosenauer', '1973-10-28', '26 Hauk Lane, Paris, France', null);
insert into author (id, name, birth, country, death_day) values (null, 'Marie-jeanne Bickle', '1953-11-30', '573 Paget Road, Wittenberg, Germany', '2021/01/01');
insert into author (id, name, birth, country, death_day) values (null, 'Kissee Taw', '1963-10-04', '8707 Fulton Point, California, New York', '2020/01/14');
insert into author (id, name, birth, country, death_day) values (null, 'Francklyn Hainge', '1980-01-06', '4435 Scott Street, New York, United States', null);
insert into author (id, name, birth, country, death_day) values (null, 'Thurstan Darke', '1959-11-14', '6490 Evergreen Place, Moskow, Russia', '2020/11/18');
```  
---
**Thêm dữ liệu vào bảng company**  
```sql
insert into company (id, name, address, email, mobile) values (null, 'Wintheiser LLC', '931 Meadow Valley Point', 'wscamerden0@ucla.edu', '56622197015');
insert into company (id, name, address, email, mobile) values (null, 'Kuhn Inc', '21576 Johnson Street', 'vlimbourne1@webeden.co.uk', '70529694434');
insert into company (id, name, address, email, mobile) values (null, 'Oberbrunner LLC', '9 Ohio Terrace', 'oriseborough2@mozilla.org', '87015184741');
insert into company (id, name, address, email, mobile) values (null, 'Spinka, Bauch and Feil', '73 Dixon Plaza', 'cweinham3@elpais.com', '16551629961');
insert into company (id, name, address, email, mobile) values (null, 'Wilderman-Parker', '8593 Westend Way', 'gwhereat4@google.co.uk', '35566664395');
```
---
**Thêm dữ liệu vào bảng manager**
```sql
INSERT INTO `manager`(`id`, `name`, `mobile`, `email`, `address`, `position`) VALUES (null,'Johnson',0913248599,'john123@gmail.com','12 Tran Hung Dao, HaNoi','Founder');
INSERT INTO `manager`(`id`, `name`, `mobile`, `email`, `address`, `position`) VALUES (null,'Mike',0981234857,'mikeasda@gmail.com','15 Ly Thuong Kiet, HaNoi','Librarian');
INSERT INTO `manager`(`id`, `name`, `mobile`, `email`, `address`, `position`) VALUES (null,'Thai',0915739997,'thaicheese@gmail.com','1A Dang Thai Than, HaNoi','CEO');
INSERT INTO `manager`(`id`, `name`, `mobile`, `email`, `address`, `position`) VALUES (null,'Ngoc',0989980118,'ngochk@gmail.com','19 Phan Chu Trinh, HaNoi','Librarian');
INSERT INTO `manager`(`id`, `name`, `mobile`, `email`, `address`, `position`) VALUES (null,'Cuong',0948577712,'cuongdeptrai@gmail.com','9 Thanh Nhan, HaNoi','Librarian');
```
---
**Thêm dữ liệu vào bảng reader**
```sql
INSERT INTO `reader` (`id`, `name`, `mobile`, `email`, `address`) VALUES (NULL, 'Tan', '3472983718', 'Tandeptrai@gmail.com', '385 Thuy Khue');
INSERT INTO `reader` (`id`, `name`, `mobile`, `email`, `address`) VALUES (NULL, 'Khai', '3474938718', 'khaideptrai@gmail.com', '340 Minh Khai');
INSERT INTO `reader` (`id`, `name`, `mobile`, `email`, `address`) VALUES (NULL, 'Manh', '3472983718', 'manhdeptrai2@gmail.com', '95 Cau Giay');
INSERT INTO `reader` (`id`, `name`, `mobile`, `email`, `address`) VALUES (NULL, 'Hung', '0172984878', 'Hungnhedrai@gmail.com', '15 Quan Su');
INSERT INTO `reader` (`id`, `name`, `mobile`, `email`, `address`) VALUES (NULL, 'Cuong', '0272983718', 'Cuongmess@gmail.com', '25 Le Dai Hanh'); 
```
---
**Thêm dữ liệu vào bảng book**
```sql
INSERT INTO `book` (`id`, `name`, `amount`, `page`, `publish_date`, `id_company`, `position`) VALUES (NULL, 'Deacon King Kong', '10000', '200', '2018-01-23', '1', 'Tầng 1 - Khu A - Kệ 5');
INSERT INTO `book` (`id`, `name`, `amount`, `page`, `publish_date`, `id_company`, `position`) VALUES (NULL, 'Homeland Elegies', '15000', '300', '2017-03-22', '2', 'Tầng 2 - Khu C - Kệ 12');
INSERT INTO `book` (`id`, `name`, `amount`, `page`, `publish_date`, `id_company`, `position`) VALUES (NULL, 'LOLITA', '9400', '100', '2019-03-26', '4', 'Tầng 3 - Khu D - Kệ 4');
INSERT INTO `book` (`id`, `name`, `amount`, `page`, `publish_date`, `id_company`, `position`) VALUES (NULL, 'THE GREAT GATSBY', '12000', '320', '2022-04-15', '5', 'Tầng 2 - Khu F - Kệ 8');
INSERT INTO `book` (`id`, `name`, `amount`, `page`, `publish_date`, `id_company`, `position`) VALUES (NULL, 'ULYSSES', '8300', '370', '2020-06-25', '3', 'Tầng 1 - Khu C - Kệ 4');
```
---
**Thêm dữ liệu vào bảng book_category**
```sql
INSERT INTO `book_category` (`id_book`, `id_category`) VALUES ('3', '5');
INSERT INTO `book_category` (`id_book`, `id_category`) VALUES ('4', '1');
INSERT INTO `book_category` (`id_book`, `id_category`) VALUES ('5', '3');
INSERT INTO `book_category` (`id_book`, `id_category`) VALUES ('2', '4');
INSERT INTO `book_category` (`id_book`, `id_category`) VALUES ('4', '2');
```
---
**Thêm dữ liệu vào bảng book_author**
```sql
INSERT INTO `book_author` (`id_book`, `id_author`) VALUES ('2', '1');
INSERT INTO `book_author` (`id_book`, `id_author`) VALUES ('4', '5');
INSERT INTO `book_author` (`id_book`, `id_author`) VALUES ('1', '1');
INSERT INTO `book_author` (`id_book`, `id_author`) VALUES ('2', '4');
INSERT INTO `book_author` (`id_book`, `id_author`) VALUES ('4', '3');
```
---
**Thêm dữ liệu vào bảng borrow_ticket**
```sql
INSERT INTO `borrow_ticket` (`id`, `id_reader`, `borrow_date`, `return_date`, `id_manager`) VALUES (NULL, '2', '2021-12-09', '2021-12-30', '4');
INSERT INTO `borrow_ticket` (`id`, `id_reader`, `borrow_date`, `return_date`, `id_manager`) VALUES (NULL, '4', '2021-12-03', '2021-12-29', '5');
INSERT INTO `borrow_ticket` (`id`, `id_reader`, `borrow_date`, `return_date`, `id_manager`) VALUES (NULL, '4', '2021-12-30', '2021-12-28', '2');
INSERT INTO `borrow_ticket` (`id`, `id_reader`, `borrow_date`, `return_date`, `id_manager`) VALUES (NULL, '1', '2021-12-09', '2021-12-26', '4');
INSERT INTO `borrow_ticket` (`id`, `id_reader`, `borrow_date`, `return_date`, `id_manager`) VALUES (NULL, '5', '2021-12-15', '2021-12-27', '2');
```
---
**Tạo bảng borrow_info**
```sql
INSERT INTO `borrow_info` (`id`, `id_borrow`, `id_book`, `amount`) VALUES (NULL, '3', '4', '1');
INSERT INTO `borrow_info` (`id`, `id_borrow`, `id_book`, `amount`) VALUES (NULL, '2', '3', '1');
INSERT INTO `borrow_info` (`id`, `id_borrow`, `id_book`, `amount`) VALUES (NULL, '5', '2', '1');
INSERT INTO `borrow_info` (`id`, `id_borrow`, `id_book`, `amount`) VALUES (NULL, '3', '4', '2');
INSERT INTO `borrow_info` (`id`, `id_borrow`, `id_book`, `amount`) VALUES (NULL, '4', '2', '2');
```
---
**Tạo bảng return_ticket**
```sql 
INSERT INTO `return_ticket` (`id`, `id_borrow`, `status`) VALUES (NULL, '3', 'Uncomplete');
INSERT INTO `return_ticket` (`id`, `id_borrow`, `status`) VALUES (NULL, '4', 'Uncomplete');
INSERT INTO `return_ticket` (`id`, `id_borrow`, `status`) VALUES (NULL, '5', 'Uncomplete');
INSERT INTO `return_ticket` (`id`, `id_borrow`, `status`) VALUES (NULL, '1', 'Uncomplete');
INSERT INTO `return_ticket` (`id`, `id_borrow`, `status`) VALUES (NULL, '2', 'Uncomplete');
```
---
**Tạo bảng return_info**
```sql
INSERT INTO `return_info` (`id`, `id_return`, `id_book`, `id_manager`, `return_date`) VALUES (NULL, '2', '3', '4', '2022-01-04');
INSERT INTO `return_info` (`id`, `id_return`, `id_book`, `id_manager`, `return_date`) VALUES (NULL, '3', '2', '5', '2022-01-05');
INSERT INTO `return_info` (`id`, `id_return`, `id_book`, `id_manager`, `return_date`) VALUES (NULL, '1', '3', '2', '2022-01-02');
INSERT INTO `return_info` (`id`, `id_return`, `id_book`, `id_manager`, `return_date`) VALUES (NULL, '2', '1', '5', '2022-01-04');
INSERT INTO `return_info` (`id`, `id_return`, `id_book`, `id_manager`, `return_date`) VALUES (NULL, '3', '4', '2', '2022-01-03');
```
---

**Tạo bảng enter_ticket**
```sql
INSERT INTO `enter_ticket` (`id`, `id_manager`) VALUES (NULL, '4');
INSERT INTO `enter_ticket` (`id`, `id_manager`) VALUES (NULL, '5');
INSERT INTO `enter_ticket` (`id`, `id_manager`) VALUES (NULL, '2');
INSERT INTO `enter_ticket` (`id`, `id_manager`) VALUES (NULL, '4');
INSERT INTO `enter_ticket` (`id`, `id_manager`) VALUES (NULL, '2');
```
---

**Tạo bảng enter_info**
```sql
INSERT INTO `enter_info` (`id`, `id_book`, `amount`, `price`) VALUES (NULL, '1', '1', '100000');
INSERT INTO `enter_info` (`id`, `id_book`, `amount`, `price`) VALUES (NULL, '4', '1', '150000');
INSERT INTO `enter_info` (`id`, `id_book`, `amount`, `price`) VALUES (NULL, '1', '2', '120000');
INSERT INTO `enter_info` (`id`, `id_book`, `amount`, `price`) VALUES (NULL, '5', '1', '125000');
INSERT INTO `enter_info` (`id`, `id_book`, `amount`, `price`) VALUES (NULL, '2', '1', '95000');
```
---

