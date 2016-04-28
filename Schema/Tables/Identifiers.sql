CREATE TABLE [dbo].[Identifiers] (
    [Id] INT IDENTITY NOT NULL,
	[ScopeId] INT NOT NULL,
	[ValueId] INT NOT NULL,
    [MetadataId] INT NULL, 
    CONSTRAINT [PK_Identifiers] PRIMARY KEY ([Id]), 
    CONSTRAINT [FK_Identifiers_Scopes] FOREIGN KEY ([ScopeId]) REFERENCES [Scopes]([Id]),
    CONSTRAINT [FK_Identifiers_Values] FOREIGN KEY ([ValueId]) REFERENCES [Values]([Id]),
    CONSTRAINT [FK_Identifiers_Metadata] FOREIGN KEY ([MetadataId]) REFERENCES [Metadata]([Id])
);
