CREATE TABLE [dbo].[StringSchemata] (
    [Id] INT IDENTITY NOT NULL,
    [MaxLength] INT NULL,
    [MinLength] INT NULL,
    [Pattern] NVARCHAR(256) NULL,
	[Format] NVARCHAR(256) NULL,
    CONSTRAINT [PK_StringSchemata] PRIMARY KEY ([Id]),
);
