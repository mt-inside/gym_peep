defmodule Server do
  use Cauldron

  def handle( "GET", %URI{path: "/"}, req ) do
    Request.reply( req, 200, "The gymnasium is delivering #{Peeper.people} Erlangs of service"  )
  end

  def handle( "GET", %URI{path: _}, req ) do
    Request.reply( req, 200, "no u" )
  end
end
