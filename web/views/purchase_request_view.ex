defmodule PurchaseManager.PurchaseRequestView do
  use PurchaseManager.Web, :view

  def render("index.json", %{purchase_requests: purchase_requests}) do
    purchase_requests
  end
end
