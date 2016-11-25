class AlunoController < ApplicationController
  def aluno
  end
  
  def periodos 
    nusp = params[:nusp]
    @periodos = Student.carregarInfos(nusp)
    respond_to do |format|
      format.html
      format.js
    end
  end
end
