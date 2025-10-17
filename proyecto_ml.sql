-- Creacion de extension Postgis para soporte de datos espaciales
CREATE EXTENSION postgis;

-- Creacion de tabla de nacimientos por barrio para el periodo 2000 a 2017
SELECT idbrrver AS id_vereda, barrvere AS vereda, comcor AS corregimiento, 
SUM(total_nac) AS total, SUM(nac_2000) AS nac_2000, SUM(nac_2001) AS nac_2001, SUM(nac_2002) AS nac_2002,
SUM(nac_2003) AS nac_2003, SUM(nac_2004) AS nac_2004, SUM(nac_2005) AS nac_2005, SUM(nac_2006) AS nac_2006,
SUM(nac_2007) AS nac_2007, SUM(nac_2008) AS nac_2008, SUM(nac_2009) AS nac_2009, SUM(nac_2010) AS nac_2010,
SUM(nac_2011) AS nac_2011, SUM(nac_2012) AS nac_2012, SUM(nac_2013) AS nac_2013, SUM(nac_2014) AS nac_2014,
SUM(nac_2015) AS nac_2015, SUM(nac_2016) AS nac_2016, SUM(nac_2017) AS nac_2017
FROM manzanas_cali_nacimientos
WHERE tipo_suelo = 'Rural'
GROUP BY id_vereda, vereda, corregimiento 
ORDER BY total DESC, nac_2000, nac_2001, nac_2002, nac_2003, nac_2004, nac_2005, nac_2006, nac_2007, nac_2008, nac_2009,
nac_2010, nac_2011, nac_2012, nac_2013, nac_2014, nac_2015, nac_2016, nac_2017;



