CREATE TABLE [dbo].[StringArrayItems] (
    [Id] INT IDENTITY NOT NULL,
    [StringArrayId] INT NOT NULL,
	[Ordinal] INT NOT NULL,
    [Name] NVARCHAR(256) NOT NULL,
    CONSTRAINT [PK_StringArrayItems] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_StringArrayItems_StringArrays] FOREIGN KEY ([StringArrayId]) REFERENCES [StringArrays]([Id])
);
