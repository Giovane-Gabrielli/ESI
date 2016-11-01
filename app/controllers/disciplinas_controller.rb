
class DisciplinasController < ApplicationController
  def default
  end
  
  
  def index
    render html: "controler index"
  end
  
  def show
    #@Course.initialInsert 
    #render html: "disciplinas do curso de " + params[:id]
    #@course = Course.teste(params[:id])
    #@course = Course.initialInsert(params[:id])
    @course = Course.metodo(params[:id])
    
    
  end
  
end