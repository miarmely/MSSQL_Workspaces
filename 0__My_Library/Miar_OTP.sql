USE dbTemsa
GO


------------------------- ADD VERIFICATION CODE TO USER -------------------------

--BEGIN TRANSACTION
	--SELECT * FROM Miar_OTP


--	DECLARE @CreatedDate datetime2(7) = GETUTCDATE(),
--			@ExpiredDate datetime2(7) = GETDATE(),
--			@StatusCode int,
--			@ErrorCode varchar(max),
--			@ErrorDescription varchar(max),
--			@ErrorMessage varchar(max);


--	EXEC	Miar_OTP_Add
--			@Language = 'TR',
--			@Email = 'testadmin@mostidea.com.tr',
--			@VerificationCode = '654321',
--			@CreatedDate = @CreatedDate,
--			@ExpiredDate = @ExpiredDate,
--			@StatusCode = @StatusCode OUT,
--			@ErrorCode = @ErrorCode OUT,
--			@ErrorDescription = @ErrorDescription OUT,
--			@ErrorMessage = @ErrorMessage OUT;

--	SELECT	@StatusCode AS 'StatusCode',
--			@ErrorCode AS 'ErrorCode',
--			@ErrorDescription AS 'ErrorDescription',
--			@ErrorMessage AS 'ErrorMessage';


	--SELECT * FROM Miar_OTP
--ROLLBACK



------------------ VERIFY VERIFICATON CODE ------------------

--SELECT * FROM Miar_OTP


--DECLARE @RequestDate datetime2(7) = GETUTCDATE(),
--		@OTPId uniqueidentifier,
--		@StatusCode int,
--		@ErrorCode varchar(max),
--		@ErrorDescription varchar(max),
--		@ErrorMessage varchar(max);

--EXEC	Miar_OTP_Verify
--		@Language = 'TR',
--		@Email = 'testadmin@mostidea.com.tr',
--		@VerificationCode = '654321',
--		@RequestDate = @RequestDate,
--		@OTPId = @OTPId OUT,
--		@StatusCode = @StatusCode OUT,
--		@ErrorCode = @ErrorCode OUT,
--		@ErrorDescription = @ErrorDescription OUT,
--		@ErrorMessage = @ErrorMessage OUT;

--SELECT	@StatusCode AS 'StatusCode',
--		@ErrorCode AS 'ErrorCode',
--		@ErrorDescription AS 'ErrorDescription',
--		@ErrorMessage AS 'ErrorMessage',
--		@OTPId AS 'OTPId';


--SELECT * FROM Miar_OTP