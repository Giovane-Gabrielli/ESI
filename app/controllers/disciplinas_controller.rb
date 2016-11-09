class DisciplinasController < ApplicationController
  def default
  end
  
  def index
    render html: "controler index"
  end
  
  def show
    @course = Course.metodo(params[:id])
  end
  
  def create
    @disciplina = Discipline.metodo(params[:nusp])

  end
  
end