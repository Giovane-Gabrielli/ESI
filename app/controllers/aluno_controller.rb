class AlunoController < ApplicationController
  protect_from_forgery with: :exception
  
  def default
    if Course.find_by(id: 1) == nil then
      Course.create(name: "SI", faculty: "EACH")
    end
    if Course.find_by(id: 2) == nil then
      Course.create(name: "GA", faculty: "EACH")
    end
    
    params.each do |key,value|
      Rails.logger.warn "Param #{key}: #{value}"
    end
    if(params[:nusp] != nil) then
      @nuspinfo = params[:nusp]
      @infos = Student.carregarInfos(@nuspinfo)
      respond_to do |format|
        format.html
        format.js
      end
    end
  end
  
  def periodos 
    if params[:nusp] != nil then
      nusp = params[:nusp]
      if params[:manha] == "manha"
        manha = "sim"
      else
        manha = "nao"
      end
      if params[:tarde] == "tarde"
        tarde = "sim"
      else
        tarde = "nao"
      end
      if params[:noite] == "noite"
        noite = "sim"
      else
        noite = "nao"
      end
      if params[:criar] == "criar"
        # a ordem dos parametros : nusp, nome, email, curso, ano, manha, tarde, noite
        Student.gravarInfos(params[:nusp], params[:nome], params[:email], params[:curso], params[:ano_de_entrada], manha, tarde, noite)
        @novoUser = true
      end
      if params[:salvar] == "salvar"
        Student.salvarInfos(params[:nusp], manha, tarde, noite)
        @atualizacoes = true
      end
      if params[:carregar] == "carregar"
        @infos = Student.carregarInfos(nusp)
      end
      respond_to do |format|
        format.html
        format.js
      end
    end
  end
end
