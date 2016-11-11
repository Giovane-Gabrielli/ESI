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