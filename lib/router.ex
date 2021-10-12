defmodule SimpleElixirMicroservice.Router do
  use Plug.Router

  plug :match
  plug Plug.Parsers,
    parsers: [:json],
    pass: ["application/json"],
    json_decoder: Poison
  plug :dispatch

  get "/time" do
    send_resp(conn, 200, Kernel.inspect(:os.system_time(:milli_seconds)))
  end

  match _ do
    send_resp(conn, 404, "Page Missing")
  end
end