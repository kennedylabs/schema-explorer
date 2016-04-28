CREATE TABLE [dbo].[ExecutionContexts] (
    [Id] INT IDENTITY NOT NULL,
	[IsActive] Bit NOT NULL,
    [RootScopeId] INT NOT NULL, 
    [CurrentScopeId] INT NOT NULL, 
    [MetadataId] INT NULL, 
    CONSTRAINT [PK_ExecutionContexts] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_ExecutionContexts_Scopes_Root] FOREIGN KEY ([RootScopeId]) REFERENCES [Scopes]([Id]),
    CONSTRAINT [FK_ExecutionContexts_Scopes_Current] FOREIGN KEY ([CurrentScopeId]) REFERENCES [Scopes]([Id]),
    CONSTRAINT [FK_ExecutionContexts_Metadata] FOREIGN KEY ([MetadataId]) REFERENCES [Metadata]([Id])
);
