defmodule Discuss.AuthController do
  use Discuss.Web, :controller
  alias Discuss.User
  plug Ueberauth

  def callback(%{assigns: %{ueberauth_auth: auth}} = conn, params) do
    user_params = %{token: auth.credentials.token, email: auth.info.email, provider: auth.provider}
    changeset = User.changeset(%User{}, user_params)
  end
end