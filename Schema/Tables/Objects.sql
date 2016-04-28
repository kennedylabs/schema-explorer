CREATE TABLE [dbo].[Objects] (
    [Id] INT IDENTITY NOT NULL,
    [MetadataId] INT NULL, 
    CONSTRAINT [PK_Objects] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_Objectss_Metadata] FOREIGN KEY ([MetadataId]) REFERENCES [Metadata]([Id])
);
