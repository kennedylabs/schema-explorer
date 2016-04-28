CREATE TABLE [dbo].[IntegerSchemata] (
    [Id] INT IDENTITY NOT NULL,
    [MultipleOF] INT NULL,
    [Maximum] INT NULL,
    [IsExclusiveMaximum] BIT NULL ,
    [Minimum] INT NULL,
    [IsExclusiveMinimum] BIT NULL,
    CONSTRAINT [PK_IntegerSchemata] PRIMARY KEY ([Id])
);
