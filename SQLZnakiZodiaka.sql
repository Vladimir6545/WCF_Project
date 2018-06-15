use master
go
create database ZnakiZodiaka
go
use ZnakiZodiaka
go
create table Znaki(
[id] int primary key identity,
[Name] nvarchar(20) not null,
[Discription] nvarchar(500) not null,
[image] nvarchar(20) not null
)
go
INSERT INTO Znaki(Name, Discription, [image])
VALUES
('Oven', '���� � ������, �����������, ������������ ����. � ��� ������� � �������� ��������,
 � ��� ��������� � ���������, �� ���� ����� ���� �������.', 'oven.jpg')
go
INSERT INTO Znaki(Name, Discription, [image])
VALUES
('Telec', '������ �� �� ��� �� ��������� ���������, ��� �������, ����������, �� ������ ������� �� ����������. � ��� ���������,
 �����������, ��������� ��������, ������������ ����, ������� ������������, � ��� ��� ������� ����������� � ��� ��� � ������� �
 ������� �����.', 'telec.jpg')
go
INSERT INTO Znaki(Name, Discription, [image])
VALUES
('Bliznec', '��������� ����������� ��������� �������, ��� ��� ��� ��������� ��������, ��������� � ����������� ��������. 
� �� ������������ ������ ������ ������������ ��� �� ��� ��������.', 'bliznec.jpg')
go
INSERT INTO Znaki(Name, Discription, [image])
VALUES
('Rak', 'P�� � ����, ��� ���������� ����, ����� ������������ ��� ������. �� �������� ���� ������� ������� ��������� ����,
 ������� �� ������, ��������������, ���������������, �������� ������� ��������, ������� ���������, ����������������,
  ��������������.', 'rak.jpg')
go
INSERT INTO Znaki(Name, Discription, [image])
VALUES
('Lev', '���� � ���� ����������� ��������� ���� � ������� ����. ��� ����������, �������������, ������, ������ � ������
 �������� � �������������� ���� ������ �� ���������� ����� � ������.', 'lev.jpg')
go
INSERT INTO Znaki(Name, Discription, [image])
VALUES
('Deva', '���������� ��� ������ ���� ������������, �������������, ��������, ��������, �����������,
 � �������� � ���������� ����.', 'deva.jpg')
go
INSERT INTO Znaki(Name, Discription, [image])
VALUES
('Vesi', '���� ����� ������� ���� ������� �� ���� �������������� ���� ����� �����. �������� � ��������������� ���������
 ��������� ����, ��� ����� � ���������� ������.', 'vesi.jpg')
go
INSERT INTO Znaki(Name, Discription, [image])
VALUES
('Scorpion', '���� ����� ������� �������� �� ����� ������ � �������, ������������ � �������, ����� ������ ���������� ��������,
 ����������� ��������� � �������� ����������� ����� ������ ������.', 'scorpion.jpg')
go
INSERT INTO Znaki(Name, Discription, [image])
VALUES
('Strelec', '�������� � ����������, ������ ���������, ���������������� ����. �������� �� ������, ���������, ����������,
 ������ ����� ��������. ��������� ���� � ��������, �����������.', 'strelec.jpg')
go
INSERT INTO Znaki(Name, Discription, [image])
VALUES
('Kozerog', '�������� � ��� ����� ���������, ����������, ��������� � ������� � ���������� ����� ����,
 ����������� � ���������� ������ ����.', 'kozerog.jpg')
go
INSERT INTO Znaki(Name, Discription, [image])
VALUES
('Vodoley', '�������� �������� ������������. ������ ������ �� �������������, ������������ �������� �������������,
 � ���� ������� �� � ����������, � ���������� ������ ��������.', 'vodoley.jpg')
go
INSERT INTO Znaki(Name, Discription, [image])
VALUES
('Ruba', '�������� ��� ����������, �����������. � ��� ���������� ������, ������ ��������, ����������� ��������������� �������.', 'ruba.jpg')
go
select * from Znaki
--drop table Znaki