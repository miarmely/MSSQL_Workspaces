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



------------------- CREATE --------------------------

--BEGIN TRANSACTION
--	DECLARE @TotalCount int,
--			@Language char(2) = 'EN';

--	EXEC	User_GetAll
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
--			@TelNo = '5524023116',
--			@Email = 'Shansidine@yahoo.com',
--			@Password = '4QrcOUm6Wau+VuBX8g+IPg==',
--			@RoleNames = 'Editor, Admin'


--	EXEC	User_GetAll
--			@Language = @Language,
--			@PageNumber = 1,
--			@PageSize = 10,
--			@TotalCount = @TotalCount out


--	SELECT @TotalCount as TotalCount;
--ROLLBACK
--GO



--------------- DISPLAY ALL EXCEPT ACCOUNT HOLDER -----------------

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
--			@Language = @Language,
--			@PageNumber = 1,
--			@PageSize = 10,
--			@TotalCount = @TotalCount out

--	SELECT @TotalCount as TotalCount;
	
	
--	---- for TR
--	--EXEC	User_Update
--	--		@Language = @Language,
--	--		@TelNoForValidation = '5528093409',
--	--		@FirstName = NULL,
--	--		@LastName = NULL,
--	--		@CompanyName = NULL,
--	--		@TelNo = NULL,
--	--		@Email = NULL,
--	--		@Password = NULL,
--	--		@RoleNames = 'Kullanýcý,Yönetici'

--	-- for EN
--	EXEC	User_Update
--			@Language = @Language,
--			@TelNoForValidation = '5528093422',
--			@FirstName = NULL,
--			@LastName = NULL,
--			@CompanyName = NULL,
--			@TelNo = '5528093409',
--			@Email = NULL,
--			@Password = NULL,
--			@RoleNames = 'Admin'


--	EXEC	User_GetAll
--			@Language = @Language,
--			@PageNumber = 1,
--			@PageSize = 10,
--			@TotalCount = @TotalCount out

--	SELECT @TotalCount as TotalCount;
--ROLLBACK
--GO


------------------- DELETE --------------------------

--BEGIN TRANSACTION
--	DECLARE @TotalCount int;
--	DECLARE @Language char(2) = 'TR';
	
--	EXEC	User_GetAll
--			@Language = @Language,
--			@PageNumber = 1,
--			@PageSize = 10,
--			@TotalCount = @TotalCount out

--	SELECT @TotalCount as TotalCount;

--	-- successfull
--	EXEC	User_Delete
--			@Language = @Language,
--			@TelNosInString = '5528093409,5528093411,5524023516',
--			@TotalTelNoCount = 3

--	---- error 
--	--EXEC	User_Delete
--	--		@Language = @Language,
--	--		@TelNosInString = '5528093409,5528093411,5524023516,5524023511',
--	--		@TotalTelNoCount = 4


--	EXEC	User_GetAll
--			@Language = @Language,
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