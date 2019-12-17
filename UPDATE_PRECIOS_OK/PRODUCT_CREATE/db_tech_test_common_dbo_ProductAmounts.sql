create table ProductAmounts
(
    Id               int identity
        constraint PK_ProductAmounts
            primary key,
    CreationDate     datetime2 not null,
    ModificationDate datetime2 not null,
    IsDeleted        bit       not null,
    CategoryUrl      nvarchar(max),
    Amount           real      not null,
    IsActive         bit       not null,
    [Order]          int       not null
)
go

INSERT INTO [db-tech-test-common].dbo.ProductAmounts (Id, CreationDate, ModificationDate, IsDeleted, CategoryUrl, Amount, IsActive, [Order]) VALUES (1, '2019-11-26 15:23:43.3900000', '2019-11-26 15:23:43.3900000', 0, 'grado', 1450, 1, 1);
INSERT INTO [db-tech-test-common].dbo.ProductAmounts (Id, CreationDate, ModificationDate, IsDeleted, CategoryUrl, Amount, IsActive, [Order]) VALUES (2, '2019-11-26 15:23:43.3900000', '2019-11-26 15:23:43.3900000', 0, 'master-universitario', 3900, 1, 1);
INSERT INTO [db-tech-test-common].dbo.ProductAmounts (Id, CreationDate, ModificationDate, IsDeleted, CategoryUrl, Amount, IsActive, [Order]) VALUES (3, '2019-11-26 15:23:43.3900000', '2019-11-26 15:23:43.3900000', 0, 'master', 3900, 1, 1);
INSERT INTO [db-tech-test-common].dbo.ProductAmounts (Id, CreationDate, ModificationDate, IsDeleted, CategoryUrl, Amount, IsActive, [Order]) VALUES (4, '2019-11-26 15:23:43.3900000', '2019-11-26 15:23:43.3900000', 0, 'experto', 1750, 1, 1);
INSERT INTO [db-tech-test-common].dbo.ProductAmounts (Id, CreationDate, ModificationDate, IsDeleted, CategoryUrl, Amount, IsActive, [Order]) VALUES (5, '2019-11-26 15:23:43.3900000', '2019-11-26 15:23:43.3900000', 0, 'curso', 65, 1, 1);
INSERT INTO [db-tech-test-common].dbo.ProductAmounts (Id, CreationDate, ModificationDate, IsDeleted, CategoryUrl, Amount, IsActive, [Order]) VALUES (6, '2019-11-26 15:23:43.3900000', '2019-11-26 15:23:43.3900000', 0, 'oposiciones', 790, 1, 1);
INSERT INTO [db-tech-test-common].dbo.ProductAmounts (Id, CreationDate, ModificationDate, IsDeleted, CategoryUrl, Amount, IsActive, [Order]) VALUES (7, '2019-11-26 15:23:43.3900000', '2019-11-26 15:23:43.3900000', 0, 'Clases en directo', 940, 1, 1);
INSERT INTO [db-tech-test-common].dbo.ProductAmounts (Id, CreationDate, ModificationDate, IsDeleted, CategoryUrl, Amount, IsActive, [Order]) VALUES (8, '2019-11-26 15:23:43.3900000', '2019-11-26 15:23:43.3900000', 0, 'curso-idiomas', 390, 1, 1);
INSERT INTO [db-tech-test-common].dbo.ProductAmounts (Id, CreationDate, ModificationDate, IsDeleted, CategoryUrl, Amount, IsActive, [Order]) VALUES (9, '2019-11-26 15:23:43.3900000', '2019-11-26 15:23:43.3900000', 0, 'curso-idiomas', 490, 1, 1);
INSERT INTO [db-tech-test-common].dbo.ProductAmounts (Id, CreationDate, ModificationDate, IsDeleted, CategoryUrl, Amount, IsActive, [Order]) VALUES (10, '2019-11-26 15:23:43.3900000', '2019-11-26 15:23:43.3900000', 0, 'Examen Oficial', 210, 1, 1);
INSERT INTO [db-tech-test-common].dbo.ProductAmounts (Id, CreationDate, ModificationDate, IsDeleted, CategoryUrl, Amount, IsActive, [Order]) VALUES (11, '2019-11-26 15:23:43.3900000', '2019-11-26 15:23:43.3900000', 0, 'Evaluación Oficial', 210, 1, 1);
INSERT INTO [db-tech-test-common].dbo.ProductAmounts (Id, CreationDate, ModificationDate, IsDeleted, CategoryUrl, Amount, IsActive, [Order]) VALUES (12, '2019-11-26 15:23:43.3900000', '2019-11-26 15:23:43.3900000', 0, 'CFC', 99, 1, 1);