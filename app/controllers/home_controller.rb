class HomeController < ApplicationController

  def index
  end

  def login
    @result = Typhoeus::Request.post("http://app-stg.hoppr.com/app/login.json", :params => {"mobile_number" => "919050513165", "password" => "ashish", "telco" => "unknown", "key" => "android"})
    @response = ActiveSupport::JSON.decode(@result.body)
    $redis.set('session_id',@response["session_id"])
    redirect_to nearby_places_path
  end

  def nearby_places
    @result = Typhoeus::Request.get("http://app-stg.hoppr.com/app/near_by_places.json", :params => {"longitude"=>"77.0721176","latitude"=>"28.4507931","session_id"=>"#{$redis.get('session_id')}","key"=>"android"})
    @response = ActiveSupport::JSON.decode(@result.body)
  end

  def checkin
    @result = Typhoeus::Request.get("http://app-stg.hoppr.com/app/checkin.json", :params => {"place_id"=>params[:place_id],"session_id" =>"#{$redis.get('session_id')}","key"=>"android"})
    #@result1 = Typhoeus::Request.get("http://app-stg.hoppr.com/app/get_coupon.json", :params => {"session_id" =>"#{$redis.get('session_id')}","key"=>"android"})
    @response = ActiveSupport::JSON.decode(@result.body)
    #@response1 = ActiveSupport::JSON.decode(@result1.body)
    @place_name = $redis.get('place_name')
  end

  def place_detail
    @result = Typhoeus::Request.get("http://app-stg.hoppr.com/app/place_detail.json", :params => {"place_id"=>"#{params[:place_id]}","session_id"=>"#{$redis.get('session_id')}","key"=>"android"})
    @result1 = Typhoeus::Request.get("http://app-stg.hoppr.com/app/get_skippr_and_chasers.json", :params => {"place_id"=>"#{params[:place_id]}","session_id"=>"#{$redis.get('session_id')}","key"=>"android"})
    @result2 = Typhoeus::Request.get("http://app-stg.hoppr.com/app/offer_detail.json", :params => {"offer_id"=>"#{params[:offer_id]}","place_id"=>"#{params[:place_id]}","session_id"=>"#{$redis.get('session_id')}","key"=>"android"}) if params[:offer_id].present?
    @response = ActiveSupport::JSON.decode(@result.body)
    @response1 = ActiveSupport::JSON.decode(@result1.body)
    @response2 = ActiveSupport::JSON.decode(@result2.body) rescue nil if params[:offer_id].present?
    $redis.set('place_name',@response['name'])
  end

  def get_skippr_and_chasers
    @result1 = Typhoeus::Request.get("http://app-stg.hoppr.com/app/get_skippr_and_chasers.json", :params => { "place_id" => params[:place_id], "session_id"=> $redis.get("session_id"),"key" => "android"})
    @response1 = JSON.parse(@result1.body)
  end

  def rate_place
    @result = Typhoeus::Request.get("http://app-stg.hoppr.com/app/rate_place.json", :params => {"place_id"=>"#{params[:place_id]}","rating"=>"#{params[:love]}","session_id"=>"#{$redis.get('session_id')}","key"=>"android"})
    @response = ActiveSupport::JSON.decode(@result.body)
    redirect_to place_detail_url(:place_id => params[:place_id])
  end

end
