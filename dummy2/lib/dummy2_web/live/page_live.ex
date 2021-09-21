defmodule Dummy2Web.PageLive do
  use Dummy2Web, :live_view

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def render(assigns) do
    ~H"""
    Page
    """
  end
end