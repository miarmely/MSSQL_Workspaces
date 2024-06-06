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



-------------- ADD ROOM TYPES TO HOTELS --------------

--BEGIN TRANSACTION
--	SELECT * FROM Hotels_Rooms_RoomTypes
--	SELECt * FROM Hotels_Rooms_HotelsAndRoomTypes


--	DECLARE @StatusCode int,
--			@ErrorMessage varchar(max);

--	EXEC	[dbo].[Hotels_AddRoomTypesToHotel]
--			@LanguageId = 2,
--			@HotelId = 'BE28A0BB-5B4C-4FCF-801F-34113B2556EF',
--			@RoomTypeIds = '1,2,3',
--			@RoomCounts = '50,12,100',
--			@SplitChar = ',',
--			@StatusCode = @StatusCode OUT,
--			@ErrorMessage = @ErrorMessage OUT

--	SELECT	@StatusCode AS 'StatusCode',
--			@ErrorMessage AS 'ErrorMessage'


--	SELECT * FROM Hotels_Rooms_HotelsAndRoomTypes
--ROLLBACK



----------------- GET ROOM TYPES OF HOTEL BY CONDITION -----------------

--DECLARE @StatusCode int,
--		@ErrorMessage varchar(max);

--EXEC	Hotels_GetRoomTypesOfHotelsByCondition
--		@LanguageId = 2,
--		@HotelId = NULL,
--		@RoomTypeId = 1,
--		@StatusCode = @StatusCode OUT,
--		@ErrorMessage = @ErrorMessage OUT;

--SELECT	@StatusCode AS 'StatusCode',
--		@ErrorMessage AS 'ErrorMessage'



----------------- DELETE ROOM TYPES OF HOTELS -----------------

--BEGIN TRANSACTION
--	SELECT * FROM Hotels_Rooms_HotelsAndRoomTypes
--	SELECT * FROM _Logs_Delete_Hotels_Rooms_HotelsAndRoomTypes


--	DECLARE @StatusCode int,
--			@ErrorMessage varchar(max);

--	EXEC	Hotels_DeleteRoomTypesOfHotel
--			@LanguageId = 2,
--			@HotelId = 'BE28A0BB-5B4C-4FCF-801F-34113B2556EF',
--			@RoomTypeIds = '1,2,3',
--			@RoomTypeCount = 1,
--			@SplitChar = ',',
--			@StatusCode = @StatusCode OUT,
--			@ErrorMessage = @ErrorMessage OUT;

--		SELECT	@StatusCode AS 'StatusCode',
--			@ErrorMessage AS 'ErrorMessage';


--	SELECT * FROM Hotels_Rooms_HotelsAndRoomTypes
--	SELECT * FROM _Logs_Delete_Hotels_Rooms_HotelsAndRoomTypes
--ROLLBACK



----------------- UPDATE ROOM TYPE COUNTS OF HOTELS -----------------

--BEGIN TRANSACTION
--	SELECT * FROM Hotels_Rooms_HotelsAndRoomTypes;
--	SELECT * FROM _Logs_Update_Hotels_Rooms_HotelsAndRoomTypes;


--	DECLARE @StatusCode int,
--			@ErrorMessage varchar(max);

--	EXEC	Hotels_UpdateRoomTypeCountsOfHotel
--			@LanguageId = 2,
--			@HotelId = 'BE28A0BB-5B4C-4FCF-801F-34113B2556EF',
--			@RoomTypeIds = '2,3',
--			@NewCounts = '55,15',
--			@RoomTypeIdsCount = 2,
--			@SplitChar = ',',
--			@StatusCode = @StatusCode OUT,
--			@ErrorMessage = @ErrorMessage OUT;

--		SELECT	@StatusCode AS 'StatusCode',
--				@ErrorMessage AS 'ErrorMessage';


--	SELECT * FROM Hotels_Rooms_HotelsAndRoomTypes
--	SELECT * FROM _Logs_Update_Hotels_Rooms_HotelsAndRoomTypes
--ROLLBACK

