USE dbTemsa
GO



------------------ UPLOAD SLIDER ---------------------

--SELECT * FROM Sliders


--EXEC	Slider_Create
--		@FileNames = 'wallpaper_42.jpg,wallpaper_23.jpg,wallpaper_41.jpg,wallpaper_31.jpg';


--SELECT * FROM Sliders
--GO



-------------------- DISPLAY ALL SLIDER ---------------------

--DECLARE @StatusCode smallint,
--		@ErrorCode varchar(21),
--		@ErrorDescription varchar(50),
--		@ErrorMessage varchar(70)


--EXEC	Slider_GetAll
--		@Language = 'TR',
--		@StatusCode = @StatusCode OUT,
--		@ErrorCode = @ErrorCode OUT,
--		@ErrorDescription = @ErrorDescription OUT,
--		@ErrorMessage = @ErrorMessage OUT


--SELECT	@StatusCode AS 'StatusCode',
--		@ErrorCode AS 'ErrorCode',
--		@ErrorDescription AS 'ErrorDescription',
--		@ErrorMessage AS 'ErrorMessage'
--GO


------------------ GET SLIDER PATH BY SLIDER NO ------------------

--DECLARE @StatusCode smallint,
--		@ErrorCode varchar(21),
--		@ErrorDescription varchar(50),
--		@ErrorMessage varchar(70)

--EXEC	Slider_GetSliderPathBySliderNo
--		@Language = 'EN',
--		@SliderNo = 2,
--		@StatusCode	= @StatusCode OUT,
--		@ErrorCode = @ErrorCode OUT,
--		@ErrorDescription = @ErrorDescription OUT,
--		@ErrorMessage = @ErrorMessage OUT

--SELECT	@StatusCode AS 'StatusCode',
--		@ErrorCode AS 'ErrorCode',
--		@ErrorDescription AS 'ErrorDescription',
--		@ErrorMessage AS 'ErrorMessage'
--GO



---------------- DELETE MULTIPLE SLIDER ----------------

--SELECT * FROM Sliders


--EXEC	Slider_MultipleDelete
--		@FileNamesToBeNotDelete = 'wallpaper_2.jpg,wallpaper_1.jpg,wallpaper_3.jpg,wallpaper_4.jpg'

--SELECT * FROM Sliders
--GO



----------------------- DELETE ONE SLIDER -----------------------

--BEGIN TRANSACTION
--	SELECT * FROM Sliders
	

--	EXEC Slider_DeleteOneBySliderNo
--		 @FileName = 'HD785-8_Walkaround_01.png'


--	SELECT * FROM Sliders
--ROLLBACK



----------------------- DELETE MULTIPLE SLIDER -----------------------

--BEGIN TRANSACTION
--	SELECT * FROM Sliders


--	EXEC	Slider_DeleteMultipleByFileNames
--			@FileNamesToBeNotDeletedInString = 'wallpaper_41.jpg,wallpaper_44.jpg,wallpaper_22.jpg'


--	SELECT * FROM Sliders
--	GO
--ROLLBACK