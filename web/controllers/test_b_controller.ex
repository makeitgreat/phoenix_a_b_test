defmodule Quants.TestBController do
  use Quants.Web, :controller

  def test_b(conn, _params) do
    render conn, "test_b.html"
  end
end
