

-------------------------------------------------------------------------------
--  permission role def
-------------------------------------------------------------------------------
CREATE TABLE AUTH_PERM_ROLE_DEF(
        PERM_ID BIGINT NOT NULL,
        ROLE_DEF_ID BIGINT NOT NULL,
        CONSTRAINT PK_AUTH_PERM_ROLE_DEF PRIMARY KEY(PERM_ID,ROLE_DEF_ID),
        CONSTRAINT FK_AUTH_PERM_ROLE_DEF_PERM FOREIGN KEY(PERM_ID) REFERENCES AUTH_PERM(ID),
        CONSTRAINT FK_AUTH_PERM_ROLE_DEF_ROLE_DEF FOREIGN KEY(ROLE_DEF_ID) REFERENCES AUTH_ROLE_DEF(ID)
);

COMMENT ON TABLE AUTH_PERM_ROLE_DEF IS '权限角色定义关系';
COMMENT ON COLUMN AUTH_PERM_ROLE_DEF.PERM_ID IS '外键，权限';
COMMENT ON COLUMN AUTH_PERM_ROLE_DEF.ROLE_DEF_ID IS '外键，角色定义';
