
-- Swatch Upload Template 
-- This template outlines all 3 insert statements that need to be completed to add new swatches into the database. 

USE BrandSites;
GO 



-- 1. Add new swatch records to swatch table(dbo.Swatches) 
INSERT INTO dbo.Swatches (CollectionName,ColorName,ColorNumber,SwatchColorNumber,SPSRenderImageName,ItemNumber,ProductLineCode,SwatchProductLineCode,createdOn,EffectiveInDate,EffectiveOutDate,NewSwatch,NewSwatchEffectiveOutDate,OrderInd,Renderable,Opacity,BrandId) VALUES
('Boundaries 2\"','Glacial Gray','95297','95297','R_18_95297','18S-95297','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Boundaries 2\"','Misty Fog','95298','95298','R_18_95298','18S-95298','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Celestial 2\"','Dawn','95215','95215','R_18_95215','18S-95215','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Celestial 2\"','Dusk','95211','95211','R_18_95211','18S-95211','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Celestial 2\"','Mocha','95214','95214','R_18_95214','18S-95214','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Celestial 2\"','Moon Stone','95213','95213','R_18_95213','18S-95213','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Contemporary Grid 1\"','Silver Mist','95305','95305','R_18_95305','18S-95305','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Contemporary Grid 2\"','True Ivory','95306','95306','R_18_95306','18S-95306','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Crystal Rivers 1\"','Bliss','95343','95343','R_18_95343','18S-95343','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Crystal Rivers 2\"','Sandy Gray','95341','95341','R_18_95341','18S-95341','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Crystal Rivers 2\"','White Swan','95340','95340','R_18_95340','18S-95340','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Crystal Rivers 3\"','Driftwood','95342','95342','R_18_95342','18S-95342','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Evening Glow 1\"','Orion','95315','95315','R_18_95315','18S-95315','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Evening Glow 2\"','Nimbus','95317','95317','R_18_95317','18S-95317','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Evening Glow 2\"','Peaceful Gray','95312','95312','R_18_95312','18S-95312','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Evening Glow 2\"','Polaris','95318','95318','R_18_95318','18S-95318','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Evening Glow 2\"','Timeless Taupe','95319','95319','R_18_95319','18S-95319','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,1),
('Graphite 2\"','Graceful Gray','95290','95290','R_18_95290','18S-95290','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Graphite 2\"','Modern Taupe','95291','95291','R_18_95291','18S-95291','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Graphite 2\"','Soft Down','95292','95292','R_18_95292','18S-95292','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Infinite 2\"','Cirrus','95325','95325','R_18_95325','18S-95325','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Infinite 2\"','Modern Silver','95326','95326','R_18_95326','18S-95326','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Infinite 2\"','White Lace','95327','95327','R_18_95327','18S-95327','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Modern Lattice 2\"','Chai Latte','95353','95353','R_18_95353','18S-95353','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Modern Lattice 2\"','Cloudburst','95352','95352','R_18_95352','18S-95352','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Modern Lattice 2\"','Natural Ivory','95355','95355','R_18_95355','18S-95355','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Modern Lattice 2\"','Slate','95351','95351','R_18_95351','18S-95351','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('New Dimension 2\"','Champagne','95336','95336','R_18_95336','18S-95336','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('New Dimension 2\"','Frothy White','95337','95337','R_18_95337','18S-95337','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('New Dimension 2\"','Stardust','95335','95335','R_18_95335','18S-95335','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Summer Breeze 2\"','Clover','95283','95283','R_18_95283','18S-95283','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Summer Breeze 2\"','Morning Dove','95284','95284','R_18_95284','18S-95284','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Summer Breeze 2\"','Sandbar','95285','95285','R_18_95285','18S-95285','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Cinder','Brushed Gray','94134','94134','R_18_94134','18S-94134','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Cinder','Coconut Milk','94132','94132','R_18_94132','18S-94132','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Cinder','Molten Silver','94137','94137','R_18_94137','18S-94137','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Cinder','Toasted Sugar','94136','94136','R_18_94136','18S-94136','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Abstract','Azurine','94295','94295','R_18_94295','18S-94295','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Abstract','Craftsman','94296','94296','R_18_94296','18S-94296','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Abstract','Obsidian','94298','94298','R_18_94298','18S-94298','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Abstract','Tumbled Stone','94297','94297','R_18_94297','18S-94297','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Dreamy','Dusky Moment','94275','94275','R_18_94275','18S-94275','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Dreamy','Evocative Ivory','94277','94277','R_18_94277','18S-94277','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Dreamy','Silver Shadow','94276','94276','R_18_94276','18S-94276','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Fresh Linen','Clean Khaki','94112','94112','R_18_94112','18S-94112','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Fresh Linen','Warm Beige','94115','94115','R_18_94115','18S-94115','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Fresh Linen','Wild Oats','94111','94111','R_18_94111','18S-94111','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Grooves','Black Abstract','94282','94282','R_18_94282','18S-94282','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Grooves','Gray ','94280','94280','R_18_94280','18S-94280','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Grooves','Whisper White','94281','94281','R_18_94281','18S-94281','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Refined Wave','Atlantic White','94100','94100','R_18_94100','18S-94100','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Refined Wave','Coconut','94101','94101','R_18_94101','18S-94101','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Refined Wave','Maine Mist','94106','94106','R_18_94106','18S-94106','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Refined Wave','Sand Dune','94102','94102','R_18_94102','18S-94102','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Seaway','Anchor','94196','94196','R_18_94196','18S-94196','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Seaway','Bayside','94197','94197','R_18_94197','18S-94197','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Seaway','Driftwood','94198','94198','R_18_94198','18S-94198','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Seaway','Sea Scallop','94195','94195','R_18_94195','18S-94195','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Shoreside','Eclipse','94270','94270','R_18_94270','18S-94270','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Shoreside','Moon Stone','94272','94272','R_18_94272','18S-94272','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Shoreside','Oat Grass','94273','94273','R_18_94273','18S-94273','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Shoreside','Soft Shale','94271','94271','R_18_94271','18S-94271','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Tranquil Beach','Calla Lily','94256','94256','R_18_94256','18S-94256','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Tranquil Beach','Coastal Gray','94258','94258','R_18_94258','18S-94258','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3),
('Tranquil Beach','Sand Castle','94255','94255','R_18_94255','18S-94255','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'Y',DATEADD(month, 4, CURRENT_TIMESTAMP),'O','Y',100,3)
GO

-- 2. Assign a color range to each swatch created above. See table-references/color-ranges.csv for values.(dbo.SwatchesToColorRanges) 
INSERT INTO dbo.SwatchesToCategories (SwatchCategoryId, SwatchId) VALUES
('6841', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95297' AND ColorName LIKE 'Glacial Gray')),
('6841', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95298' AND ColorName LIKE 'Misty Fog')),
('7454', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95215' AND ColorName LIKE 'Dawn')),
('7454', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95211' AND ColorName LIKE 'Dusk')),
('7454', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95214' AND ColorName LIKE 'Mocha')),
('7454', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95213' AND ColorName LIKE 'Moon Stone')),
('6841', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95305' AND ColorName LIKE 'Silver Mist')),
('6841', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95306' AND ColorName LIKE 'True Ivory')),
('6841', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95343' AND ColorName LIKE 'Bliss')),
('6841', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95341' AND ColorName LIKE 'Sandy Gray')),
('6841', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95340' AND ColorName LIKE 'White Swan')),
('7454', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95342' AND ColorName LIKE 'Driftwood')),
('6841', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95315' AND ColorName LIKE 'Orion')),
('6841', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95317' AND ColorName LIKE 'Nimbus')),
('6841', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95312' AND ColorName LIKE 'Peaceful Gray')),
('6841', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95318' AND ColorName LIKE 'Polaris')),
('6841', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 1 AND ColorNumber LIKE '95319' AND ColorName LIKE 'Timeless Taupe')),
('6841', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95290' AND ColorName LIKE 'Graceful Gray')),
('6841', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95291' AND ColorName LIKE 'Modern Taupe')),
('6841', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95292' AND ColorName LIKE 'Soft Down')),
('6841', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95325' AND ColorName LIKE 'Cirrus')),
('6841', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95326' AND ColorName LIKE 'Modern Silver')),
('6841', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95327' AND ColorName LIKE 'White Lace')),
('6841', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95353' AND ColorName LIKE 'Chai Latte')),
('6841', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95352' AND ColorName LIKE 'Cloudburst')),
('6841', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95355' AND ColorName LIKE 'Natural Ivory')),
('6841', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95351' AND ColorName LIKE 'Slate')),
('6841', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95336' AND ColorName LIKE 'Champagne')),
('6841', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95337' AND ColorName LIKE 'Frothy White')),
('6841', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95335' AND ColorName LIKE 'Stardust')),
('6841', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95283' AND ColorName LIKE 'Clover')),
('6841', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95284' AND ColorName LIKE 'Morning Dove')),
('6841', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95285' AND ColorName LIKE 'Sandbar')),
('6844', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94134' AND ColorName LIKE 'Brushed Gray')),
('6844', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94132' AND ColorName LIKE 'Coconut Milk')),
('6844', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94137' AND ColorName LIKE 'Molten Silver')),
('6844', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94136' AND ColorName LIKE 'Toasted Sugar')),
('6843', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94295' AND ColorName LIKE 'Azurine')),
('6843', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94296' AND ColorName LIKE 'Craftsman')),
('6843', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94298' AND ColorName LIKE 'Obsidian')),
('6843', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94297' AND ColorName LIKE 'Tumbled Stone')),
('6844', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94275' AND ColorName LIKE 'Dusky Moment')),
('6844', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94277' AND ColorName LIKE 'Evocative Ivory')),
('6844', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94276' AND ColorName LIKE 'Silver Shadow')),
('6844', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94112' AND ColorName LIKE 'Clean Khaki')),
('6844', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94115' AND ColorName LIKE 'Warm Beige')),
('6844', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94111' AND ColorName LIKE 'Wild Oats')),
('6843', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94282' AND ColorName LIKE 'Black Abstract')),
('6843', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94280' AND ColorName LIKE 'Gray ')),
('6843', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94281' AND ColorName LIKE 'Whisper White')),
('6844', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94100' AND ColorName LIKE 'Atlantic White')),
('6844', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94101' AND ColorName LIKE 'Coconut')),
('6844', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94106' AND ColorName LIKE 'Maine Mist')),
('6844', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94102' AND ColorName LIKE 'Sand Dune')),
('6843', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94196' AND ColorName LIKE 'Anchor')),
('6843', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94197' AND ColorName LIKE 'Bayside')),
('6843', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94198' AND ColorName LIKE 'Driftwood')),
('6843', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94195' AND ColorName LIKE 'Sea Scallop')),
('6843', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94270' AND ColorName LIKE 'Eclipse')),
('6843', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94272' AND ColorName LIKE 'Moon Stone')),
('6843', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94273' AND ColorName LIKE 'Oat Grass')),
('6843', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94271' AND ColorName LIKE 'Soft Shale')),
('6843', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94256' AND ColorName LIKE 'Calla Lily')),
('6843', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94258' AND ColorName LIKE 'Coastal Gray')),
('6843', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94255' AND ColorName LIKE 'Sand Castle'))
GO

-- 3.  Attach swatches to their swatch Categories (dbo.SwatchesToCategories)
INSERT INTO dbo.SwatchesToColorRanges (SwatchId,ColorRangeId,DisplayOrder) Values
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95297' AND ColorName LIKE 'Glacial Gray'), 3,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95298' AND ColorName LIKE 'Misty Fog'), 8,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95215' AND ColorName LIKE 'Dawn'), 3,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95211' AND ColorName LIKE 'Dusk'), 2,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95214' AND ColorName LIKE 'Mocha'), 2,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95213' AND ColorName LIKE 'Moon Stone'), 3,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95305' AND ColorName LIKE 'Silver Mist'), 8,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95306' AND ColorName LIKE 'True Ivory'), 8,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95343' AND ColorName LIKE 'Bliss'), 8,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95341' AND ColorName LIKE 'Sandy Gray'), 3,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95340' AND ColorName LIKE 'White Swan'), 8,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95342' AND ColorName LIKE 'Driftwood'), 3,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95315' AND ColorName LIKE 'Orion'), 8,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95317' AND ColorName LIKE 'Nimbus'), 3,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95312' AND ColorName LIKE 'Peaceful Gray'), 3,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95318' AND ColorName LIKE 'Polaris'), 8,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 1 AND ColorNumber LIKE '95319' AND ColorName LIKE 'Timeless Taupe'), 2,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95290' AND ColorName LIKE 'Graceful Gray'), 3,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95291' AND ColorName LIKE 'Modern Taupe'), 2,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95292' AND ColorName LIKE 'Soft Down'), 8,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95325' AND ColorName LIKE 'Cirrus'), 8,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95326' AND ColorName LIKE 'Modern Silver'), 3,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95327' AND ColorName LIKE 'White Lace'), 8,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95353' AND ColorName LIKE 'Chai Latte'), 2,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95352' AND ColorName LIKE 'Cloudburst'), 8,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95355' AND ColorName LIKE 'Natural Ivory'), 8,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95351' AND ColorName LIKE 'Slate'), 3,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95336' AND ColorName LIKE 'Champagne'), 8,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95337' AND ColorName LIKE 'Frothy White'), 8,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95335' AND ColorName LIKE 'Stardust'), 3,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95283' AND ColorName LIKE 'Clover'), 3,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95284' AND ColorName LIKE 'Morning Dove'), 8,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '95285' AND ColorName LIKE 'Sandbar'), 2,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94134' AND ColorName LIKE 'Brushed Gray'), 3,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94132' AND ColorName LIKE 'Coconut Milk'), 2,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94137' AND ColorName LIKE 'Molten Silver'), 3,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94136' AND ColorName LIKE 'Toasted Sugar'), 8,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94295' AND ColorName LIKE 'Azurine'), 1,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94296' AND ColorName LIKE 'Craftsman'), 8,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94298' AND ColorName LIKE 'Obsidian'), 2,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94297' AND ColorName LIKE 'Tumbled Stone'), 8,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94275' AND ColorName LIKE 'Dusky Moment'), 3,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94277' AND ColorName LIKE 'Evocative Ivory'), 8,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94276' AND ColorName LIKE 'Silver Shadow'), 3,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94112' AND ColorName LIKE 'Clean Khaki'), 2,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94115' AND ColorName LIKE 'Warm Beige'), 2,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94111' AND ColorName LIKE 'Wild Oats'), 3,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94282' AND ColorName LIKE 'Black Abstract'), 3,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94280' AND ColorName LIKE 'Gray '), 3,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94281' AND ColorName LIKE 'Whisper White'), 8,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94100' AND ColorName LIKE 'Atlantic White'), 2,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94101' AND ColorName LIKE 'Coconut'), 2,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94106' AND ColorName LIKE 'Maine Mist'), 3,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94102' AND ColorName LIKE 'Sand Dune'), 3,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94196' AND ColorName LIKE 'Anchor'), 3,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94197' AND ColorName LIKE 'Bayside'), 8,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94198' AND ColorName LIKE 'Driftwood'), 2,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94195' AND ColorName LIKE 'Sea Scallop'), 8,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94270' AND ColorName LIKE 'Eclipse'), 3,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94272' AND ColorName LIKE 'Moon Stone'), 8,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94273' AND ColorName LIKE 'Oat Grass'), 2,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94271' AND ColorName LIKE 'Soft Shale'), 3,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94256' AND ColorName LIKE 'Calla Lily'), 8,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94258' AND ColorName LIKE 'Coastal Gray'), 3,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '94255' AND ColorName LIKE 'Sand Castle'), 2,1)
GO
