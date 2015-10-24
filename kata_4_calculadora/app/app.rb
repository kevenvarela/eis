require_relative '../app/models/calculator.rb'

module Ejemplo                      # TODO: Change all of this.
  class App < Padrino::Application
    register Padrino::Rendering
    register Padrino::Helpers

    enable :sessions
    CALC = Calculator.new

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

    # Button Submit  => POST : /calculator
    post 'calculator' do
      @result = CALC.calculate(get_params(session))
      @memory = CALC.memory
      render 'calculator'
    end

    # Button Refresh => POST : /
    post 'refresh' do
      @result = ' '
      @memory = CALC.refresh
      render 'calculator'
    end
  end
end