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
  @rate = (params.fetch("user_apr")).to_f 
  @time = (params.fetch("user_years")).to_i
  @loan = (params.fetch("user_pv")).to_f

  @rate_i = @rate/100
  @month = 12
  @p = (1-(1+@rate_i/@month)**(-@month*@time))/(@rate_i/@month)
  @payment = (@loan/@p).round(2)

  erb(:payment_results)
end

get("/random/new") do
  erb(:new_random)
end

get("/random/results") do
  @max = params.fetch("users_max_number").to_f 
  @min = params.fetch("users_min_number").to_f 
  max = @max
  min = @min

  @random_number = rand(min..max)

  erb(:random_results)
end
