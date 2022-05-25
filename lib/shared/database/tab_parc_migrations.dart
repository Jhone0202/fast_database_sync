Map<int, String> migrationScriptsTabParc = {
  1: '''
      CREATE TABLE tab_parc(
        codparc INTEGER NOT NULL,
        nomparc TEXT,
        sobparc TEXT,
        cnpparc TEXT,
        regparc TEXT,
        obsparc TEXT,
        pesparc TEXT,
        emaparc TEXT,
        filclie TEXT,
        enderecos TEXT,
        classificacoes TEXT,
        parcelasemaberto TEXT,
        parcelasselecionadas TEXT,
        dataParaVisita TEXT,
        agendom INTEGER,
        agenseg INTEGER,
        agenter INTEGER,
        agenqua INTEGER,
        agenqui INTEGER,
        agensex INTEGER,
        agensab INTEGER,
        sexparc TEXT,
        fgeparc INTEGER,
        usuparc INTEGER,
        motbloq INTEGER
      )
      ''',
  2: 'ALTER TABLE tab_parc ADD COLUMN planos TEXT;',
};
