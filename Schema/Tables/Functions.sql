CREATE TABLE [dbo].[Functions] (
    [Id] INT IDENTITY NOT NULL,
    [ParametesrTypesSchemaMapId] INT NULL, 
    [ReturnTypeSchemaReferenceId] INT NULL, 
    [Name] NVARCHAR(256) NULL, 
    [MetadataId] INT NULL, 
    CONSTRAINT [PK_Functions] PRIMARY KEY ([Id]), 
    CONSTRAINT [FK_Functions_SchemaCollections_ParementersTypes] FOREIGN KEY ([ParametesrTypesSchemaMapId]) REFERENCES [SchemaCollections]([Id]),
    CONSTRAINT [FK_Functions_SchemaReferences_ReturnType] FOREIGN KEY ([ReturnTypeSchemaReferenceId]) REFERENCES [SchemaReferences]([Id]),
    CONSTRAINT [FK_Functions_Metadata] FOREIGN KEY ([MetadataId]) REFERENCES [Metadata]([Id])
);
