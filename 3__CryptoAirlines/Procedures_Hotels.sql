USE dbCryptoAirlines
GO

---------------------- THROW ERROR ----------------------

--DECLARE @StatusCode int,
--		@ErrorMessage varchar(max);

--EXEC ThrowError
--	 @LanguageId = 2,
--	 @ErrorCode = 'NF-Di',
--	 @StatusCode = @StatusCode OUT,
--	 @ErrorMessage = @ErrorMessage OUT;


--SELECT	@StatusCode AS 'StatusCode',
--		@ErrorMessage AS 'ErrorMessage'



---------------------- REGISTER COLLABRATOR ----------------------

--BEGIN TRANSACTION
--	SELECT * FROM Hotels

--	DECLARE @RequestDate smalldatetime = GETUTCDATE(),
--			@StatusCode int,
--			@ErrorMessage varchar(max);

--	EXEC	Hotels_Register
--			@LanguageId = 2,
--			@TaxRegistrationPlate = 'tax.pdf',
--			@LocationX = 40.01592615012358, 
--			@LocationY = 27.825634885832282,
--			@City = 'Balýkesir',
--			@District = 'Bandýrma',
--			@Address = 'xxxasdasdasdasdasdasdas',
--			@AuthorizedPhone = '+905528093409',
--			@HotelPhone = '+905528093409',
--			@HotelName = 'Dedeman',
--			@HotelType = 'motel',
--			@HashedPassword = 'nyKOpj6S9LDSe3FfKkCr4g==',
--			@PaymentId = 1,
--			@StatusCode = @StatusCode OUT,
--			@ErrorMessage = @ErrorMessage OUT;

--	SELECT  @StatusCode AS 'StatusCode',
--			@ErrorMessage AS 'ErrorMessage';
--ROLLBACK



----------- ADD COMPANY REGISTRATIONS -----------

--BEGIN TRANSACTION
--	SELECT * FROM Hotels_CompanyRegistrations

--	DECLARE @StatusCode int,
--			@ErrorMessage varchar(max);

--	EXEC	Hotels_AddCompanyRegistrations
--			@LanguageId = 2, 
--			@HotelId = 'BE28A0BB-5B4C-4FCF-801F-34113B2556EF', 
--			@FilePaths = '115C69F2-987C-4B3B-A024-82E0C66607D1.pdf,125C69F2-987C-4B3B-A024-82E0C66607D1.pdf', 
--			@DisplayNames = 'aaa.pdf, bbb.pdf',
--			@SplitChar = ',', 
--			@NewFileCount = 3, 
--			@MaxFileCount = 10, 
--			@StatusCode = @StatusCode OUT, 
--			@ErrorMessage = @ErrorMessage OUT;

--	SELECT	@StatusCode AS 'StatusCode',
--			@ErrorMessage AS 'ErrorMessage';


--	SELECT * FROM Hotels_CompanyRegistrations
--ROLLBACK



---------- DISPLAY COMPANY REGISTRATIONS OF HOTEL ----------

--BEGIN TRANSACTION
--	DECLARE @StatusCode int,
--			@ErrorMessage varchar(max);

--	EXEC	Hotels_GetCompanyRegistrationsOfHotel
--			@LanguageId = 2,
--			@HotelId = 'BE28A0BB-5B4C-4FCF-801F-34113B2556EF',
--			@Statuscode = @StatusCode OUT,
--			@ErrorMessage = @ErrorMessage OUT

--	SELECT	@StatusCode AS 'StatusCode',
--			@ErrorMessage AS 'ErrorMessage';
--ROLLBACK





----------- DELETE COMPANY REGISTRATIONS OF HOTEL -----------

--BEGIN TRANSACTION
--	SELECT * FROM Hotels_CompanyRegistrations

--	DECLARE @StatusCode int,
--			@ErrorMessage varchar(max);

--	EXEC	Hotels_DeleteCompanyRegistrations
--			@LanguageId = 2, 
--			@HotelId = 'BE28A0BB-5B4C-4FCF-801F-34113B2556EF', 
--			@FilePaths = '115C69F2-987C-4B3B-A024-82E0C66607D1.pdf, 125C69F2-987C-4B3B-A024-82E0C66607D1.pdf', 
--			@SplitChar = ',', 
--			@NewFileCount = 3, 
--			@MaxFileCount = 10, 
--			@StatusCode = @StatusCode OUT, 
--			@ErrorMessage = @ErrorMessage OUT;

--	SELECT	@StatusCode AS 'StatusCode',
--			@ErrorMessage AS 'ErrorMessage';


--	SELECT * FROM Hotels_CompanyRegistrations
--ROLLBACK



---------------- DISPLAY PAYMENTS ----------------

--EXEC Hotels_GetPayments



-------------- UPDATE PAYMENT PRICES --------------

--BEGIN TRANSACTION
--	EXEC Hotels_GetPayments


--	DECLARE @StatusCode int,
--			@ErrorMessage varchar(max);

--	EXEC	Hotels_UpdatePaymentPrice
--			@LanguageId = 2,
--			@PaymentId = 2,
--			@NewPrice = 25,
--			@StatusCode = @StatusCode OUT,
--			@ErrorMessage = @ErrorMessage OUT
			
--	SELECT	@StatusCode AS 'StatusCode',
--			@ErrorMessage AS 'ErrorMessage'

	
--	EXEC Hotels_GetPayments
--ROLLBACK



--------- ADD HOTEL IMAGES ---------

--BEGIN TRANSACTION
--	SELECT * FROM Hotels_Images


--	DECLARE @StatusCode int,
--			@ErrorMessage varchar(max);
	
--	EXEC	Hotels_AddHotelImages
--			@LanguageId = 2,
--			@HotelId = 'BE28A0BB-5B4C-4FCF-801F-34113B2556EF',
--			@ImageNos = '4,5',
--			@ImagePaths = '1128A0BB-5B4C-4FCF-801F-34113B2556EF.jpg,2228A0BB-5B4C-4FCF-801F-34113B2556EF.png',
--			@DisplayNames = 'aaa.jpg, bbb.jpg',
--			@NewImageCount = 3,
--			@MaxImageCount = 25,
--			@SplitChar = ',',
--			@StatusCode = @StatusCode OUT,
--			@ErrorMessage = @ErrorMessage OUT;

--	SELECT	@StatusCode AS 'StatusCode',
--			@ErrorMessage AS 'ErrorMessage'


--	SELECT * FROM Hotels_Images
--ROLLBACK



-------------- DELETE HOTEL IMAGES --------------

--BEGIN TRANSACTION
--	SELECT * FROM Hotels_Images
--	SELECT * FROM _Logs_Delete_Hotels_Images

--	DECLARE @StatusCode int,
--			@ErrorMessage varchar(max);
	
--	EXEC	Hotels_DeleteHotelImages
--			@LanguageId = 2,
--			@HotelId = 'BE28A0BB-5B4C-4FCF-801F-34113B2556EF',
--			@ImageNos = '1,3',
--			@SplitChar = ',',
--			@StatusCode = @StatusCode OUT,
--			@ErrorMessage = @ErrorMessage OUT;

--	SELECT	@StatusCode AS 'StatusCode',
--			@ErrorMessage AS 'ErrorMessage'


--	SELECT * FROM Hotels_Images
--	SELECT * FROM _Logs_Delete_Hotels_Images
--ROLLBACK
