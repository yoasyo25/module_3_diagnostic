class SearchController < ApplicationController
  def index
    search = params[:q]

    @conn = Faraday.new(url: "https://api.data.gov/nrel/alt-fuel-stations/v1.json?") do |faraday|
      faraday.headers['X-Api-Key'] = ENV["api_key"]
      faraday.adapter  Faraday.default_adapter
    end
    # @conn = Faraday.new(url: "https://developer.nrel.gov/api/alt-fuel-stations/v1.json?") do |faraday|
    #   faraday.headers['Api-key'] = ENV["api_key"]
    #   faraday.adapter  Faraday.default_adapter
    # end
    response = @conn.get("fuel_type=ELEC,LPG&zip=#{search}&limit=10")


  end

end

# postman result -
# {
#     "station_locator_url": "http://www.afdc.energy.gov/afdc/locator/stations/",
#     "total_results": 20,
#     "station_counts": {
#         "total": 52,
#         "fuels": {
#             "E85": {
#                 "total": 0
#             },
#             "ELEC": {
#                 "total": 52,
#                 "stations": {
#                     "total": 20
#                 }
#             },
#             "HY": {
#                 "total": 0
#             },
#             "LNG": {
#                 "total": 0
#             },
#             "BD": {
#                 "total": 0
#             },
#             "CNG": {
#                 "total": 0
#             },
#             "LPG": {
#                 "total": 0
#             }
#         }
#     },
#     "fuel_stations": [
#         {
#             "access_days_time": "24 hours daily; pay lot",
#             "cards_accepted": null,
#             "date_last_confirmed": "2016-11-02",
#             "expected_date": null,
#             "fuel_type_code": "ELEC",
#             "id": 36353,
#             "groups_with_access_code": "Public",
#             "open_date": "2010-03-15",
#             "owner_type_code": "P",
#             "status_code": "E",
#             "station_name": "Hyatt Regency Denver",
#             "station_phone": "303-486-4467",
#             "updated_at": "2017-01-18T02:56:29Z",
#             "geocode_status": "200-8",
#             "latitude": 39.7435358,
#             "longitude": -104.9934125,
#             "city": "Denver",
#             "intersection_directions": "At Colorado Convention Center, level 2",
#             "plus4": null,
#             "state": "CO",
#             "street_address": "650 15th St",
#             "zip": "80202",
#             "bd_blends": null,
#             "e85_blender_pump": null,
#             "ev_connector_types": [
#                 "NEMA520"
#             ],
#             "ev_dc_fast_num": null,
#             "ev_level1_evse_num": 4,
#             "ev_level2_evse_num": null,
#             "ev_network": null,
#             "ev_network_web": null,
#             "ev_other_evse": null,
#             "hy_status_link": null,
#             "lpg_primary": null,
#             "ng_fill_type_code": null,
#             "ng_psi": null,
#             "ng_vehicle_class": null
#         },
#         {
#             "access_days_time": "24 hours daily; pay lot",
#             "cards_accepted": null,
#             "date_last_confirmed": "2016-11-02",
#             "expected_date": null,
#             "fuel_type_code": "ELEC",
#             "id": 43833,
#             "groups_with_access_code": "Public",
#             "open_date": "2011-02-28",
#             "owner_type_code": "P",
#             "status_code": "E",
#             "station_name": "Tremont Street Garage",
#             "station_phone": "303-534-7559",
#             "updated_at": "2017-01-18T02:47:58Z",
#             "geocode_status": "200-8",
#             "latitude": 39.7421201,
#             "longitude": -104.9914479,
#             "city": "Denver",
#             "intersection_directions": null,
#             "plus4": null,
#             "state": "CO",
#             "street_address": "400 15th St",
#             "zip": "80202",
#             "bd_blends": null,
#             "e85_blender_pump": null,
#             "ev_connector_types": [
#                 "NEMA515",
#                 "J1772"
#             ],
#             "ev_dc_fast_num": null,
#             "ev_level1_evse_num": 2,
#             "ev_level2_evse_num": 2,
#             "ev_network": null,
#             "ev_network_web": null,
#             "ev_other_evse": null,
#             "hy_status_link": null,
#             "lpg_primary": null,
#             "ng_fill_type_code": null,
#             "ng_psi": null,
#             "ng_vehicle_class": null
#         },
#         {
#             "access_days_time": "24 hours daily",
#             "cards_accepted": null,
#             "date_last_confirmed": "2016-11-02",
#             "expected_date": null,
#             "fuel_type_code": "ELEC",
#             "id": 53941,
#             "groups_with_access_code": "Public",
#             "open_date": "2013-06-01",
#             "owner_type_code": "LG",
#             "status_code": "E",
#             "station_name": "City of Denver - Acme Parking Lot",
#             "station_phone": "303-607-9093  720-913-1750",
#             "updated_at": "2017-01-18T02:49:11Z",
#             "geocode_status": "200-8",
#             "latitude": 39.7481076,
#             "longitude": -105.0008461,
#             "city": "Denver",
#             "intersection_directions": "Located in the Northwest corner of the lot",
#             "plus4": null,
#             "state": "CO",
#             "street_address": "1430 14th St",
#             "zip": "80202",
#             "bd_blends": null,
#             "e85_blender_pump": null,
#             "ev_connector_types": [
#                 "J1772"
#             ],
#             "ev_dc_fast_num": null,
#             "ev_level1_evse_num": null,
#             "ev_level2_evse_num": 1,
#             "ev_network": null,
#             "ev_network_web": null,
#             "ev_other_evse": null,
#             "hy_status_link": null,
#             "lpg_primary": null,
#             "ng_fill_type_code": null,
#             "ng_psi": null,
#             "ng_vehicle_class": null
#         },
#         {
#             "access_days_time": "24 hours daily",
#             "cards_accepted": null,
#             "date_last_confirmed": "2016-11-02",
#             "expected_date": null,
#             "fuel_type_code": "ELEC",
#             "id": 53944,
#             "groups_with_access_code": "Public",
#             "open_date": "2013-06-01",
#             "owner_type_code": "LG",
#             "status_code": "E",
#             "station_name": "City of Denver - Colorado Convention Center Garage",
#             "station_phone": "303-228-8071  720-913-1750",
#             "updated_at": "2017-01-18T01:27:40Z",
#             "geocode_status": "GPS",
#             "latitude": 39.742308,
#             "longitude": -104.997556,
#             "city": "Denver",
#             "intersection_directions": "Parking space 1081. Level P-1, half way down the level near the freight elevator",
#             "plus4": null,
#             "state": "CO",
#             "street_address": "1104 Champa St",
#             "zip": "80202",
#             "bd_blends": null,
#             "e85_blender_pump": null,
#             "ev_connector_types": [
#                 "J1772"
#             ],
#             "ev_dc_fast_num": null,
#             "ev_level1_evse_num": null,
#             "ev_level2_evse_num": 1,
#             "ev_network": null,
#             "ev_network_web": null,
#             "ev_other_evse": null,
#             "hy_status_link": null,
#             "lpg_primary": null,
#             "ng_fill_type_code": null,
#             "ng_psi": null,
#             "ng_vehicle_class": null
#         },
#         {
#             "access_days_time": "24 hours daily",
#             "cards_accepted": null,
#             "date_last_confirmed": "2017-08-30",
#             "expected_date": null,
#             "fuel_type_code": "ELEC",
#             "id": 61062,
#             "groups_with_access_code": "Public",
#             "open_date": null,
#             "owner_type_code": null,
#             "status_code": "E",
#             "station_name": "PARKING LEVEL 1",
#             "station_phone": "888-758-4389",
#             "updated_at": "2017-08-30T09:00:51Z",
#             "geocode_status": "GPS",
#             "latitude": 39.7480608,
#             "longitude": -104.9974083,
#             "city": "Denver",
#             "intersection_directions": "WRITER SQUARE 1; Parking level P1 near elevators and cashier",
#             "plus4": null,
#             "state": "CO",
#             "street_address": "1501-1599 Lawrence St",
#             "zip": "80202",
#             "bd_blends": null,
#             "e85_blender_pump": null,
#             "ev_connector_types": [
#                 "J1772"
#             ],
#             "ev_dc_fast_num": null,
#             "ev_level1_evse_num": null,
#             "ev_level2_evse_num": 2,
#             "ev_network": "ChargePoint Network",
#             "ev_network_web": "http://www.chargepoint.com/",
#             "ev_other_evse": null,
#             "hy_status_link": null,
#             "lpg_primary": null,
#             "ng_fill_type_code": null,
#             "ng_psi": null,
#             "ng_vehicle_class": null,
#             "ev_network_ids": {
#                 "posts": [
#                     "1:98225"
#                 ]
#             }
#         },
#         {
#             "access_days_time": "24 hours daily",
#             "cards_accepted": null,
#             "date_last_confirmed": "2017-08-30",
#             "expected_date": null,
#             "fuel_type_code": "ELEC",
#             "id": 63109,
#             "groups_with_access_code": "Public",
#             "open_date": null,
#             "owner_type_code": null,
#             "status_code": "E",
#             "station_name": "VERVE DENVER",
#             "station_phone": "888-758-4389",
#             "updated_at": "2017-08-30T09:05:45Z",
#             "geocode_status": "200-9",
#             "latitude": 39.752068,
#             "longitude": -105.003549,
#             "city": "Denver",
#             "intersection_directions": "VERVE P2 #2; For residents and guests only.\nVERVE P2 #1; For residents and guests only.",
#             "plus4": null,
#             "state": "CO",
#             "street_address": "1820 15th St",
#             "zip": "80202",
#             "bd_blends": null,
#             "e85_blender_pump": null,
#             "ev_connector_types": [
#                 "J1772"
#             ],
#             "ev_dc_fast_num": null,
#             "ev_level1_evse_num": null,
#             "ev_level2_evse_num": 4,
#             "ev_network": "ChargePoint Network",
#             "ev_network_web": "http://www.chargepoint.com/",
#             "ev_other_evse": null,
#             "hy_status_link": null,
#             "lpg_primary": null,
#             "ng_fill_type_code": null,
#             "ng_psi": null,
#             "ng_vehicle_class": null,
#             "ev_network_ids": {
#                 "posts": [
#                     "1:92317",
#                     "1:96723"
#                 ]
#             }
#         },
#         {
#             "access_days_time": "24 hours daily",
#             "cards_accepted": null,
#             "date_last_confirmed": "2017-08-30",
#             "expected_date": null,
#             "fuel_type_code": "ELEC",
#             "id": 65319,
#             "groups_with_access_code": "Public",
#             "open_date": null,
#             "owner_type_code": null,
#             "status_code": "E",
#             "station_name": "BROOKFIELD WEST",
#             "station_phone": "888-758-4389",
#             "updated_at": "2017-08-30T08:55:16Z",
#             "geocode_status": "GPS",
#             "latitude": 39.7477036,
#             "longitude": -104.9897862,
#             "city": "Denver",
#             "intersection_directions": "1801 CAL 01; -",
#             "plus4": null,
#             "state": "CO",
#             "street_address": "1801 California St",
#             "zip": "80202",
#             "bd_blends": null,
#             "e85_blender_pump": null,
#             "ev_connector_types": [
#                 "J1772"
#             ],
#             "ev_dc_fast_num": null,
#             "ev_level1_evse_num": null,
#             "ev_level2_evse_num": 2,
#             "ev_network": "ChargePoint Network",
#             "ev_network_web": "http://www.chargepoint.com/",
#             "ev_other_evse": null,
#             "hy_status_link": null,
#             "lpg_primary": null,
#             "ng_fill_type_code": null,
#             "ng_psi": null,
#             "ng_vehicle_class": null,
#             "ev_network_ids": {
#                 "posts": [
#                     "1:107401"
#                 ]
#             }
#         },
#         {
#             "access_days_time": "24 hours daily",
#             "cards_accepted": null,
#             "date_last_confirmed": "2017-08-30",
#             "expected_date": null,
#             "fuel_type_code": "ELEC",
#             "id": 65432,
#             "groups_with_access_code": "Public",
#             "open_date": null,
#             "owner_type_code": null,
#             "status_code": "E",
#             "station_name": "PUBLIC STATIONS",
#             "station_phone": "888-758-4389",
#             "updated_at": "2017-08-30T09:11:15Z",
#             "geocode_status": "GPS",
#             "latitude": 39.7431367,
#             "longitude": -104.9974677,
#             "city": "Denver",
#             "intersection_directions": "CONVENTION CTR; Enter garage off Speer before Champa. Located in space 1081 on Level 1",
#             "plus4": null,
#             "state": "CO",
#             "street_address": "1286-1296 Stout St",
#             "zip": "80202",
#             "bd_blends": null,
#             "e85_blender_pump": null,
#             "ev_connector_types": [
#                 "J1772"
#             ],
#             "ev_dc_fast_num": null,
#             "ev_level1_evse_num": null,
#             "ev_level2_evse_num": 1,
#             "ev_network": "ChargePoint Network",
#             "ev_network_web": "http://www.chargepoint.com/",
#             "ev_other_evse": null,
#             "hy_status_link": null,
#             "lpg_primary": null,
#             "ng_fill_type_code": null,
#             "ng_psi": null,
#             "ng_vehicle_class": null,
#             "ev_network_ids": {
#                 "posts": [
#                     "1:74153"
#                 ]
#             }
#         },
#         {
#             "access_days_time": "24 hours daily",
#             "cards_accepted": null,
#             "date_last_confirmed": "2017-08-30",
#             "expected_date": null,
#             "fuel_type_code": "ELEC",
#             "id": 65578,
#             "groups_with_access_code": "Public",
#             "open_date": null,
#             "owner_type_code": null,
#             "status_code": "E",
#             "station_name": "SPIRE",
#             "station_phone": "888-758-4389",
#             "updated_at": "2017-08-30T08:49:24Z",
#             "geocode_status": "GPS",
#             "latitude": 39.7448438,
#             "longitude": -104.9958538,
#             "city": "Denver",
#             "intersection_directions": "PORTE COCHERE; Located in the Spire porte cochere off Champa. Available to the public while charging a vehicle at $5 per hour.  Registered resident rate is $2 per hour.",
#             "plus4": null,
#             "state": "CO",
#             "street_address": "891 14th St",
#             "zip": "80202",
#             "bd_blends": null,
#             "e85_blender_pump": null,
#             "ev_connector_types": [
#                 "J1772"
#             ],
#             "ev_dc_fast_num": null,
#             "ev_level1_evse_num": null,
#             "ev_level2_evse_num": 1,
#             "ev_network": "ChargePoint Network",
#             "ev_network_web": "http://www.chargepoint.com/",
#             "ev_other_evse": null,
#             "hy_status_link": null,
#             "lpg_primary": null,
#             "ng_fill_type_code": null,
#             "ng_psi": null,
#             "ng_vehicle_class": null,
#             "ev_network_ids": {
#                 "posts": [
#                     "1:113141"
#                 ]
#             }
#         },
#         {
#             "access_days_time": "24 hours daily",
#             "cards_accepted": null,
#             "date_last_confirmed": "2017-08-30",
#             "expected_date": null,
#             "fuel_type_code": "ELEC",
#             "id": 66512,
#             "groups_with_access_code": "Public",
#             "open_date": null,
#             "owner_type_code": null,
#             "status_code": "E",
#             "station_name": "ALTA CITY HOUSE",
#             "station_phone": "888-758-4389",
#             "updated_at": "2017-08-30T08:54:56Z",
#             "geocode_status": "200-9",
#             "latitude": 39.756208,
#             "longitude": -105.0005,
#             "city": "Denver",
#             "intersection_directions": "CITY HOUSE FL 4; Between spaces 286 and 287 on 4th floor\nCITY HOUSE FL 2; 2nd Floor\nCITY HOUSE FL 1; Between spaces 41 and 42 on 1st Floor\nCITY HOUSE FL 3; Between spaces 204 and 205 on 3rd floor\nCITY HOUSE FL 5; Between spaces 369 & 369 on 5th floor",
#             "plus4": null,
#             "state": "CO",
#             "street_address": "1801 Chestnut Place",
#             "zip": "80202",
#             "bd_blends": null,
#             "e85_blender_pump": null,
#             "ev_connector_types": [
#                 "J1772"
#             ],
#             "ev_dc_fast_num": null,
#             "ev_level1_evse_num": null,
#             "ev_level2_evse_num": 10,
#             "ev_network": "ChargePoint Network",
#             "ev_network_web": "http://www.chargepoint.com/",
#             "ev_other_evse": null,
#             "hy_status_link": null,
#             "lpg_primary": null,
#             "ng_fill_type_code": null,
#             "ng_psi": null,
#             "ng_vehicle_class": null,
#             "ev_network_ids": {
#                 "posts": [
#                     "1:107675",
#                     "1:107679",
#                     "1:107681",
#                     "1:107685",
#                     "1:107683"
#                 ]
#             }
#         }
#     ]
# }
