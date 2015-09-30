=begin

Esta segunda Kata consiste en implementar el famoso juego Piedra-Papel-Tijera con 
algunas variaciones. No hace falta implementar toda una aplicación sino simplemente 
el modelo de objetos.
La primer variación es Piedra-Papel-Tijera-Mono, a las reglas ya conocidas se agrega:

* Mono gana a papel
* Mono pierde con tijera
* Mono empata con Piedra

Por otro lado aparece el concepto de "partida", una partida es una competencia al mejor 
de tres rondas. O sea, un jugador para ganar una partida tiene que ganar 2 rondas
(análogo a lo que ocurre en el tenis o el voley con los sets).

A diferencia de la kata anterior, en este caso el diseño de las pruebas queda 
completamente a su cargo.

A modo de guía les compartimos algunos ejemplos conceptuales.

Ejemplo 1: dinámica de una ronda
jugador1 juega piedra
jugador2 juega papel
entonces la ronda la gana jugador2


Ejemplo 2: dinámica de una partida
jugador1 gana la primera ronda
jugador2 gana la segunda ronda
entonces hasta el momento no hay ganador de la partida
jugador2 gana la tercera ronda
entonces la partida la gana jugador2

=end

require 'rspec' 
require_relative '../lib/game'
require_relative '../lib/player'
require_relative '../lib/piedra'
require_relative '../lib/papel'

describe 'Game' do

  let(:game) { Game.new }  
  let(:player1) { Player.new }  
  let(:player2) { Player.new }  

  describe "RONDAAAAAA" do
    it 'WTF' do
  	  player1.play(Piedra.new)
  	  player2.play(Papel.new)
      expect(game.winner(player1, player2)).to eq player2
    end
   end

end
