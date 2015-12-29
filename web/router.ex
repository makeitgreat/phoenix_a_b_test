defmodule Quants.Router do
  use Quants.Web, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", Quants do
    pipe_through :browser # Use the default browser stack

    get "/test_a.html", TestAController, :test_a
    get "/test_b.html", TestBController, :test_b

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", Quants do
  #   pipe_through :api
  # end
end
