defmodule GitHub do
  use Tesla.Builder

  plug(Tesla.Middleware.BaseUrl, "https://api.github.com")
  plug(Tesla.Middleware.JSON)

  def new(token) do
    Tesla.client([
      {Tesla.Middleware.Headers, [{"Authorization", "token #{token}"}, {"Content-Type", "application/json"}]}
    ])
  end

  def user_repos(client, user_name) do
    get(client, "/repos/" <> user_name) 
  end

  def repo_info(client, user_name, repo_name) do
    {:ok, commits} = get(client, "/repos/" <> user_name <> "/" <> repo_name <> "/commits")
    {:ok, languages} = get(client, "/repos/" <> user_name <> "/" <> repo_name <> "/languages")  

    %{
        commits: Map.get(commits, :body) |> Enum.count(),
        languages: Map.get(languages, :body) |> Map.keys(),
        name: user_name
    }
  end
end
