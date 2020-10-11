
CREATE SEQUENCE public.seq_hr_usu_sis;

CREATE TABLE public.HR_USU_SIS (
                NR_HR_USU_SIS NUMERIC(6) NOT NULL DEFAULT nextval('public.seq_hr_usu_sis'),
                NM_HR_USU_SIS VARCHAR(30) NOT NULL,
                HR_INC_SGDO TIMESTAMP,
                HR_FIM_SGDO TIMESTAMP,
                HR_INC_TER TIMESTAMP,
                HR_FIM_TER TIMESTAMP,
                HR_INC_QRTO TIMESTAMP,
                HR_FIM_QRTO TIMESTAMP,
                HR_INC_QNTO TIMESTAMP,
                HR_FIM_QNTO TIMESTAMP,
                HR_INC_SXTO TIMESTAMP,
                HR_FIM_SXTO TIMESTAMP,
                HR_INC_SBD TIMESTAMP,
                HR_FIM_SBD TIMESTAMP,
                HR_INC_DMG TIMESTAMP,
                HR_FIM_DMG TIMESTAMP,
                CONSTRAINT nr_hr_usu_sis PRIMARY KEY (NR_HR_USU_SIS)
);
COMMENT ON TABLE public.HR_USU_SIS IS 'Tabela com o cadastro dos horários e dias para fazer login dos usuários do sistema';
COMMENT ON COLUMN public.HR_USU_SIS.NR_HR_USU_SIS IS 'PK tabela Horário Usuário Sistema';
COMMENT ON COLUMN public.HR_USU_SIS.NM_HR_USU_SIS IS 'Nome Horário Usuário Sistema';
COMMENT ON COLUMN public.HR_USU_SIS.HR_INC_SGDO IS 'Horário Início Usuário Sistema Segunda';
COMMENT ON COLUMN public.HR_USU_SIS.HR_FIM_SGDO IS 'Horário Fim Usuário Sistema Segunda';
COMMENT ON COLUMN public.HR_USU_SIS.HR_INC_TER IS 'Horário Início Terça';
COMMENT ON COLUMN public.HR_USU_SIS.HR_FIM_TER IS 'Horário Fim Terça';
COMMENT ON COLUMN public.HR_USU_SIS.HR_INC_QRTO IS 'Horário Início Quarta';
COMMENT ON COLUMN public.HR_USU_SIS.HR_FIM_QRTO IS 'Horário Fim Quarta';
COMMENT ON COLUMN public.HR_USU_SIS.HR_INC_QNTO IS 'Horário Início Quinta';
COMMENT ON COLUMN public.HR_USU_SIS.HR_FIM_QNTO IS 'Horário Fim Quinta';
COMMENT ON COLUMN public.HR_USU_SIS.HR_INC_SXTO IS 'Horário Início Sexta';
COMMENT ON COLUMN public.HR_USU_SIS.HR_FIM_SXTO IS 'Horário Fim Sexta';
COMMENT ON COLUMN public.HR_USU_SIS.HR_INC_SBD IS 'Horário Início Sábado';
COMMENT ON COLUMN public.HR_USU_SIS.HR_FIM_SBD IS 'Horário Fim Sábado';
COMMENT ON COLUMN public.HR_USU_SIS.HR_INC_DMG IS 'Horário Início Domingo';
COMMENT ON COLUMN public.HR_USU_SIS.HR_FIM_DMG IS 'Horário Fim Domingo';


ALTER SEQUENCE public.seq_hr_usu_sis OWNED BY public.HR_USU_SIS.NR_HR_USU_SIS;

CREATE SEQUENCE public.tip_und_nr_tip_und_seq;

CREATE TABLE public.TIP_UND (
                NR_TIP_UND NUMERIC(3) NOT NULL DEFAULT nextval('public.tip_und_nr_tip_und_seq'),
                NM_TIP_UND VARCHAR(30) NOT NULL,
                CONSTRAINT nr_tip_und PRIMARY KEY (NR_TIP_UND)
);
COMMENT ON TABLE public.TIP_UND IS 'Tipos de Unidade do Sistema';
COMMENT ON COLUMN public.TIP_UND.NR_TIP_UND IS 'PK tabela Tipo Unidade';
COMMENT ON COLUMN public.TIP_UND.NM_TIP_UND IS 'Nome do Tipo Unidade';


ALTER SEQUENCE public.tip_und_nr_tip_und_seq OWNED BY public.TIP_UND.NR_TIP_UND;

CREATE SEQUENCE public.seq_prm_sis;

CREATE TABLE public.PRM_SIS (
                NR_PRM_SIS NUMERIC(2) NOT NULL DEFAULT nextval('public.seq_prm_sis'),
                IN_AMB CHAR(1) NOT NULL,
                NR_MNTO_SSS_USU NUMERIC(3) NOT NULL,
                FSHR_BSB NUMERIC(3) NOT NULL,
                CONSTRAINT nr_prm_sis PRIMARY KEY (NR_PRM_SIS)
);
COMMENT ON TABLE public.PRM_SIS IS 'Tabela com o cadastro dos parâmetros do sistema';
COMMENT ON COLUMN public.PRM_SIS.NR_PRM_SIS IS 'PK tabela Parâmetro Sistema';
COMMENT ON COLUMN public.PRM_SIS.IN_AMB IS 'W=Web
M=Mobile';
COMMENT ON COLUMN public.PRM_SIS.NR_MNTO_SSS_USU IS 'Número de minutos de sessão do usuário';
COMMENT ON COLUMN public.PRM_SIS.FSHR_BSB IS 'Fuso Horário Brasília';


ALTER SEQUENCE public.seq_prm_sis OWNED BY public.PRM_SIS.NR_PRM_SIS;

CREATE SEQUENCE public.seq_und_fdrl;

CREATE TABLE public.UND_FDRL (
                NR_UND_FDRL NUMERIC(2) NOT NULL DEFAULT nextval('public.seq_und_fdrl'),
                CD_UND_FDRL VARCHAR(2) NOT NULL,
                NM_UND_FDRL VARCHAR(30) NOT NULL,
                SG_UND_FDRL VARCHAR(2) NOT NULL,
                CONSTRAINT nr_und_fdrl PRIMARY KEY (NR_UND_FDRL)
);
COMMENT ON TABLE public.UND_FDRL IS 'Tabela com o cadastro dos estados';
COMMENT ON COLUMN public.UND_FDRL.NR_UND_FDRL IS 'PK tabela Unidade Federal';
COMMENT ON COLUMN public.UND_FDRL.CD_UND_FDRL IS 'Código da Unidade Federal (SP,DF,etc)';
COMMENT ON COLUMN public.UND_FDRL.NM_UND_FDRL IS 'Nome da unidade federal';
COMMENT ON COLUMN public.UND_FDRL.SG_UND_FDRL IS 'Sigla Unidade Federal(DF,SP,RJ)';


ALTER SEQUENCE public.seq_und_fdrl OWNED BY public.UND_FDRL.NR_UND_FDRL;

CREATE SEQUENCE public.seq_cid;

CREATE TABLE public.MUN (
                NR_CID NUMERIC(4) NOT NULL DEFAULT nextval('public.seq_cid'),
                CD_MUN VARCHAR(5) NOT NULL,
                CD_MUN_CMT VARCHAR(7) NOT NULL,
                NM_MUN VARCHAR(50) NOT NULL,
                NR_UND_FDRL NUMERIC(2) NOT NULL,
                CONSTRAINT nr_mun PRIMARY KEY (NR_CID)
);
COMMENT ON TABLE public.MUN IS 'Tabela com o cadastro dos municípios';
COMMENT ON COLUMN public.MUN.NR_CID IS 'PK tabela Cidade';
COMMENT ON COLUMN public.MUN.CD_MUN IS 'Código Município';
COMMENT ON COLUMN public.MUN.CD_MUN_CMT IS 'Código Município Completo';
COMMENT ON COLUMN public.MUN.NM_MUN IS 'Nome do Município';
COMMENT ON COLUMN public.MUN.NR_UND_FDRL IS 'PK tabela Unidade Federal';


ALTER SEQUENCE public.seq_cid OWNED BY public.MUN.NR_CID;

CREATE SEQUENCE public.seq_pss;

CREATE TABLE public.PSS (
                NR_PSS NUMERIC(8) NOT NULL DEFAULT nextval('public.seq_pss'),
                NM_PSS VARCHAR(60) NOT NULL,
                TX_CPF_PSS VARCHAR(11) NOT NULL,
                TX_TCEL_PSS VARCHAR(11) NOT NULL,
                TX_EMAI_PSS VARCHAR(30),
                DT_HH_CAD_PSS TIMESTAMP NOT NULL,
                CONSTRAINT nr_pss PRIMARY KEY (NR_PSS)
);
COMMENT ON TABLE public.PSS IS 'Tabela com o cadastro das pessoas';
COMMENT ON COLUMN public.PSS.NR_PSS IS 'PK tabela pessoa';
COMMENT ON COLUMN public.PSS.NM_PSS IS 'Nome da Pessoa';
COMMENT ON COLUMN public.PSS.TX_CPF_PSS IS 'Cpf da Pessoa';
COMMENT ON COLUMN public.PSS.TX_TCEL_PSS IS 'telefone celular da pessoa';
COMMENT ON COLUMN public.PSS.TX_EMAI_PSS IS 'Email da pessoa';
COMMENT ON COLUMN public.PSS.DT_HH_CAD_PSS IS 'Data hora cadastro pessoa';


ALTER SEQUENCE public.seq_pss OWNED BY public.PSS.NR_PSS;

CREATE SEQUENCE public.seq_und;

CREATE TABLE public.UND (
                NR_UND NUMERIC(4) NOT NULL DEFAULT nextval('public.seq_und'),
                NR_CID NUMERIC(4) NOT NULL,
                TX_EMAI_UND VARCHAR(30),
                CD_UND VARCHAR(4) NOT NULL,
                TX_TEL_UND VARCHAR(11),
                TX_NM_UND VARCHAR(50) NOT NULL,
                IN_UND_ATV CHAR(1) NOT NULL,
                DT_HH_CAD_UND TIMESTAMP NOT NULL,
                TX_JST_UND_IATV VARCHAR(30),
                NR_TIP_UND NUMERIC(3) NOT NULL,
                HR_UND TIMESTAMP NOT NULL,
                CONSTRAINT nr_und PRIMARY KEY (NR_UND)
);
COMMENT ON TABLE public.UND IS 'Tabela com o cadastro das Unidades';
COMMENT ON COLUMN public.UND.NR_UND IS 'PK Tabela Unidade';
COMMENT ON COLUMN public.UND.NR_CID IS 'FK tabela Cidade';
COMMENT ON COLUMN public.UND.TX_EMAI_UND IS 'Email da Unidade';
COMMENT ON COLUMN public.UND.CD_UND IS 'Código da unidade';
COMMENT ON COLUMN public.UND.TX_TEL_UND IS 'Telefone da Unidade';
COMMENT ON COLUMN public.UND.TX_NM_UND IS 'Nome da Unidade';
COMMENT ON COLUMN public.UND.IN_UND_ATV IS '1 = Sim
0 = Não';
COMMENT ON COLUMN public.UND.DT_HH_CAD_UND IS 'Data Hora Cadastro Unidade';
COMMENT ON COLUMN public.UND.TX_JST_UND_IATV IS 'Texto com a justificativa da inatividade da unidade';
COMMENT ON COLUMN public.UND.NR_TIP_UND IS 'PK tabela Tipo Unidade';
COMMENT ON COLUMN public.UND.HR_UND IS 'Horário Unidade';


ALTER SEQUENCE public.seq_und OWNED BY public.UND.NR_UND;

CREATE SEQUENCE public.seq_usu_sis;

CREATE TABLE public.USU_SIS (
                NR_USU_SIS NUMERIC(6) NOT NULL DEFAULT nextval('public.seq_usu_sis'),
                TX_SNH_USU_SIS VARCHAR(11) NOT NULL,
                IN_USU_SIS_ATI CHAR(1) DEFAULT 1 NOT NULL,
                CD_CHV_SSBB VARCHAR(8),
                NR_PSS NUMERIC(8) NOT NULL,
                DT_HH_CAD_USU_SIS TIMESTAMP NOT NULL,
                NR_HR_USU_SIS NUMERIC(6) NOT NULL,
                CONSTRAINT nr_usu_sis PRIMARY KEY (NR_USU_SIS)
);
COMMENT ON TABLE public.USU_SIS IS 'Tabela com o cadastro de usuários do sistema';
COMMENT ON COLUMN public.USU_SIS.NR_USU_SIS IS 'Pk tabela Usuário Sistema';
COMMENT ON COLUMN public.USU_SIS.TX_SNH_USU_SIS IS 'Senha do usuário sistema';
COMMENT ON COLUMN public.USU_SIS.IN_USU_SIS_ATI IS 'Ativo(1 =Sim ou 0=Não)';
COMMENT ON COLUMN public.USU_SIS.CD_CHV_SSBB IS 'Chave sissbb';
COMMENT ON COLUMN public.USU_SIS.NR_PSS IS 'PK tabela pessoa';
COMMENT ON COLUMN public.USU_SIS.DT_HH_CAD_USU_SIS IS 'Data Hora Cadastro Usuário Sistema';
COMMENT ON COLUMN public.USU_SIS.NR_HR_USU_SIS IS 'PK tabela Horário Usuário Sistema';


ALTER SEQUENCE public.seq_usu_sis OWNED BY public.USU_SIS.NR_USU_SIS;

CREATE SEQUENCE public.seq_menu;

CREATE TABLE public.MENU (
                NR_MENU NUMERIC(3) NOT NULL DEFAULT nextval('public.seq_menu'),
                TX_DCR_MENU VARCHAR(30) NOT NULL,
                IN_SIS_MENU CHAR(1) NOT NULL,
                CONSTRAINT nr_menu PRIMARY KEY (NR_MENU)
);
COMMENT ON TABLE public.MENU IS 'Cadastro de menus do sistema';
COMMENT ON COLUMN public.MENU.NR_MENU IS 'Pk tabela Menu';
COMMENT ON COLUMN public.MENU.TX_DCR_MENU IS 'Descrição menu';
COMMENT ON COLUMN public.MENU.IN_SIS_MENU IS 'W=Web
M=Mobile';


ALTER SEQUENCE public.seq_menu OWNED BY public.MENU.NR_MENU;

CREATE SEQUENCE public.seq_prfl_;

CREATE TABLE public.PRFL (
                NR_PRFL NUMERIC(4) NOT NULL DEFAULT nextval('public.seq_prfl_'),
                NM_PRFL VARCHAR(30) NOT NULL,
                CONSTRAINT nr_prfl PRIMARY KEY (NR_PRFL)
);
COMMENT ON TABLE public.PRFL IS 'Tabela com o cadastro de perfis de usuário do sistema';
COMMENT ON COLUMN public.PRFL.NR_PRFL IS 'PK tabela Perfil';
COMMENT ON COLUMN public.PRFL.NM_PRFL IS 'Nome Perfil';


ALTER SEQUENCE public.seq_prfl_ OWNED BY public.PRFL.NR_PRFL;

CREATE SEQUENCE public.seq_prfl_menu;

CREATE TABLE public.PRFL_MENU (
                NR_PRFL_MENU NUMERIC(4) NOT NULL DEFAULT nextval('public.seq_prfl_menu'),
                NR_MENU NUMERIC(3) NOT NULL,
                NR_PRFL NUMERIC(4) NOT NULL,
                CONSTRAINT nr_prfl_menu PRIMARY KEY (NR_PRFL_MENU)
);
COMMENT ON TABLE public.PRFL_MENU IS 'Tabela com o vínculo entre os perfis e os menus exibidos no sistema';
COMMENT ON COLUMN public.PRFL_MENU.NR_PRFL_MENU IS 'PK tabela Perfil Menu';
COMMENT ON COLUMN public.PRFL_MENU.NR_MENU IS 'FK tabela Menu';
COMMENT ON COLUMN public.PRFL_MENU.NR_PRFL IS 'FK tabela Perfil';


ALTER SEQUENCE public.seq_prfl_menu OWNED BY public.PRFL_MENU.NR_PRFL_MENU;

CREATE SEQUENCE public.seq_prfl_und_usu;

CREATE TABLE public.PRFL_UND_USU_SIS (
                NR_PRFL_UND_USU_SIS NUMERIC(6) NOT NULL DEFAULT nextval('public.seq_prfl_und_usu'),
                NR_PRFL NUMERIC(4) NOT NULL,
                NR_UND NUMERIC(4),
                NR_USU_SIS NUMERIC(6) NOT NULL,
                DT_HH_CAD_PRFL_UND_SIS TIMESTAMP NOT NULL,
                IN_PRFL_UND_USU_SIS_ATI CHAR(1) NOT NULL,
                TX_JST_PRFL_UND_USU_IATV VARCHAR(30),
                CONSTRAINT nr_prfl_und_usu_sis PRIMARY KEY (NR_PRFL_UND_USU_SIS)
);
COMMENT ON TABLE public.PRFL_UND_USU_SIS IS 'Tabela de vinculo entre usuário sistema, perfil e unidade';
COMMENT ON COLUMN public.PRFL_UND_USU_SIS.NR_PRFL_UND_USU_SIS IS 'PK tabela Perfil Unidade Usuário Sistema';
COMMENT ON COLUMN public.PRFL_UND_USU_SIS.NR_PRFL IS 'FK tabela Perfil';
COMMENT ON COLUMN public.PRFL_UND_USU_SIS.NR_UND IS 'FK Tabela Unidade';
COMMENT ON COLUMN public.PRFL_UND_USU_SIS.NR_USU_SIS IS 'FK tabela Usuario Sistema';
COMMENT ON COLUMN public.PRFL_UND_USU_SIS.DT_HH_CAD_PRFL_UND_SIS IS 'Data hora Cadastro Perfil Usuário Sistema';
COMMENT ON COLUMN public.PRFL_UND_USU_SIS.IN_PRFL_UND_USU_SIS_ATI IS 'Indicador Perfil Unidade Usuário Sistema Ativo 
Ativo = 1
Inativo = 0';
COMMENT ON COLUMN public.PRFL_UND_USU_SIS.TX_JST_PRFL_UND_USU_IATV IS 'Texto Justificativa Perfil Unidade Usuário Inativo';


ALTER SEQUENCE public.seq_prfl_und_usu OWNED BY public.PRFL_UND_USU_SIS.NR_PRFL_UND_USU_SIS;

ALTER TABLE public.USU_SIS ADD CONSTRAINT hr_usu_sis_usu_sis_fk
FOREIGN KEY (NR_HR_USU_SIS)
REFERENCES public.HR_USU_SIS (NR_HR_USU_SIS)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.UND ADD CONSTRAINT tip_und_und_fk
FOREIGN KEY (NR_TIP_UND)
REFERENCES public.TIP_UND (NR_TIP_UND)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.MUN ADD CONSTRAINT und_fdrl_cid_fk
FOREIGN KEY (NR_UND_FDRL)
REFERENCES public.UND_FDRL (NR_UND_FDRL)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.UND ADD CONSTRAINT cid_und_fk
FOREIGN KEY (NR_CID)
REFERENCES public.MUN (NR_CID)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.USU_SIS ADD CONSTRAINT pss_usu_sis_fk
FOREIGN KEY (NR_PSS)
REFERENCES public.PSS (NR_PSS)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.PRFL_UND_USU_SIS ADD CONSTRAINT und_prfl_und_usu_sis_fk
FOREIGN KEY (NR_UND)
REFERENCES public.UND (NR_UND)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.PRFL_UND_USU_SIS ADD CONSTRAINT usu_sis_prfl_und_usu_fk
FOREIGN KEY (NR_USU_SIS)
REFERENCES public.USU_SIS (NR_USU_SIS)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.PRFL_MENU ADD CONSTRAINT menu_prfl_menu_fk
FOREIGN KEY (NR_MENU)
REFERENCES public.MENU (NR_MENU)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.PRFL_UND_USU_SIS ADD CONSTRAINT prfl_prfl_und_usu_fk
FOREIGN KEY (NR_PRFL)
REFERENCES public.PRFL (NR_PRFL)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;

ALTER TABLE public.PRFL_MENU ADD CONSTRAINT prfl_prfl_menu_fk
FOREIGN KEY (NR_PRFL)
REFERENCES public.PRFL (NR_PRFL)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;