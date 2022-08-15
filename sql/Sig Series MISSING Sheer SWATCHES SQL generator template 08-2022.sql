
-- Swatch Upload Template 
-- This template outlines all 3 insert statements that need to be completed to add new swatches into the database. 

USE BrandSites;
GO 



-- 1. Add new swatch records to swatch table(dbo.Swatches) 
INSERT INTO dbo.Swatches (CollectionName,ColorName,ColorNumber,SwatchColorNumber,SPSRenderImageName,ItemNumber,ProductLineCode,SwatchProductLineCode,createdOn,EffectiveInDate,EffectiveOutDate,OrderInd,Renderable,Opacity,BrandId) VALUES
('Voltaire 3\"','Crisp Cotton','96100','96100','R_18_96100','18S-96100','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'O','Y',100,3),
('Voltaire 3\"','Winter White','96101','96101','R_18_96101','18S-96101','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'O','Y',100,3),
('Voltaire 3\"','Warm Tan','96109','96109','R_18_96109','18S-96109','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'O','Y',100,3),
('Voltaire 3\"','Mineral Grey','96111','96111','R_18_96111','18S-96111','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'O','Y',100,3),
('Voltaire 3\"','Modern Grey','96117','96117','R_18_96117','18S-96117','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'O','Y',100,3),
('Voltaire 3\"','Thundermist','96118','96118','R_18_96118','18S-96118','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'O','Y',100,3),
('Voltaire 3\"','Warm Sand','96121','96121','R_18_96121','18S-96121','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'O','Y',100,3),
('Voltaire 3\"','Delicate Eggshell','96122','96122','R_18_96122','18S-96122','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'O','Y',100,3),
('Voltaire 3\"','Rain','96124','96124','R_18_96124','18S-96124','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'O','Y',100,3),
('Voltaire 3\"','First Snow','96125','96125','R_18_96125','18S-96125','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'O','Y',100,3),
('Voltaire Sheen 3\"','Golden Sky','96160','96160','R_18_96160','18S-96160','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'O','Y',100,3),
('Voltaire Sheen 3\"','Rich Ivory','96161','96161','R_18_96161','18S-96161','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'O','Y',100,3),
('Voltaire Sheen 3\"','White Wine','96162','96162','R_18_96162','18S-96162','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'O','Y',100,3),
('Voltaire Sheen 3\"','Pearl','96163','96163','R_18_96163','18S-96163','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'O','Y',100,3),
('Voltaire Woven 3\"','Deep Hickory','96180','96180','R_18_96180','18S-96180','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'O','Y',100,3),
('Voltaire Woven 3\"','Sandy Beige','96181','96181','R_18_96181','18S-96181','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'O','Y',100,3),
('Voltaire Woven 3\"','Heather Grey','96182','96182','R_18_96182','18S-96182','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'O','Y',100,1),
('Voltaire Woven 3\"','Natural Wheat','96183','96183','R_18_96183','18S-96183','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'O','Y',100,3),
('Galileo 2 3/4\"','Porcelain Beige','97200','97200','R_18_97200','18S-97200','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'O','Y',100,3),
('Galileo 2 3/4\"','First Snow','97201','97201','R_18_97201','18S-97201','18','18',CURRENT_TIMESTAMP,CURRENT_TIMESTAMP,DATEADD(year, 10, CURRENT_TIMESTAMP),'O','Y',100,3)
GO

-- 2. Assign a color range to each swatch created above. See table-references/color-ranges.csv for values.(dbo.SwatchesToColorRanges) 
INSERT INTO dbo.SwatchesToCategories (SwatchCategoryId, SwatchId) VALUES
('6841', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '96100' AND ColorName LIKE 'Crisp Cotton')),
('6841', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '96101' AND ColorName LIKE 'Winter White')),
('6841', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '96109' AND ColorName LIKE 'Warm Tan')),
('6841', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '96111' AND ColorName LIKE 'Mineral Grey')),
('6841', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '96117' AND ColorName LIKE 'Modern Grey')),
('6841', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '96118' AND ColorName LIKE 'Thundermist')),
('6841', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '96121' AND ColorName LIKE 'Warm Sand')),
('6841', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '96122' AND ColorName LIKE 'Delicate Eggshell')),
('6841', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '96124' AND ColorName LIKE 'Rain')),
('6841', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '96125' AND ColorName LIKE 'First Snow')),
('6841', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '96160' AND ColorName LIKE 'Golden Sky')),
('6841', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '96161' AND ColorName LIKE 'Rich Ivory')),
('6841', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '96162' AND ColorName LIKE 'White Wine')),
('6841', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '96163' AND ColorName LIKE 'Pearl')),
('6841', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '96180' AND ColorName LIKE 'Deep Hickory')),
('6841', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '96181' AND ColorName LIKE 'Sandy Beige')),
('6841', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 1 AND ColorNumber LIKE '96182' AND ColorName LIKE 'Heather Grey')),
('6841', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '96183' AND ColorName LIKE 'Natural Wheat')),
('6841', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '97200' AND ColorName LIKE 'Porcelain Beige')),
('6841', (SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '97201' AND ColorName LIKE 'First Snow'))
GO

-- 3.  Attach swatches to their swatch Categories (dbo.SwatchesToCategories)
INSERT INTO dbo.SwatchesToColorRanges (SwatchId,ColorRangeId,DisplayOrder) Values
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '96100' AND ColorName LIKE 'Crisp Cotton'), 3,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '96101' AND ColorName LIKE 'Winter White'), 8,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '96109' AND ColorName LIKE 'Warm Tan'), 3,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '96111' AND ColorName LIKE 'Mineral Grey'), 2,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '96117' AND ColorName LIKE 'Modern Grey'), 2,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '96118' AND ColorName LIKE 'Thundermist'), 3,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '96121' AND ColorName LIKE 'Warm Sand'), 8,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '96122' AND ColorName LIKE 'Delicate Eggshell'), 8,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '96124' AND ColorName LIKE 'Rain'), 8,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '96125' AND ColorName LIKE 'First Snow'), 3,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '96160' AND ColorName LIKE 'Golden Sky'), 8,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '96161' AND ColorName LIKE 'Rich Ivory'), 3,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '96162' AND ColorName LIKE 'White Wine'), 8,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '96163' AND ColorName LIKE 'Pearl'), 3,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '96180' AND ColorName LIKE 'Deep Hickory'), 3,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '96181' AND ColorName LIKE 'Sandy Beige'), 8,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 1 AND ColorNumber LIKE '96182' AND ColorName LIKE 'Heather Grey'), 2,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '96183' AND ColorName LIKE 'Natural Wheat'), 3,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '97200' AND ColorName LIKE 'Porcelain Beige'), 2,1),
((SELECT MAX(id) FROM dbo.Swatches WHERE BrandId = 3 AND ColorNumber LIKE '97201' AND ColorName LIKE 'First Snow'), 8,1)
GO
