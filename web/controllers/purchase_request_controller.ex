defmodule PurchaseManager.PurchaseRequestController do
  use PurchaseManager.Web, :controller
  alias PurchaseManager.Repo
  alias PurchaseManager.PurchaseRequest

  plug :action

  def index(conn, _params) do
    purchase_requests = Repo.all(PurchaseRequest)
    render conn, purchase_requests: purchase_requests
  end

  def show(conn, %{"id" => id}) do
    purchase_request = Repo.get(PurchaseRequest, id)
    render conn, purchase_request: purchase_request
  end
end
