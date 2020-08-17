defmodule CommonsPub.Projects.Project do
  @moduledoc "A group, a container for content."

  use Pointers.Pointable,
    otp_app: :cpub_projects,
    table_id: "0RGAN1SAT10NSAREMANYPE0P1E",
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
  Migrates the Project table. Takes optional index options for
  the index on the `reading` column. Direction is autodetected by default.
  """
  def migrate_projects(index_opts \\ [], dir \\ direction())
  def migrate_projects(index_opts, :up) do
    create_pointable_table(Project) do
    end
  end

  defp migrate_projects(index_opts, :down) do
    drop_pointable_table(Project)
  end

end
