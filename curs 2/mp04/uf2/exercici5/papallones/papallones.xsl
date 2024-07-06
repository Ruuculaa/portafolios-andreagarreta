<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="text"/>

  <!-- Template principal para configurar la base de datos -->
  <xsl:template match="/">
    DROP DATABASE IF EXISTS Papallones;

    -- Crear la base de datos
    CREATE DATABASE IF NOT EXISTS papallones CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

    -- Usar la base de datos papallones
    USE papallones;

    -- Creación de tablas
    CREATE TABLE Papallones (
      id INT PRIMARY KEY AUTO_INCREMENT,
      nom TEXT NOT NULL,
      nomCientific TEXT NOT NULL
    );

    CREATE TABLE Data (
      id INT PRIMARY KEY AUTO_INCREMENT,
      dia DATE NOT NULL,
      humitatMaxima REAL NOT NULL,
      humitatMinima REAL NOT NULL,
      temperaturaMitjana REAL NOT NULL,
      pluja REAL DEFAULT NULL
    );

    CREATE TABLE Naixement (
      id INT PRIMARY KEY AUTO_INCREMENT,
      data_id INT NOT NULL,
      hora TIME NOT NULL,
      estat TEXT NOT NULL,
      quantitat INT NOT NULL,
      FOREIGN KEY (data_id) REFERENCES Data(id)
    );

    <!-- Aplicar templates a elementos específicos del XML -->
    <xsl:apply-templates select="papallones/especie"/>
  </xsl:template>

  <!-- Template para generar INSERTs en la tabla Papallones -->
  <xsl:template match="papallones/especie">
    INSERT INTO Papallones (nom, nomCientific) VALUES ('<xsl:value-of select="nom"/>', '<xsl:value-of select="nomCientific"/>');
    
    <!-- Procesar elementos de datos relacionados -->
    <xsl:apply-templates select="data"/>
  </xsl:template>

  <!-- Template para generar INSERTs en la tabla Data -->
  <xsl:template match="data">
    INSERT INTO Data (dia, humitatMaxima, humitatMinima, temperaturaMitjana, pluja) 
    VALUES ('<xsl:value-of select="@dia"/>', <xsl:value-of select="humitatMaxima"/>, <xsl:value-of select="humitatMinima"/>, <xsl:value-of select="temperaturaMitjana"/>, <xsl:value-of select="pluja"/>);
    
    <!-- Procesar naixements -->
    <xsl:apply-templates select="naixement"/>
  </xsl:template>

  <!-- Template para generar INSERTs en la tabla Naixement -->
  <xsl:template match="naixement">
    INSERT INTO Naixement (data_id, hora, estat, quantitat) 
    VALUES ((SELECT id FROM Data WHERE dia = '<xsl:value-of select="../@dia"/>'), '<xsl:value-of select="@hora"/>', '<xsl:value-of select="estat"/>', '<xsl:value-of select="quantitat"/>');
  </xsl:template>
</xsl:stylesheet>
