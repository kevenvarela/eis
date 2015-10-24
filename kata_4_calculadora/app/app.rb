require_relative '../app/models/calculator.rb'

module Ejemplo                      
  class App < Padrino::Application
    register Padrino::Rendering
    register Padrino::Helpers

    enable :sessions
    CALC = Calculator.new # TODO: In a future change this and use the session.

    def get_params(session)
      [session[:operator_1] = params[:operator_1].to_i,
       session[:operator_2] = params[:operator_2].to_i,
       session[:operation]  = params[:operation]]
    end

    # route to: /
    get '' do
      CALC = Calculator.new
      @memory = CALC.memory
      render 'calculator'
    end

    # Button Refresh => GET : /
    get '' do
      @result = ' '
      @memory = CALC.refresh
      render 'calculator'
    end

    # Button Submit  => POST : /
    post '' do
      @result = CALC.calculate(get_params(session))
      @memory = CALC.memory
      render 'calculator'
    end
  end
end