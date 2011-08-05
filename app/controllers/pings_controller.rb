class PingsController < ApplicationController

  # usage => http://localhost:3000/pings/register?lat=41.8781136&long=-87.6297982&device=1341308448409&tstamp=1312249818
  def register
    # SanFran => http://maps.googleapis.com/maps/api/geocode/json?address=San+Francisco,+CA&sensor=true
    #lat =37.7749295
    #long = -122.4194155

    # Chicago => http://maps.googleapis.com/maps/api/geocode/json?address=Chicago,+IL&sensor=true
    #lat = 41.8781136
    #long = -87.6297982
    ping = Ping.new
    ping.lat = params[:lat]
    ping.long = params[:long]
    ping.device = params[:device]
    ping.tstamp = params[:tstamp]
    ping.save!

    coordinates = [params[:lat],params[:long]]

    @map = GMap.new("map")
    @map.control_init(:large_map => true, :map_type => true)
    @map.center_zoom_init(coordinates, 14)
    #@map.overlay_init(GMarker.new(coordinates,:title => "Navy Pier", :info_window => "Navy Pier"))
    @map.overlay_init(GMarker.new(coordinates))
  end
end
