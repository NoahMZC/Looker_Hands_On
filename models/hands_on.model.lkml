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

explore: card_dataset {
  join: past {
    type: inner
    sql_on: ${past.card_dataset_dt_date}  = ${card_dataset.dt_date} + INTERVAL -365 DAY ;;
    relationship: many_to_one
  }
}

explore: subway_dataset {
  join: passenger_type {
    type: inner
    sql_on: ${subway_dataset.passenger_type_cd} = ${passenger_type.passenger_type_cd} ;;
    relationship: many_to_one
  }
}

explore: time_type {}
