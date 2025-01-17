/*Mason Buller*/
/*Database Project: Logins and Users*/

use MusicArtistMCB;

CREATE LOGIN User_MCB WITH PASSWORD = '********',
	CHECK_EXPIRATION = OFF,
	CHECK_POLICY = OFF;

CREATE USER User_MCB
	WITH DEFAULT_SCHEMA;

GRANT SELECT, UPDATE, INSERT, DELETE, REFERENCES, ALTER
ON Songs
TO User_MCB;

GRANT SELECT, UPDATE, INSERT, DELETE, REFERENCES, ALTER
ON ArtistID2_vw
TO User_MCB;
