CREATE TABLE [dbo].[NumberSchemata] (
    [Id] INT IDENTITY NOT NULL,
    [DefaultValue] FLOAT NULL,
    [MultipleOF] FLOAT NULL,
    [Maximum] FLOAT NULL,
    [IsExclusiveMaximum] BIT NULL,
    [Minimum] FLOAT NULL,
    [IsExclusiveMinimum] BIT NULL,
    CONSTRAINT [PK_NumberSchemata] PRIMARY KEY ([Id])
);
