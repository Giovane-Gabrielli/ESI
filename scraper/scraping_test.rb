require 'nokogiri'
require 'httparty'
require 'pry'
require 'csv'

class ObterMaterias 
	
	#Construtor vazio.
	def initializar()
	end
	
	#Mátodo que bbuscará as materias da EACH.
    def listarMaterias()
	
    	##Buscamos a página que vamos fazer o scraper.
    	disciplinas = HTTParty.get("https://uspdigital.usp.br/jupiterweb/listarGradeCurricular?codcg=86&codcur=86200&codhab=204&tipo=N")
    	
    	
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
    	CSV.open('disciplinas_EACH', 'w') do |csv|
    		csv << arranjo_disciplinas
    	end

    end

end

objeto = ObterMaterias.new
objeto.listarMaterias
