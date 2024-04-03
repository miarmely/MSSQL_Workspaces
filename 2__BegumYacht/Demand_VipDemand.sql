USE BegumYacht
GO

--------------- GET FORMS BY STATUS ------------------

--DECLARE @TotalCount int;

--EXEC	Demand_VipTransfer_GetFormsByStatus
--		@StatusId = 1,
--		@PageSize = 10,
--		@PageNumber = 1,
--		@TotalCount = @TotalCount OUTPUT;

--SELECT @TotalCount 'TotalCount';
--GO



SELECT * FROM VipDemand ORDER BY CreatedDate DESC
SELECT * FROM DemandAndOrder_Answerers
SELECT * FROM AspNetUsers
GO



