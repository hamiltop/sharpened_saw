defmodule Support do
  def spice(:basil),  do: 10
  def spice(:oregano),   do: {:ok, 19}
  def spice(:thyme),  do: {4, 5}
  def spice(:sage), do: :sage
  def spice(_), do: "Unknown"

  def async_spice(spice) do
    pid = self
    spawn_link fn ->
      pid |> send spice(spice)     
    end
  end

  def async_get_response(pid) do
    send pid, {:get, self}
    receive do
      {:response, x} -> x
    end  
  end
end
