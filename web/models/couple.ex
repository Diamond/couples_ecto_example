defmodule Couples.Couple do
  use Couples.Web, :model

  schema "couples" do
    belongs_to :partner1, Couples.Partner1
    belongs_to :partner2, Couples.Partner2

    timestamps
  end

  @required_fields ~w(partner1_id partner2_id)
  @optional_fields ~w()

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end
