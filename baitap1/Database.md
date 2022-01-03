Tạo DATABASE quản lý học sinh

CREATE DATABASE studentmanagement

Tạo bảng teacher

CREATE TABLE teacher(
	id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    name TEXT NOT NULL,
    email TEXT NOT NULL,
    mobile VARCHAR(11) NOT NULL,
    address TEXT NOT NULL
)


Tạo bảng subject

CREATE TABLE subject(
	id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    name TEXT NOT NULL
)


Tạo bảng class

CREATE TABLE class(
	id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    name TEXT NOT NULL,
    id_teacher INT NOT NULL,
    FOREIGN KEY (id_teacher) REFERENCES teacher (id)
)


Tạo bảng student

CREATE TABLE student(
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    NAME TEXT NOT NULL,
    birthday DATE NOT NULL,
    adderss TEXT NOT NULL,
    mobile VARCHAR(11) NOT NULL,
    email TEXT NOT NULL,
    id_class INT NOT NULL,
    FOREIGN KEY (id_class) REFERENCES class(id)
)

tạo bảng point

CREATE TABLE point(
	id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    id_subject INT NOT NULL,
    id_student INT NOT NULL,
    point FLOAT NOT NULL,
    FOREIGN KEY (id_subject) REFERENCES subject(id),
    FOREIGN KEY (id_student) REFERENCES student(id)
)


Thêm dữ liệu bảng teacher

INSERT INTO `teacher`(`id`, `name`, `email`, `mobile`, `address`) VALUES
	(null,"Ngọc",'ngocq12@gmail.com','0989980116','Hà Nội'),
    (null,"Cường",'cuongvn123@gmail.com','0925436782','Hà Nội'),
    (null,"Tuấn",'tuanyeah5@gmail.com','0873556712','Hà Nội');



Thêm dữ liệu bảng subject

INSERT INTO `subject`(`id`, `name`) VALUES
	(null,'HTML/CSS'),
	(null,'Java Core'),
    (null,'Database');


Thêm dữ liệu bảng class

INSERT INTO `class`(`id`, `name`, `id_teacher`) VALUES
	(null,'Java fullstack 06',1),
    (null,'Java fullstack 07',2),
    (null,'Java fullstack 08',3);

thêm dữ liệu bảng student

INSERT INTO `student`(`id`, `NAME`, `birthday`, `address`, `mobile`, `email`, `id_class`) VALUES
	(null,'Nguyễn Quốc Thái','2000-06-22','Hà Nội','0394106474','thaithedoublecheese@gmail.com',2),
    (null,'Nguyễn Mạnh Cường ','1992-06-03','Hà Nội','0989980156','cuongtha@gmail.com',3),
    (null,'Phạm Khải','2000-07-15','Hà Nội','089887156','khaingo1@gmail.com',1);


thêm dữ liệu bảng point

INSERT INTO `point`(`id`, `id_subject`, `id_student`, `point`) VALUES
	(null,1,1,10),
    (null,1,2,9),
    (null,1,3,10),
    (null,2,1,9),
    (null,2,2,10),
    (null,2,3,10),
    (null,3,1,9),
    (null,3,2,10),
    (null,3,3,9);
