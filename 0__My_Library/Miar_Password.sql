USE dbTemsa
GO


---------------------- UPDATE PASSWORD ----------------------

--BEGIN TRANSACTION
--	SELECT * FROM Users WHERE IsDeleted = 0


--	DECLARE @StatusCode smallint,
--			@ErrorCode varchar(max),
--			@ErrorDescription varchar(max),
--			@ErrorMessage varchar(max);

--	EXEC	Miar_Password_Update
--			@Language = 'TR',
--			@UserId = 'CB6D665F-86E5-43AE-A329-32798A6DB594',
--			@HashedOldPass = '6Afx/PgtEy+bsBjKZzihnw==',
--			@HashedNewPass = '4QrcOUm6Wau+VuBX8g+IPg==',
--			@StatusCode = @StatusCode OUT,
--			@ErrorCode = @ErrorCode OUT,
--			@ErrorDescription = @ErrorDescription OUT,
--			@ErrorMessage = @ErrorMessage OUT;

--	SELECT	@StatusCode AS 'Status Code',
--			@ErrorCode AS 'ErrorCode',
--			@ErrorDescription AS 'ErrorDescription',
--			@ErrorMessage AS 'ErrorMessage'


--	SELECT * FROM Users WHERE IsDeleted = 0
--ROLLBACK



-------------------- UPDATE PASSWORD BY OTP ----------------------

--BEGIN TRANSACTION
--	SELECT * FROM Users WHERE IsDeleted = 0


--	DECLARE @RequestDate datetime2(7) = GETUTCDATE(),
--			@StatusCode smallint,
--			@ErrorCode varchar(max),
--			@ErrorDescription varchar(max),
--			@ErrorMessage varchar(max);

--	EXEC	Miar_Password_UpdateByOTP
--			@Language = 'TR',
--			@OTPId = '8532CBDB-9D3C-425D-9474-6F4415AC7D79',
--			@HashedNewPassword = '4QrcOUm6Wau+VuBX8g+IPg==',
--			@RequestDate = @RequestDate,
--			@StatusCode = @StatusCode OUT,
--			@ErrorCode = @ErrorCode OUT,
--			@ErrorDescription = @ErrorDescription OUT,
--			@ErrorMessage = @ErrorMessage OUT;

--	SELECT	@StatusCode AS 'StatusCode',
--			@ErrorCode AS 'ErrorCode',
--			@ErrorDescription AS 'ErrorDescription',
--			@ErrorMessage AS 'ErrorMessage'


--	SELECT * FROM Users WHERE IsDeleted = 0
--ROLLBACK