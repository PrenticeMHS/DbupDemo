Create Table [dbo].[User] (
	[Id] UNIQUEIDENTIFIER Not Null,
	[Name] NVARCHAR(100) Not Null,
	[Email] NVARCHAR(100) Not Null,
	[CreatedDate] DATE Not Null Default GetDate(),
	Primary Key (Id)
);