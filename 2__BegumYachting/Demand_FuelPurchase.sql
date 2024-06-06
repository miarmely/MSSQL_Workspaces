USE BegumYacht
GO

----------------- ANSWER THE FORMS -----------------

--DECLARE @StatusCode int;
--DECLARE @AnsweredDate datetime2 = GETUTCDATE();

--EXEC	DemandAndOrder_AnswerTheForm
--		@FormTypeId = 1,
--		@FormId = 1067,
--		@AnswererId = 1077,
--		@StatusId = 3,
--		@AnsweredDate = @AnsweredDate,
--		@StatusCode = @StatusCode OUTPUT

--SELECT @StatusCode AS 'Status'
--GO



--------------- GET FORMS BY STATUS ------------------

--DECLARE @TotalCount int;

--EXEC	Demand_FuelPurchase_GetFormsByStatus
--		@StatusId = 1,
--		@PageSize = 10,
--		@PageNumber = 1,
--		@TotalCount = @TotalCount OUTPUT;

--SELECT @TotalCount 'TotalCount';
--GO

SELECT * FROM DemandAndOrder_Answerers



------------------- GET USERS BY FILTERING -------------------

--EXEC	User_GetUsersByFiltering
--		@UserId = 1033,
--		--@Email = 'mert@gmail.com',
--		--@Phone = '5557878361',
--		@CheckIsDeleted = 0