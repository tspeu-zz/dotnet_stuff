create table ProductInterestCountryModifiers
(
    Id               int identity
        constraint PK_ProductInterestCountryModifiers
            primary key,
    CreationDate     datetime2 not null,
    ModificationDate datetime2 not null,
    IsDeleted        bit       not null,
    CountryCode      nvarchar(max),
    Value            real      not null,
    Around           real      not null,
    IsActive         bit       not null,
    [Order]          int       not null
)
go

INSERT INTO [db-tech-test-common].dbo.ProductInterestCountryModifiers (Id, CreationDate, ModificationDate, IsDeleted, CountryCode, Value, Around, IsActive, [Order]) VALUES (3, '2019-11-27 12:53:54.9733333', '2019-11-27 12:53:54.9733333', 0, 'ES', 0, 0, 1, 1);
INSERT INTO [db-tech-test-common].dbo.ProductInterestCountryModifiers (Id, CreationDate, ModificationDate, IsDeleted, CountryCode, Value, Around, IsActive, [Order]) VALUES (4, '2019-11-27 12:53:54.9733333', '2019-11-27 12:53:54.9733333', 0, 'AR', 0.16, 0, 1, 1);
INSERT INTO [db-tech-test-common].dbo.ProductInterestCountryModifiers (Id, CreationDate, ModificationDate, IsDeleted, CountryCode, Value, Around, IsActive, [Order]) VALUES (5, '2019-11-27 12:53:54.9733333', '2019-11-27 12:53:54.9733333', 0, 'CO', 0.12, 0, 1, 1);
INSERT INTO [db-tech-test-common].dbo.ProductInterestCountryModifiers (Id, CreationDate, ModificationDate, IsDeleted, CountryCode, Value, Around, IsActive, [Order]) VALUES (6, '2019-11-27 12:53:54.9733333', '2019-11-27 12:53:54.9733333', 0, 'MX', 0, 0, 1, 1);
INSERT INTO [db-tech-test-common].dbo.ProductInterestCountryModifiers (Id, CreationDate, ModificationDate, IsDeleted, CountryCode, Value, Around, IsActive, [Order]) VALUES (7, '2019-11-27 12:53:54.9733333', '2019-11-27 12:53:54.9733333', 0, 'PE', 0, 0, 1, 1);
INSERT INTO [db-tech-test-common].dbo.ProductInterestCountryModifiers (Id, CreationDate, ModificationDate, IsDeleted, CountryCode, Value, Around, IsActive, [Order]) VALUES (8, '2019-11-27 12:53:54.9733333', '2019-11-27 12:53:54.9733333', 0, 'BO', 0.12, 0, 1, 1);
INSERT INTO [db-tech-test-common].dbo.ProductInterestCountryModifiers (Id, CreationDate, ModificationDate, IsDeleted, CountryCode, Value, Around, IsActive, [Order]) VALUES (9, '2019-11-27 12:53:54.9733333', '2019-11-27 12:53:54.9733333', 0, 'BR', 0.12, 0, 1, 1);
INSERT INTO [db-tech-test-common].dbo.ProductInterestCountryModifiers (Id, CreationDate, ModificationDate, IsDeleted, CountryCode, Value, Around, IsActive, [Order]) VALUES (10, '2019-11-27 12:53:54.9733333', '2019-11-27 12:53:54.9733333', 0, 'CR', 0.12, 0, 1, 1);
INSERT INTO [db-tech-test-common].dbo.ProductInterestCountryModifiers (Id, CreationDate, ModificationDate, IsDeleted, CountryCode, Value, Around, IsActive, [Order]) VALUES (11, '2019-11-27 12:53:54.9733333', '2019-11-27 12:53:54.9733333', 0, 'CU', 0.12, 0, 1, 1);
INSERT INTO [db-tech-test-common].dbo.ProductInterestCountryModifiers (Id, CreationDate, ModificationDate, IsDeleted, CountryCode, Value, Around, IsActive, [Order]) VALUES (12, '2019-11-27 12:53:54.9733333', '2019-11-27 12:53:54.9733333', 0, 'EC', 0.15, 0, 1, 1);
INSERT INTO [db-tech-test-common].dbo.ProductInterestCountryModifiers (Id, CreationDate, ModificationDate, IsDeleted, CountryCode, Value, Around, IsActive, [Order]) VALUES (13, '2019-11-27 12:53:54.9733333', '2019-11-27 12:53:54.9733333', 0, 'US', 0.05, 0, 1, 1);
INSERT INTO [db-tech-test-common].dbo.ProductInterestCountryModifiers (Id, CreationDate, ModificationDate, IsDeleted, CountryCode, Value, Around, IsActive, [Order]) VALUES (14, '2019-11-27 12:53:54.9733333', '2019-11-27 12:53:54.9733333', 0, 'GT', 0.15, 0, 1, 1);
INSERT INTO [db-tech-test-common].dbo.ProductInterestCountryModifiers (Id, CreationDate, ModificationDate, IsDeleted, CountryCode, Value, Around, IsActive, [Order]) VALUES (15, '2019-11-27 12:53:54.9733333', '2019-11-27 12:53:54.9733333', 0, 'GQ', 0.15, 0, 1, 1);
INSERT INTO [db-tech-test-common].dbo.ProductInterestCountryModifiers (Id, CreationDate, ModificationDate, IsDeleted, CountryCode, Value, Around, IsActive, [Order]) VALUES (16, '2019-11-27 12:53:54.9733333', '2019-11-27 12:53:54.9733333', 0, 'HN', 0.15, 0, 1, 1);
INSERT INTO [db-tech-test-common].dbo.ProductInterestCountryModifiers (Id, CreationDate, ModificationDate, IsDeleted, CountryCode, Value, Around, IsActive, [Order]) VALUES (17, '2019-11-27 12:53:54.9733333', '2019-11-27 12:53:54.9733333', 0, 'NI', 0.15, 0, 1, 1);
INSERT INTO [db-tech-test-common].dbo.ProductInterestCountryModifiers (Id, CreationDate, ModificationDate, IsDeleted, CountryCode, Value, Around, IsActive, [Order]) VALUES (18, '2019-11-27 12:53:54.9733333', '2019-11-27 12:53:54.9733333', 0, 'PA', 0.15, 0, 1, 1);
INSERT INTO [db-tech-test-common].dbo.ProductInterestCountryModifiers (Id, CreationDate, ModificationDate, IsDeleted, CountryCode, Value, Around, IsActive, [Order]) VALUES (19, '2019-11-27 12:53:54.9733333', '2019-11-27 12:53:54.9733333', 0, 'PY', 0.15, 0, 1, 1);
INSERT INTO [db-tech-test-common].dbo.ProductInterestCountryModifiers (Id, CreationDate, ModificationDate, IsDeleted, CountryCode, Value, Around, IsActive, [Order]) VALUES (20, '2019-11-27 12:53:54.9733333', '2019-11-27 12:53:54.9733333', 0, 'PT', 0.15, 0, 1, 1);
INSERT INTO [db-tech-test-common].dbo.ProductInterestCountryModifiers (Id, CreationDate, ModificationDate, IsDeleted, CountryCode, Value, Around, IsActive, [Order]) VALUES (21, '2019-11-27 12:53:54.9733333', '2019-11-27 12:53:54.9733333', 0, 'PR', 0.15, 0, 1, 1);
INSERT INTO [db-tech-test-common].dbo.ProductInterestCountryModifiers (Id, CreationDate, ModificationDate, IsDeleted, CountryCode, Value, Around, IsActive, [Order]) VALUES (22, '2019-11-27 12:53:54.9733333', '2019-11-27 12:53:54.9733333', 0, 'DO', 0.15, 0, 1, 1);
INSERT INTO [db-tech-test-common].dbo.ProductInterestCountryModifiers (Id, CreationDate, ModificationDate, IsDeleted, CountryCode, Value, Around, IsActive, [Order]) VALUES (23, '2019-11-27 12:53:54.9733333', '2019-11-27 12:53:54.9733333', 0, 'SV', 0.15, 0, 1, 1);
INSERT INTO [db-tech-test-common].dbo.ProductInterestCountryModifiers (Id, CreationDate, ModificationDate, IsDeleted, CountryCode, Value, Around, IsActive, [Order]) VALUES (24, '2019-11-27 12:53:54.9733333', '2019-11-27 12:53:54.9733333', 0, 'UY', 0.15, 0, 1, 1);
INSERT INTO [db-tech-test-common].dbo.ProductInterestCountryModifiers (Id, CreationDate, ModificationDate, IsDeleted, CountryCode, Value, Around, IsActive, [Order]) VALUES (25, '2019-11-27 12:53:54.9733333', '2019-11-27 12:53:54.9733333', 0, 'VE', 0.15, 0, 1, 1);