CREATE TABLE [dbo].[SchemaReferences] (
    [Id]            INT             IDENTITY (1, 1) NOT NULL,
    [SchemaId]      INT             NOT NULL,
    [SchemaArrayId] INT             NULL,
    [Ordinal]       INT             NULL,
    [Name]          NVARCHAR (256)  NULL,
    [Identifier]    NVARCHAR (1024) NULL,
    CONSTRAINT [PK_SchemaReferences] PRIMARY KEY CLUSTERED ([Id] ASC)
);

GO

CREATE INDEX [IX_SchemaReferences_SchemaArrayIdOrdinal] ON [dbo].[SchemaReferences] ([SchemaArrayId] ASC, [Ordinal] ASC);

GO