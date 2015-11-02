defmodule Couples.Repo.Migrations.CreateCouple do
  use Ecto.Migration

  def change do
    create table(:couples) do
      add :partner1_id, references(:users)
      add :partner2_id, references(:users)

      timestamps
    end
    create index(:couples, [:partner1_id])
    create index(:couples, [:partner2_id])

  end
end
