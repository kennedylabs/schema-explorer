CREATE TABLE [dbo].[SchemaInfo] (
    [Id] INT IDENTITY NOT NULL,
    [Identifier] NVARCHAR(256) NULL,
    [IdentifierUrl] NVARCHAR(1024) NULL,
    [MetaSchemaReferenceId] INT NULL,
    [Title] NVARCHAR(256) NULL,
    [Descripion] NVARCHAR(MAX) NULL,
    CONSTRAINT [PK_SchemaInfo] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_SchemaInfo_SchemaReferences] FOREIGN KEY ([MetaSchemaReferenceId]) REFERENCES [SchemaReferences]([Id])
);
