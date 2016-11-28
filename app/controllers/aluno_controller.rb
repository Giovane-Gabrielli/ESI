class AlunoController < ApplicationController
  def aluno
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
