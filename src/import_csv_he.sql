/*
    Author:     Wyatt Sharber, Akash Rama, Hunter Ewing
    Purpose:    Import CSV file into a PSQL table
    Date:       December 2, 2019
*/

-- Drop any existing tables
DROP TABLE IF EXISTS parcel;
DROP TABLE IF EXISTS resbldg;
DROP TABLE IF EXISTS rpsale;

-- Create a table for the King County Parcel data
CREATE TABLE parcel (
    "Major" CHAR(6),
    "Minor" CHAR(4),
    "PropName" CHAR(80),
    "PlatName" CHAR(50),
    "PlatLot" CHAR(14),
    "PlatBlock" CHAR(7),
    "Range" NUMERIC(2),
    "Township" NUMERIC(2),
    "Section" NUMERIC(2),
    "QuarterSection" CHAR(2),
    "PropType" CHAR(1),
    "Area" CHAR(3),
    "SubArea" CHAR(3),
    "SpecArea" CHAR(3),
    "SpecSubArea" CHAR(3),
    "DistrictName" CHAR(80),
    "LevyCode" CHAR(4),
    "CurrentZoning" CHAR(50),
    "HBUAsIfVacant" NUMERIC(2),
    "HBUAsImproved" NUMERIC(1),
    "PresentUse" NUMERIC(3),
    "SqFtLot" NUMERIC(9),
    "WaterSystem" NUMERIC(1),
    "SewerSystem" NUMERIC(1),
    "Access" NUMERIC(1),
    "Topography" NUMERIC(1),
    "StreetSurface" NUMERIC(1),
    "RestrictiveSzShape" NUMERIC(1),
    "InadequateParking" NUMERIC(1),
    "PcntUnusable" NUMERIC(3),
    "Unbuildable" CHAR(5), 
    "MtRainier" NUMERIC(1),
    "Olympics" NUMERIC(1),
    "Cascades" NUMERIC(1),
    "Territorial" NUMERIC(1),
    "SeattleSkyline" NUMERIC(1),
    "PugetSound" NUMERIC(1),
    "LakeWashington" NUMERIC(1),
    "LakeSammamish" NUMERIC(1),
    "SmallLakeRiverCreek" NUMERIC(1),
    "OtherView" NUMERIC(1),
    "WfntLocation" NUMERIC(2),
    "WfntFootage" NUMERIC(5),
    "WfntBank" NUMERIC(1),
    "WfntPoorQuality" NUMERIC(1),
    "WfntRestrictedAccess" NUMERIC(1),
    "WfntAccessRights" CHAR(1),
    "WfntProximityInfluence" CHAR(1),
    "TidelandShoreland" NUMERIC(1),
    "LotDepthFactor" NUMERIC(3),
    "TrafficNoise" NUMERIC(1),
    "AirportNoise" NUMERIC(2),
    "PowerLines" CHAR(1),
    "OtherNuisances" CHAR(1),
    "NbrBldgSites" NUMERIC(3),
    "Contamination" NUMERIC(2),
    "DNRLease" CHAR(1),
    "AdjacentGolfFairway" CHAR(1),
    "AdjacentGreenbelt" CHAR(1),
    "HistoricSite" NUMERIC(1),
    "CurrentUseDesignation" NUMERIC(1),
    "NativeGrowthProtEsmt" CHAR(1),
    "Easements" CHAR(1),
    "OtherDesignation" CHAR(1),
    "DeedRestrictions" CHAR(1),
    "DevelopmentRightsPurch" CHAR(1),
    "CoalMineHazard" CHAR(1),
    "CriticalDrainage" CHAR(1),
    "ErosionHazard" CHAR(1),
    "LandfillBuffer" CHAR(1),
    "HundredYrFloodPlain" CHAR(1), 
    "SeismicHazard" CHAR(1),
    "LandslideHazard" CHAR(1),
    "SteepSlopeHazard" CHAR(1),
    "Stream" CHAR(1), 
    "Wetland" CHAR(1),
    "SpeciesOfConcern" CHAR(1),
    "SensitiveAreaTract" CHAR(1),
    "WaterProblems" CHAR(1),
    "TranspConcurrency" CHAR(1),
    "OtherProblems" CHAR(1)
);

-- Create a table for the Seattle residential property sales data
CREATE TABLE rpsale (
    "ExciseTaxNbr" NUMERIC(7),
    "Major" CHAR(6),
    "Minor" CHAR(4),
    "DocumentDate" CHAR(10),
    "SalePrice" NUMERIC(9),
    "RecordingNbr" CHAR(14),
    "Volume" CHAR(3),
    "Page" CHAR(3),
    "PlatNbr" CHAR(6),
    "PlatType" CHAR(1),
    "PlatLot" CHAR(14),
    "PlatBlock" CHAR(7),
    "SellerName" CHAR(300),
    "BuyerName" CHAR(300),
    "PropertyType" NUMERIC(2),
    "PrincipalUse" NUMERIC(2),
    "SaleInstrument" NUMERIC(2),
    "AFForestLand" CHAR(1),
    "AFCurrentUseLand" CHAR(1),
    "AFNonProfitUse" CHAR(1),
    "AFHistoricProperty" CHAR(1),
    "SaleReason" NUMERIC(2),
    "PropertyClass" NUMERIC(2),
    "SaleWarning" CHAR(25)
);

-- Create a table for the Seattle residential building type data
CREATE TABLE resbldg (
    "Major" CHAR(6),
    "Minor" CHAR(4),
    "BldgNbr" NUMERIC(3), 
    "NbrLivingUnits" NUMERIC(1),
    "Address" CHAR(60),
    "BuildingNumber" CHAR(5), 
    "Fraction" CHAR(3),
    "DirectionPrefix" CHAR(2),
    "StreetName" CHAR(25),
    "StreetType" CHAR(4),
    "DirectionSuffix" CHAR(2),
    "ZipCode" CHAR(10),
    "Stories" NUMERIC(3),
    "BldgGrade" NUMERIC(2),
    "BldgGradeVar" NUMERIC(2),
    "SqFt1stFloor" NUMERIC(5),
    "SqFtHalfFloor" NUMERIC(5),
    "SqFt2ndFloor" NUMERIC(5),
    "SqFtUpperFloor" NUMERIC(5),
    "SqFtUnfinFull" NUMERIC(5),
    "SqFtUnfinHalf" NUMERIC(5),
    "SqFtTotLiving" NUMERIC(5),
    "SqFtTotBasement" NUMERIC(5),
    "SqFtFinBasement" NUMERIC(5),
    "FinBasementGrade" NUMERIC(2),
    "SqFtGarageBasement" NUMERIC(5),
    "SqFtGarageAttached" NUMERIC(5),
    "DaylightBasement" CHAR(1),
    "SqFtOpenPorch" NUMERIC(5),
    "SqFtEnclosedPorch" NUMERIC(5),
    "SqFtDeck" NUMERIC(6),
    "HeatSystem" NUMERIC(2),
    "HeatSource" NUMERIC(2),
    "BrickStone" NUMERIC(3),
    "ViewUtilization" CHAR(1),
    "Bedrooms" NUMERIC(2),
    "BathHalfCount" NUMERIC(2),
    "Bath3qtrCount" NUMERIC(2),
    "BathFullCount" NUMERIC(2),
    "FpSingleStory" NUMERIC(2),
    "FpMultiStory" NUMERIC(2),
    "FpFreestanding" NUMERIC(2),
    "FpAdditional" NUMERIC(2),
    "YrBuilt" NUMERIC(4),
    "YrRenovated" NUMERIC(4),
    "PcntComplete" NUMERIC(3),
    "Obsolescence" NUMERIC(3),
    "PcntNetCondition" NUMERIC(3),
    "Condition" NUMERIC(1),
    "AddnlCost" NUMERIC(7)
);

-- Copy the csv contents of the 2017 5-year persons data into the table
COPY parcel
FROM '/Users/hunter_ewing/Documents/ds_10_28/seattle_housing_linear_reg/data/raw/EXTR_Parcel.csv'
DELIMITER ',' CSV HEADER ENCODING 'latin-1';

-- Copy the txt contents of the 2010 PUMA names data into the table
COPY resbldg
FROM '/Users/hunter_ewing/Documents/ds_10_28/seattle_housing_linear_reg/data/raw/EXTR_ResBldg.csv'
DELIMITER ',' CSV HEADER;

-- Copy the csv contents of the 2017 WA jobs data into the table
COPY rpsale
FROM '/Users/hunter_ewing/Documents/ds_10_28/seattle_housing_linear_reg/data/raw/EXTR_RPSale.csv'
DELIMITER ',' CSV HEADER;
