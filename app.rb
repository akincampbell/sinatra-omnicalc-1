require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:layout)
end

get("/square/new") do
  erb(:new_square_calc)
end

get("/square/results") do
  @the_num = params.fetch("users_number").to_f 

  @the_result = @the_num**2 
  erb(:square_results)
end

get("/square_root/new") do
  erb(:new_root_calc)
end

get("/square_root/results") do
  @the_num = params.fetch("users_number").to_f 

  @the_result = Math.sqrt(@the_num)

  erb(:sqrt_results)
end

get("/payment/new") do
  erb(:new_payment)
end

get("/payment/results") do
  @apr = params.fetch("users_apr").to_f 

  @principal = params.fetch("users_principal").to_f

  @years = params.fetch("users_years").to_f

  erb(:payment_results)
end

get("/random/new") do
  erb(:new_random)
end

get("/random/results") do
  @max = params.fetch("users_max_number").to_f 

  @min = params.fetch("users_min_number").to_f 

  @result = rand(@min..@max)

  erb(:random_results)
end
