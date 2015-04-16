defmodule PurchaseManager.Endpoint do
  use Phoenix.Endpoint, otp_app: :purchase_manager

  # Serve at "/" the given assets from "priv/static" directory
  plug Plug.Static,
    at: "/", from: :purchase_manager,
    only: ~w(css images js favicon.ico robots.txt)

  # Code reloading can be explicitly enabled under the
  # :code_reloader configuration of your endpoint.
  if code_reloading? do
    plug Phoenix.LiveReloader
    plug Phoenix.CodeReloader
  end

  plug Plug.Logger

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Poison

  plug Plug.MethodOverride
  plug Plug.Head

  plug Plug.Session,
    store: :cookie,
    key: "_purchase_manager_key",
    signing_salt: "HI56wbF5",
    encryption_salt: "J3Mnjnh7"

  plug :router, PurchaseManager.Router
end
