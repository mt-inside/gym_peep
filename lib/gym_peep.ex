defmodule GymPeep do
  use Application

  def start( _type, _args ) do
    GymPeep.Supervisor.start_link()
  end
end
