class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def hello
    render html: "Bem vindo ao Jubilator"
  end
  
  def aprovadas
    render html: "Selecione disciplinas já aprovadas"
  end
  
end
