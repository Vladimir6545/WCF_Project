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
('Oven', 'Овны — резкие, вспыльчивые, импульсивные люди. У них сильный и властный характер,
 и они стремятся к лидерству, во всем хотят быть первыми.', 'oven.jpg')
go
INSERT INTO Znaki(Name, Discription, [image])
VALUES
('Telec', 'Тельцы ни на что не реагируют спонтанно, они солидны, несуетливы, их трудно вывести из равновесия. У них спокойные,
 размеренные, уверенные движения, неторопливая речь, крепкое телосложение, и все это создает впечатление о них как о сильных и
 волевых людях.', 'telec.jpg')
go
INSERT INTO Znaki(Name, Discription, [image])
VALUES
('Bliznec', 'Описывать особенности Близнецов нелегко, так как они постоянно меняются, находятся в непрерывном движении. 
В их переменчивой натуре всегда присутствуют как бы два человека.', 'bliznec.jpg')
go
INSERT INTO Znaki(Name, Discription, [image])
VALUES
('Rak', 'Pак и Рыбы, это загадочные люди, часто малопонятные для других. На характер Рака большое влияние оказывает Луна,
 наделив их тонкой, чувствительной, легковозбудимой, уязвимой нервной системой, богатой интуицией, эмоциональностью,
  романтичностью.', 'rak.jpg')
go
INSERT INTO Znaki(Name, Discription, [image])
VALUES
('Lev', 'Львы — люди необычайной жизненной силы и желания жить. Они общительны, жизнерадостны, веселы, всегда в центре
 внимания и распространяют свою власть на окружающих щедро и охотно.', 'lev.jpg')
go
INSERT INTO Znaki(Name, Discription, [image])
VALUES
('Deva', 'Родившиеся под знаком Девы благоразумны, рассудительны, экономны, правдивы, пунктуальны,
 с логичным и практичным умом.', 'deva.jpg')
go
INSERT INTO Znaki(Name, Discription, [image])
VALUES
('Vesi', 'Душа знака Зодиака Весы состоит из двух противоречащих друг другу начал. Сомнения и нерешительность постоянно
 одолевают Весы, что ведет к внутренней борьбе.', 'vesi.jpg')
go
INSERT INTO Znaki(Name, Discription, [image])
VALUES
('Scorpion', 'Люди знака Зодиака Скорпион не знают страха и преград, мужественные и упорные, умеют стойко переносить невзгоды,
 чрезвычайно выносливы и способны подниматься после ударов судьбы.', 'scorpion.jpg')
go
INSERT INTO Znaki(Name, Discription, [image])
VALUES
('Strelec', 'Стрельцы — динамичные, полные оптимизма, целеустремленные люди. Движения их быстры, энергичны, размашисты,
 отчего часто неуклюжи. Выражение лица — открытое, приветливое.', 'strelec.jpg')
go
INSERT INTO Znaki(Name, Discription, [image])
VALUES
('Kozerog', 'Козероги — это очень серьезные, практичные, проворные и упрямые в достижении своей цели,
 стремящиеся к неминуемой победе люди.', 'kozerog.jpg')
go
INSERT INTO Znaki(Name, Discription, [image])
VALUES
('Vodoley', 'Характер Водолеев неоднозначен. Сатурн делает их меланхоликами, предающимися грустным воспоминаниям,
 а Уран толкает их к бунтарству, к разрушению старых традиций.', 'vodoley.jpg')
go
INSERT INTO Znaki(Name, Discription, [image])
VALUES
('Ruba', 'Характер Рыб загадочный, женственный. У них прекрасная память, тонкая интуиция, способность предчувствовать события.', 'ruba.jpg')
go
select * from Znaki
--drop table Znaki