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
  join: calendar {
    type: left_outer
    sql_on: ${card_dataset.dt_date} = ${calendar.dt_date};;
    relationship: many_to_one
  }

  join: all_station {
    type: left_outer
    sql_on: ${card_dataset.dt_date} = ${all_station.calendar_dt_date};;
    relationship:many_to_one
  }
}
explore: subway_dataset {}

explore: unstructured {
  join: time_type {
    sql_on: ${time_type.tm_range_cd} = ${unstructured.tm_range_cd} ;;
    relationship: many_to_one
    type: inner
  }
  join: station_type {
    sql_on: ${station_type.station_cd} = ${unstructured.station_cd} and ${station_type.subway_line_cd} = ${unstructured.subway_line_cd};;
    type: inner
    relationship: many_to_one
  }
  join: passenger_type{
    sql_on: ${passenger_type.passenger_type_cd} = ${unstructured.passenger_type_cd} ;;
    relationship: many_to_one
    type: inner
  }
  join: calendar {
    sql_on: ${calendar.dt_date} = ${unstructured.dt_date} ;;
    relationship: many_to_one
    type: inner
  }
}
explore: all_station {}

explore: unstruct {}
# explore: subway_dataset {}

# explore: time_type {}
