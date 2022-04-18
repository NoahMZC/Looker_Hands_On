connection: "hands_on_connection"

# include all the views
include: "/views/**/*.view"

datagroup: hands_on_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: hands_on_default_datagroup

explore: station_type {}

# explore: passenger_type {}

explore: calendar {}

explore: card_dataset {}

# explore: subway_dataset {}

# explore: time_type {}
