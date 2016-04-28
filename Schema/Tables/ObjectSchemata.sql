CREATE TABLE [dbo].[ObjectSchemata] (
    [Id] INT IDENTITY NOT NULL,
    [MaxProperties] INT NULL,
    [MinProperties] INT NULL,
	[RequiredStringArrayId] INT NULL,
	[AllowAdditionalProperties] BIT NULL,
	[AdditionalPropertiesSchemaReferenceId] INT NULL,
	[DefinitionsSchemaMapId] INT NULL,
	[PropertiesSchemaMapId] INT NULL,
	[PatternPropertiesSchemaMapId] INT NULL,
    [HasDependencies] BIT NULL, 
    CONSTRAINT [PK_ObjectSchemata] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_ObjectSchemata_SchemaCollections_Definitions] FOREIGN KEY ([DefinitionsSchemaMapId]) REFERENCES [SchemaCollections]([Id]),
    CONSTRAINT [FK_ObjectSchemata_SchemaCollections_Properties] FOREIGN KEY ([PropertiesSchemaMapId]) REFERENCES [SchemaCollections]([Id]),
    CONSTRAINT [FK_ObjectSchemata_SchemaCollections_PatternProperties] FOREIGN KEY ([PatternPropertiesSchemaMapId]) REFERENCES [SchemaCollections]([Id])
);
