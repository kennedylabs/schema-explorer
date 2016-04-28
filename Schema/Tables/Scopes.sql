CREATE TABLE [dbo].[Scopes] (
    [Id] INT IDENTITY NOT NULL,
	[ParentExecutionContextId] INT NULL,
	[ParentScopeId] INT NULL,
	[ParentFunctionId] INT NULL,
    [Namespace] NVARCHAR(512) NULL, 
    [MetadataId] INT NULL, 
    CONSTRAINT [PK_Scopes] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_Scopes_ExecutionContext] FOREIGN KEY ([ParentExecutionContextId]) REFERENCES [ExecutionContexts]([Id]),
    CONSTRAINT [FK_Scopes_Scopes] FOREIGN KEY ([ParentScopeId]) REFERENCES [Scopes]([Id]),
    CONSTRAINT [FK_Scopes_Functions] FOREIGN KEY ([ParentFunctionId]) REFERENCES [Functions]([Id]),
    CONSTRAINT [FK_Scopes_Metadata] FOREIGN KEY ([MetadataId]) REFERENCES [Metadata]([Id])
);
