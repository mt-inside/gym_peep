defmodule GymPeep do
  def main( _args ) do
    HTTPoison.start()
    Cauldron.start( Server, port: 8080 )

    # TODO: how to block?
    receive do
      :ok -> :lol
    end
  end
end
