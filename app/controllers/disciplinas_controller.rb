class DisciplinasController < ApplicationController
  def default
  end
  
  def index
    redirect_to :controller => 'cursos', :action => 'default' 
  end
  
  def show
    params.each do |key,value|
      Rails.logger.warn "Param #{key}: #{value}"
    end
    @course = Course.metodo(params[:id])
    @lista_disciplinas = []
    if(params[:nusp] != nil) then
      n = params[:nusp]
      n = n.to_i
      @disciplina = Student.carregarDisciplinas(n)
      @lista_disciplinas = Discipline.find(@disciplina)
      @existe = false
    end
  end
  
  def create
    n = params[:nusp]
    n = n.to_i
    @disciplina = Student.carregarDisciplinas(n)
    @lista_disciplinas = []
    @lista_disciplinas = Discipline.find(@disciplina)
    respond_to do |format|
      format.html #{ redirect_to show_path(@disciplina) }
      #format.json { render :show, status: :ok, location: @post }
      format.js
    end
  end
  
end