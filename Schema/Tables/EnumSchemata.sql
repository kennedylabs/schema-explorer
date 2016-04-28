CREATE TABLE [dbo].[EnumSchemata] (
    [Id] INT IDENTITY NOT NULL,
    [StringArrayId] INT NOT NULL,
    CONSTRAINT [PK_EnumSchemata] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_EnumSchemata_StringArrays] FOREIGN KEY ([StringArrayId]) REFERENCES [StringArrays]([Id])
);
