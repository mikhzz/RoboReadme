em java Resources src/test/resources ddl.sql
	va ate a linha q contem "CREATE OR REPLACE VIEW public.reprocessamento AS" 
	e antes dela coloque \\copiar de outras entidades e ajustar
		CREATE TABLE {nomeEntidade} \\igual {nomeSite} 
		(
		  id INTEGER NOT NULL,
		  \\campos da entidade q vc criou



		  header_id integer NOT NULL,
		  CONSTRAINT pk_{nomeEntidade} PRIMARY KEY (id)
		);

		ALTER TABLE {nomeEntidade} ADD
		  CONSTRAINT fk_{nomeEntidade}_header FOREIGN KEY (header_id)
		      REFERENCES header(id) MATCH SIMPLE
		      ON UPDATE CASCADE ON DELETE RESTRICT;


		ALTER TABLE gmailParam ADD
		  CONSTRAINT fk_{nomeEntidade}_parametro FOREIGN KEY (id)
		      REFERENCES parametro(id) MATCH SIMPLE
		      ON UPDATE CASCADE ON DELETE RESTRICT;

	va ate a linha q contem "CREATE OR REPLACE VIEW public.reprocessamento AS" novamente
	va até o final da lista e coloque  \\ps:copiar e ajustar
		UNION
		 SELECT a.id as headers, b.id as parametro, '{nomeEntidadePlural}' as entity
		   FROM header a
			 JOIN {nomeEntidade} b ON a.id = b.header_id
			 JOIN parametro c ON b.id = c.id
			WHERE c.estado ->> 'id' = '2'
		   WHERE (c.estado ->> 'id' = '2')
	se seu serviço implemente postprocessar adicina a essa linha extra
		   OR (a.estado ->> 'id' = '2') -- apenas para servicos q tem post processing

	em br.net.projetabrasil.domain.entity;
	header 
	ao final da lista adicione \\copie e ajuste o anterior
		@OneToMany(mappedBy = "header", cascade = CascadeType.MERGE)
		private List<{Entidade}> {nomeEntidadePlural};
	gere getter e setter
