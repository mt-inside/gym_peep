defmodule GymPeep do
  def main( _args ) do
    GymPeep.Supervisor.start_link()

    # TODO: how to block?
    receive do
      :ok -> :lol
    end
  end
end
