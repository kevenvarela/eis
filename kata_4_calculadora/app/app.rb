require_relative '../app/models/calculator.rb'

module Ejemplo                      # TODO: Change all of this.
  class App < Padrino::Application
    register Padrino::Rendering
    register Padrino::Helpers

    enable :sessions
    
    get 'calculator' do
      render 'calculator'
    end

    post 'calculator' do
      @calc = Calculator.new

      session[:operator_1] = params[:operator_1]
      session[:operator_2] = params[:operator_2]
      session[:operation] = params[:operation]
      
      @result = @calc.calculate(session[:operator_1].to_i,
                                session[:operator_2].to_i,
                                session[:operation])
      render 'calculator'
    end

  end
end