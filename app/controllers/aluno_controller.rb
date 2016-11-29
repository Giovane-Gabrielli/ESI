class AlunoController < ApplicationController
  
  def default
    params.each do |key,value|
      Rails.logger.warn "Param #{key}: #{value}"
    end
    if(params[:nusp] != nil) then
      @nuspinfo = params[:nusp]
      @periodos = Student.carregarInfos(@nuspinfo)
      respond_to do |format|
        format.html
        format.js
      end
    end
  end
  
  def periodos 
    if params[:nusp] != nil
      nusp = params[:nusp]
      if params[:salvar] != nil
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
        Student.salvarInfos(params[:nusp], manha, tarde, noite)
      end
      @periodos = Student.carregarInfos(nusp)
      respond_to do |format|
        format.html
        format.js
      end
    end
  end
end
