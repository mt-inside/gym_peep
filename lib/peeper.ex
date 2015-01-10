defmodule GymPeep.Peeper do
  def people do
    url = "http://www.puregym.com/gyms/cambridge/whats-happening"

    {:ok, response} = HTTPoison.get(url)

    body = case response.headers["Content-Encoding"] do
      "gzip" -> :zlib.gunzip( response.body )
      nil -> response.body
    end

    # Element address:
    # CSS: #main > div.people.happening-thing > span.people-number
    # XPath: //*[@id="main"]/div[2]/span[1]`
    body
    |> Floki.parse
    |> Floki.find(".people-number")
    |> Floki.text
  end
end

