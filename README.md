# RoboReadme





   @Override
	getNomeSite() return Constants.{nomesite}

	Logger log \\copiar 

	@Override
	validations \\validar parametros (imitar outras classes) seguinte padrao
		validar valores header q vc utiliza :
			if (!Utils.isValidString(headerVO.get{campo}())) {
				throw new CampoObrigatorioException(getProperty("{nomesite}{NomeString}"));\\ver(criando properties) linha 83
			}
		set parametros\\ ver(criando entidade) linha 106(criando properties)
			try {
				header.set{Entidade}(JsonUtils.convertList(headerVO.getParametros(), new TypeReference<List<{Entidade}>>() {}));
			} catch (Exception e) {
				if (e instanceof CampoObrigatorioException) {
					throw (CampoObrigatorioException) e;
				}
				throw new CampoObrigatorioException(getProperty("tipoObjetoInvalido").toString());
			}
		validar parametros
			for ({Entidade} {entidade} : header.get{Entidade}()) {
				if (!Utils.isValidString({entidade}.get{campo da entidade}())) {
					throw new CampoObrigatorioException(getProperty("{nomesite}{NomeString}"));
				}
			}

	@Override
	findParameters initPage  \\apenas condominio
