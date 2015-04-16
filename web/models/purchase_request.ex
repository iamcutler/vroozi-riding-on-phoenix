defmodule PurchaseManager.PurchaseRequest do
  use PurchaseManager.Web, :model

  schema "purchase_requests" do
    field :user_id, :integer
    field :unit_id, :integer
    field :name, :string
    field :requestor, :string
    field :status, :string

    timestamps
  end

  @required_fields ~w(user_id unit_id name requestor status)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If `params` are nil, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ nil) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
