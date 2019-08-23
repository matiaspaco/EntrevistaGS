
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 08/07/2019 01:49:14
-- Generated from EDMX file: C:\SLN.NET\ProyectoPrueba\ClassLibraryInfraestructure\Datos\ProyectoPrueba.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [dbEtrevistas];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'EntrevistaSet'
CREATE TABLE [dbo].[EntrevistaSet] (
    [EntrevistaId] int IDENTITY(1,1) NOT NULL,
    [Fecha] datetime  NOT NULL,
    [Nombre] nvarchar(50)  NOT NULL,
    [Apellido] nvarchar(50)  NOT NULL,
    [DNI] nvarchar(9)  NOT NULL,
    [Asiste] smallint  NOT NULL,
    [Valoracion] smallint  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [EntrevistaId] in table 'EntrevistaSet'
ALTER TABLE [dbo].[EntrevistaSet]
ADD CONSTRAINT [PK_EntrevistaSet]
    PRIMARY KEY CLUSTERED ([EntrevistaId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------