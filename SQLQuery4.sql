CREATE DATABASE BookLibrary;
GO

-- Sử dụng cơ sở dữ liệu BookLibrary
USE BookLibrary;
GO

-- Tạo bảng Book
DROP TABLE Book
GO
CREATE TABLE Book (
    BookCode INT PRIMARY KEY,
    BookTitle VARCHAR(100) NOT NULL,
    Author VARCHAR(50) NOT NULL,
    Edition INT DEFAULT 1,
    BookPrice MONEY DEFAULT 0,
    Copies INT DEFAULT 0,
);
GO
INSERT INTO Book(BookCode, BookTitle, Author, Edition, BookPrice, Copies) VALUES (1,'Vì yêu mà đến ','Tự chế', 5, $20, 100);
INSERT INTO Book(BookCode, BookTitle, Author, Edition, BookPrice, Copies) VALUES (2,'Thấy hoa vàng trên cỏ xanh','Không nhớ của ai', 5, $20, 100);
INSERT INTO Book(BookCode, BookTitle, Author, Edition, BookPrice, Copies) VALUES (3,'Không giỏi do lười ','Tự nghĩ ra ', 5, $10000, 100),(7,'Còn gì nữa đâu mà khóc với sầu','Chả biết của ai',5, $100, 200);
INSERT INTO Book(BookCode, BookTitle, Author, Edition, BookPrice, Copies) VALUES (4,'Làm giàu rất khó','Tôi tự nghĩ mà', 5, $50, 1);
INSERT INTO Book(BookCode, BookTitle, Author, Edition, BookPrice, Copies) VALUES (5,'Yêu thì ghét thôi ','Tên phim đấy', 5, $30, 10000);
INSERT INTO Book(BookCode, BookTitle, Author, Edition, BookPrice, Copies) VALUES (6,'Và thế là hết ','Hết chữ rồi', 5, $200, 10);
select * from Book

-- Tạo bảng Member
DROP TABLE Member
GO
CREATE TABLE Member (
    MemberID INT PRIMARY KEY,
    MemberName VARCHAR(50) NOT NULL,
    MemberEmail VARCHAR(100) UNIQUE,
    MemberPhone VARCHAR(20),
	BorrowID int,
    CONSTRAINT CK_MemberEmail CHECK (MemberEmail LIKE '%@%.%'),
	CONSTRAINT fk2 FOREIGN KEY (BorrowID) REFERENCES Book(BookCode)
);
GO

INSERT INTO Member(MemberID, MemberName, MemberEmail, MemberPhone,BorrowID) VALUES (1,'Hoang','Hoang123@gmail.com', 36465468496,10);
INSERT INTO Member(MemberID, MemberName, MemberEmail, MemberPhone, BorrowID) VALUES (3,'Hoa','hoahau@gmail.com', 16937844384,2);
INSERT INTO Member(MemberID, MemberName, MemberEmail, MemberPhone,BorrowID) VALUES (1000,'Thi','CoThi@gmail.com', 74834834,1),(16,'Linh','Lunglinh@gmail.com',643848434,7);
INSERT INTO Member(MemberID, MemberName, MemberEmail, MemberPhone,BorrowID) VALUES (100,'Tham','thắm@gmail.com', 2483438434,3);
INSERT INTO Member(MemberID, MemberName, MemberEmail, MemberPhone,BorrowID) VALUES (200,'Tuan','Tuan123@gmail.com', 194834,5);
INSERT INTO Member(MemberID, MemberName, MemberEmail, MemberPhone,BorrowID) VALUES (11,'ME','HoangHuy@gmail.com', 08348343,6);
INSERT INTO Member(MemberID, MemberName, MemberEmail, MemberPhone,BorrowID) VALUES (2,'Hoang2','Hoang13@gmail.com', 364468496,20);
Select * from Member
select * from Book
