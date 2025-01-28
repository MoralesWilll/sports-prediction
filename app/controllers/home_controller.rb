class HomeController < ApplicationController
  def index
    set_meta_tags(
      title: 'Home page',
      description: 'AI prediction for champions league soccer matches, do a better prediction whit our trained model',
      keywords: 'partidos, fútbol, estadísticas,Soccer, champions, prediction, stadistics ',
      follow: true
    )
  end
end
