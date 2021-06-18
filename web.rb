require "http"
system "clear"

response = HTTP.get("http://localhost:3000/moviesall_path")

response1 = HTTP.get("http://localhost:3000/moviesone_path")

# pp response.parse(:json)

pp response1.parse(:json)
