CREATE TABLE [dbo].[SimpleTypeArrayItems] (
    [Id] INT IDENTITY NOT NULL,
    [SimpleTypeArrayId] INT NOT NULL,
	[Ordinal] INT NOT NULL,
    [Type] INT NOT NULL,
    CONSTRAINT [PK_SimpleTypeArrayItems] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_SimpleTypeArrayItems_SimpleTypeArrays] FOREIGN KEY ([SimpleTypeArrayId]) REFERENCES [SimpleTypeArrays]([Id])
);
