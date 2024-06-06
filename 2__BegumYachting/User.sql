USE BegumYacht
GO


-------------- GET ALL USERS --------------

--EXEC	User_GetAll
--		@AccountId = 1099



------------- GET USER BY FILTERING --------------

--EXEC	User_GetUsersByFiltering
--		@UserId = NULL,
--		@Email = NULL,
--		@Phone = NULL,
--		@CheckIsDeleted = 1	



--SELECT * FROM AspNetUsers ORDER BY Id DESC
--SELECT * FROM UsersAndRoles ORDER BY UserId DESC