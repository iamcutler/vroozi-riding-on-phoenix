defmodule PurchaseManager.Repo.Migrations.CreatePurchaseRequest do
  use Ecto.Migration

  def change do
    create table(:purchase_requests) do
      add :user_id, :integer
      add :unit_id, :integer
      add :name, :string
      add :requestor, :string
      add :status, :string

      timestamps
    end
  end
end
