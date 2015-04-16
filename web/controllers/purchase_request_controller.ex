defmodule PurchaseManager.PurchaseRequestController do
  use PurchaseManager.Web, :controller
  alias PurchaseManager.Repo
  alias PurchaseManager.PurchaseRequest

  plug :action

  def index(conn, _params) do
    purchase_requests = Repo.all(PurchaseRequest)
    render conn, purchase_requests: purchase_requests
  end
end
