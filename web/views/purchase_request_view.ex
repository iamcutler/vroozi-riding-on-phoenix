defmodule PurchaseManager.PurchaseRequestView do
  use PurchaseManager.Web, :view

  def render("index.json", %{purchase_requests: purchase_requests}) do
    purchase_requests
  end

  def render("show.json", %{purchase_request: purchase_request}) do
    purchase_request
  end
end
