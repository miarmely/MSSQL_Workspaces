USE dbTemsa
GO


------------------- LOGIN --------------------------

--DECLARE @StatusCode smallint,
--		@ErrorCode varchar(21),
--		@ErrorDescription varchar(50),
--		@ErrorMessage varchar(70);

--EXEC	User_Login
--		@Language = 'EN',
--		@TelNo = '5528093409',
--		@Password = '4QrcOUm6Wau+VuBX8g+IPg==',
--		@StatusCode = @StatusCode out,
--		@ErrorCode = @ErrorCode out,
--		@ErrorDescription = @ErrorDescription out,
--		@ErrorMessage = @ErrorMessage out

--SELECT  @StatusCode as StatusCode,
--		@ErrorCode as ErrorCode,
--		@ErrorDescription as ErrorDescription,
--		@ErrorMessage as ErrorMessage
--GO



------------------- CREATE USER --------------------------

--BEGIN TRANSACTION
--	DECLARE @TotalCount int,
--			@Language char(2) = 'TR';

--	EXEC	User_GetAll
--			@AccountId = 'D9A6132D-B481-45B4-844B-A404BDBF9CEA',
--			@Language = @Language,
--			@PageNumber = 1,
--			@PageSize = 10,
--			@TotalCount = @TotalCount out

--	SELECT @TotalCount as TotalCount;


--	--EXEC	User_Create
--	--		@Language = @Language,
--	--		@FirstName = 'user',
--	--		@LastName = 'user',
--	--		@CompanyName = 'company',
--	--		@TelNo = '5524023599',
--	--		@Email = '1234@gmail.com',
--	--		@Password = '4QrcOUm6Wau+VuBX8g+IPg==',
--	--		@RoleNames = 'Yönetici, Kullanýcý, Editör'

--	EXEC	User_Create
--			@Language = @Language,
--			@FirstName = 'user',
--			@LastName = 'user',
--			@CompanyName = 'company',
--			@TelNo = '5999999999',
--			@Email = 'mert@gmail.com',
--			@Password = '4QrcOUm6Wau+VuBX8g+IPg==',
--			@RoleNames = '  Editör,  Yönetici   '


--	EXEC	User_GetAll
--			@AccountId = 'D9A6132D-B481-45B4-844B-A404BDBF9CEA',
--			@Language = @Language,
--			@PageNumber = 1,
--			@PageSize = 10,
--			@TotalCount = @TotalCount out

--	SELECT @TotalCount as TotalCount;
--ROLLBACK
--GO


--------------- DISPLAY USER ---------------

--EXEC	User_GetByTelNo
--		@Language = 'TR',
--		@TelNo = '5999999999';



--------------- DISPLAY ALL USER EXCEPT ACCOUNT HOLDER -----------------

--DECLARE @TotalCount int;

--EXEC	User_GetAll
--		@Language = 'EN',
--		@AccountId = 'C43F930D-5BE9-48EE-843E-845E750F2246',
--		@PageNumber = 1,
--		@PageSize = 30,
--		@TotalCount = @TotalCount out

--SELECT @TotalCount as TotalCount;
--GO



-------------------  UPDATE --------------------------

--BEGIN TRANSACTION
--	DECLARE @TotalCount int;
--	DECLARE @Language char(2) = 'EN';
	
--	EXEC	User_GetAll
--			@AccountId = 'F4AF1DF4-8986-47DD-95AB-07BD88E64F4F',
--			@Language = @Language,
--			@PageNumber = 1,
--			@PageSize = 10,
--			@TotalCount = @TotalCount out

--	SELECT @TotalCount as TotalCount;
	
	
--	EXEC	User_Update
--			@Language = @Language,
--			@TelNoForValidation = '5999999999',
--			@FirstName = 'Mert',
--			@LastName = 'Akdemir',
--			@CompanyName = 'Cancan',
--			@TelNo = '5999999999',
--			@Email = 'mert@gmail.com',
--			@Password = NULL,
--			@RoleNames = 'Admin'


--	EXEC	User_GetAll
--			@AccountId = 'F4AF1DF4-8986-47DD-95AB-07BD88E64F4F',
--			@Language = @Language,
--			@PageNumber = 1,
--			@PageSize = 10,
--			@TotalCount = @TotalCount out

--	SELECT @TotalCount as TotalCount;
--ROLLBACK
--GO



------------------- DELETE BY ID --------------------------

--BEGIN TRANSACTION
--	DECLARE @TotalCount int,
--			@Language char(2) = 'TR',
--			@StatusCode smallint,
--			@ErrorCode varchar(21),
--			@ErrorDescription varchar(50),
--			@ErrorMessage varchar(70);
	
--	EXEC	User_GetAll
--			@Language = @Language,
--			@AccountId = 'C43F930D-5BE9-48EE-843E-845E750F2246',
--			@PageNumber = 1,
--			@PageSize = 10,
--			@TotalCount = @TotalCount out

--	SELECT @TotalCount as TotalCount;


--	EXEC	User_Delete_ById
--			@Language = @Language,
--			@AccountId = 'F4AF1DF4-8986-47DD-95AB-07BD88E64F4F',
--			@StatusCode = @StatusCode out,
--			@ErrorCode = @ErrorCode out,
--			@ErrorDescription = @ErrorDescription out,
--			@ErrorMessage = @ErrorMessage out

--	SELECT  @StatusCode as StatusCode,
--			@ErrorCode as ErrorCode,
--			@ErrorDescription as ErrorDescription,
--			@ErrorMessage as ErrorMessage


--	EXEC	User_GetAll
--			@Language = @Language,
--			@AccountId = 'C43F930D-5BE9-48EE-843E-845E750F2246',
--			@PageNumber = 1,
--			@PageSize = 10,
--			@TotalCount = @TotalCount out

--	SELECT @TotalCount as TotalCount;
--ROLLBACK



------------------- MULTIPLE DELETE BY TELNO --------------------------

--BEGIN TRANSACTION
--	DECLARE @TotalCount int;
--	DECLARE @Language char(2) = 'TR';
	
--	EXEC	User_GetAll
--			@Language = @Language,
--			@AccountId = 'C43F930D-5BE9-48EE-843E-845E750F2246',
--			@PageNumber = 1,
--			@PageSize = 10,
--			@TotalCount = @TotalCount out

--	SELECT @TotalCount as TotalCount;

--	-- successfull
--	EXEC	User_Delete_ByTelNos
--			@Language = @Language,
--			@TelNosInString = '5528099912,5111111111',
--			@TotalTelNoCount = 2


--	EXEC	User_GetAll
--			@Language = @Language,
--			@AccountId = 'C43F930D-5BE9-48EE-843E-845E750F2246',
--			@PageNumber = 1,
--			@PageSize = 10,
--			@TotalCount = @TotalCount out

--	SELECT @TotalCount as TotalCount;
--ROLLBACK



----------------- GET ROLE NAME OF USER -----------------

--EXEC	User_GetRoleNamesByUserId
--		@UserId	= '31C08BED-74F3-41AF-8D19-A3A6C49FA92B'

		

--------------- GET BY CONDITION -----------------

--DECLARE @TotalCount int;

--EXEC User_GetByCondition
--@TotalCount = @TotalCount out

--SELECT @TotalCount as TotalCount;
--GO



------------------ GET UserAndRoles ACCORDING TO LANGUAGE ------------------

--EXEC	UserAndRoles_GetAllByLanguage
--		@Language = 'TR'
--GO



-------------------- GET Users BY TELNO --------------------

--EXEC	User_GetByTelNo
--		@TelNo = '5528093400',
--		@Language = 'EN'



----------------------- GET ALL ROLES BY LANGUAGE ------------------------

--EXEC	User_GetAllRolesByLanguage
--		@Language = 'TR'

--EXEC	User_GetAllRolesByLanguage
--		@Language = 'EN'



----------------- GET CONFLICTED COLUMNS OF USER -----------------

--SELECT * FROM User_GetConflictedColumns('5999999999', 'mert@gmail.com');
--SELECT * FROM User_GetConflictedColumns(null, 'mert@gmail.com');
--SELECT * FROM User_GetConflictedColumns('5999999999', null);
--SELECT * FROM User_GetConflictedColumns(null, null);



------------- CONFLICT CONTROL FOR USER CREATE AND UPDATE -------------

--DECLARE @IsConflicted bit;

--EXEC	User_CreateAndUpdate_ConflictControl
--		@Language = 'TR',
--		@TelNo = '5999999999',
--		@Email = 'mert@gmail.com',
--		@IsConflicted = @IsConflicted OUT;

--SELECT @IsConflicted AS 'IsConflicted'



----------------- CLOSE ACCOUNT ---------------

--BEGIN TRANSACTION
--	DECLARE @TotalCount int,
--			@Language char(2) = 'TR',
--			@RequestDate smalldatetime = GETUTCDATE(),
--			@StatusCode smallint,
--			@ErrorCode varchar(21),
--			@ErrorDescription varchar(50),
--			@ErrorMessage varchar(70);
	
--	EXEC	User_GetAll
--			@Language = @Language,
--			@AccountId = 'C43F930D-5BE9-48EE-843E-845E750F2246',
--			@PageNumber = 1,
--			@PageSize = 10,
--			@TotalCount = @TotalCount out

--	SELECT @TotalCount as TotalCount;
--	SELECT * FROM Users_ClosedAccounts


--	EXEC	User_CloseAccount
--			@Language = @Language,
--			@AccountId = 'F4AF1DF4-8986-47DD-95AB-07BD88E64F4F',
--			@RequestDate = @RequestDate,
--			@StatusCode = @StatusCode out,
--			@ErrorCode = @ErrorCode out,
--			@ErrorDescription = @ErrorDescription out,
--			@ErrorMessage = @ErrorMessage out

--	SELECT  @StatusCode as StatusCode,
--			@ErrorCode as ErrorCode,
--			@ErrorDescription as ErrorDescription,
--			@ErrorMessage as ErrorMessage


--	EXEC	User_GetAll
--			@Language = @Language,
--			@AccountId = 'C43F930D-5BE9-48EE-843E-845E750F2246',
--			@PageNumber = 1,
--			@PageSize = 10,
--			@TotalCount = @TotalCount out

--	SELECT @TotalCount as TotalCount;
--	SELECT * FROM Users_ClosedAccounts
--ROLLBACK

