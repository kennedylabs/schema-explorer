CREATE TABLE [dbo].[Arrays] (
    [Id] INT IDENTITY NOT NULL,
    [MetadataId] INT NULL, 
    CONSTRAINT [PK_Arrays] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_Arrays_Metadata] FOREIGN KEY ([MetadataId]) REFERENCES [Metadata]([Id])
);
