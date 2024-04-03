USE dbTemsa
GO

----------------------- CREATE FORM -----------------------

--BEGIN TRANSACTION
	-- -- GENERAL COMMUNICATION FORM
	-- DECLARE @NowDate datetime2(7)
	-- = (SELECT  GETUTCDATE());

	--EXEC	User_Form_GeneralCommunication_Create
	--		@Language = 'EN',
	--		@UserId = 'C43F930D-5BE9-48EE-843E-845E750F2246',
	--		@FirstName = 'sibel2',
	--		@LastName = 'gebze2',
	--		@Company = 'Komatsu2',
	--		@Phone = '5668093422',
	--		@Email = 'sibel@gmail.com',
	--		@CityName = 'Kayseri',
	--		@County = ',Merkez',
	--		@Subject = 'Dünden Gelenler',
	--		@Message = 'rous pleasing of this fair proportive tricks, Now are our dreadful measures. Grim-visaged to delight the souls of the lascivious wrinkled for sportive tricks, He capers nimbly in a lute. But I, that am rudely stampd, and with victorious looking-glass; Our brows bound war hath smoothd his fair proportion, amorous pleasing of York; And now, instead of mounting barded steeds To strut before a want loves majesty To frightful adversaries, Our steeds To frightful adversaries, Our stern ala',
	--		@CreatedAt = @NowDate;


	---- GET OFFER FORM
	--DECLARE @NowDate datetime2(7)
	-- = (SELECT GETUTCDATE());

	--EXEC	User_Form_GetOffer_Create
	--		@Language = 'TR',
	--		@UserId = '54d46112-a872-40d4-aa2c-95df70ca40e6',
	--		@MachineId = '3D0CD640-7B2A-480B-998F-44C01E9F23CA',
	--		@FirstName = 'Serdar',
	--		@LastName = 'Halýcý',
	--		@Company = 'Hatay Üniversitesi',
	--		@Phone = '5522329111',
	--		@Email = 'serdar@gmail.com',
	--		@CityName = 'Hatay',
	--		@County = 'Merkez',
	--		@Message = 'Bu Bir Denemedir',
	--		@CreatedAt = @NowDate

--	-- RENTING FORM
--	DECLARE @NowDate datetime2(7)
--	 = (SELECT GETUTCDATE());

--	EXEC	User_Form_Renting_Create
--			@Language = 'EN',
--			@UserId = '9623C5A8-DB20-487E-AE1B-06423F58B302',
--			@MachineId = '2E47A396-9835-4C50-9E45-F1773865E88B',
--			@FirstName = 'mert',
--			@LastName = 'akdemir',
--			@Company = 'Bandýrma Üniversitesi',
--			@Phone = '5528093411',
--			@Email = 'mert@gmail.com',
--			@CityName = 'Ankara',
--			@County = 'Mamak',
--			@Message = 'Bu Bir Denemedir',
--			@CreatedAt = @NowDate
--ROLLBACK



-------------------- GET ALL FORMS --------------------

-- GENERAL COMMUNICATION FORM
DECLARE @TotalCount int;

EXEC	User_Form_GeneralCommunication_GetAll
		@PageNumber = 1,
		@PageSize = 10,
		@GetAnsweredForms = NULL,
		@TotalCount = @TotalCount OUT

SELECT @TotalCount AS 'GeneralCommTotalCount'
		

-- GET OFFER FORM
EXEC	User_Form_GetOffer_GetAll
		@Language = 'EN',
		@PageNumber = 1,
		@PageSize = 10,
		@FormStatusId = 2,
		@TotalCount = @TotalCount OUT

SELECT @TotalCount AS 'GetOfferTotalCount'


-- RENTING FORM
EXEC	User_Form_Renting_GetAll
		@Language = 'TR',
		@PageNumber = 1,
		@PageSize = 10,
		@FormStatusId = 2,
		@TotalCount = @TotalCount OUT

SELECT @TotalCount AS 'RentingTotalCount'






		












---------------------- GET ALL FORMS OF ONE USER ------------------

--DECLARE @UserId uniqueidentifier = '54D46112-A872-40D4-AA2C-95DF70CA40E6',
--		@FormStatusId tinyint = 1,
--		@Language char(2) = 'TR',
--		@TotalCount int;


---- GENERAL COMMUNICATION FORM OF USER
--EXEC	User_Form_GeneralCommunication_GetAllOfOneUserByUserId
--		@UserId = @UserId,
--		@PageNumber = 1,
--		@PageSize = 10,
--		@GetAnsweredForms = NULL,
--		@TotalCount = @TotalCount OUT

--SELECT @TotalCount AS 'GeneralCommTotalCount'


---- GET OFFER FORM OF USER
--EXEC	User_Form_GetOffer_GetAllOfOneUserByUserId
--		@Language = @Language,
--		@UserId = @UserId,
--		@PageNumber = 1,
--		@PageSize = 10,
--		@FormStatusId = @FormStatusId,
--		@TotalCount = @TotalCount OUT

--SELECT @TotalCount AS 'GetOfferTotalCount'


---- RENTING FORM OF USER
--EXEC	User_Form_Renting_GetAllOfOneUserByUserId
--		@Language = @Language,
--		@UserId = @UserId,
--		@PageNumber = 1,
--		@PageSize = 10,
--		@FormStatusId = @FormStatusId,
--		@TotalCount = @TotalCount OUT

--SELECT @TotalCount AS 'RentingTotalCount'
--GO



------------------------ ANSWER THE FORMS --------------------------

--DECLARE @NowDate datetime2(7) = GETUTCDATE(),
--		@StatusCode smallint,
--		@ErrorCode varchar(max),
--		@ErrorDescription varchar(max),
--		@ErrorMessage varchar(max),
--		@TotalCount int;

--EXEC	User_Form_GeneralCommunication_GetAll
--		@PageNumber = 1,
--		@PageSize = 10,
--		@GetAnsweredForms = NULL,
--		@TotalCount = @TotalCount OUT

--SELECT @TotalCount 'GeneralCommCount'


--EXEC	dbo.User_Form_AnswerTheAnyForm
--		@Language = 'EN',
--		@FormType = 'GeneralCommunication',
--		@FormId = 5,
--		@AnswererId = 'BA3DEC2A-DA6B-4F6E-8150-AA49D01952B0',
--		@AnsweredDate = @NowDate,
--		@StatusCode = @StatusCode OUT,
--		@ErrorCode = @ErrorCode OUT,
--		@ErrorDescription = @ErrorDescription OUT,
--		@ErrorMessage = @ErrorMessage OUT

--SELECT	@StatusCode AS 'Status Code',
--		@ErrorCode AS 'Error Code',
--		@ErrorDescription AS 'Error Description',
--		@ErrorMessage AS 'Error Message'

-----------------------------------------------------------

--DECLARE @NowDate datetime2(7) = GETUTCDATE(),
--		@StatusCode smallint,
--		@ErrorCode varchar(max),
--		@ErrorDescription varchar(max),
--		@ErrorMessage varchar(max),
--		@TotalCount int;

--EXEC	User_Form_GetOffer_GetAll
--		@Language = 'TR',
--		@PageNumber = 1,
--		@PageSize = 10,
--		@FormStatusId = 3,
--		@TotalCount = @TotalCount OUT

--SELECT @TotalCount 'GeneralCommCount'

--EXEC	User_Form_AnswerTheAnyForm
--		@Language = 'EN',
--		@FormType = 'GetOffer',
--		@FormId = 53,
--		@FormStatusId = 3,
--		@AnswererId = 'BA3DEC2A-DA6B-4F6E-8150-AA49D01952B0',
--		@AnsweredDate = @NowDate,
--		@StatusCode = @StatusCode OUT,
--		@ErrorCode = @ErrorCode OUT,
--		@ErrorDescription = @ErrorDescription OUT,
--		@ErrorMessage = @ErrorMessage OUT;

--SELECT	@StatusCode AS 'Status Code',
--		@ErrorCode AS 'Error Code',
--		@ErrorDescription AS 'Error Description',
--		@ErrorMessage AS 'Error Message'
