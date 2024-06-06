USE BegumYacht
GO


--------------- GET FORMS BY STATUS ------------------

--DECLARE @TotalCount int;

--EXEC	Demand_CheckInAndOut_GetFormsByStatus
--		@StatusId = 1,
--		@PageSize = 16,
--		@PageNumber = 3,
--		@TotalCount = @TotalCount OUTPUT;

--SELECT @TotalCount 'TotalCount';
--GO



SELECT * FROM CheckIn ORDER BY DateAdded DESC
SELECT * FROM DemandAndOrder_Answerers ORDER BY FormId DESC
GO
