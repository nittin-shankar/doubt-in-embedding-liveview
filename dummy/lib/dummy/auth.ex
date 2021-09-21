defmodule Dummy.Auth do
  def generate_token(user_uuid) do
    {secret, salt} = get_token_creds()
    Phoenix.Token.sign(secret, salt, user_uuid)

  end

  defp get_token_creds() do
    secret = Application.get_env(:dummy, :secret)
    salt = Application.get_env(:dummy, :salt)

    {secret, salt}
  end
end