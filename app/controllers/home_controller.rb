class HomeController < ApplicationController

  def index

  end

  def login
    #@result = Typhoeus::Request.new("http://app-stg.hoppr.com/app/login.json", :params => {"mobile_number" => "918130508119", "password" => "ankit", "telco" => "unknown", "key" => "ios"}).run
    #@response = JSON.parse(@result.body)
    @response = {"user_id" => "502de84c047eedf88e9873a7", "mobile_number_verified" => false, "session_id" => "dd981644-aea0-4417-ba1d-72ea7c9caca8"}
  end

  def mobile_number_verification
    #@result = Typhoeus::Request.new("http://app-stg.hoppr.com/app/is_mobile_number_verified.json", :params => {"session_id" => "d24d3af4-b735-4dea-b6b4-83e74b1bbd09"}).run
    #@response = JSON.parse(@result.body)
    @response = { "verified" => true}
  end

  def profile
    #@result = Typhoeus::Request.new("http://app-stg.hoppr.com/app/profile.json", :params => {"session_id" => "dx24d3af4-b735-4dea-b6b4-83e74b1bbd09", "key" => "ios"}).run
    #@response = JSON.parse(@result.body)
    @response = {"name" => "Ankit Goyal", "facebook_user_name" => "ankitgoyal.dev", "no_of_days_ago" => 1, "last_checkin_time" => "2012-12-16T01:01:51+05:30", "place_locality" => "Dwarka", "place_landmark" => "", "place_name" => "Sector 6 Market", "place_city" => "Delhi", "gender" => "male", "date_of_birth" => "1990-11-03", "city" => "Delhi", "mobile_number" => "918130508119", "email" => nil, "score" => 275000, "mobile_number_verified_in_app" => true, "email_id_verified" => false, "facebook_auth_token" => "AAAD5BZBjPZBecBAIIT66zqOwkYZCr79gVNjnemsQ5ftWgw674PMbii4Kl8MbjNHrGJOOKHhZA8bUli8NNsZBNDoLOyLEnSwrUVLndR1Vc9AZDZD", "image_url" => "http://images.imagesserver.com/image-service/502de84c047eedf88e9873a7/20121216005933312_thumbnail.png" }
  end


  def update_profile
    #@result = Typhoeus::Request.new("http://app-stg.hoppr.com/app/update_profile.json", :params => {"session_id" => "d24d3af4-b735-4dea-b6b4-83e74b1bbd09", "user[name]" => "Ankit", "key" => "ios"}).run
    #@response = JSON.parse(@result.body)
    @response = {"points" => 500, "score" => 90500}
  end

  def checkin_history
    #@result = Typhoeus::Request.new("http://app-stg.hoppr.com/app/checkin_history.json", :params => {"session_id" => "d24d3af4-b735-4dea-b6b4-83e74b1bbd09"}).run
    #@response = JSON.parse(@result.body)
    @response = { "history" => [{"name" => "Geo Tattoos", "points" => 500, "city" => "Chennai", "created_at" => "2012-10-17T19:48:25+05:30"},{"name" => "tilak", "points" => 1000, "city" => "delhi", "created_at" => "2012-10-14T23:18:58+05:30"}]}
  end

  def nearby_places
    #@result = Typhoeus::Request.new("http://app-stg.hoppr.com/app/near_by_places.json", :params => {:longitude => '77.0721176', :latitude => '28.4507931', :session_id => 'e9bece3b-68c5-46fe-87fd-afb5a40b8886', :key => 'android'}).run
    #@response = JSON.parse(@result.body)
    @response = { "places" => [{"place_id"=> "500de59ba1785bfb14012f21", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 0, "total_love"=> 0, "user_love"=> 0, "category"=> "Education", "featured"=> false, "image_url"=> "airport.jpg", "name"=> "IIT Engineers CGHS", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.097161850759716, "city"=> "Delhi" }, {"place_id"=> "500de595a1785bfb1400df45", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 1, "total_love"=> 1, "user_love"=> 0, "category"=> "Eat & Drink", "featured"=> false, "image_url"=> "pvr.jpg", "name"=> "Sagar Ratna South Indian Restaurant", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.11661031254874, "city"=> "Delhi" },{"place_id"=> "500de59ba1785bfb14012f21", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 0, "total_love"=> 0, "user_love"=> 0, "category"=> "Education", "featured"=> false, "image_url"=> "airport.jpg", "name"=> "IIT Engineers CGHS", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.097161850759716, "city"=> "Delhi" },{"place_id"=> "500de59ba1785bfb14012f21", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 0, "total_love"=> 0, "user_love"=> 0, "category"=> "Education", "featured"=> false, "image_url"=> "airport.jpg", "name"=> "IIT Engineers CGHS", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.097161850759716, "city"=> "Delhi" },{"place_id"=> "500de59ba1785bfb14012f21", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 0, "total_love"=> 0, "user_love"=> 0, "category"=> "Education", "featured"=> false, "image_url"=> "airport.jpg", "name"=> "IIT Engineers CGHS", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.097161850759716, "city"=> "Delhi" },{"place_id"=> "500de59ba1785bfb14012f21", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 0, "total_love"=> 0, "user_love"=> 0, "category"=> "Education", "featured"=> false, "image_url"=> "airport.jpg", "name"=> "IIT Engineers CGHS", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.097161850759716, "city"=> "Delhi" }]}
  end

  def search
    #@result = Typhoeus::Request.get("/search.json")
    #@response = JSON.parse(@result.body)
    @response = {"search_results" => [{"place_id" => "500de59ba1785bfb14013342", "address" => nil, "locality" => "Sector-43", "landmark" => "", "tip" => "", "rating" => 0, "total_love" => 0, "user_love" => 0, "category" => "Others", "featured" => false, "image_url" => "http://images.imagesserver.com/image-service/?id=500de59ba1785bfb14013342&size=thumbnail", "name" => "Chai corner near y2cf dmpl", "offer_id" => nil, "offer_category" => nil, "distance" => 14.490309607366, "city" => "Gurgaon"},{"place_id" => "500de59ba1785bfb14013399", "address" => "", "locality" => "Sector-43", "landmark" => "", "tip" => "", "rating" => 0, "total_love" => 0, "user_love" => 0, "category" => "Others", "featured" => false, "image_url" => "http://images.imagesserver.com/image-service/?id=500de59ba1785bfb14013399&size=thumbnail", "name" => "Y2CF DIGITAL MEDIA PVT LTD", "offer_id" => nil, "offer_category" => nil, "distance" => 14.490309607366, "city" => "Gurgaon"}]}
  end

  def public_profile
    #@result = Typhoeus::Request.get("/public_profile.json")
    #@response = JSON.parse(@result.body)
    @response = { "places" => [{"place_id"=> "500de59ba1785bfb14012f21", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 0, "total_love"=> 0, "user_love"=> 0, "category"=> "Education", "featured"=> false, "image_url"=> "airport.jpg", "name"=> "IIT Engineers CGHS", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.097161850759716, "city"=> "Delhi" }, {"place_id"=> "500de595a1785bfb1400df45", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 1, "total_love"=> 1, "user_love"=> 0, "category"=> "Eat & Drink", "featured"=> false, "image_url"=> "pvr.jpg", "name"=> "Sagar Ratna South Indian Restaurant", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.11661031254874, "city"=> "Delhi" }]}
  end

  def friend_public_profile
    #@result = Typhoeus::Request.get("/friend_public_profile.json")
    #@response = JSON.parse(@result.body)
    @response = { "places" => [{"place_id"=> "500de59ba1785bfb14012f21", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 0, "total_love"=> 0, "user_love"=> 0, "category"=> "Education", "featured"=> false, "image_url"=> "airport.jpg", "name"=> "IIT Engineers CGHS", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.097161850759716, "city"=> "Delhi" }, {"place_id"=> "500de595a1785bfb1400df45", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 1, "total_love"=> 1, "user_love"=> 0, "category"=> "Eat & Drink", "featured"=> false, "image_url"=> "pvr.jpg", "name"=> "Sagar Ratna South Indian Restaurant", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.11661031254874, "city"=> "Delhi" }]}
  end

  def checkin
    #@result = Typhoeus::Request.get("/checkin.json")
    #@response = JSON.parse(@result.body)
    @response = { "places" => [{"place_id"=> "500de59ba1785bfb14012f21", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 0, "total_love"=> 0, "user_love"=> 0, "category"=> "Education", "featured"=> false, "image_url"=> "airport.jpg", "name"=> "IIT Engineers CGHS", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.097161850759716, "city"=> "Delhi" }, {"place_id"=> "500de595a1785bfb1400df45", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 1, "total_love"=> 1, "user_love"=> 0, "category"=> "Eat & Drink", "featured"=> false, "image_url"=> "pvr.jpg", "name"=> "Sagar Ratna South Indian Restaurant", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.11661031254874, "city"=> "Delhi" }]}
  end

  def add_a_place
    #@result = Typhoeus::Request.get("/add_place.json")
    #@response = JSON.parse(@result.body)
    @response = { "places" => [{"place_id"=> "500de59ba1785bfb14012f21", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 0, "total_love"=> 0, "user_love"=> 0, "category"=> "Education", "featured"=> false, "image_url"=> "airport.jpg", "name"=> "IIT Engineers CGHS", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.097161850759716, "city"=> "Delhi" }, {"place_id"=> "500de595a1785bfb1400df45", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 1, "total_love"=> 1, "user_love"=> 0, "category"=> "Eat & Drink", "featured"=> false, "image_url"=> "pvr.jpg", "name"=> "Sagar Ratna South Indian Restaurant", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.11661031254874, "city"=> "Delhi" }]}
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
    #@result = Typhoeus::Request.new("http://app-stg.hoppr.com/app/place_detail.json", :params => { "place_id" => '506908e3975aa24f3205534b', "session_id" =>  'ddcb77bf-c991-4df3-a22a-cb727a2aaf57', 'key' => 'android'}).run
    #@response = JSON.parse(@result.body)
    @response = {"name" => "Viva Hyderabad", "total_checkins" => 6, "image_url" => "http://images.imagesserver.com/image-service/?id=502f23b0a52fe248cd0001b7&size=thumbnail", "total_love" => 0, "user_love" => 0, "rating" => 0, "tip" => nil, "category" => "Eat & Drink", "address" => "Artemis Hospital Ground Floor Sec-51", "points_on_checkin" => 0, "city" => "Gurgaon"}
  end

  def get_coupon
    #@result = Typhoeus::Request.get("/place_detail.json")
    #@response = JSON.parse(@result.body)
    @response = { "places" => [{"place_id"=> "500de59ba1785bfb14012f21", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 0, "total_love"=> 0, "user_love"=> 0, "category"=> "Education", "featured"=> false, "image_url"=> "airport.jpg", "name"=> "IIT Engineers CGHS", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.097161850759716, "city"=> "Delhi" }, {"place_id"=> "500de595a1785bfb1400df45", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 1, "total_love"=> 1, "user_love"=> 0, "category"=> "Eat & Drink", "featured"=> false, "image_url"=> "pvr.jpg", "name"=> "Sagar Ratna South Indian Restaurant", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.11661031254874, "city"=> "Delhi" }]}
  end

  def forgot_password
    #@result = Typhoeus::Request.get("/forgot_password.json")
    #@response = JSON.parse(@result.body)
    @response = { "places" => [{"place_id"=> "500de59ba1785bfb14012f21", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 0, "total_love"=> 0, "user_love"=> 0, "category"=> "Education", "featured"=> false, "image_url"=> "airport.jpg", "name"=> "IIT Engineers CGHS", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.097161850759716, "city"=> "Delhi" }, {"place_id"=> "500de595a1785bfb1400df45", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 1, "total_love"=> 1, "user_love"=> 0, "category"=> "Eat & Drink", "featured"=> false, "image_url"=> "pvr.jpg", "name"=> "Sagar Ratna South Indian Restaurant", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.11661031254874, "city"=> "Delhi" }]}
  end

  def reset_password
    #@result = Typhoeus::Request.get("/reset_password.json")
    #@response = JSON.parse(@result.body)
    @response = { "places" => [{"place_id"=> "500de59ba1785bfb14012f21", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 0, "total_love"=> 0, "user_love"=> 0, "category"=> "Education", "featured"=> false, "image_url"=> "airport.jpg", "name"=> "IIT Engineers CGHS", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.097161850759716, "city"=> "Delhi" }, {"place_id"=> "500de595a1785bfb1400df45", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 1, "total_love"=> 1, "user_love"=> 0, "category"=> "Eat & Drink", "featured"=> false, "image_url"=> "pvr.jpg", "name"=> "Sagar Ratna South Indian Restaurant", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.11661031254874, "city"=> "Delhi" }]}
  end

  def update_facebook_info
    #@result = Typhoeus::Request.get("/update_facebook_information.json")
    #@response = JSON.parse(@result.body)
    @response = { "places" => [{"place_id"=> "500de59ba1785bfb14012f21", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 0, "total_love"=> 0, "user_love"=> 0, "category"=> "Education", "featured"=> false, "image_url"=> "airport.jpg", "name"=> "IIT Engineers CGHS", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.097161850759716, "city"=> "Delhi" }, {"place_id"=> "500de595a1785bfb1400df45", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 1, "total_love"=> 1, "user_love"=> 0, "category"=> "Eat & Drink", "featured"=> false, "image_url"=> "pvr.jpg", "name"=> "Sagar Ratna South Indian Restaurant", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.11661031254874, "city"=> "Delhi" }]}
  end

  def facebook_news_feed
    #@result = Typhoeus::Request.get("/facebook_news_feed.json")
    #@respons/place_detail.jsone = JSON.parse(@result.body)
    @response = { "places" => [{"place_id"=> "500de59ba1785bfb14012f21", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 0, "total_love"=> 0, "user_love"=> 0, "category"=> "Education", "featured"=> false, "image_url"=> "airport.jpg", "name"=> "IIT Engineers CGHS", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.097161850759716, "city"=> "Delhi" }, {"place_id"=> "500de595a1785bfb1400df45", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 1, "total_love"=> 1, "user_love"=> 0, "category"=> "Eat & Drink", "featured"=> false, "image_url"=> "pvr.jpg", "name"=> "Sagar Ratna South Indian Restaurant", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.11661031254874, "city"=> "Delhi" }]}
  end

  def rate_place
    #@result = Typhoeus::Request.get("/rate_place.json")
    #@response = JSON.parse(@result.body)
    @response = { "places" => [{"place_id"=> "500de59ba1785bfb14012f21", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 0, "total_love"=> 0, "user_love"=> 0, "category"=> "Education", "featured"=> false, "image_url"=> "airport.jpg", "name"=> "IIT Engineers CGHS", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.097161850759716, "city"=> "Delhi" }, {"place_id"=> "500de595a1785bfb1400df45", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 1, "total_love"=> 1, "user_love"=> 0, "category"=> "Eat & Drink", "featured"=> false, "image_url"=> "pvr.jpg", "name"=> "Sagar Ratna South Indian Restaurant", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.11661031254874, "city"=> "Delhi" }]}
  end

  def get_leaderboard_list_local
    #@result = Typhoeus::Request.get("/get_leaderboard_list_local.json")
    #@response = JSON.parse(@result.body)
    @response = { "places" => [{"place_id"=> "500de59ba1785bfb14012f21", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 0, "total_love"=> 0, "user_love"=> 0, "category"=> "Education", "featured"=> false, "image_url"=> "airport.jpg", "name"=> "IIT Engineers CGHS", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.097161850759716, "city"=> "Delhi" }, {"place_id"=> "500de595a1785bfb1400df45", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 1, "total_love"=> 1, "user_love"=> 0, "category"=> "Eat & Drink", "featured"=> false, "image_url"=> "pvr.jpg", "name"=> "Sagar Ratna South Indian Restaurant", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.11661031254874, "city"=> "Delhi" }]}
  end

  def get_leaderboard_list_global
    #@result = Typhoeus::Request.get("/get_leaderboard_list_global.json")
    #@response = JSON.parse(@result.body)
    @response = { "places" => [{"place_id"=> "500de59ba1785bfb14012f21", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 0, "total_love"=> 0, "user_love"=> 0, "category"=> "Education", "featured"=> false, "image_url"=> "airport.jpg", "name"=> "IIT Engineers CGHS", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.097161850759716, "city"=> "Delhi" }, {"place_id"=> "500de595a1785bfb1400df45", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 1, "total_love"=> 1, "user_love"=> 0, "category"=> "Eat & Drink", "featured"=> false, "image_url"=> "pvr.jpg", "name"=> "Sagar Ratna South Indian Restaurant", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.11661031254874, "city"=> "Delhi" }]}
  end

  def get_skippr_and_chasers
    #@result = Typhoeus::Request.get("/get_skippr_and_chasers.json")
    #@response = JSON.parse(@result.body)
    @response = { "places" => [{"place_id"=> "500de59ba1785bfb14012f21", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 0, "total_love"=> 0, "user_love"=> 0, "category"=> "Education", "featured"=> false, "image_url"=> "airport.jpg", "name"=> "IIT Engineers CGHS", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.097161850759716, "city"=> "Delhi" }, {"place_id"=> "500de595a1785bfb1400df45", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 1, "total_love"=> 1, "user_love"=> 0, "category"=> "Eat & Drink", "featured"=> false, "image_url"=> "pvr.jpg", "name"=> "Sagar Ratna South Indian Restaurant", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.11661031254874, "city"=> "Delhi" }]}
  end

  def user_rank
    #@result = Typhoeus::Request.get("/user_rank.json")
    #@response = JSON.parse(@result.body)
    @response = { "places" => [{"place_id"=> "500de59ba1785bfb14012f21", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 0, "total_love"=> 0, "user_love"=> 0, "category"=> "Education", "featured"=> false, "image_url"=> "airport.jpg", "name"=> "IIT Engineers CGHS", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.097161850759716, "city"=> "Delhi" }, {"place_id"=> "500de595a1785bfb1400df45", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 1, "total_love"=> 1, "user_love"=> 0, "category"=> "Eat & Drink", "featured"=> false, "image_url"=> "pvr.jpg", "name"=> "Sagar Ratna South Indian Restaurant", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.11661031254874, "city"=> "Delhi" }]}
  end

  def list_of_coupons
    #@result = Typhoeus::Request.get("/coupon_list.json")
    #@response = JSON.parse(@result.body)
    @response = { "places" => [{"place_id"=> "500de59ba1785bfb14012f21", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 0, "total_love"=> 0, "user_love"=> 0, "category"=> "Education", "featured"=> false, "image_url"=> "airport.jpg", "name"=> "IIT Engineers CGHS", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.097161850759716, "city"=> "Delhi" }, {"place_id"=> "500de595a1785bfb1400df45", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 1, "total_love"=> 1, "user_love"=> 0, "category"=> "Eat & Drink", "featured"=> false, "image_url"=> "pvr.jpg", "name"=> "Sagar Ratna South Indian Restaurant", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.11661031254874, "city"=> "Delhi" }]}
  end

  def update_points
    #@result = Typhoeus::Request.get("/update_points.json")
    #@response = JSON.parse(@result.body)
    @response = { "places" => [{"place_id"=> "500de59ba1785bfb14012f21", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 0, "total_love"=> 0, "user_love"=> 0, "category"=> "Education", "featured"=> false, "image_url"=> "airport.jpg", "name"=> "IIT Engineers CGHS", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.097161850759716, "city"=> "Delhi" }, {"place_id"=> "500de595a1785bfb1400df45", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 1, "total_love"=> 1, "user_love"=> 0, "category"=> "Eat & Drink", "featured"=> false, "image_url"=> "pvr.jpg", "name"=> "Sagar Ratna South Indian Restaurant", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.11661031254874, "city"=> "Delhi" }]}
  end

  def user_at_a_place
    #@result = Typhoeus::Request.get("/imagesservers_at_place.json")
    #@response = JSON.parse(@result.body)
    @response = { "places" => [{"place_id"=> "500de59ba1785bfb14012f21", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 0, "total_love"=> 0, "user_love"=> 0, "category"=> "Education", "featured"=> false, "image_url"=> "airport.jpg", "name"=> "IIT Engineers CGHS", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.097161850759716, "city"=> "Delhi" }, {"place_id"=> "500de595a1785bfb1400df45", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 1, "total_love"=> 1, "user_love"=> 0, "category"=> "Eat & Drink", "featured"=> false, "image_url"=> "pvr.jpg", "name"=> "Sagar Ratna South Indian Restaurant", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.11661031254874, "city"=> "Delhi" }]}
  end

  def place_categories
    #@result = Typhoeus::Request.get("/categories.json")
    #@response = JSON.parse(@result.body)
    @response = { "places" => [{"place_id"=> "500de59ba1785bfb14012f21", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 0, "total_love"=> 0, "user_love"=> 0, "category"=> "Education", "featured"=> false, "image_url"=> "airport.jpg", "name"=> "IIT Engineers CGHS", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.097161850759716, "city"=> "Delhi" }, {"place_id"=> "500de595a1785bfb1400df45", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 1, "total_love"=> 1, "user_love"=> 0, "category"=> "Eat & Drink", "featured"=> false, "image_url"=> "pvr.jpg", "name"=> "Sagar Ratna South Indian Restaurant", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.11661031254874, "city"=> "Delhi" }]}
  end

  def faqs
    #@result = Typhoeus::Request.get("/faqs.json")
    #@response = JSON.parse(@result.body)
    @response = { "places" => [{"place_id"=> "500de59ba1785bfb14012f21", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 0, "total_love"=> 0, "user_love"=> 0, "category"=> "Education", "featured"=> false, "image_url"=> "airport.jpg", "name"=> "IIT Engineers CGHS", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.097161850759716, "city"=> "Delhi" }, {"place_id"=> "500de595a1785bfb1400df45", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 1, "total_love"=> 1, "user_love"=> 0, "category"=> "Eat & Drink", "featured"=> false, "image_url"=> "pvr.jpg", "name"=> "Sagar Ratna South Indian Restaurant", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.11661031254874, "city"=> "Delhi" }]}
  end

  def share_checkin_on_facebook
    #@result = Typhoeus::Request.get("/share_app_checkin_on_facebook.json")
    #@response = JSON.parse(@result.body)
    @response = { "places" => [{"place_id"=> "500de59ba1785bfb14012f21", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 0, "total_love"=> 0, "user_love"=> 0, "category"=> "Education", "featured"=> false, "image_url"=> "airport.jpg", "name"=> "IIT Engineers CGHS", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.097161850759716, "city"=> "Delhi" }, {"place_id"=> "500de595a1785bfb1400df45", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 1, "total_love"=> 1, "user_love"=> 0, "category"=> "Eat & Drink", "featured"=> false, "image_url"=> "pvr.jpg", "name"=> "Sagar Ratna South Indian Restaurant", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.11661031254874, "city"=> "Delhi" }]}
  end

  def specials_nearby
    #@result = Typhoeus::Request.get("/specials_nearby.json")
    #@response = JSON.parse(@result.body)
    @response = { "places" => [{"place_id"=> "500de59ba1785bfb14012f21", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 0, "total_love"=> 0, "user_love"=> 0, "category"=> "Education", "featured"=> false, "image_url"=> "airport.jpg", "name"=> "IIT Engineers CGHS", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.097161850759716, "city"=> "Delhi" }, {"place_id"=> "500de595a1785bfb1400df45", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 1, "total_love"=> 1, "user_love"=> 0, "category"=> "Eat & Drink", "featured"=> false, "image_url"=> "pvr.jpg", "name"=> "Sagar Ratna South Indian Restaurant", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.11661031254874, "city"=> "Delhi" }]}
  end

  def script_for_facebook_share
    #@result = Typhoeus::Request.get("script_for_facebook.json")
    #@response = JSON.parse(@result.body)
    @response = { "places" => [{"place_id"=> "500de59ba1785bfb14012f21", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 0, "total_love"=> 0, "user_love"=> 0, "category"=> "Education", "featured"=> false, "image_url"=> "airport.jpg", "name"=> "IIT Engineers CGHS", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.097161850759716, "city"=> "Delhi" }, {"place_id"=> "500de595a1785bfb1400df45", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 1, "total_love"=> 1, "user_love"=> 0, "category"=> "Eat & Drink", "featured"=> false, "image_url"=> "pvr.jpg", "name"=> "Sagar Ratna South Indian Restaurant", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.11661031254874, "city"=> "Delhi" }]}
  end

  def featured_tiles
    #@result = Typhoeus::Request.get("/featured_tiles.json")
    #@response = JSON.parse(@result.body)
    @response = { "places" => [{"place_id"=> "500de59ba1785bfb14012f21", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 0, "total_love"=> 0, "user_love"=> 0, "category"=> "Education", "featured"=> false, "image_url"=> "airport.jpg", "name"=> "IIT Engineers CGHS", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.097161850759716, "city"=> "Delhi" }, {"place_id"=> "500de595a1785bfb1400df45", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 1, "total_love"=> 1, "user_love"=> 0, "category"=> "Eat & Drink", "featured"=> false, "image_url"=> "pvr.jpg", "name"=> "Sagar Ratna South Indian Restaurant", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.11661031254874, "city"=> "Delhi" }]}
  end

  def campaign_static_places
    #@result = Typhoeus::Request.get("/campaign_static_places.json")
    #@response = JSON.parse(@result.body)
    @response = { "places" => [{"place_id"=> "500de59ba1785bfb14012f21", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 0, "total_love"=> 0, "user_love"=> 0, "category"=> "Education", "featured"=> false, "image_url"=> "airport.jpg", "name"=> "IIT Engineers CGHS", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.097161850759716, "city"=> "Delhi" }, {"place_id"=> "500de595a1785bfb1400df45", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 1, "total_love"=> 1, "user_love"=> 0, "category"=> "Eat & Drink", "featured"=> false, "image_url"=> "pvr.jpg", "name"=> "Sagar Ratna South Indian Restaurant", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.11661031254874, "city"=> "Delhi" }]}
  end

end
