defmodule Issues.GithubIssues do
  @user_agent [ { "User-agent", "Elixir rustamagasanov@gmail.com" } ]
  @github_url Application.get_env(:issues, :github_url)

  def fetch(user, project) do
    issues_url(user, project)
      |> HTTPoison.get(@user_agent)
      |> handle_response
      |> decode_response
      |> convert_to_list_of_hashdicts
  end

  def issues_url(user, project) do
    "#{@github_url}/repos/#{user}/#{project}/issues"
  end

  def handle_response({ :ok, %HTTPoison.Response{ status_code: 200, body: body } }) do
    { :ok, :jsx.decode(body) }
  end
  def handle_response({ :error, %HTTPoison.Error{ reason: reason } }) do
    { :error, :jsx.decode(reason) }
  end

  def decode_response({ :ok, body }), do: body
  def decode_response({ :error, reason }) do
    IO.puts "Error fetching from Github, reason: #{reason}"
    System.halt(2)
  end

  def convert_to_list_of_hashdicts(list) do
    list
      |> Enum.map(&Enum.into(&1, HashDict.new))
  end
end
