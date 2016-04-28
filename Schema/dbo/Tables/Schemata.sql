﻿CREATE TABLE [dbo].[Schemata] (
    [Id]                               INT             IDENTITY (1, 1) NOT NULL,
    [Identifier]                       NVARCHAR (1024) NULL,
    [ParentIdentifier]                 NVARCHAR (1024) NULL,
    [ParentReferenceId]                NVARCHAR (MAX)  NOT NULL,
    [Title]                            NVARCHAR (255)  NOT NULL,
    [Descripion]                       NVARCHAR (MAX)  NULL,
    [Default]                          NVARCHAR (MAX)  NOT NULL,
    [MultipleOF]                       FLOAT (53)      NULL,
    [Maximum]                          FLOAT (53)      NULL,
    [isMaximumExclusive]               BIT             NOT NULL,
    [Minimum]                          FLOAT (53)      NULL,
    [isMinimumExclusive]               BIT             NOT NULL,
    [MaxLength]                        INT             NULL,
    [MinLength]                        INT             NULL,
    [Pattern]                          NVARCHAR (1024) NULL,
    [AllowAdditionalItems]             BIT             NULL,
    [AdditionalItemsSchemaReferenceId] NVARCHAR (MAX)  NOT NULL,
    [ArrayItemsSchema]                 NVARCHAR (MAX)  NOT NULL,
    [TupleItemsSchemata]               NVARCHAR (MAX)  NOT NULL,
    [MaxProperties]                    INT             NULL,
    [MinProperties]                    INT             NULL,
    [RequiredProperties]               NVARCHAR (MAX)  NOT NULL,
    [AllowAdditionalProperties]        NVARCHAR (MAX)  NOT NULL,
    [AdditionalProperties]             NVARCHAR (MAX)  NOT NULL,
    [Definitions]                      NVARCHAR (MAX)  NOT NULL,
    [Properties]                       NVARCHAR (MAX)  NOT NULL,
    [DependencySchema]                 NVARCHAR (MAX)  NOT NULL,
    [DependenciesNames]                NVARCHAR (MAX)  NOT NULL,
    [EnumValues]                       NVARCHAR (MAX)  NOT NULL,
    [Type]                             INT             NOT NULL,
    [AllOf]                            NVARCHAR (MAX)  NOT NULL,
    [AnyOf]                            NVARCHAR (MAX)  NOT NULL,
    [Not]                              NVARCHAR (MAX)  NOT NULL,
    [ParentId]                         NVARCHAR (MAX)  NOT NULL
);
