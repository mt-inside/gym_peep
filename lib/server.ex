defmodule GymPeep.Server do
  use Cauldron

  def handle( "GET", %URI{path: "/"}, req ) do
    Request.reply( req, 200, "The gymnasium is delivering #{GymPeep.Peeper.people} Erlangs of service"  )
  end

  def handle( "GET", %URI{path: _}, req ) do
    Request.reply( req, 404 )
  end
end
