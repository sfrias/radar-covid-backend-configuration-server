CREATE SCHEMA CONFIGURATION;

CREATE SEQUENCE CONFIGURATION.SQ_NM_ID_EXPOSURE_CONFIGURATION;
CREATE SEQUENCE CONFIGURATION.SQ_NM_ID_GENERAL_CONFIGURATION;

CREATE TABLE CONFIGURATION.EXPOSURE_CONFIGURATION (
    NM_ID_CONFIGURATION       INTEGER DEFAULT nextval('CONFIGURATION.SQ_NM_ID_EXPOSURE_CONFIGURATION'),
    NM_ID_CONFIGURATION_TYPE  SMALLINT,
    NM_LEVEL_VALUE_1          SMALLINT,
    NM_LEVEL_VALUE_2          SMALLINT,
    NM_LEVEL_VALUE_3          SMALLINT,
    NM_LEVEL_VALUE_4          SMALLINT,
    NM_LEVEL_VALUE_5          SMALLINT,
    NM_LEVEL_VALUE_6          SMALLINT,
    NM_LEVEL_VALUE_7          SMALLINT,
    NM_LEVEL_VALUE_8          SMALLINT,
    NM_RISK_WEIGHT            NUMERIC(5,2),
    CONSTRAINT PK_EXPOSURE_CONFIGURATION
        PRIMARY KEY (NM_ID_CONFIGURATION)
);

CREATE TABLE CONFIGURATION.GENERAL_CONFIGURATION (
    NM_ID_GEN_CONFIGURATION       INTEGER DEFAULT nextval('CONFIGURATION.SQ_NM_ID_GENERAL_CONFIGURATION'),
    NM_ID_GEN_CONFIGURATION_TYPE  SMALLINT,
	NM_ID_GEN_VALUE_TYPE          SMALLINT,
    DE_LABEL                      CHAR VARYING(200),
    DE_VALUE                      CHAR VARYING(200),
    DE_MIN_VALUE                  CHAR VARYING(200),
    DE_MAX_VALUE                  CHAR VARYING(200),
    CONSTRAINT PK_GENERAL_CONFIGURATION
        PRIMARY KEY (NM_ID_GEN_CONFIGURATION)
);

ALTER SEQUENCE CONFIGURATION.SQ_NM_ID_EXPOSURE_CONFIGURATION
    OWNED BY CONFIGURATION.EXPOSURE_CONFIGURATION.NM_ID_CONFIGURATION;

ALTER SEQUENCE CONFIGURATION.SQ_NM_ID_GENERAL_CONFIGURATION
    OWNED BY CONFIGURATION.GENERAL_CONFIGURATION.NM_ID_GEN_CONFIGURATION;



