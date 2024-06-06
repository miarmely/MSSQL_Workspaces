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



----------------  ADD HOTEL FEATURES  ----------------

--BEGIN TRANSACTION
--	SELECT * FROM Hotels_Features_Codes
--	SELECT * FROM Hotels_Features_ByLanguages


--	DECLARE @StatusCode int,
--			@ErrorMessage varchar(max);

--	EXEC	Hotels_AddHotelFeatures
--			@LanguageId = 2,
--			@FeaturesInEN = 'No-Smoking,Pool,Beach,Bar',
--			@FeaturesInTR = 'Sigara Ýçilmez,Havuz,Plaj,Bar',
--			@SplitChar = ',',
--			@StatusCode = @StatusCode OUT,
--			@ErrorMessage = @ErrorMessage OUT;

--	SELECT	@StatusCode AS 'StatusCode',
--			@ErrorMessage AS 'ErrorMessage';


--	SELECT * FROM Hotels_Features_Codes
--	SELECT * FROM Hotels_Features_ByLanguages
--ROLLBACK



----------- GET ALL HOTEL FEATURES BY LANGUAGE -----------

--DECLARE @StatusCode int,
--		@ErrorMessage varchar(max);

--EXEC	Hotels_GetAllHotelFeaturesByLang
--		@LanguageId = 2,
--		@StatusCode = @StatusCode OUT,
--		@ErrorMessage = @ErrorMessage OUT;

--SELECT	@StatusCode AS 'StatusCode',
--		@ErrorMessage AS 'ErrorMessage';
--GO



----------- UPDATE HOTEL FEATURES -----------

--BEGIN TRANSACTION
--	SELECT * FROM Hotels_Features_ByLanguages
--	SELECT * FROM	_Logs_Update_Hotels_Features_ByLanguages
					

--	DECLARE @StatusCode int,
--			@ErrorMessage varchar(max);

--	EXEC	Hotels_UpdateHotelFeatures
--			@LanguageId = 2,
--			@FeatureCodeIds = '0B05E1FD-CAC0-4CE8-A5B8-DAD0122A91BD,BEA65946-B43C-4E0E-806C-A7E6907C358C',
--			@FeatureLangId = 1,
--			@NewFeatures = 'ABC,ABCD',
--			@SplitChar = ',',
--			@StatusCode = @StatusCode OUT,
--			@ErrorMessage = @ErrorMessage OUT

--	SELECT	@StatusCode AS 'StatusCode',
--			@ErrorMessage AS 'ErrorMessage';


--	SELECT * FROM Hotels_Features_ByLanguages
--	SELECT * FROM _Logs_Update_Hotels_Features_ByLanguages
--ROLLBACK



----------- DELETE HOTEL FEATURES -----------

--BEGIN TRANSACTION
--	SELECT * FROM Hotels_Features_Codes
--	SELECT * FROM Hotels_Features_ByLanguages
--	SELECT * FROM _Logs_Delete_Hotels_Features_ByLanguages
					

--	DECLARE @StatusCode int,
--			@ErrorMessage varchar(max);

--	EXEC	Hotels_DeleteHotelFeatures
--			@LanguageId = 2,
--			@FeatureCodes = '0B05E1FD-CAC0-4CE8-A5B8-DAD0122A91BD,E198DC21-2781-4F53-B9DD-C39A86CDC6B6',
--			@FeatureCodeCount = 2,
--			@SplitChar =  ',',
--			@StatusCode =  @StatusCode OUT,
--			@ErrorMessage =  @ErrorMessage OUT;

--	SELECT	@StatusCode AS 'StatusCode',
--			@ErrorMessage AS 'ErrorMessage';


--	SELECT * FROM Hotels_Features_Codes
--	SELECT * FROM Hotels_Features_ByLanguages
--	SELECT * FROM _Logs_Delete_Hotels_Features_ByLanguages
--ROLLBACK