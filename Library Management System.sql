Create Database LibraryDatabase

use LibraryDatabase;

--Publishers Table
Create Table PUBLISHERS(
 P_ID Varchar(5) Primary Key,
 Name Varchar(50) NOT NULL,
 Phone_Number Varchar(20)

);

--Books Table
create Table BOOKS(
B_ID varchar(5) Primary Key,
ISBN BIGINT UNIQUE,
Title Varchar(50) NOT NULL,
Author Varchar(50),
Copies Int,
Category Varchar(20),
Year_Of_Publication Int,
P_ID Varchar(5),

Foreign Key (P_ID) References PUBLISHERS (P_ID)

);

--Staff Table 
create Table STAFF(
S_ID Varchar(5) Primary Key,
Name Varchar (20) NOT NULL,
Role Varchar (20) NOT NULL,
);

--Members Table
create Table MEMBERS(
M_ID Varchar(5) Primary Key,
Name Varchar (20) NOT NULL,
Email varchar(50) UNIQUE,
Phone_Number Varchar(20),
);



--Issues Table
create Table ISSUES(
T_ID varchar(5) primary Key,
Issue_Date Date NOT NULL,
Due_Date Date NOT NULL,
Return_Date Date,
B_ID Varchar(5),
M_ID Varchar(5),
S_ID Varchar(5),

Foreign Key (S_ID) References STAFF (S_ID),
Foreign Key (M_ID) References MEMBERS (M_ID),
Foreign Key (B_ID) References BOOKS (B_ID),

);

--Inserting Values into Publishers table

INSERT INTO PUBLISHERS (P_ID,Name,Phone_Number) VALUES ('P01','Zavia Publishers', '845-535-0209')

INSERT INTO PUBLISHERS (P_ID,Name,Phone_Number) VALUES ('P02','Vanguard Books', '968-407-6399')

INSERT INTO PUBLISHERS (P_ID,Name,Phone_Number) VALUES ('P03','Oxford University Press Pakistan', '728-593-0008')

INSERT INTO PUBLISHERS (P_ID,Name,Phone_Number) VALUES ('P04','Kitabistan', '659-565-9590')

INSERT INTO PUBLISHERS (P_ID,Name,Phone_Number) VALUES ('P05','Ilm-o-Irfan Publishers', '997-724-7566')

INSERT INTO PUBLISHERS (P_ID,Name,Phone_Number) VALUES ('P06','Book Traders', '456-620-1357')

INSERT INTO PUBLISHERS (P_ID,Name,Phone_Number) VALUES ('P07','National Book Foundation', '974-235-5734')

INSERT INTO PUBLISHERS (P_ID,Name,Phone_Number) VALUES ('P08','Saeed Book Bank', '456-620-1357')

INSERT INTO PUBLISHERS (P_ID,Name,Phone_Number) VALUES ('P09','Sang-e-Meel Publications', '925-789-7829')

INSERT INTO PUBLISHERS (P_ID,Name,Phone_Number) VALUES ('P10','Roshni Publications', '633-286-8454')

INSERT INTO PUBLISHERS (P_ID,Name,Phone_Number) VALUES ('P11','Book Corner', '845-535-0209')

INSERT INTO PUBLISHERS (P_ID,Name,Phone_Number) VALUES ('P12','Farid Book Depot', '661-007-4683')

INSERT INTO PUBLISHERS (P_ID,Name,Phone_Number) VALUES ('P13','Mirza Book Agency', '124-242-9115')

INSERT INTO PUBLISHERS (P_ID,Name,Phone_Number) VALUES ('P14','Ferozsons Publishers', '305-953-3663')

INSERT INTO PUBLISHERS (P_ID,Name,Phone_Number) VALUES ('P15','Darussalam Publishers', '997-724-7566')

INSERT INTO PUBLISHERS (P_ID,Name,Phone_Number) VALUES ('P16','Book Home', '058-443-1824')

INSERT INTO PUBLISHERS (P_ID,Name,Phone_Number) VALUES ('P17','Liberty Books', '661-007-4683')

INSERT INTO PUBLISHERS (P_ID,Name,Phone_Number) VALUES ('P18','Capital Books', '535-515-6643')

INSERT INTO PUBLISHERS (P_ID,Name,Phone_Number) VALUES ('P19','Fiction House', '633-286-8454')

INSERT INTO PUBLISHERS (P_ID,Name,Phone_Number) VALUES ('P20','Paramount Books', '974-235-5734')

--Inserting Values into Books Table

INSERT INTO BOOKS (B_ID,ISBN,Title,Author,Copies,Category,Year_Of_Publication, P_ID) VALUES ('B01', 978859826034,'The Sun Also Rises','Leo Tolstoy',208,'Thriller',1998,'P06')

INSERT INTO BOOKS (B_ID,ISBN,Title,Author,Copies,Category,Year_Of_Publication, P_ID) VALUES ('B02', 978642697957,'Crime and Punishment','Virginia Woolf',141,'Historical Fiction',2023,'P16')

INSERT INTO BOOKS (B_ID,ISBN,Title,Author,Copies,Category,Year_Of_Publication, P_ID) VALUES ('B03', 978638966743,'Frankenstein','Gabriel García Márquez',257,'Graphic Novel',2019,'P10')

INSERT INTO BOOKS (B_ID,ISBN,Title,Author,Copies,Category,Year_Of_Publication, P_ID) VALUES ('B04', 978840692832,'All Quiet on the Western Front','James Joyce',166,'Historical Fiction',1997,'P16')

INSERT INTO BOOKS (B_ID,ISBN,Title,Author,Copies,Category,Year_Of_Publication, P_ID) VALUES ('B05', 978009970733,'The Sound and the Fury','Stephen King',116,'Romance',1997,'P10')

INSERT INTO BOOKS (B_ID,ISBN,Title,Author,Copies,Category,Year_Of_Publication, P_ID) VALUES ('B06', 978128294205,'Dracula','Louisa May Alcott',220,'Biography',2005,'P07')

INSERT INTO BOOKS (B_ID,ISBN,Title,Author,Copies,Category,Year_Of_Publication, P_ID) VALUES ('B07', 978527996120,'Pride and Prejudice','Kurt Vonnegut',165,'Humor',2016,'P01')

INSERT INTO BOOKS (B_ID,ISBN,Title,Author,Copies,Category,Year_Of_Publication, P_ID) VALUES ('B08', 978624100778,'The Hobbit','Toni Morrison',142,'Graphic Novel',1992,'P10')

INSERT INTO BOOKS (B_ID,ISBN,Title,Author,Copies,Category,Year_Of_Publication, P_ID) VALUES ('B09', 978973664061,'The Adventures of Sherlock Holmes','Edgar Allan Poe',167,'Self-help',2008,'P03')

INSERT INTO BOOKS (B_ID,ISBN,Title,Author,Copies,Category,Year_Of_Publication, P_ID) VALUES ('B10', 978788650860,'The Secret Garden','Charles Dickens',298,'Non-fiction',2002,'P20')

INSERT INTO BOOKS (B_ID,ISBN,Title,Author,Copies,Category,Year_Of_Publication, P_ID) VALUES ('B11', 978672865505,'Jane Eyre','John Steinbeck',123,'Graphic Novel',1997,'P19')

INSERT INTO BOOKS (B_ID,ISBN,Title,Author,Copies,Category,Year_Of_Publication, P_ID) VALUES ('B12', 978949394677,'Maus','George Orwell',213,'Fantasy',2009,'P14')    

INSERT INTO BOOKS (B_ID,ISBN,Title,Author,Copies,Category,Year_Of_Publication, P_ID) VALUES ('B13', 978185988168,'Siddhartha','Emily Dickinson',267,'Horror',2021,'P16')

INSERT INTO BOOKS (B_ID,ISBN,Title,Author,Copies,Category,Year_Of_Publication, P_ID) VALUES ('B14', 978078814294,'The Old Man and the Sea','Virginia Woolf',111,'Graphic Novel',2004,'P06')

INSERT INTO BOOKS (B_ID,ISBN,Title,Author,Copies,Category,Year_Of_Publication, P_ID) VALUES ('B15', 978253794118,'One Hundred Years of Solitude','Ralph Waldo Emerson',173,'Biography',2005,'P03')

INSERT INTO BOOKS (B_ID,ISBN,Title,Author,Copies,Category,Year_Of_Publication, P_ID) VALUES ('B16', 978438807138,'The Alchemist','J.R.R. Tolkien',106,'Poetry',2014,'P16')

INSERT INTO BOOKS (B_ID,ISBN,Title,Author,Copies,Category,Year_Of_Publication, P_ID) VALUES ('B17', 978950544648,'To Kill a Mockingbird','Emily Dickinson',196,'Horror',2006,'P19')

INSERT INTO BOOKS (B_ID,ISBN,Title,Author,Copies,Category,Year_Of_Publication, P_ID) VALUES ('B18', 978455419723,'Animal Farm','Nathaniel Hawthorne',235,'Thriller',1997,'P04')

INSERT INTO BOOKS (B_ID,ISBN,Title,Author,Copies,Category,Year_Of_Publication, P_ID) VALUES ('B19', 978782551812,'War and Peace','J.K. Rowling',191,'Memoir',2006,'P09')

INSERT INTO BOOKS (B_ID,ISBN,Title,Author,Copies,Category,Year_Of_Publication, P_ID) VALUES ('B20', 978329661802,'Catch-22','Ralph Waldo Emerson',149,'Crime',2012,'P10')

INSERT INTO BOOKS (B_ID,ISBN,Title,Author,Copies,Category,Year_Of_Publication, P_ID) VALUES ('B21', 978595241288,'Slaughterhouse-Five','Virginia Woolf',210,'Self-help',2014,'P03')

INSERT INTO BOOKS (B_ID,ISBN,Title,Author,Copies,Category,Year_Of_Publication, P_ID) VALUES ('B22', 978832134911,'The Hitchhikers Guide to the Galaxy','J.K. Rowling',171,'Fiction',2001,'P19')

INSERT INTO BOOKS (B_ID,ISBN,Title,Author,Copies,Category,Year_Of_Publication, P_ID) VALUES ('B23', 978570693940,'The Road','Gabriel García Márquez',157,'Memoir',2016,'P07')

INSERT INTO BOOKS (B_ID,ISBN,Title,Author,Copies,Category,Year_Of_Publication, P_ID) VALUES ('B24', 978634773508,'The Picture of Dorian Gray','James Joyce',141,'Drama',1999,'P02')

INSERT INTO BOOKS (B_ID,ISBN,Title,Author,Copies,Category,Year_Of_Publication, P_ID) VALUES ('B25', 978729569613,'A Tale of Two Cities','Victor Hugo',120,'Mystery',1997,'P19')

INSERT INTO BOOKS (B_ID,ISBN,Title,Author,Copies,Category,Year_Of_Publication, P_ID) VALUES ('B26', 978454830058,'Moby-Dick','Agatha Christie',296,'Graphic Novel',2017,'P07')

INSERT INTO BOOKS (B_ID,ISBN,Title,Author,Copies,Category,Year_Of_Publication, P_ID) VALUES ('B27', 978978438327,'Fahrenheit 451','J.R.R. Tolkien',277,'Non-fiction',2008,'P18')

INSERT INTO BOOKS (B_ID,ISBN,Title,Author,Copies,Category,Year_Of_Publication, P_ID) VALUES ('B28', 978261956644,'The Great Gatsby','Ralph Waldo Emerson',226,'Self-help',2017,'P07')

INSERT INTO BOOKS (B_ID,ISBN,Title,Author,Copies,Category,Year_Of_Publication, P_ID) VALUES ('B29', 978720703855,'Beloved','James Joyce',234,'Humor',2008,'P10')     

INSERT INTO BOOKS (B_ID,ISBN,Title,Author,Copies,Category,Year_Of_Publication, P_ID) VALUES ('B30', 978905881528,'Anna Karenina','Oscar Wilde',244,'Young Adult',1993,'P07')

INSERT INTO BOOKS (B_ID,ISBN,Title,Author,Copies,Category,Year_Of_Publication, P_ID) VALUES ('B31', 978630112499,'Invisible Man','Ernest Hemingway',253,'Travel',1993,'P13')

INSERT INTO BOOKS (B_ID,ISBN,Title,Author,Copies,Category,Year_Of_Publication, P_ID) VALUES ('B32', 978788132112,'The Kite Runner','Agatha Christie',207,'Crime',1995,'P20')

INSERT INTO BOOKS (B_ID,ISBN,Title,Author,Copies,Category,Year_Of_Publication, P_ID) VALUES ('B33', 978765948312,'The Lord of the Rings','Herman Melville',274,'Horror',1991,'P19')

INSERT INTO BOOKS (B_ID,ISBN,Title,Author,Copies,Category,Year_Of_Publication, P_ID) VALUES ('B34', 978083980804,'Wuthering Heights','George Orwell',168,'Travel',2011,'P01')

INSERT INTO BOOKS (B_ID,ISBN,Title,Author,Copies,Category,Year_Of_Publication, P_ID) VALUES ('B35', 978713500338,'Middlemarch','Harper Lee',261,'Self-help',2009,'P10')

INSERT INTO BOOKS (B_ID,ISBN,Title,Author,Copies,Category,Year_Of_Publication, P_ID) VALUES ('B36', 978676094843,'The Bell Jar','Mark Twain',272,'Memoir',1992,'P16')

INSERT INTO BOOKS (B_ID,ISBN,Title,Author,Copies,Category,Year_Of_Publication, P_ID) VALUES ('B37', 978146445921,'The Color Purple','Charles Dickens',160,'Graphic Novel',2006,'P01')

INSERT INTO BOOKS (B_ID,ISBN,Title,Author,Copies,Category,Year_Of_Publication, P_ID) VALUES ('B38', 978329098723,'Lolita','Virginia Woolf',178,'Self-help',2019,'P16')

INSERT INTO BOOKS (B_ID,ISBN,Title,Author,Copies,Category,Year_Of_Publication, P_ID) VALUES ('B39', 978661544087,'The Chronicles of Narnia','William Shakespeare',291,'Memoir',1992,'P08')

INSERT INTO BOOKS (B_ID,ISBN,Title,Author,Copies,Category,Year_Of_Publication, P_ID) VALUES ('B40', 978830156081,'The Da Vinci Code','Charles Dickens',227,'Crime',2000,'P20')

INSERT INTO BOOKS (B_ID,ISBN,Title,Author,Copies,Category,Year_Of_Publication, P_ID) VALUES ('B41', 978352018074,'Gone with the Wind','F. Scott Fitzgerald',284,'Fantasy',1994,'P19')

INSERT INTO BOOKS (B_ID,ISBN,Title,Author,Copies,Category,Year_Of_Publication, P_ID) VALUES ('B42', 978547980884,'East of Eden','Emily Dickinson',160,'Historical Fiction',1999,'P07')

INSERT INTO BOOKS (B_ID,ISBN,Title,Author,Copies,Category,Year_Of_Publication, P_ID) VALUES ('B43', 978856368584,'Les Misérables','Victor Hugo',158,'Science Fiction',2022,'P06')

INSERT INTO BOOKS (B_ID,ISBN,Title,Author,Copies,Category,Year_Of_Publication, P_ID) VALUES ('B44', 978079887034,'The Grapes of Wrath','Stephen King',240,'Biography',1998,'P05')

INSERT INTO BOOKS (B_ID,ISBN,Title,Author,Copies,Category,Year_Of_Publication, P_ID) VALUES ('B45', 978550846780,'Harry Potter and the Sorcerers Stone','William Shakespeare',159,'Humor',2004,'P03')

INSERT INTO BOOKS (B_ID,ISBN,Title,Author,Copies,Category,Year_Of_Publication, P_ID) VALUES ('B46', 978046736497,'Brave New World','Oscar Wilde',223,'Humor',2003,'P14')

INSERT INTO BOOKS (B_ID,ISBN,Title,Author,Copies,Category,Year_Of_Publication, P_ID) VALUES ('B47', 978693532699,'The Handmaids Tale','Kurt Vonnegut',120,'Drama',2022,'P19')

INSERT INTO BOOKS (B_ID,ISBN,Title,Author,Copies,Category,Year_Of_Publication, P_ID) VALUES ('B48', 978362912688,'The Catcher in the Rye','George Orwell',237,'Graphic Novel',2022,'P06')


--Inserting Records into STAFF Table

INSERT INTO STAFF (S_ID,Name,Role) VALUES ('S01','Ahmed', 'Librarian')

INSERT INTO STAFF (S_ID,Name,Role) VALUES ('S02','Hassan', 'Librarian')

INSERT INTO STAFF (S_ID,Name,Role) VALUES ('S03','Ayesha', 'Librarian')

INSERT INTO STAFF (S_ID,Name,Role) VALUES ('S04','Fatima', 'Assistant')

INSERT INTO STAFF (S_ID,Name,Role) VALUES ('S05','Ali', 'Assistant')

--Inserting data in Members Table
INSERT INTO MEMBERS (M_ID,Name,Email,Phone_Number) VALUES ('M01','Ayesha Khan', 'AyeshaKhan@gmail.com','556-223-5741');

INSERT INTO MEMBERS (M_ID,Name,Email,Phone_Number) VALUES ('M02','Imran Hassan', 'ImranHassan@gmail.com','832-417-0126');

INSERT INTO MEMBERS (M_ID,Name,Email,Phone_Number) VALUES ('M03','Hina Khan', 'HinaKhan@gmail.com','556-223-5741');

INSERT INTO MEMBERS (M_ID,Name,Email,Phone_Number) VALUES ('M04','Mehwish Abbas','MehwishAbbas@gmail.com','882-745-1692');

INSERT INTO MEMBERS (M_ID,Name,Email,Phone_Number) VALUES ('M05','Aleena Hassan','AleenaHassan@gmail.com','932-014-6727');

INSERT INTO MEMBERS (M_ID,Name,Email,Phone_Number) VALUES ('M06','Fahad Raza','FahadRaza@gmail.com','144-372-3993');

INSERT INTO MEMBERS (M_ID,Name,Email,Phone_Number) VALUES ('M07','Mahnoor Ahmed','MahnoorAhmed@gmail.com','072-943-9924');

INSERT INTO MEMBERS (M_ID,Name,Email,Phone_Number) VALUES ('M08','Alishba Riaz','AlishbaRiaz@gmail.com','123-090-5903');

INSERT INTO MEMBERS (M_ID,Name,Email,Phone_Number) VALUES ('M09','Sarah Khan','SarahKhan@gmail.com','072-943-9924');

INSERT INTO MEMBERS (M_ID,Name,Email,Phone_Number) VALUES ('M10','Aamir Malik','AamirMalik@gmail.com','556-223-5741');

INSERT INTO MEMBERS (M_ID,Name,Email,Phone_Number) VALUES ('M11','Amina Malik','AminaMalik@gmail.com','915-385-6514');

INSERT INTO MEMBERS (M_ID,Name,Email,Phone_Number) VALUES ('M12','Salman Iqbal','SalmanIqbal@gmail.com','972-151-4723');

INSERT INTO MEMBERS (M_ID,Name,Email,Phone_Number) VALUES ('M13','Laiba Malik','LaibaMalik@gmail.com','567-548-8894');

INSERT INTO MEMBERS (M_ID,Name,Email,Phone_Number) VALUES ('M14','Fatima Raza','FatimaRaza@gmail.com','567-548-8894');

INSERT INTO MEMBERS (M_ID,Name,Email,Phone_Number) VALUES ('M15','Ahmed Khan','AhmedKhan@gmail.com','567-548-8894');

INSERT INTO MEMBERS (M_ID,Name,Email,Phone_Number) VALUES ('M16','Zara Shah','ZaraShah@gmail.com','747-694-7549');

INSERT INTO MEMBERS (M_ID,Name,Email,Phone_Number) VALUES ('M17','Areeba Khan','AreebaKhan@gmail.com','832-417-0126');

INSERT INTO MEMBERS (M_ID,Name,Email,Phone_Number) VALUES ('M18','Sania Qureshi','SaniaQureshi@gmail.com','186-749-7315');

INSERT INTO MEMBERS (M_ID,Name,Email,Phone_Number) VALUES ('M19','Aqsa Ali','AqsaAli@gmail.com','072-943-9924');

INSERT INTO MEMBERS (M_ID,Name,Email,Phone_Number) VALUES ('M20','Saad Ahmed','SaadAhmed@gmail.com','915-385-6514');

INSERT INTO MEMBERS (M_ID,Name,Email,Phone_Number) VALUES ('M21','Sana Ali','SanaAli@gmail.com','915-385-6514');

INSERT INTO MEMBERS (M_ID,Name,Email,Phone_Number) VALUES ('M22','Farhan Malik','FarhanMalik@gmail.com','747-694-7549');

INSERT INTO MEMBERS (M_ID,Name,Email,Phone_Number) VALUES ('M23','Mariam Akhtar','MariamAkhtar@gmail.com','186-749-7315');

INSERT INTO MEMBERS (M_ID,Name,Email,Phone_Number) VALUES ('M24','Asadullah Qureshi','AsadullahQureshi@gmail.com','747-694-7549');

INSERT INTO MEMBERS (M_ID,Name,Email,Phone_Number) VALUES ('M25','Sumbul Ahmed','SumbulAhmed@gmail.com','932-014-6727');

INSERT INTO MEMBERS (M_ID,Name,Email,Phone_Number) VALUES ('M26','Madiha Ahmed','MadihaAhmed@gmail.com','072-943-9924');

INSERT INTO MEMBERS (M_ID,Name,Email,Phone_Number) VALUES ('M27','Alina Ahmed','AlinaAhmed@gmail.com','503-544-3616');

INSERT INTO MEMBERS (M_ID,Name,Email,Phone_Number) VALUES ('M28','Taimoor Malik','TaimoorMalik@gmail.com','186-749-7315');

INSERT INTO MEMBERS (M_ID,Name,Email,Phone_Number) VALUES ('M29','Hamza Khan','HamzaKhan@gmail.com','832-417-0126');

INSERT INTO MEMBERS (M_ID,Name,Email,Phone_Number) VALUES ('M30','Nabeel Ahmed','NabeelAhmed@gmail.com','268-054-2763');

INSERT INTO MEMBERS (M_ID,Name,Email,Phone_Number) VALUES ('M31','Junaid Ahmed','JunaidAhmed@gmail.com','493-747-1754');

INSERT INTO MEMBERS (M_ID,Name,Email,Phone_Number) VALUES ('M32','Rabia Hassan','RabiaHassan@gmail.com','972-151-4723');

INSERT INTO MEMBERS (M_ID,Name,Email,Phone_Number) VALUES ('M33','Hassan Mahmood','HassanMahmood@gmail.com','072-943-9924');

INSERT INTO MEMBERS (M_ID,Name,Email,Phone_Number) VALUES ('M34','Bushra Raza','BushraRaza@gmail.com','747-694-7549');

INSERT INTO MEMBERS (M_ID,Name,Email,Phone_Number) VALUES ('M35','Arsalan Riaz','ArsalanRiaz@gmail.com','292-895-4791');

INSERT INTO MEMBERS (M_ID,Name,Email,Phone_Number) VALUES ('M36','Waqar Ali','WaqarAli@gmail.com','493-747-1754');

INSERT INTO MEMBERS (M_ID,Name,Email,Phone_Number) VALUES ('M37','Sadia Haider','SadiaHaider@gmail.com','503-544-3616');

INSERT INTO MEMBERS (M_ID,Name,Email,Phone_Number) VALUES ('M38','Haris Ahmed','HarisAhmed@gmail.com','292-895-4791');

INSERT INTO MEMBERS (M_ID,Name,Email,Phone_Number) VALUES ('M39','Shehryar Khan','ShehryarKhan@gmail.com','268-054-2763');

INSERT INTO MEMBERS (M_ID,Name,Email,Phone_Number) VALUES ('M40','Danish Haider','DanishHaider@gmail.com','144-372-3993');

INSERT INTO MEMBERS (M_ID,Name,Email,Phone_Number) VALUES ('M41','Hira Malik','HiraMalik@gmail.com','882-745-1692');

INSERT INTO MEMBERS (M_ID,Name,Email,Phone_Number) VALUES ('M42','Bilal Akhtar', 'BilalAkhtar@gmail.com','123-090-5903');

INSERT INTO MEMBERS (M_ID,Name,Email,Phone_Number) VALUES ('M43','Shahzaib Ahmed', 'ShahzaibAhmed@gmail.com','493-747-1754');

INSERT INTO MEMBERS (M_ID,Name,Email,Phone_Number) VALUES ('M44','Zain-ul-Abideen', 'Zain-ul-Abideen@gmail.com','832-417-0126');

INSERT INTO MEMBERS (M_ID,Name,Email,Phone_Number) VALUES ('M45','Usman Shah', 'UsmanShah@gmail.com','186-749-7315');

INSERT INTO MEMBERS (M_ID,Name,Email,Phone_Number) VALUES ('M46','Fiza Malik', 'FizaMalik@gmail.com','882-745-1692');

INSERT INTO MEMBERS (M_ID,Name,Email,Phone_Number) VALUES ('M47','Anam Shah', 'AnamShah@gmail.com','882-745-1692');

INSERT INTO MEMBERS (M_ID,Name,Email,Phone_Number) VALUES ('M48','Ahsan Abbas', 'AhsanAbbas@gmail.com','832-417-0126');

INSERT INTO MEMBERS (M_ID,Name,Email,Phone_Number) VALUES ('M49','Aamir Ali', 'AamirAli@gmail.com','841-814-0613');

INSERT INTO MEMBERS (M_ID,Name,Email,Phone_Number) VALUES ('M50','Muhammad Ali', 'MuhammadAli@gmail.com','186-749-7315');

--Inserting in Issues Table 
INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T01', '2023-09-01', '2023-10-01', '2023-09-27', 'S05', 'B38', 'M47')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T02', '2023-02-03', '2023-03-05', '2023-03-12', 'S02', 'B36', 'M41')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T03', '2023-11-07', '2023-12-07', NULL, 'S04', 'B27', 'M46')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T04', '2024-05-14', '2024-06-13', '2024-06-20', 'S01', 'B13', 'M29')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T05', '2024-04-23', '2024-05-23', NULL, 'S03', 'B11', 'M45')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T06', '2023-08-24', '2023-09-23', '2023-09-14', 'S01', 'B39', 'M27')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T07', '2023-07-24', '2023-08-23', NULL, 'S05', 'B40', 'M23') 

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T08', '2024-04-23', '2024-05-23', '2024-05-13', 'S01', 'B16', 'M47')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T09', '2023-05-01', '2023-05-31', '2023-06-03', 'S05', 'B43', 'M21')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T10', '2023-01-03', '2023-02-02', NULL, 'S05', 'B36', 'M35')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T11', '2023-05-13', '2023-06-12', NULL, 'S03', 'B11', 'M30')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T12', '2023-01-02', '2023-02-01', '2023-01-29', 'S03', 'B33', 'M24')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T13', '2024-02-04', '2024-03-05', NULL, 'S04', 'B13', 'M15')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T14', '2024-05-19', '2024-06-18', '2024-06-08', 'S02', 'B14', 'M16')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T15', '2023-10-07', '2023-11-06', NULL, 'S05', 'B37', 'M38')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T16', '2023-03-02', '2023-04-01', '2023-03-24', 'S01', 'B15', 'M27')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T17', '2023-07-12', '2023-08-11', '2023-08-18', 'S02', 'B44', 'M36')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T18', '2023-09-26', '2023-10-26', NULL, 'S04', 'B42', 'M11')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T19', '2023-02-11', '2023-03-13', '2023-03-14', 'S05', 'B45', 'M16')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T20', '2023-07-19', '2023-08-18', NULL, 'S02', 'B30', 'M13')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T21', '2023-01-19', '2023-02-18', '2023-02-08', 'S02', 'B36', 'M41')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T22', '2023-12-19', '2024-01-18', '2024-01-24', 'S01', 'B41', 'M27')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T23', '2023-06-22', '2023-07-22', '2023-07-26', 'S04', 'B23', 'M47')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T24', '2024-05-15', '2024-06-14', NULL, 'S05', 'B40', 'M48')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T25', '2023-05-19', '2023-06-18', '2023-06-21', 'S04', 'B45', 'M43')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T26', '2024-04-20', '2024-05-20', NULL, 'S05', 'B18', 'M14')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T27', '2023-02-18', '2023-03-20', NULL, 'S04', 'B27', 'M36')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T28', '2024-01-14', '2024-02-13', NULL, 'S04', 'B24', 'M41')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T29', '2023-07-14', '2023-08-13', '2023-08-20', 'S03', 'B24', 'M43')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T30', '2023-12-16', '2024-01-15', NULL, 'S04', 'B18', 'M49')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T31', '2023-05-26', '2023-06-25', NULL, 'S03', 'B21', 'M16')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T32', '2024-03-16', '2024-04-15', '2024-04-09', 'S01', 'B13', 'M33')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T33', '2023-09-10', '2023-10-10', '2023-10-17', 'S05', 'B11', 'M21')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T34', '2023-07-22', '2023-08-21', NULL, 'S05', 'B30', 'M44')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T35', '2024-04-05', '2024-05-05', '2024-05-07', 'S05', 'B44', 'M50')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T36', '2023-06-17', '2023-07-17', '2023-07-11', 'S02', 'B10', 'M46')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T37', '2023-05-25', '2023-06-24', '2023-06-19', 'S05', 'B16', 'M46')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T38', '2023-08-14', '2023-09-13', '2023-09-12', 'S04', 'B24', 'M44')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T39', '2023-07-23', '2023-08-22', '2023-08-22', 'S01', 'B43', 'M19')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T40', '2023-06-26', '2023-07-26', NULL, 'S01', 'B14', 'M30')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T41', '2023-08-23', '2023-09-22', NULL, 'S05', 'B39', 'M12')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T42', '2023-05-21', '2023-06-20', '2023-06-10', 'S02', 'B25', 'M15')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T43', '2024-03-12', '2024-04-11', '2024-04-14', 'S04', 'B24', 'M16')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T44', '2024-03-03', '2024-04-02', NULL, 'S01', 'B23', 'M42')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T45', '2023-06-03', '2023-07-03', '2023-07-09', 'S03', 'B29', 'M26')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T46', '2023-09-29', '2023-10-29', '2023-11-06', 'S01', 'B42', 'M12')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T47', '2023-05-31', '2023-06-30', NULL, 'S05', 'B40', 'M28')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T48', '2023-08-28', '2023-09-27', NULL, 'S04', 'B33', 'M48')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T49', '2024-02-15', '2024-03-16', NULL, 'S05', 'B26', 'M36')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T50', '2023-01-28', '2023-02-27', NULL, 'S05', 'B20', 'M47')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T51', '2023-08-25', '2023-09-24', NULL, 'S03', 'B15', 'M18')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T52', '2023-04-01', '2023-05-01', NULL, 'S03', 'B21', 'M27')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T53', '2023-04-28', '2023-05-28', '2023-05-21', 'S04', 'B43', 'M40')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T54', '2023-07-18', '2023-08-17', NULL, 'S03', 'B37', 'M28')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T55', '2024-05-17', '2024-06-16', NULL, 'S03', 'B23', 'M27')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T56', '2023-10-07', '2023-11-06', NULL, 'S03', 'B18', 'M39')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T57', '2024-01-19', '2024-02-18', '2024-02-14', 'S02', 'B40', 'M15')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T58', '2024-01-22', '2024-02-21', '2024-03-01', 'S01', 'B25', 'M12')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T59', '2024-05-11', '2024-06-10', NULL, 'S01', 'B45', 'M14')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T60', '2024-05-05', '2024-06-04', '2024-06-06', 'S05', 'B24', 'M46')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T61', '2023-05-02', '2023-06-01', '2023-05-24', 'S05', 'B40', 'M31')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T62', '2023-02-05', '2023-03-07', '2023-03-01', 'S05', 'B14', 'M37')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T63', '2024-01-14', '2024-02-13', '2024-02-13', 'S02', 'B30', 'M13')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T64', '2023-11-10', '2023-12-10', NULL, 'S04', 'B26', 'M42')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T65', '2023-08-09', '2023-09-08', NULL, 'S02', 'B44', 'M23')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T66', '2023-02-15', '2023-03-17', '2023-03-22', 'S03', 'B28', 'M15')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T67', '2023-04-01', '2023-05-01', '2023-04-21', 'S01', 'B34', 'M42')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T68', '2023-08-05', '2023-09-04', NULL, 'S04', 'B25', 'M35')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T69', '2023-02-01', '2023-03-03', NULL, 'S02', 'B35', 'M40')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T70', '2024-03-15', '2024-04-14', '2024-04-07', 'S01', 'B24', 'M37')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T71', '2023-12-24', '2024-01-23', NULL, 'S02', 'B34', 'M32')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T72', '2024-03-12', '2024-04-11', '2024-04-01', 'S05', 'B36', 'M23')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T73', '2024-02-03', '2024-03-04', '2024-02-25', 'S03', 'B24', 'M17')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T74', '2023-04-10', '2023-05-10', '2023-05-12', 'S02', 'B38', 'M39')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T75', '2023-11-20', '2023-12-20', '2023-12-26', 'S04', 'B15', 'M47')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T76', '2023-08-15', '2023-09-14', NULL, 'S02', 'B18', 'M16')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T77', '2023-04-09', '2023-05-09', '2023-05-05', 'S03', 'B40', 'M47')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T78', '2023-11-06', '2023-12-06', NULL, 'S02', 'B39', 'M41')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T79', '2023-12-03', '2024-01-02', '2024-01-01', 'S05', 'B39', 'M41')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T80', '2024-01-14', '2024-02-13', '2024-02-19', 'S05', 'B38', 'M30')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T81', '2023-03-15', '2023-04-14', '2023-04-19', 'S03', 'B39', 'M16')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T82', '2023-06-19', '2023-07-19', NULL, 'S04', 'B24', 'M45')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T83', '2023-11-07', '2023-12-07', NULL, 'S05', 'B36', 'M13')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T84', '2023-01-07', '2023-02-06', '2023-02-14', 'S02', 'B29', 'M17')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T85', '2024-03-28', '2024-04-27', '2024-04-21', 'S02', 'B39', 'M14')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T86', '2023-11-25', '2023-12-25', NULL, 'S03', 'B39', 'M13')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T87', '2023-04-21', '2023-05-21', '2023-05-27', 'S03', 'B20', 'M12')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T88', '2023-05-17', '2023-06-16', '2023-06-24', 'S05', 'B24', 'M40')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T89', '2023-02-21', '2023-03-23', '2023-03-28', 'S05', 'B30', 'M40')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T90', '2023-06-12', '2023-07-12', NULL, 'S02', 'B33', 'M19')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T91', '2023-09-06', '2023-10-06', '2023-10-12', 'S04', 'B21', 'M33')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T92', '2023-06-26', '2023-07-26', '2023-07-26', 'S03', 'B36', 'M41')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T93', '2023-11-26', '2023-12-26', '2024-01-03', 'S01', 'B17', 'M48')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T94', '2024-05-01', '2024-05-31', '2024-05-29', 'S01', 'B15', 'M35')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T95', '2023-12-16', '2024-01-15', NULL, 'S02', 'B28', 'M43')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T96', '2024-05-06', '2024-06-05', NULL, 'S01', 'B28', 'M45')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T97', '2023-10-05', '2023-11-04', '2023-11-09', 'S02', 'B18', 'M43')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T98', '2023-03-16', '2023-04-15', '2023-04-19', 'S02', 'B12', 'M32')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T99', '2024-02-25', '2024-03-26', '2024-04-01', 'S01', 'B13', 'M38')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T100', '2023-06-06', '2023-07-06', '2023-07-03', 'S05', 'B45', 'M30')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T101', '2023-01-26', '2023-02-25', '2023-02-15', 'S04', 'B16', 'M42')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T102', '2023-01-24', '2023-02-23', '2023-03-02', 'S05', 'B44', 'M42')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T103', '2024-02-28', '2024-03-29', NULL, 'S02', 'B37', 'M30')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T104', '2023-04-30', '2023-05-30', NULL, 'S03', 'B18', 'M43')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T105', '2023-09-27', '2023-10-27', '2023-11-03', 'S01', 'B44', 'M33')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T106', '2024-03-09', '2024-04-08', NULL, 'S05', 'B40', 'M47')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T107', '2024-05-13', '2024-06-12', '2024-06-21', 'S01', 'B32', 'M18')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T108', '2024-03-08', '2024-04-07', '2024-04-13', 'S03', 'B38', 'M32')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T109', '2024-03-03', '2024-04-02', NULL, 'S05', 'B42', 'M34')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T110', '2023-02-06', '2023-03-08', '2023-02-27', 'S02', 'B20', 'M20')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T111', '2023-10-08', '2023-11-07', '2023-11-14', 'S04', 'B36', 'M20')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T112', '2023-12-24', '2024-01-23', NULL, 'S03', 'B10', 'M38')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T113', '2023-08-18', '2023-09-17', NULL, 'S05', 'B20', 'M19')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T114', '2024-01-13', '2024-02-12', '2024-02-20', 'S04', 'B36', 'M42')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T115', '2023-12-06', '2024-01-05', NULL, 'S03', 'B45', 'M24')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T116', '2023-03-19', '2023-04-18', '2023-04-11', 'S04', 'B40', 'M46')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T117', '2023-10-17', '2023-11-16', '2023-11-23', 'S03', 'B30', 'M50')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T118', '2024-03-04', '2024-04-03', '2024-03-31', 'S03', 'B19', 'M31')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T119', '2023-01-24', '2023-02-23', NULL, 'S05', 'B14', 'M46')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T120', '2024-01-26', '2024-02-25', '2024-02-16', 'S03', 'B19', 'M43')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T121', '2023-10-20', '2023-11-19', '2023-11-27', 'S02', 'B15', 'M10')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T122', '2024-04-11', '2024-05-11', '2024-05-05', 'S04', 'B44', 'M32')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T123', '2023-11-09', '2023-12-09', NULL, 'S01', 'B14', 'M49')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T124', '2023-01-30', '2023-03-01', '2023-02-27', 'S02', 'B34', 'M28')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T125', '2023-11-07', '2023-12-07', NULL, 'S02', 'B36', 'M24')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T126', '2023-11-30', '2023-12-30', '2023-12-21', 'S05', 'B14', 'M15')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T127', '2023-04-24', '2023-05-24', '2023-05-23', 'S01', 'B39', 'M26')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T128', '2024-05-07', '2024-06-06', '2024-06-09', 'S04', 'B18', 'M21')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T129', '2023-02-12', '2023-03-14', '2023-03-13', 'S03', 'B45', 'M11')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T130', '2023-12-04', '2024-01-03', '2024-01-05', 'S03', 'B26', 'M38')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T131', '2023-07-16', '2023-08-15', '2023-08-10', 'S05', 'B37', 'M38')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T132', '2024-03-02', '2024-04-01', '2024-03-31', 'S05', 'B41', 'M43')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T133', '2023-10-05', '2023-11-04', '2023-11-12', 'S05', 'B40', 'M38')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T134', '2023-07-28', '2023-08-27', '2023-08-27', 'S03', 'B19', 'M16')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T135', '2023-10-19', '2023-11-18', '2023-11-19', 'S04', 'B14', 'M20')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T136', '2024-04-02', '2024-05-02', '2024-04-30', 'S05', 'B31', 'M25')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T137', '2024-05-07', '2024-06-06', '2024-06-03', 'S04', 'B35', 'M46')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T138', '2024-01-28', '2024-02-27', NULL, 'S04', 'B34', 'M29')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T139', '2024-01-25', '2024-02-24', '2024-03-05', 'S01', 'B23', 'M19')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T140', '2023-06-05', '2023-07-05', '2023-07-04', 'S05', 'B45', 'M26')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T141', '2023-10-14', '2023-11-13', '2023-11-10', 'S01', 'B15', 'M12')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T142', '2023-06-08', '2023-07-08', NULL, 'S03', 'B16', 'M16')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T143', '2023-01-20', '2023-02-19', NULL, 'S05', 'B18', 'M37')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T144', '2023-01-05', '2023-02-04', NULL, 'S02', 'B30', 'M11')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T145', '2024-03-01', '2024-03-31', NULL, 'S01', 'B12', 'M29')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T146', '2024-04-16', '2024-05-16', '2024-05-13', 'S04', 'B18', 'M43')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T147', '2023-07-12', '2023-08-11', '2023-08-17', 'S01', 'B10', 'M40')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T148', '2024-02-09', '2024-03-10', NULL, 'S03', 'B11', 'M23')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T149', '2023-09-06', '2023-10-06', '2023-10-13', 'S03', 'B24', 'M50')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T150', '2023-06-07', '2023-07-07', '2023-07-16', 'S03', 'B39', 'M17')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T151', '2023-10-05', '2023-11-04', '2023-11-14', 'S01', 'B29', 'M21')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T152', '2023-08-23', '2023-09-22', '2023-09-25', 'S05', 'B37', 'M14')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T153', '2024-03-28', '2024-04-27', NULL, 'S02', 'B29', 'M17')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T154', '2023-10-05', '2023-11-04', NULL, 'S04', 'B34', 'M21')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T155', '2023-12-29', '2024-01-28', NULL, 'S03', 'B31', 'M18')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T156', '2023-11-05', '2023-12-05', NULL, 'S02', 'B39', 'M19')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T157', '2024-04-21', '2024-05-21', NULL, 'S04', 'B28', 'M44')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T158', '2023-03-12', '2023-04-11', NULL, 'S02', 'B14', 'M50')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T159', '2023-08-12', '2023-09-11', NULL, 'S03', 'B31', 'M45')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T160', '2023-12-09', '2024-01-08', NULL, 'S01', 'B37', 'M50')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T161', '2024-02-13', '2024-03-14', '2024-03-12', 'S05', 'B36', 'M32')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T162', '2023-02-24', '2023-03-26', '2023-03-24', 'S01', 'B25', 'M43')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T163', '2023-03-12', '2023-04-11', NULL, 'S02', 'B23', 'M39')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T164', '2023-10-02', '2023-11-01', '2023-11-06', 'S01', 'B21', 'M50')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T165', '2023-04-04', '2023-05-04', '2023-05-05', 'S04', 'B28', 'M27')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T166', '2023-10-15', '2023-11-14', NULL, 'S02', 'B27', 'M30')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T167', '2023-11-16', '2023-12-16', NULL, 'S05', 'B10', 'M42')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T168', '2023-04-07', '2023-05-07', NULL, 'S01', 'B21', 'M17')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T169', '2023-04-16', '2023-05-16', NULL, 'S02', 'B44', 'M47')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T170', '2023-05-29', '2023-06-28', NULL, 'S02', 'B20', 'M28')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T171', '2024-02-03', '2024-03-04', NULL, 'S04', 'B31', 'M37')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T172', '2024-03-21', '2024-04-20', NULL, 'S03', 'B29', 'M45')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T173', '2023-06-01', '2023-07-01', '2023-07-08', 'S05', 'B26', 'M20')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T174', '2023-09-20', '2023-10-20', NULL, 'S03', 'B42', 'M13')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T175', '2023-10-20', '2023-11-19', NULL, 'S02', 'B32', 'M49')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T176', '2023-01-28', '2023-02-27', NULL, 'S03', 'B33', 'M26')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T177', '2023-03-03', '2023-04-02', '2023-04-10', 'S03', 'B38', 'M22')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T178', '2024-05-17', '2024-06-16', '2024-06-16', 'S01', 'B43', 'M23')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T179', '2023-08-10', '2023-09-09', '2023-09-03', 'S02', 'B18', 'M16')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T180', '2024-01-31', '2024-03-01', '2024-03-08', 'S02', 'B22', 'M47')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T181', '2023-01-06', '2023-02-05', NULL, 'S04', 'B43', 'M24')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T182', '2023-06-10', '2023-07-10', '2023-07-10', 'S05', 'B11', 'M17')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T183', '2023-03-04', '2023-04-03', '2023-03-27', 'S01', 'B24', 'M18')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T184', '2024-05-04', '2024-06-03', NULL, 'S03', 'B29', 'M15')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T185', '2024-04-02', '2024-05-02', NULL, 'S05', 'B28', 'M10')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T186', '2024-01-11', '2024-02-10', '2024-02-16', 'S02', 'B27', 'M22')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T187', '2023-06-19', '2023-07-19', NULL, 'S02', 'B38', 'M17')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T188', '2023-11-26', '2023-12-26', NULL, 'S02', 'B14', 'M25')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T189', '2023-06-28', '2023-07-28', '2023-07-24', 'S01', 'B34', 'M47')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T190', '2023-01-23', '2023-02-22', NULL, 'S02', 'B27', 'M32')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T191', '2023-07-11', '2023-08-10', '2023-08-02', 'S04', 'B41', 'M17')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T192', '2023-04-25', '2023-05-25', '2023-05-28', 'S02', 'B35', 'M35')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T193', '2023-03-11', '2023-04-10', NULL, 'S01', 'B22', 'M25')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T194', '2023-07-15', '2023-08-14', '2023-08-05', 'S04', 'B13', 'M24')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T195', '2023-12-17', '2024-01-16', '2024-01-19', 'S03', 'B37', 'M34')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T196', '2024-03-29', '2024-04-28', NULL, 'S05', 'B23', 'M29')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T197', '2023-06-22', '2023-07-22', NULL, 'S01', 'B45', 'M30')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T198', '2023-01-18', '2023-02-17', '2023-02-17', 'S03', 'B13', 'M30')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T199', '2023-05-23', '2023-06-22', NULL, 'S04', 'B11', 'M20')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T200', '2024-04-16', '2024-05-16', '2024-05-13', 'S01', 'B14', 'M43')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T201', '2023-11-09', '2023-12-09', '2023-12-08', 'S05', 'B31', 'M46')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T202', '2023-08-16', '2023-09-15', '2023-09-12', 'S02', 'B16', 'M41')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T203', '2023-06-30', '2023-07-30', '2023-07-23', 'S01', 'B45', 'M50')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T204', '2023-12-06', '2024-01-05', NULL, 'S05', 'B38', 'M32')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T205', '2023-07-06', '2023-08-05', NULL, 'S02', 'B15', 'M34')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T206', '2024-03-17', '2024-04-16', NULL, 'S04', 'B29', 'M42')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T207', '2023-06-26', '2023-07-26', '2023-08-01', 'S01', 'B16', 'M18')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T208', '2023-07-15', '2023-08-14', NULL, 'S02', 'B17', 'M48')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T209', '2023-09-29', '2023-10-29', NULL, 'S03', 'B37', 'M21')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T210', '2024-04-06', '2024-05-06', '2024-05-12', 'S05', 'B40', 'M11')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T211', '2023-05-04', '2023-06-03', '2023-06-03', 'S04', 'B41', 'M38')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T212', '2023-06-17', '2023-07-17', NULL, 'S03', 'B16', 'M48')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T213', '2024-03-24', '2024-04-23', NULL, 'S04', 'B13', 'M34')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T214', '2024-03-01', '2024-03-31', '2024-03-30', 'S05', 'B35', 'M23')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T215', '2024-02-22', '2024-03-23', NULL, 'S01', 'B40', 'M28')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T216', '2023-08-22', '2023-09-21', NULL, 'S02', 'B35', 'M44')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T217', '2023-06-20', '2023-07-20', '2023-07-30', 'S01', 'B16', 'M40')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T218', '2023-12-12', '2024-01-11', '2024-01-03', 'S05', 'B17', 'M11')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T219', '2023-01-14', '2023-02-13', NULL, 'S03', 'B12', 'M24')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T220', '2023-05-21', '2023-06-20', NULL, 'S01', 'B22', 'M18')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T221', '2023-09-23', '2023-10-23', NULL, 'S03', 'B23', 'M31')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T222', '2024-03-15', '2024-04-14', '2024-04-23', 'S01', 'B14', 'M31')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T223', '2023-03-12', '2023-04-11', '2023-04-12', 'S01', 'B35', 'M11')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T224', '2023-06-13', '2023-07-13', NULL, 'S01', 'B43', 'M28')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T225', '2023-10-16', '2023-11-15', NULL, 'S03', 'B19', 'M31')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T226', '2023-03-14', '2023-04-13', NULL, 'S01', 'B39', 'M31')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T227', '2023-12-06', '2024-01-05', '2024-01-10', 'S02', 'B13', 'M36')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T228', '2023-08-30', '2023-09-29', NULL, 'S03', 'B27', 'M10')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T229', '2023-07-27', '2023-08-26', NULL, 'S02', 'B21', 'M40')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T230', '2023-09-19', '2023-10-19', '2023-10-09', 'S02', 'B45', 'M38')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T231', '2024-03-19', '2024-04-18', NULL, 'S02', 'B16', 'M42')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T232', '2023-08-18', '2023-09-17', NULL, 'S04', 'B38', 'M26')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T233', '2024-04-09', '2024-05-09', NULL, 'S03', 'B25', 'M47')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T234', '2024-05-15', '2024-06-14', '2024-06-14', 'S03', 'B40', 'M20')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T235', '2024-05-06', '2024-06-05', '2024-06-08', 'S03', 'B15', 'M34')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T236', '2024-05-10', '2024-06-09', '2024-06-04', 'S03', 'B35', 'M27')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T237', '2023-02-18', '2023-03-20', '2023-03-14', 'S05', 'B20', 'M38')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T238', '2024-04-27', '2024-05-27', NULL, 'S05', 'B12', 'M40')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T239', '2024-03-03', '2024-04-02', NULL, 'S01', 'B13', 'M41')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T240', '2024-05-14', '2024-06-13', NULL, 'S03', 'B44', 'M21')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T241', '2023-06-05', '2023-07-05', NULL, 'S03', 'B37', 'M49')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T242', '2023-12-24', '2024-01-23', NULL, 'S03', 'B40', 'M35')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T243', '2023-10-19', '2023-11-18', NULL, 'S05', 'B27', 'M16')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T244', '2023-10-12', '2023-11-11', NULL, 'S03', 'B24', 'M28')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T245', '2023-02-27', '2023-03-29', NULL, 'S03', 'B44', 'M19')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T246', '2024-03-23', '2024-04-22', '2024-04-16', 'S03', 'B45', 'M12')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T247', '2023-05-21', '2023-06-20', '2023-06-12', 'S05', 'B33', 'M29')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T248', '2023-10-16', '2023-11-15', NULL, 'S05', 'B21', 'M42')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T249', '2023-07-29', '2023-08-28', '2023-08-23', 'S02', 'B16', 'M48')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T250', '2023-05-20', '2023-06-19', '2023-06-10', 'S02', 'B29', 'M17')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T251', '2023-04-16', '2023-05-16', '2023-05-13', 'S05', 'B40', 'M40')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T252', '2023-10-09', '2023-11-08', NULL, 'S02', 'B42', 'M39')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T253', '2024-02-09', '2024-03-10', '2024-03-14', 'S02', 'B15', 'M15')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T254', '2024-04-21', '2024-05-21', NULL, 'S05', 'B42', 'M49')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T255', '2024-05-21', '2024-06-20', '2024-06-10', 'S02', 'B33', 'M45')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T256', '2023-05-28', '2023-06-27', '2023-06-20', 'S02', 'B37', 'M11')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T257', '2023-08-23', '2023-09-22', '2023-09-21', 'S03', 'B37', 'M46')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T258', '2023-05-09', '2023-06-08', '2023-06-18', 'S03', 'B13', 'M25')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T259', '2024-02-21', '2024-03-22', '2024-03-28', 'S03', 'B31', 'M35')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T260', '2024-03-17', '2024-04-16', '2024-04-13', 'S03', 'B18', 'M43')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T261', '2023-10-03', '2023-11-02', '2023-11-02', 'S04', 'B18', 'M33')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T262', '2023-08-23', '2023-09-22', '2023-09-21', 'S01', 'B37', 'M49')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T263', '2024-02-18', '2024-03-19', NULL, 'S05', 'B23', 'M30')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T264', '2023-01-04', '2023-02-03', '2023-01-28', 'S05', 'B42', 'M48')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T265', '2024-02-13', '2024-03-14', NULL, 'S05', 'B13', 'M38')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T266', '2023-10-28', '2023-11-27', NULL, 'S03', 'B42', 'M15')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T267', '2023-06-23', '2023-07-23', NULL, 'S05', 'B22', 'M24')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T268', '2024-04-24', '2024-05-24', NULL, 'S03', 'B36', 'M50')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T269', '2024-01-26', '2024-02-25', NULL, 'S03', 'B20', 'M42')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T270', '2023-05-23', '2023-06-22', NULL, 'S04', 'B37', 'M39')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T271', '2023-06-13', '2023-07-13', '2023-07-23', 'S01', 'B25', 'M31')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T272', '2023-08-13', '2023-09-12', NULL, 'S03', 'B20', 'M33')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T273', '2023-03-29', '2023-04-28', '2023-05-06', 'S01', 'B38', 'M26')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T274', '2023-11-25', '2023-12-25', '2023-12-31', 'S01', 'B10', 'M40')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T275', '2023-02-16', '2023-03-18', NULL, 'S02', 'B25', 'M11')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T276', '2023-05-25', '2023-06-24', NULL, 'S01', 'B17', 'M30')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T277', '2023-08-25', '2023-09-24', NULL, 'S04', 'B45', 'M35')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T278', '2024-04-24', '2024-05-24', NULL, 'S02', 'B17', 'M31')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T279', '2023-04-03', '2023-05-03', '2023-04-29', 'S02', 'B12', 'M34')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T280', '2024-01-18', '2024-02-17', '2024-02-14', 'S05', 'B16', 'M20')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T281', '2023-11-02', '2023-12-02', '2023-11-23', 'S04', 'B17', 'M40')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T282', '2024-05-03', '2024-06-02', NULL, 'S02', 'B26', 'M37')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T283', '2023-03-05', '2023-04-04', '2023-03-25', 'S04', 'B11', 'M15')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T284', '2024-04-16', '2024-05-16', NULL, 'S02', 'B33', 'M20')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T285', '2024-03-18', '2024-04-17', '2024-04-17', 'S02', 'B39', 'M30')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T286', '2023-06-15', '2023-07-15', NULL, 'S02', 'B29', 'M29')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T287', '2024-03-21', '2024-04-20', NULL, 'S01', 'B16', 'M44')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T288', '2024-04-05', '2024-05-05', '2024-05-03', 'S04', 'B17', 'M21')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T289', '2024-05-01', '2024-05-31', '2024-06-01', 'S03', 'B20', 'M45')

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T290', '2023-03-12', '2023-04-11', NULL, 'S05', 'B19', 'M33')

--INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T291', '2023-01-01', '2023-01-31', NULL, 'S05', 'B37', 'M37')

--INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T292', '2023-12-25', '2024-01-24', '2024-01-14', 'S02', 'B18', 'M21')

--INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T293', '2024-03-23', '2024-04-22', NULL, 'S02', 'B24', 'M37')

--INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T294', '2023-02-22', '2023-03-24', '2023-03-23', 'S05', 'B18', 'M49')

--INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T295', '2023-08-02', '2023-09-01', '2023-09-02', 'S02', 'B24', 'M37')

--INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T296', '2024-03-08', '2024-04-07', '2024-04-05', 'S05', 'B38', 'M47')

--INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, S_ID, B_ID, M_ID) VALUES ('T297', '2023-10-22', '2023-11-21', '2023-11-16', 'S05', 'B20', 'M35')

Select * from PUBLISHERS;
Select * from BOOKS;
Select * from STAFF;
Select * from MEMBERS;
Select * from ISSUES;

drop table ISSUES

--Create Procedure

--1
CREATE PROCEDURE ListBooksByPublisher
    @PublisherID VARCHAR(5)
AS
BEGIN
    SELECT B_ID, Title, Author, Category
    FROM BOOKS
    WHERE P_ID = @PublisherID;
END;

EXEC ListBooksByPublisher @PublisherID = 'P19';
--2

CREATE PROCEDURE ListAvailableBooksByCategory
    @Category VARCHAR(20)
AS
BEGIN
    SELECT B_ID, Title, Author
    FROM BOOKS
    WHERE Category = @Category AND Copies > 0;
END;

EXEC ListAvailableBooksByCategory @Category = 'Humor';

--3
CREATE PROCEDURE ListBooksIssuedByMember
    @MemberID VARCHAR(5)
AS
BEGIN
    SELECT B.B_ID, B.Title, B.Author, I.Issue_Date, I.Due_Date
    FROM ISSUES I
    JOIN BOOKS B ON I.B_ID = B.B_ID
    WHERE I.M_ID = @MemberID AND I.Return_Date IS NULL;
END;

EXEC ListBooksIssuedByMember @MemberID = 'M15';

--4
CREATE PROCEDURE ListOverdueBooks
AS
BEGIN
    SELECT B.B_ID, B.Title, B.Author, I.Due_Date, I.M_ID AS MemberID, M.Name AS MemberName
    FROM ISSUES I
    JOIN BOOKS B ON I.B_ID = B.B_ID
    JOIN MEMBERS M ON I.M_ID = M.M_ID
    WHERE I.Due_Date < GETDATE() AND I.Return_Date IS NULL;
END;

EXEC ListOverdueBooks;

--5
CREATE PROCEDURE CalculateMemberFine
    @MemberID VARCHAR(5)
AS
BEGIN
    DECLARE @FinePerDay INT = 200; 

    -- Retrieve member details and overdue book information
    SELECT 
        M.M_ID AS MemberID,
        M.Name AS MemberName,
        M.Email AS MemberEmail,
        M.Phone_Number AS MemberPhoneNumber,
        B.B_ID AS BookID,
        B.Title AS BookTitle,
        I.Issue_Date AS IssueDate,
        I.Due_Date AS DueDate,
        DATEDIFF(DAY, I.Due_Date, GETDATE()) AS DaysOverdue,
        DATEDIFF(DAY, I.Due_Date, GETDATE()) * @FinePerDay AS FineAmount
    FROM MEMBERS M
    JOIN ISSUES I ON M.M_ID = I.M_ID
    JOIN BOOKS B ON I.B_ID = B.B_ID
    WHERE M.M_ID = @MemberID
      AND I.Due_Date < GETDATE() 
      AND I.Return_Date IS NULL;
END;

EXEC CalculateMemberFine @MemberID = 'M20';

--6
CREATE PROCEDURE ListBooksIssuedBetweenDates
    @StartDate DATE,
    @EndDate DATE
AS
BEGIN
    SELECT B.B_ID, B.Title, B.Author, I.Issue_Date, I.Due_Date, M.Name AS MemberName
    FROM ISSUES I
    JOIN BOOKS B ON I.B_ID = B.B_ID
    JOIN MEMBERS M ON I.M_ID = M.M_ID
    WHERE I.Issue_Date BETWEEN @StartDate AND @EndDate;
END;

EXEC ListBooksIssuedBetweenDates @StartDate = '2024-01-01', @EndDate = '2024-05-01';


--7
CREATE PROCEDURE CountBooksByCategory
AS
BEGIN
    SELECT Category, COUNT(*) AS TotalBooks
    FROM BOOKS
    GROUP BY Category;
END;

EXEC CountBooksByCategory;

--8
CREATE PROCEDURE ListBooksNeverIssued
AS
BEGIN
    SELECT B.B_ID, B.Title, B.Author, B.Category
    FROM BOOKS B
    LEFT JOIN ISSUES I ON B.B_ID = I.B_ID
    WHERE I.B_ID IS NULL;
END;

EXEC ListBooksNeverIssued;

--9
CREATE PROCEDURE ListBooksWithLeastCopiesAvailable
AS
BEGIN
    SELECT B.B_ID, B.Title, B.Author, B.Category, B.Copies
    FROM BOOKS B
    ORDER BY B.Copies ASC;
END;

EXEC ListBooksWithLeastCopiesAvailable;

--10
CREATE PROCEDURE ListLateReturns
AS
BEGIN
    SELECT 
        M.M_ID AS MemberID,
        M.Name AS MemberName,
        M.Email AS MemberEmail,
        M.Phone_Number AS MemberPhoneNumber,
        B.B_ID AS BookID,
        B.Title AS BookTitle,
        I.Issue_Date AS IssueDate,
        I.Due_Date AS DueDate,
        I.Return_Date AS ReturnDate,
        DATEDIFF(DAY, I.Due_Date, I.Return_Date) AS DaysLate
    FROM MEMBERS M
    JOIN ISSUES I ON M.M_ID = I.M_ID
    JOIN BOOKS B ON I.B_ID = B.B_ID
    WHERE I.Return_Date IS NOT NULL AND I.Return_Date > I.Due_Date
    ORDER BY M.M_ID, I.Return_Date;
END;

EXEC ListLateReturns;
--Complex Views


--1
CREATE VIEW MemberFines AS
SELECT 
    M.M_ID AS MemberID,
    M.Name AS MemberName,
    M.Email AS MemberEmail,
    M.Phone_Number AS MemberPhoneNumber,
    B.B_ID AS BookID,
    B.Title AS BookTitle,
    I.Issue_Date AS IssueDate,
    I.Due_Date AS DueDate,
    DATEDIFF(DAY, I.Due_Date, GETDATE()) AS DaysOverdue,
    DATEDIFF(DAY, I.Due_Date, GETDATE()) * 200 AS FineAmount 
FROM 
    MEMBERS M
JOIN 
    ISSUES I ON M.M_ID = I.M_ID
JOIN 
    BOOKS B ON I.B_ID = B.B_ID
WHERE 
    I.Due_Date < GETDATE() 
    AND I.Return_Date IS NULL;


SELECT * FROM MemberFines;

--2
CREATE VIEW BooksCopiesView AS
SELECT 
    B.B_ID AS BookID,
    B.Title,
    B.Author,
    B.Category,
    B.Year_Of_Publication AS PublicationYear,
    P.Name AS PublisherName,
    B.Copies AS CopiesAvailable,
    COUNT(I.T_ID) AS CopiesIssued,
    (B.Copies + COUNT(I.T_ID)) AS TotalCopies
FROM 
    BOOKS B
LEFT JOIN 
    PUBLISHERS P ON B.P_ID = P.P_ID
LEFT JOIN 
    ISSUES I ON B.B_ID = I.B_ID AND I.Return_Date IS NULL
GROUP BY 
    B.B_ID, 
    B.Title, 
    B.Author, 
    B.Category, 
    B.Year_Of_Publication, 
    P.Name, 
    B.Copies;

SELECT * FROM BooksCopiesView;

--3
CREATE VIEW MembersWithOverdueBooksView AS
SELECT DISTINCT 
    M.M_ID AS MemberID, 
    M.Name AS MemberName, 
    M.Email AS MemberEmail, 
    M.Phone_Number AS MemberPhoneNumber
FROM 
    MEMBERS M
JOIN 
    ISSUES I ON M.M_ID = I.M_ID
WHERE 
    I.Due_Date < GETDATE() 
    AND I.Return_Date IS NULL;


SELECT * FROM MembersWithOverdueBooksView;

--Procedure for Inserting/Deleting/Updating in ISSUES Table

--Inserting
CREATE PROCEDURE InsertIssue
    @TransactionID VARCHAR(5),
    @IssueDate DATE,
    @DueDate DATE,
    @ReturnDate DATE,
    @BookID VARCHAR(5),
    @MemberID VARCHAR(5),
    @StaffID VARCHAR(5)
AS
BEGIN
    INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, B_ID, M_ID, S_ID)
    VALUES (@TransactionID, @IssueDate, @DueDate, @ReturnDate, @BookID, @MemberID, @StaffID);
END;



EXEC InsertIssue 
    @TransactionID = 'T296',
    @IssueDate = '2024-05-01',
    @DueDate = '2024-05-15',
    @ReturnDate = NULL,
    @BookID = 'B01',
    @MemberID = 'M01',
    @StaffID = 'S01';

--Updating
CREATE PROCEDURE UpdateIssue
    @TransactionID VARCHAR(5),
    @NewIssueDate DATE,
    @NewDueDate DATE,
    @NewReturnDate DATE,
    @NewBookID VARCHAR(5),
    @NewMemberID VARCHAR(5),
    @NewStaffID VARCHAR(5)
AS
BEGIN
    UPDATE ISSUES
    SET Issue_Date = @NewIssueDate,
        Due_Date = @NewDueDate,
        Return_Date = @NewReturnDate,
        B_ID = @NewBookID,
        M_ID = @NewMemberID,
        S_ID = @NewStaffID
    WHERE T_ID = @TransactionID;
END;


EXEC UpdateIssue 
    @TransactionID = 'T01',
    @NewIssueDate = '2024-05-02',
    @NewDueDate = '2024-05-16',
    @NewReturnDate = '2024-05-10',
    @NewBookID = 'B02',
    @NewMemberID = 'M02',
    @NewStaffID = 'S02';


--Deleting
CREATE PROCEDURE DeleteIssue
    @TransactionID VARCHAR(5)
AS
BEGIN
    DELETE FROM ISSUES
    WHERE T_ID = @TransactionID;
END;

-- Example execution
EXEC DeleteIssue 
    @TransactionID = 'T01';



--TRIGGERS

CREATE TRIGGER UpdateBookCopiesOnIssue
ON ISSUES
AFTER INSERT
AS
BEGIN
    UPDATE BOOKS
    SET Copies = Copies - 1
    FROM BOOKS b
    JOIN inserted i ON b.B_ID = i.B_ID;
END;

-- Before insertion, check the current number of copies
SELECT B_ID, Copies FROM BOOKS WHERE B_ID = 'B15';

INSERT INTO ISSUES (T_ID, Issue_Date, Due_Date, Return_Date, B_ID, M_ID, S_ID)
VALUES ('T300', '2024-05-30', '2024-06-30', NULL, 'B15', 'M15', 'S01');

SELECT B_ID, Copies FROM BOOKS WHERE B_ID = 'B15';


CREATE TRIGGER UpdateBookCopiesOnReturn
ON ISSUES
AFTER UPDATE
AS
BEGIN
    IF UPDATE(Return_Date)
    BEGIN
        UPDATE BOOKS
        SET Copies = Copies + 1
        FROM BOOKS b
        JOIN inserted i ON b.B_ID = i.B_ID
        JOIN deleted d ON i.T_ID = d.T_ID
        WHERE i.Return_Date IS NOT NULL AND d.Return_Date IS NULL;
    END
END;

UPDATE ISSUES
SET Return_Date = '2024-05-30'
WHERE T_ID = 'T300';

SELECT B_ID, Copies FROM BOOKS WHERE B_ID = 'B15';

select* from ISSUES
-- Issues History Table
CREATE TABLE ISSUES_HISTORY (
    H_ID INT IDENTITY(1,1) PRIMARY KEY,
    T_ID VARCHAR(5),
    Issue_Date DATE,
    Due_Date DATE,
    Return_Date DATE,
    B_ID VARCHAR(5),
    M_ID VARCHAR(5),
    S_ID VARCHAR(5),
    Change_Timestamp DATETIME DEFAULT GETDATE(),
    Operation_Type VARCHAR(10) -- 'UPDATE' or 'DELETE'
);

Select * from ISSUES_HISTORY;

-- Trigger for Update on ISSUES
CREATE TRIGGER trg_issues_update
ON ISSUES
FOR UPDATE
AS
BEGIN
    INSERT INTO ISSUES_HISTORY (T_ID, Issue_Date, Due_Date, Return_Date, B_ID, M_ID, S_ID, Operation_Type)
    SELECT T_ID, Issue_Date, Due_Date, Return_Date, B_ID, M_ID, S_ID, 'UPDATE'
    FROM DELETED;
END;


-- Trigger for Delete on ISSUES
CREATE TRIGGER trg_issues_delete
ON ISSUES
FOR DELETE
AS
BEGIN
    INSERT INTO ISSUES_HISTORY (T_ID, Issue_Date, Due_Date, Return_Date, B_ID, M_ID, S_ID, Operation_Type)
    SELECT T_ID, Issue_Date, Due_Date, Return_Date, B_ID, M_ID, S_ID, 'DELETE'
    FROM DELETED;
END;


--Non-Clustered Index 
CREATE NONCLUSTERED INDEX idx_members_email
ON MEMBERS (Email);

CREATE NONCLUSTERED INDEX idx_issues_member
ON ISSUES (M_ID);

