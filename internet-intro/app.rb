require 'pry'
class App
  def call(environment_hash)
    animal_name = environment_hash["PATH_INFO"][1..-1]
    response_body = "THIS PAGE IS ABOUT: #{animal_name}!"
    # binding.pry
    status_code = 200
    header = {}
    body = [response_body] # or {}

    return [status_code, header, body]
  end
end

get '/cats' do
  "Cats page"
end

get '/cats' do
  "Cats page"
end
