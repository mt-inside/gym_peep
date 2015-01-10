defmodule Peeper do
  def people do
    url = "http://www.puregym.com/gyms/cambridge/whats-happening"

    # The website gives gzip by default, which neither library automatically
    # deals with. Could decompress, but easiest to just demand uncompressed.
    {:ok, %HTTPoison.Response{body: body}} = HTTPoison.get(url, [{"Accept-Encoding", ""}])

    # Element address:
    # CSS: #main > div.people.happening-thing > span.people-number
    # XPath: //*[@id="main"]/div[2]/span[1]`
    body
    |> Floki.parse
    |> Floki.find(".people-number")
    |> Floki.text
  end
end

