USE BegumYacht
GO


--------------------- ANSWER THE FORM -------------------

--SELECT * FROM DemandAndOrder_Answerers
--DECLARE @NowUtcDate datetime2(7) = GETUTCDATE(),
--		@StatusCode int;


--EXEC	DemandAndOrder_AnswerTheForm
--		@FormTypeId = 1,
--		@FormId = 1014,
--		@AnswererId = 1033,
--		@StatusId = 2,
--		@AnsweredDate = @NowUtcDate,
--		@StatusCode = @StatusCode OUT


--SELECT @StatusCode 'StatusCode'


SELECT * FROM DemandAndOrder_Answerers
SELECT * FROM DemandAndOrder_FormTypes
SELECT * FROM DemandAndOrder_FormStatus
