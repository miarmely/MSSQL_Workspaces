USE BegumYacht
GO


-------------- UPDATE ROLE OF USER --------------

--EXEC	Role_Update
--		@UserId = 1102,
--		@RoleId = 1  



------------- GET ROLES OF USER -------------

--EXEC	Role_GetRolesOfUser
--		@UserId = 1115



EXEC User_GetAll @AccountId = 1033
SELECT * FROM UsersAndRoles ORDER BY UserId DESC 
SELECT * FROM Roles
GO