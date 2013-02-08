class HomeController < ApplicationController

  def index

  end

  def nearby_places
    @response = { "places" => [{"place_id"=> "500de59ba1785bfb14012f21", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 0, "total_love"=> 0, "user_love"=> 0, "category"=> "Education", "featured"=> false, "image_url"=> "airport.jpg", "name"=> "IIT Engineers CGHS", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.097161850759716, "city"=> "Delhi" }, {"place_id"=> "500de595a1785bfb1400df45", "address"=> nil, "tip"=> nil, "locality"=> "Dwarka", "landmark"=> "", "rating"=> 1, "total_love"=> 1, "user_love"=> 0, "category"=> "Eat & Drink", "featured"=> false, "image_url"=> "pvr.jpg", "name"=> "Sagar Ratna South Indian Restaurant", "offer_id"=> nil, "offer_category"=> nil, "distance"=> 0.11661031254874, "city"=> "Delhi" }]}
  end
end
