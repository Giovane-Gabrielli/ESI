require 'nokogiri'
require 'httparty'
require 'pry'
require 'csv'

class ObterMaterias 
	
	attr_accessor :site_jupiter
	
	#Construtor vazio.
	def initializar(id)
		id = id
	end
	
	#Mátodo que bbuscará as materias da EACH.
    def listarMaterias(id)
    	#site_jupiter = "https://uspdigital.usp.br/jupiterweb/listarGradeCurricular?codcg=86&codcur=86100&codhab=202&tipo=N"
    	print id
    	if id == "si" then
    		site_jupiter = "https://uspdigital.usp.br/jupiterweb/listarGradeCurricular?codcg=86&codcur=86200&codhab=204&tipo=N"
    	elsif id == "ga" then
    		site_jupiter = "https://uspdigital.usp.br/jupiterweb/listarGradeCurricular?codcg=86&codcur=86100&codhab=202&tipo=N"
    	end
    	
	
    	##Buscamos a página que vamos fazer o scraper.
    	disciplinas = HTTParty.get(site_jupiter)
    	
    	
    	disc_nokogiri = Nokogiri::HTML(disciplinas)
    
    
    	##Criamos um arranjo para receber as disciplinas.
    	arranjo_disciplinas = []
    
    	##Extraindo a informação desejada.
    	disc_nokogiri.css('.txt_verdana_8pt_gray').css('td').map do |a|
    		nome_disciplinas = a.text.strip
    		arranjo_disciplinas.push(nome_disciplinas)
    	end
    	
    	##O Pry é usado para apresentar os dados na tela.
    	##Pry.start(binding)
	
    	##Criamos um arquivo CSV com o arranjo de disciplinas.
    	#CSV.open('disciplinas_EACH', 'w') do |csv|
    	#	csv << arranjo_disciplinas
    	#end
		return arranjo_disciplinas
    end

end

#objeto = ObterMaterias.new
#objeto.listarMaterias
