load 'scraper/scraping_test.rb'


#Arranjo que receberá as materias de cada curso.
materias = []

#Descrever o método listarMaterias da classe ObterMaterias.
describe ObterMaterias do
  
  #Avaliação dos comportamentos da classe.
  it "alunos escolhem curso 'si'" do
    # Arrange
    mat = ObterMaterias.new()
    
    # Act
    materias = mat.listarMaterias('si')
    
    # Assert
    expect(materias[0]).to eq("ACH0021")
    expect(materias[1]).to eq("Tratamento e Análise de Dados/ Informações")
    
    expect(materias[8]).to eq("ACH0041")
    expect(materias[9]).to eq("Resolução de Problemas I")
    
    expect(materias[16]).to eq("ACH2001")
    expect(materias[17]).to eq("Introdução à Programação")
    
    expect(materias[24]).to eq("ACH2011")
    expect(materias[25]).to eq("Cálculo I")
    
    expect(materias[32]).to eq("ACH2014")
    expect(materias[33]).to eq("Fundamentos de Sistemas de Informação")
    
    expect(materias[-40]).to eq("ACH2098")
    expect(materias[-39]).to eq("Web Semântica")
    
    expect(materias[-32]).to eq("ACH2108")
    expect(materias[-31]).to eq("Desafios de Programação II")
    
    expect(materias[-24]).to eq("ACH2118")
    expect(materias[-23]).to eq("Introdução ao Processamento de Língua Natural")
    
    expect(materias[-16]).to eq("ACH2128")
    expect(materias[-15]).to eq("Introdução às Redes Complexas")
    
    expect(materias[-8]).to eq("ACH2138")
    expect(materias[-7]).to eq("Modelagem e Simulação de Sistemas Complexos")

  end
  
  #Avaliação do comportamento da classe.
  it "alunos escolhem curso 'ga'" do
    # Arrange
    @mat = ObterMaterias.new()
    
    # Act
    materias = @mat.listarMaterias('ga')
    
    # Assert
    expect(materias[0]).to eq("ACH0021")
    expect(materias[1]).to eq("Tratamento e Análise de Dados/ Informações")
    
    expect(materias[8]).to eq("ACH0041")
    expect(materias[9]).to eq("Resolução de Problemas I")
    
    expect(materias[16]).to eq("ACH0051")
    expect(materias[17]).to eq("Estudos Diversificados I")
    
    expect(materias[24]).to eq("ACH1001")
    expect(materias[25]).to eq("Fundamentos da Ciência Ambiental")
    
    expect(materias[32]).to eq("ACH1002")
    expect(materias[33]).to eq("Introdução à Biologia")
    
    expect(materias[-40]).to eq("ACH1147")
    expect(materias[-39]).to eq("Comportamento, Liderança e Negociação em Gestão Ambiental")
    
    expect(materias[-32]).to eq("ACH1157")
    expect(materias[-31]).to eq("Elaboração e Análise de Projetos Socioambientais")
    
    expect(materias[-24]).to eq("ACH1167")
    expect(materias[-23]).to eq("Infraestrutura de Dados Espaciais para Gestão Ambiental")
    
    expect(materias[-16]).to eq("ACH1177")
    expect(materias[-15]).to eq("Oceanografia Básica e Gerenciamento Costeiro/Oceânico")
    
    expect(materias[-8]).to eq("ACH1187")
    expect(materias[-7]).to eq("Desenvolvimento Rural Sustentável")

  end
  
end