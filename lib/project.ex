defmodule CommonsPub.Projects.Project do
  @moduledoc "A group, a container for content."

  use Pointers.Pointable,
    otp_app: :cpub_projects,
    table_id: "PR0JECTSARESPACEST0C011ECT",
    source: "cpub_projects_project"

  alias CommonsPub.Projects.Project
  alias Ecto.Changeset

  pointable_schema do
  end

  @create [:id]

  def create(attrs) do
    Changeset.cast(%Project{}, attrs, @create)
  end

end
defmodule CommonsPub.Projects.Project.Migration do

  import Ecto.Migration
  import Pointers.Migration
  alias CommonsPub.Projects.Project

  @doc """
  Migrates the Project table in the given or autodetected direction.
  """
  def migrate_projects(dir \\ direction())
  def migrate_projects(:up) do
    create_pointable_table(Project) do
    end
  end
  def migrate_projects(:down), do: drop_pointable_table(Project)

end
