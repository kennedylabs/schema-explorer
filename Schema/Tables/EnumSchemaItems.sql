CREATE TABLE [dbo].[EnumSchemaItems] (
    [Id] INT IDENTITY NOT NULL,
    [EnumSchemataId] INT NOT NULL,
	[Ordinal] INT NOT NULL,
    [Value] NVARCHAR(1024) NOT NULL, 
    CONSTRAINT [PK_EnumSchemaItems] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_EnumSchemaItems_EnumSchemata] FOREIGN KEY ([EnumSchemataId]) REFERENCES [Schemata]([Id])
);
