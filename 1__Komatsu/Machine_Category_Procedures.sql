--USE dbTemsa
--GO

--SELECT * FROM Machines_Categories_BaseMainCategories
--SELECT * FROM Machines_Categories_BaseSubCategories
--SELECT * FROM Machines_Categories
--SELECT * FROM Machines_Categories_MainCategoriesByLanguages
--SELECT * FROM Machines_Categories_SubCategoriesByLanguages
--GO



----------------------- ADD MAIN CATEGORY AND SUBCATEGORIES -----------------------

--BEGIN TRANSACTION
--	SELECT * FROM Machines_Categories_BaseMainCategories
--	SELECT * FROM Machines_Categories_BaseSubCategories
--	SELECT * FROM Machines_Categories
--	SELECT * FROM Machines_Categories_MainCategoriesByLanguages
--	SELECT * FROM Machines_Categories_SubCategoriesByLanguages

	
--	DECLARE @StatusCode int,
--			@ErrorCode varchar(max),
--			@ErrorDescription varchar(max),
--			@ErrorMessage varchar(max);

--	EXEC	Machine_Category_AddMainCategory
--			@Language = 'TR',
--			@MainCategoryInEN = 'Vehicles',
--			@MainCategoryInTR = 'Araçlar'
--			@StatusCode = @StatusCode OUT,
--			@ErrorCode = @ErrorCode OUT,
--			@ErrorDescription = @ErrorDescription OUT,
--			@ErrorMessage = @ErrorMessage OUT;

--	SELECT	@StatusCode 'StatusCode',
--			@ErrorCode 'ErrorCode',
--			@ErrorDescription 'ErrorDescription' ,
--			@ErrorMessage 'ErrorMessage';


--	SELECT * FROM Machines_Categories_BaseMainCategories
--	SELECT * FROM Machines_Categories_BaseSubCategories
--	SELECT * FROM Machines_Categories
--	SELECT * FROM Machines_Categories_MainCategoriesByLanguages
--	SELECT * FROM Machines_Categories_SubCategoriesByLanguages
--ROLLBACK
--GO



----------------------- ADD NEW SUBCATEGORIES TO MAINCATEGORY -----------------------

--BEGIN TRANSACTION
--	SELECT * FROM Machines_Categories_BaseMainCategories
--	SELECT * FROM Machines_Categories_BaseSubCategories
--	SELECT * FROM Machines_Categories
--	SELECT * FROM Machines_Categories_MainCategoriesByLanguages
--	SELECT * FROM Machines_Categories_SubCategoriesByLanguages

	
--	DECLARE @StatusCode int,
--			@ErrorCode varchar(max),
--			@ErrorDescription varchar(max),
--			@ErrorMessage varchar(max);

--	EXEC	Machine_Category_AddSubCategories
--			@Language = 'TR',
--			@MainCategoryInEN = 'Work Machines',
--			@SubCategoriesInEN = 'Car,Truck,Ship,Plane',
--			@SubCategoriesInTR = 'Araba,Kamyon,Gemi,Uçak',
--			@SplitChar = ',',
--			@StatusCode = @StatusCode OUT,
--			@ErrorCode = @ErrorCode OUT,
--			@ErrorDescription = @ErrorDescription OUT,
--			@ErrorMessage = @ErrorMessage OUT;

--	SELECT	@StatusCode 'StatusCode',
--			@ErrorCode 'ErrorCode',
--			@ErrorDescription 'ErrorDescription' ,
--			@ErrorMessage 'ErrorMessage';


--	SELECT * FROM Machines_Categories_BaseMainCategories
--	SELECT * FROM Machines_Categories_BaseSubCategories
--	SELECT * FROM Machines_Categories
--	SELECT * FROM Machines_Categories_MainCategoriesByLanguages
--	SELECT * FROM Machines_Categories_SubCategoriesByLanguages
--ROLLBACK
--GO



----------------------- ADD MAIN CATEGORY AND SUBCATEGORIES -----------------------

--BEGIN TRANSACTION
	--SELECT * FROM Machines_Categories_BaseMainCategories
	--SELECT * FROM Machines_Categories_BaseSubCategories
	--SELECT * FROM Machines_Categories
	--SELECT * FROM Machines_Categories_MainCategoriesByLanguages
	--SELECT * FROM Machines_Categories_SubCategoriesByLanguages

	
--	DECLARE @StatusCode int,
--			@ErrorCode varchar(max),
--			@ErrorDescription varchar(max),
--			@ErrorMessage varchar(max);

--	EXEC	Machine_Category_AddMainAndSubCategories
--			@Language = 'TR',
--			@MainCategoryInEN = 'Vehicles',
--			@MainCategoryInTR = 'Araçlar',
--			@SubCategoriesInEN = 'Car,Truck,Ship,Plane',
--			@SubCategoriesInTR = 'Araba,Kamyon,Gemi,Uçak',
--			@SplitChar = ',',
--			@StatusCode = @StatusCode OUT,
--			@ErrorCode = @ErrorCode OUT,
--			@ErrorDescription = @ErrorDescription OUT,
--			@ErrorMessage = @ErrorMessage OUT;

--	SELECT	@StatusCode 'StatusCode',
--			@ErrorCode 'ErrorCode',
--			@ErrorDescription 'ErrorDescription' ,
--			@ErrorMessage 'ErrorMessage';


--	SELECT * FROM Machines_Categories_BaseMainCategories
--	SELECT * FROM Machines_Categories_BaseSubCategories
--	SELECT * FROM Machines_Categories
--	SELECT * FROM Machines_Categories_MainCategoriesByLanguages
--	SELECT * FROM Machines_Categories_SubCategoriesByLanguages
--ROLLBACK
--GO



----------------------- DISPLAY ALL MAIN CATEGORY AND SUBCATEGORIES -----------------------

--EXEC Machine_Category_DisplayAllMainAndSubcategories;
--GO



------------------------ UPDATE MAIN CATEGORY BY LANGUAGES ------------------------

--BEGIN TRANSACTION
--	SELECT * FROM Machines_Categories_BaseMainCategories
--	SELECT * FROM Machines_Categories_BaseSubCategories
--	SELECT * FROM Machines_Categories
--	SELECT * FROM Machines_Categories_MainCategoriesByLanguages
--	SELECT * FROM Machines_Categories_SubCategoriesByLanguages

	
--	DECLARE @StatusCode int,
--			@ErrorCode varchar(max),
--			@ErrorDescription varchar(max),
--			@ErrorMessage varchar(max);

--	EXEC	Machine_Category_UpdateMainCategory
--			@Language = 'TR',  -- page language
--			@OldMainCategoryNameInEN = 'Work Machines',
--			@NewMainCategoryNameInEN = 'Book112',
--			@NewMainCategoryNameInTR = 'Kitap112',
--			@StatusCode = @StatusCode OUT,
--			@ErrorCode = @ErrorCode OUT,
--			@ErrorDescription = @ErrorDescription OUT,
--			@ErrorMessage = @ErrorMessage OUT;

--	SELECT	@StatusCode 'StatusCode',
--			@ErrorCode 'ErrorCode',
--			@ErrorDescription 'ErrorDescription' ,
--			@ErrorMessage 'ErrorMessage';


--	SELECT * FROM Machines_Categories_BaseMainCategories
--	SELECT * FROM Machines_Categories_BaseSubCategories
--	SELECT * FROM Machines_Categories
--	SELECT * FROM Machines_Categories_MainCategoriesByLanguages
--	SELECT * FROM Machines_Categories_SubCategoriesByLanguages
--ROLLBACK
--GO



------------------------ UPDATE SUBCATEGORIES BY LANGUAGES ------------------------

--BEGIN TRANSACTION
--	SELECT * FROM Machines_Categories_BaseMainCategories
--	SELECT * FROM Machines_Categories_BaseSubCategories
--	SELECT * FROM Machines_Categories
--	SELECT * FROM Machines_Categories_MainCategoriesByLanguages
--	SELECT * FROM Machines_Categories_SubCategoriesByLanguages

	
--	DECLARE @StatusCode int,
--			@ErrorCode varchar(max),
--			@ErrorDescription varchar(max),
--			@ErrorMessage varchar(max);

--	EXEC	Machine_Category_UpdateSubcategories
--			@Language = 'TR',  -- not using now
--			@OldMainCategoryInEN = 'Work Machines',  -- required
--			@OldSubCategoriesInEN = 'Crawler Excavators,Wheel Excavators,Graders,Bulldozers,Wheel Loaders,Rock Truck',  -- required
--			@OldSubCategoriesInTR = 'Paletli Ekskavatörler,Lastikli Ekskavatörler,Greyderler,Dozerler,Lastikli Yükleyiciler,Kaya Kamyonu',
--			@NewSubCategoriesInEN = NULL, --'Crawler Excavators,Wheel Excavators22,Graders,Bulldozers,Wheel Loaders22,Rock Truck22',
--			@NewSubCategoriesInTR = 'Paletli Ekskavatörler,Lastikli Ekskavatörler11,Greyderler,Dozerler11,Lastikli Yükleyiciler11,Kaya Kamyonu',
--			@SplitChar = ',',
--			@StatusCode = @StatusCode OUT,
--			@ErrorCode = @ErrorCode OUT,
--			@ErrorDescription = @ErrorDescription OUT,
--			@ErrorMessage = @ErrorMessage OUT;

--	SELECT	@StatusCode 'StatusCode',
--			@ErrorCode 'ErrorCode',
--			@ErrorDescription 'ErrorDescription' ,
--			@ErrorMessage 'ErrorMessage';


--	SELECT * FROM Machines_Categories_BaseMainCategories
--	SELECT * FROM Machines_Categories_BaseSubCategories
--	SELECT * FROM Machines_Categories
--	SELECT * FROM Machines_Categories_MainCategoriesByLanguages
--	SELECT * FROM Machines_Categories_SubCategoriesByLanguages
--ROLLBACK
--GO



------------------------ UPDATE MAIN AND SUBCATEGORIES BY LANGUAGES ------------------------

--BEGIN TRANSACTION
--	SELECT * FROM Machines_Categories_BaseMainCategories
--	SELECT * FROM Machines_Categories_BaseSubCategories
--	SELECT * FROM Machines_Categories
--	SELECT * FROM Machines_Categories_MainCategoriesByLanguages
--	SELECT * FROM Machines_Categories_SubCategoriesByLanguages

	
--	DECLARE @StatusCode int,
--			@ErrorCode varchar(max),
--			@ErrorDescription varchar(max),
--			@ErrorMessage varchar(max);

--	EXEC	Machine_Category_UpdateMainAndSubcategories
--			@Language = 'TR',
--			@OldMainCategoryInEN = 'Work Machines',  -- required
--			@OldSubCategoriesInEN = 'Crawler Excavators,Wheel Excavators,Graders,Bulldozers,Wheel Loaders,Rock Truck',  -- required
--			@OldSubCategoriesInTR = 'Paletli Ekskavatörler,Lastikli Ekskavatörler,Greyderler,Dozerler,Lastikli Yükleyiciler,Kaya Kamyonu',
--			@NewMainCategoryInEN = NULL,  --'Work Machines 3',
--			@NewMainCategoryInTR = 'Ýþ Makineleri 4',  --'Ýþ Makineler 2',
--			@NewSubCategoriesInEN = NULL,  --'Crawler Excavators33,Wheel Excavators33,Graders33,Bulldozers33,Wheel Loaders33,Rock Truck33',
--			@NewSubCategoriesInTR = 'Paletli Ekskavatörler,Lastikli Ekskavatörler 44,Greyderler,Dozerler 44,Lastikli Yükleyiciler 44,Kaya Kamyonu',
--			@SplitChar = ',',
--			@StatusCode = @StatusCode OUT,
--			@ErrorCode = @ErrorCode OUT,
--			@ErrorDescription = @ErrorDescription OUT,
--			@ErrorMessage = @ErrorMessage OUT;

--	SELECT	@StatusCode 'StatusCode',
--			@ErrorCode 'ErrorCode',
--			@ErrorDescription 'ErrorDescription' ,
--			@ErrorMessage 'ErrorMessage';


--	SELECT * FROM Machines_Categories_BaseMainCategories
--	SELECT * FROM Machines_Categories_BaseSubCategories
--	SELECT * FROM Machines_Categories
--	SELECT * FROM Machines_Categories_MainCategoriesByLanguages
--	SELECT * FROM Machines_Categories_SubCategoriesByLanguages
--ROLLBACK
--GO



-------------------------- DELETE MAINCATEGORY ------------------------

--BEGIN TRANSACTION
--	SELECT * FROM Machines_Categories_BaseMainCategories
--	SELECT * FROM Machines_Categories_BaseSubCategories
--	SELECT * FROM Machines_Categories
--	SELECT * FROM Machines_Categories_MainCategoriesByLanguages
--	SELECT * FROM Machines_Categories_SubCategoriesByLanguages

	
--	DECLARE @StatusCode int,
--			@ErrorCode varchar(max),
--			@ErrorDescription varchar(max),
--			@ErrorMessage varchar(max);

--	EXEC	Machine_Category_DeleteMainCategory
--			@Language = 'TR',
--			@MainCategoryInEN = 'Mining Machinery',
--			@StatusCode = @StatusCode OUT,
--			@ErrorCode = @ErrorCode OUT,
--			@ErrorDescription = @ErrorDescription OUT,
--			@ErrorMessage = @ErrorMessage OUT;

--	SELECT	@StatusCode 'StatusCode',
--			@ErrorCode 'ErrorCode',
--			@ErrorDescription 'ErrorDescription' ,
--			@ErrorMessage 'ErrorMessage';


--	SELECT * FROM Machines_Categories_BaseMainCategories
--	SELECT * FROM Machines_Categories_BaseSubCategories
--	SELECT * FROM Machines_Categories
--	SELECT * FROM Machines_Categories_MainCategoriesByLanguages
--	SELECT * FROM Machines_Categories_SubCategoriesByLanguages
--ROLLBACK
--GO



----------------- DELETE SUBCATEGORIES ---------------

--BEGIN TRANSACTION
--	SELECT * FROM Machines_Categories_BaseMainCategories
--	SELECT * FROM Machines_Categories_BaseSubCategories
--	SELECT * FROM Machines_Categories
--	SELECT * FROM Machines_Categories_MainCategoriesByLanguages
--	SELECT * FROM Machines_Categories_SubCategoriesByLanguages

	
--	DECLARE @StatusCode int,
--			@ErrorCode varchar(max),
--			@ErrorDescription varchar(max),
--			@ErrorMessage varchar(max);

--	EXEC	Machine_Category_DeleteSubcategories
--			@Language = 'TR',
--			@MainCategoryInEN = 'Work Machines',
--			@Subcategories = 'Dozerler,Lastikli,Paletli Ekskavatörler,Yükleyiciler,Kaya Kamyonu,Lastikli Ekskavatörler',
--			@SplitChar = ',',
--			@StatusCode = @StatusCode OUT,
--			@ErrorCode = @ErrorCode OUT,
--			@ErrorDescription = @ErrorDescription OUT,
--			@ErrorMessage = @ErrorMessage OUT;

--	SELECT	@StatusCode 'StatusCode',
--			@ErrorCode 'ErrorCode',
--			@ErrorDescription 'ErrorDescription' ,
--			@ErrorMessage 'ErrorMessage';


--	SELECT * FROM Machines_Categories_BaseMainCategories
--	SELECT * FROM Machines_Categories_BaseSubCategories
--	SELECT * FROM Machines_Categories
--	SELECT * FROM Machines_Categories_MainCategoriesByLanguages
--	SELECT * FROM Machines_Categories_SubCategoriesByLanguages
--ROLLBACK
--GO