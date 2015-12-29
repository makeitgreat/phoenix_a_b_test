defmodule Quants.TestAController do
  use Quants.Web, :controller

  def test_a(conn, _params) do
    render conn, "test_a.html"
  end
end
