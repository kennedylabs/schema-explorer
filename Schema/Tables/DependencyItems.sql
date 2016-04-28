CREATE TABLE [dbo].[DependencyItems] (
    [Id] INT IDENTITY NOT NULL,
	[ObjectSchemataId] INT NOT NULL,
    [SchemaReferenceId] INT NULL,
    [StringArrayId] INT NULL,
	[Ordinal] INT NOT NULL,
    [Name] NVARCHAR(256) NOT NULL, 
    CONSTRAINT [PK_DependencyItems] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_DependencyItems_ObjectSchematas] FOREIGN KEY ([ObjectSchemataId]) REFERENCES [ObjectSchemata]([Id]),
    CONSTRAINT [FK_DependencyItems_SchemaReferences] FOREIGN KEY ([SchemaReferenceId]) REFERENCES [SchemaReferences]([Id]),
    CONSTRAINT [FK_DependencyItems_StringArrays] FOREIGN KEY ([StringArrayId]) REFERENCES [StringArrays]([Id])
);
