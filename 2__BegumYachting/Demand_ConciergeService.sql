USE BegumYacht
GO

--------------- GET FORMS BY STATUS ------------------

--DECLARE @TotalCount int;

--EXEC	Demand_ConciergeService_GetFormsByStatus
--		@StatusId = 1,
--		@PageSize = 10,
--		@PageNumber = 1,
--		@TotalCount = @TotalCount OUTPUT;

--SELECT @TotalCount 'TotalCount';
--GO



SELECT * FROM ConciergeServiceDemands
SELECT * FROM DemandAndOrder_Answerers
GO






