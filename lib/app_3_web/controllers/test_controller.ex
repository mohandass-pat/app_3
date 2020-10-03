defmodule App3Web.Test do

  use App3Web, :controller

  def test(conn, _params) do
    Node.self() |> IO.inspect(label: "Self Node")
    Node.list() |> IO.inspect(label: "NodeList")

    conn
    |> put_status(200)
    |> json(%{status: 200, message: "Test Done"})
  end

end
