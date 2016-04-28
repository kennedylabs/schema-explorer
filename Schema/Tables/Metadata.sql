CREATE TABLE [dbo].[Metadata] (
    [Id] INT IDENTITY NOT NULL,
    [SchemaId] INT NULL,
    [ValueId] INT NULL,
    CONSTRAINT [PK_Metadata] PRIMARY KEY ([Id]), 
    CONSTRAINT [FK_Metadata_Schemeta] FOREIGN KEY ([SchemaId]) REFERENCES [Schemata]([Id]),
    CONSTRAINT [FK_Metadata_Values] FOREIGN KEY ([ValueId]) REFERENCES [Values]([Id])
);
