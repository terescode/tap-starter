DROP TABLE IF EXISTS TREE;
CREATE TABLE TREE (
   ID IDENTITY NOT NULL PRIMARY KEY, 
   SCI_NAME VARCHAR(255) NOT NULL, 
   COMMON_NAME VARCHAR(255) NOT NULL,
   BARK_TYPE VARCHAR(255),
   LEAF_TYPE VARCHAR(255),
   FRUIT_TYPE VARCHAR(255) 
);

INSERT INTO TREE (
  SCI_NAME,
  COMMON_NAME,
  BARK_TYPE,
  LEAF_TYPE,
  FRUIT_TYPE
) VALUES (
  'Thuja occidentalis',
  'ARBORVITAE',
  'Ashy gray to light reddish brown',
  'Scale-like, yellowish green in color, aromatic when crushed, borne in pairs closely overlapping',
  'An oblong, erect cone, 1/2 inch long, reddish brown in color, persists through the winter'
);

INSERT INTO TREE (
  SCI_NAME,
  COMMON_NAME,
  BARK_TYPE,
  LEAF_TYPE,
  FRUIT_TYPE
) VALUES (
  'Betula alleghaniensis',
  'YELLOW BIRCH',
  'Bright, silvery, yellowish gray in color',
  'Similar to those of black birch; undersurface somewhat hairy, particularly along veins',
  'Similar to that of black birch though usually wider in proportion to its length, falling in late autumn and throughout the winter'
);

INSERT INTO TREE (
  SCI_NAME,
  COMMON_NAME,
  BARK_TYPE,
  LEAF_TYPE,
  FRUIT_TYPE
) VALUES (
  'Juglans cinerea',
  'BUTTERNUT',
  'Smooth on young trunks and branches, light gray in color;',
  'Alternate, compound, with 11 to 17 practically stemless long-pointed leaflets, margins serrate as in black walnut',
  'A rather large nut, 1 1/2 inches long, tapering at the end, black with fine cut ridges, enclosed in a sticky, green husk'
);