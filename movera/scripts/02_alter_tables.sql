
/*Datas de cadastro default para as tabelas*/
ALTER TABLE public.und ALTER COLUMN DT_HH_CAD_UND SET DEFAULT now();
ALTER TABLE public.prfl_und_usu_sis ALTER COLUMN dt_hh_cad_prfl_und_sis SET DEFAULT now();
ALTER TABLE public.usu_sis ALTER COLUMN dt_hh_cad_usu_sis SET DEFAULT now();
ALTER TABLE public.pss ALTER COLUMN dt_hh_cad_pss SET DEFAULT now(); 

/*Constraints UNIQUE*/
ALTER TABLE public.und
ADD CONSTRAINT uk_und_cd_und UNIQUE (cd_und);

ALTER TABLE public.pss
ADD CONSTRAINT uk_pss_tx_cpf_pss UNIQUE (tx_cpf_pss);

/*Constraints CHECK*/
ALTER TABLE public.usu_sis ADD check (in_usu_sis_ati = '1' or in_usu_sis_ati = '0');
ALTER TABLE public.und ADD check (in_und_atv = '1' or in_und_atv = '0'); 
ALTER TABLE public.menu ADD check (in_sis_menu = 'W' or in_sis_menu = 'M'); 
ALTER TABLE public.prm_sis ADD check (in_amb = 'D' or in_amb = 'H' or in_amb = 'P'); 
 

