CREATE TABLE [dbo].[SchemaReferences] (
    [Id] INT IDENTITY NOT NULL,
    [SchemaId] INT NOT NULL,
    [SchemaCollectionId] INT NULL,
    [Ordinal] INT NULL,
    [Name]  NVARCHAR(256)  NULL,
    [Identifier] NVARCHAR(1024) NULL,
    [IdentifierUrl] NVARCHAR(1024) NULL,
    [IsRequired] BIT NULL, 
	[MetadataId] INT NULL,
    CONSTRAINT [PK_SchemaReferences] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_SchemaReferences_Schemata] FOREIGN KEY ([SchemaId]) REFERENCES [Schemata]([Id]),
    CONSTRAINT [FK_SchemaReferences_SchemaCollections] FOREIGN KEY ([SchemaCollectionId]) REFERENCES [SchemaCollections]([Id]),
    CONSTRAINT [FK_SchemaReferences_Metadata] FOREIGN KEY ([MetadataId]) REFERENCES [Metadata]([Id])
);
