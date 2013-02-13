class HomeController < ApplicationController

  def index
  end

  def login
    @result = Typhoeus::Request.post("http://app-stg.hoppr.com/app/login.json", :params => {"mobile_number" => "919050513165", "password" => "ashish", "telco" => "unknown", "key" => "ios"})
    @response = JSON.parse(@result.body)
    $redis.set('session_id',@response["session_id"])
    redirect_to nearby_places_path
  end

  def mobile_number_verification
    @result = Typhoeus::Request.post("http://app-stg.hoppr.com/app/is_mobile_number_verified.json", :params => {"session_id"=> $redis.get("session_id")})
    @response = JSON.parse(@result.body)
    redirect_to nearby_places_path
  end

  def nearby_places
    @result = Typhoeus::Request.get("http://app-stg.hoppr.com/app/near_by_places.json", :params => {"longitude" => '77.0721176',"latitude" => '28.4507931',"session_id" => $redis.get("session_id"),"key" => "android"})
    @response = JSON.parse(@result.body)
  end

  def checkin
    @result = Typhoeus::Request.get("http://app-stg.hoppr.com/app/checkin.json", :params => {"place_id" => params[:place_id],"session_id" => $redis.get("session_id"),"key" => "android"})
    @response = JSON.parse(@result.body)
    @place_name = $redis.get('place_name')
    #@response = { "places" => [{"place_id"=> "500de59ba1785bfb14012f21", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 0, "total_love"=> 0, "user_love"=> 0, "category"=> "Education", "featured"=> false, "image_url"=> "airport.jpg", "name"=> "IIT Engineers CGHS", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.097161850759716, "city"=> "Delhi" }, {"place_id"=> "500de595a1785bfb1400df45", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 1, "total_love"=> 1, "user_love"=> 0, "category"=> "Eat & Drink", "featured"=> false, "image_url"=> "pvr.jpg", "name"=> "Sagar Ratna South Indian Restaurant", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.11661031254874, "city"=> "Delhi" }]}
  end

  def logout
    #@result = Typhoeus::Request.get("/logout.json")
    #@response = JSON.parse(@result.body)
    @response = { "places" => [{"place_id"=> "500de59ba1785bfb14012f21", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 0, "total_love"=> 0, "user_love"=> 0, "category"=> "Education", "featured"=> false, "image_url"=> "airport.jpg", "name"=> "IIT Engineers CGHS", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.097161850759716, "city"=> "Delhi" }, {"place_id"=> "500de595a1785bfb1400df45", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 1, "total_love"=> 1, "user_love"=> 0, "category"=> "Eat & Drink", "featured"=> false, "image_url"=> "pvr.jpg", "name"=> "Sagar Ratna South Indian Restaurant", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.11661031254874, "city"=> "Delhi" }]}
  end

  def offer_detail
    #@result = Typhoeus::Request.get("/offer_detail.json")
    #@response = JSON.parse(@result.body)
    @response = { "places" => [{"place_id"=> "500de59ba1785bfb14012f21", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 0, "total_love"=> 0, "user_love"=> 0, "category"=> "Education", "featured"=> false, "image_url"=> "airport.jpg", "name"=> "IIT Engineers CGHS", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.097161850759716, "city"=> "Delhi" }, {"place_id"=> "500de595a1785bfb1400df45", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 1, "total_love"=> 1, "user_love"=> 0, "category"=> "Eat & Drink", "featured"=> false, "image_url"=> "pvr.jpg", "name"=> "Sagar Ratna South Indian Restaurant", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.11661031254874, "city"=> "Delhi" }]}
  end

  def place_detail
    @result = Typhoeus::Request.get("http://app-stg.hoppr.com/app/place_detail.json", :params => {"place_id" => params[:place_id],"session_id" => $redis.get("session_id"),"key" => "android"})
    @response = JSON.parse(@result.body)
    $redis.set('place_name',@response['name'])
  end

  def get_skippr_and_chasers
    @result1 = Typhoeus::Request.get("http://app-stg.hoppr.com/app/get_skippr_and_chasers.json", :params => { "place_id" => params[:place_id], "session_id"=> $redis.get("session_id"),"key" => "android"})
    @response1 = JSON.parse(@result1.body)
  end

end
