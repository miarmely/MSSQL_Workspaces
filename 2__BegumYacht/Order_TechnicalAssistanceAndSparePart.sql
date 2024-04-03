USE BegumYacht
GO


--------------- GET FORMS BY STATUS ------------------

DECLARE @TotalCount int;

EXEC	Order_TechnicalAssistanceAndSparePart_GetFormsByStatus
		@StatusId = 1,
		@PageSize = 10,
		@PageNumber = 1,
		@TotalCount = @TotalCount OUTPUT;

SELECT @TotalCount 'TotalCount';
GO