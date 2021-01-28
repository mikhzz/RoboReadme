em java Resources src/test/resources dml.sql
	na lista
	﻿--sites/servicos
	adicionar no final da lista
	INSERT INTO public.site (id, nome, servico) VALUES ({idsite}, {nomesite}, {servico});\\(SNAKE_CASE) igual constants 
	ps: idsite deve ser id da linha anterior +1
	na lista
	-- usuario projeta brasil
	adicionar no final da lista
		INSERT INTO public.usuario_site (usuario_id, sites_id) VALUES (1, {idsite});
	
	achar lista do cliente e adicionar id do site la tb 
		INSERT INTO public.usuario_site (usuario_id, sites_id) VALUES ({idusuario}, {idsite});
