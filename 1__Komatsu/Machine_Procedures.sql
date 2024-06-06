USE dbTemsa
GO


----------------------- CREATE -----------------------  (UPDATED_V1)

--BEGIN TRANSACTION
--	DECLARE @TotalCount int,
--			@StatusCode smallint,
--			@ErrorCode varchar(21),
--			@ErrorDescription varchar(50),
--			@ErrorMessage varchar(70);

--	EXEC	Machine_GetAll
--			@Language = 'TR',
--			@PageNumber = 1,
--			@PageSize = 100,
--			@TotalCount = @TotalCount OUT,
--			@StatusCode = @StatusCode OUT,
--			@ErrorCode = @ErrorCode OUT,
--			@ErrorDescription = @ErrorDescription OUT,
--			@ErrorMessage = @ErrorMessage OUT
	

--	EXEC	Machine_Create
--			@Language = 'TR',  -- page language
--			@MainCategoryName = 'Ýþ Makineleri',
--			@SubCategoryName = 'Kaya Kamyonu',
--			@Model = 'MACHINE-4',
--			@BrandName = 'Komatsu3',
--			@Stock = 10,
--			@Year = 2001,
--			@HandStatus = 'Sýfýr',
--			@DescriptionInTR = 'Yeni PC210LC-11 kullaným kolaylýðý saðlayan yeni tip kýsa levyeleri, kýrýcý tesisatý, ýsýtmalý hava süspansiyonlu operatör koltuðu, 4 adet kamerasý ve kuþ bakýþý görüntüleme, kabin üstü çalýþma lambalarý ile operatör deneyimini en üst noktaya çýkarmýþtýr. Orijinal Komatsu motor ve komponentleri ile Japon mühendisliðinin mükemmel uyumu ile tanýþýn.',
--			@DescriptionInEN = 'This machine belong to komatsu.',
--			@ImageName = 'MACHINE-1.jpg',
--			@VideoName = 'MACHINE-mp4',
--			@PdfName = 'MACHINE-1.pdf'

--	EXEC	Machine_GetAll
--			@Language = 'EN',
--			@PageNumber = 1,
--			@PageSize = 100,
--			@TotalCount = @TotalCount out,
--			@StatusCode = @StatusCode out,
--			@ErrorCode = @ErrorCode out,
--			@ErrorDescription = @ErrorDescription out,
--			@ErrorMessage = @ErrorMessage out
--ROLLBACK
--GO



-------------------- DISPLAY ALL -----------------------  (UPDATED_V1)

--DECLARE @TotalCount int,
--		@StatusCode smallint,
--		@ErrorCode varchar(21),
--		@ErrorDescription varchar(50),
--		@ErrorMessage varchar(70);

--EXEC	Machine_GetAll
--		@Language = 'TR',
--		@PageNumber = 1,
--		@PageSize = 100,
--		@TotalCount = @TotalCount out,
--		@StatusCode = @StatusCode out,
--		@ErrorCode = @ErrorCode out,
--		@ErrorDescription = @ErrorDescription out,
--		@ErrorMessage = @ErrorMessage out

--SELECT  @StatusCode as StatusCode,
--		@ErrorDescription as ErrorDescription,
--		@ErrorMessage as ErrorMessage



-------------------- DISPLAY BY CONDITION -----------------------  (UPDATED_V1)

--DECLARE @TotalCount int,
--		@ErrorCode varchar(21),
--		@StatusCode smallint,
--		@ErrorDescription varchar(50),
--		@ErrorMessage varchar(71);

--EXEC	Machine_GetByCondition
--		@Language = 'TR',
--		@PageNumber = 1,
--		@PageSize = 10,
--		@MainCategoryName = 'Maden Makineleri',
--		@SubCategoryName = NULL,
--		@BrandName = NULL,
--		@Model = NULL,
--		@Stock = NULL,
--		@Rented = NULL,
--		@Sold = NULL,
--		@Year = NULL,
--		@HandStatus = NULL,
--		@TotalCount = @TotalCount out,
--		@StatusCode = @StatusCode out,
--		@ErrorCode = @ErrorCode out,
--		@ErrorDescription = @ErrorDescription out,
--		@ErrorMessage = @ErrorMessage out

--SELECT  @TotalCount AS 'TotalCount',
--		@StatusCode AS 'StatusCode',
--		@ErrorCode AS 'ErrorCode',
--		@ErrorDescription AS 'ErrorDescription',
--		@ErrorMessage AS 'ErrorMessage'



-------------------- DISPLAY ONE MACHINE -------------------- (UPDATED_V1)

--DECLARE @StatusCode smallint,
--		@ErrorCode varchar(21),
--		@ErrorDescription varchar(50),
--		@ErrorMessage varchar(70);


--EXEC	Machine_GetOneById
--		@Language = 'TR',
--		@MachineId = '3D48B316-8CAE-4C0E-9C8A-43FCC05A546F',
--		@ErrorCode = @ErrorCode OUT,
--		@StatusCode = @StatusCode OUT,
--		@ErrorDescription = @ErrorDescription OUT,
--		@ErrorMessage = @ErrorMessage OUT


--SELECT	@StatusCode AS StatusCode,
--		@ErrorCode AS ErrorCode,
--		@ErrorDescription AS ErrorDescription,
--		@ErrorMessage AS ErrorMessage



--------------------- UPDATE --------------------- (UPDATED_V1)

--BEGIN TRANSACTION
--	DECLARE @TotalCount int,
--			@StatusCode smallint,
--			@ErrorCode varchar(21),
--			@ErrorDescription varchar(50),
--			@ErrorMessage varchar(70);

--	EXEC	Machine_GetAll
--			@Language = 'TR',
--			@PageNumber = 1,
--			@PageSize = 100,
--			@TotalCount = @TotalCount out,
--			@StatusCode = @StatusCode out,
--			@ErrorCode = @ErrorCode out,
--			@ErrorDescription = @ErrorDescription out,
--			@ErrorMessage = @ErrorMessage out

--	EXEC	Machine_Update
--			@Language = 'TR',  -- page language
--			@OldMainCategoryName = 'Miar Makine',
--			@OldSubCategoryName = 'Miar Alt1',
--			@Id = '41F56ACE-A575-4CAD-91F6-AA5E30D67364',
--			@MainCategoryName = 'Son Deneme',
--			@SubCategoryName = 'Alt2',
--			@Model = NULL,
--			@BrandName = NULL,
--			@Stock = NULL,
--			@Rented = NULL,
--			@Sold = NULL,
--			@Year = NULL,
--			@HandStatus = NULL,
--			@DescriptionInTR = NULL,
--			@DescriptionInEN = NULL,
--			@ImageName = NULL,
--			@VideoName = NULL,
--			@PdfName = NULL

--	EXEC	Machine_GetAll
--			@Language = 'TR',
--			@PageNumber = 1,
--			@PageSize = 100,
--			@TotalCount = @TotalCount out,
--			@StatusCode = @StatusCode out,
--			@ErrorCode = @ErrorCode out,
--			@ErrorDescription = @ErrorDescription out,
--			@ErrorMessage = @ErrorMessage out
--ROLLBACK
--GO



--------------------- DELETE ---------------------  (UPDATED_V1)

--BEGIN TRANSACTION
--	DECLARE @TotalCount int;

--	EXEC	Machine_GetAll
--			@TotalCount out,
--			@Language = 'EN',
--			@PageNumber = 1,
--			@PageSize = 100

--	EXEC	Machine_GetAll
--			@TotalCount out,
--			@Language = 'TR',
--			@PageNumber = 1,
--			@PageSize = 100

--	-- when successful
--	EXEC	Machine_Delete
--			@Language = 'TR',
--			@MachineIdsInString = 'E488015C-F833-4DB9-8A40-72BBC4C510D4, 1517A424-0474-4382-8C40-492F7CAA6F72',
--			@TotalMachineIdCount = 2

--	-- when error
--	EXEC	Machine_Delete
--			@Language = 'TR',
--			@MachineIdsInString =	'E488015C-F833-4DB9-8A40-72BBC4C510D4, 1517A424-0474-4382-8C40-492F7CAA6F72, 40035B98-CB0D-4E14-AA5D-247C41011F52',
--			@TotalMachineIdCount = 3
			
	
--	EXEC	Machine_GetAll
--			@TotalCount out,
--			@Language = 'EN',
--			@PageNumber = 1,
--			@PageSize = 100

--	EXEC	Machine_GetAll
--			@TotalCount out,
--			@Language = 'TR',
--			@PageNumber = 1,
--			@PageSize = 100
--ROLLBACK



----------------- GET MAIN CATEGORY NAMES ---------------  ((UPDATED_V1))

--EXEC	Machine_GetMainCategoryNamesByLanguage
--		@Language = 'EN'

--EXEC	Machine_GetMainCategoryNamesByLanguage
--		@Language = 'TR'



----------------- GET ALL SUBCATEGORY NAMES OF A MAIN CATEGORY ---------------  (UPDATED_V1)

--EXEC	Machine_GetSubCategoryNamesOfMainCategoryByLanguage
--		@Language = 'TR',  -- it is my page language
--		@MainCategoryName = 'Ýþ Makineleri'

--EXEC	Machine_GetSubCategoryNamesOfMainCategoryByLanguage
--		@Language = 'EN',  -- it is my page language
--		@MainCategoryName = 'Work Machines'



----------------- GET ALL HANDSTATUS BY LANGUAGE ---------------  (UPDATED_V1)

--EXEC	Machine_GetAllHandStatusesByLanguage
--		@language = 'EN'

--EXEC	Machine_GetAllHandStatusesByLanguage
--		@language = 'TR'

	

------------------------ THROW ERROR ---------------------------  ((UPDATED_V1))

--BEGIN -- DISPLAY AS NORMAL
--	EXEC    ThrowError
--			@Language = 'TR', 
--			@ErrorCode = 'VE-M-Mo';

--	EXEC	ThrowError
--			@Language = 'EN', 
--			@ErrorCode = 'VE-M-Mo';

--	EXEC	ThrowError
--			@LanguageId = 2, 
--			@ErrorCode = 'VE-M-Mo';

--	EXEC	ThrowError 
--			@LanguageId = 1, 
--			@ErrorCode = 'VE-M-Mo';
--END


--BEGIN -- GET WITH OUTPUT 
--	DECLARE @StatusCode smallint,
--			@ErrorDescription varchar(50),
--			@ErrorMessage varchar(70);

--	EXEC    ThrowError
--			@Language = 'TR', 
--			@ErrorCode = 'VE-M-Mo',
--			@StatusCode = @StatusCode out,
--			@ErrorDescription = @ErrorDescription out,
--			@ErrorMessage = @ErrorMessage out;

--	SELECT	@StatusCode as StatusCode,
--			@ErrorDescription as ErrorDescription,
--			@ErrorMessage as ErrorMessage
--END



-------------------------- GET LANGUAGE ID -----------------------  ((UPDATED_V1))

--SELECT dbo.Language_GetLanguageId('TR') as LanguageId



----------------- GET CATEGORY IDS BY MAINCATEGORY -----------------  ((UPDATED_V1))

--SELECT * FROM dbo.Machine_GetCategoryIdsByMainCategory
--(
--	'TR',
--	'Ýþ Makineleri'
--)

--SELECT * FROM dbo.Machine_GetCategoryIdsByMainCategory
--(
--	'EN',
--	'Work Machines'
--)



----------------- GET CATEGORY IDS BY SUBCATEGORY -----------------  ((UPDATED_V1))

--SELECT * FROM dbo.Machine_GetCategoryIdsBySubCategory
--(
--	'TR',
--	'Dozerler'
--)

--SELECT * FROM dbo.Machine_GetCategoryIdsBySubCategory
--(
--	'EN',
--	'Bulldozers'
--)



------------------ GET ALL CATEGORY NAMES OF MACHINE ------------------  (UPDATED_V1)

--DECLARE @Language char(2) = (SELECT dbo.Language_GetLanguageId('EN')),
--		@MainCategoryName varchar(50),
--		@SubCategoryName varchar(50),
--		@Model varchar(50),
--	 	@IsErrorOccured bit;

--EXEC	Machine_GetCategoryNamesOfMachine
--		@LanguageId = @Language,
--		@MachineId = '3D48B316-8CAE-4C0E-9C8A-43FCC05A546F',
--		@MainCategoryName = @MainCategoryName OUT,
--		@SubCategoryName = @SubCategoryName OUT,
--		@Model = @Model OUT,
--		@IsErrorOccured = @IsErrorOccured OUT;


--SELECT	@MainCategoryName AS 'MainCategoryName' ,
--		@SubCategoryName AS 'SubCategoryName',
--		@Model AS 'Model';

--SELECT @IsErrorOccured AS 'IsErrorOccured';



----------------- SEPARATE FILES THAT NOT EXISTS ON TABLE -----------------  ((UPDATED_V1))

--DECLARE @ValuesNotExistsOnTableInString varchar(max);


--EXEC	Machine_SeparateTheValuesNotExistsOnTable
--		@ColumnName = 'PdfName',
--		@ValuesInString = 'MACHINE-11.pdf,MachineDetails.pdf,MACHINE-13.pdf,MACHINE-55653.pdf,MACHINE-66760.pdf,MACHINE-12.pdf',
--		@ValuesNotExistsOnTableInString = @ValuesNotExistsOnTableInString out


--SELECT @ValuesNotExistsOnTableInString AS 'ValuesNotExistsOnTable'

-----------------------------------------------------------------------------

--DECLARE @ValuesNotExistsOnTableInString varchar(max);

--EXEC	Machine_SeparateTheValuesNotExistsOnTable
--		@ColumnName = 'ImageName',
--		@ValuesInString = '2022-2023 (Ýstanbul).jpg',
--		@ValuesNotExistsOnTableInString = @ValuesNotExistsOnTableInString out


--SELECT @ValuesNotExistsOnTableInString AS 'ValuesNotExistsOnTable'
--GO


--UPDATE	Machines
--SET		IsDeleted = 0
--WHERE	Id IN	('DC466F22-3E9E-4126-970B-26918700ADA1',
--				'D4E3B9A3-BE84-4674-87D8-CB784B706F4A',
--				'87ED7189-E8DE-447F-8162-26C013EB6918',
--				'DC466F22-3E9E-4126-970B-26918700ADA1',
--				'C7EB18FA-F596-4125-B759-982A579E7514',
--				'E64B4F15-771E-4952-BB9D-F7F95675FD56',
--				'97BE391C-0B7B-413B-BCA9-935DC0D0ED46',
--				'3BDB0CA0-F38E-400A-BDD4-F8624801FB84',
--				'877466DA-08EA-46BD-AF7C-3D8709A2D7CE',
--				'4EF8F223-DD7E-42E7-A822-6A45F0FE4F87',
--				'D5815345-5925-4349-AB1F-180137B64B7B',
--				'41118510-FF75-40EA-A3E3-0BAA5769B053',
--				'201962F2-548C-432A-93BF-A4501B1EE3DB',
--				'90D0B750-9351-41C8-BC39-E5396DADCA49',
--				'2F9C2BA5-EB59-4001-8DEB-3A52B248D38A',
--				'1F13D0F3-092A-4745-9A3B-E6D055AAC052',
--				'39E08810-E203-4E6A-9285-8247224CA316',
--				'6D5594A2-AD53-4779-B8AF-C861596EF1F4',
--				'E4E2552B-1105-4C09-A848-2F99677B8A7E',
--				'9EF80EDC-8D42-4444-80BC-7EE84A99B0B6',
--				'9A53D777-CC60-444A-B9D2-1F0F80364EE5',
--				'FA8D0145-D3A8-4F66-8768-12FC8BB97CC9',
--				'0153AC9A-B558-4E62-95CE-728CAED9AC8A',
--				'7CF461C1-7FA0-422B-86FF-20CBA03568BC',
--				'843E4DEA-287C-4246-A348-9932FC890305')

--UPDATE	ViewCounter
--SET		Count = (SELECT COUNT(*) 
--				FROM	Machines m
--				WHERE	m.IsDeleted = 0)



------------------------ CHECK MACHINE WHETHER EXISTS ------------------------  (UPDATED_V1)

--SELECT	dbo.Func_Machine_IsMachineExistsById('DC466F22-3E9E-4126-970B-26918700ADA1') AS 'IsMachineExists'
--SELECT	dbo.Func_Machine_IsMachineExistsById('3D48B316-8CAE-4C0E-9C8A-43FCC05A546F') AS 'IsMachineExists'