view: card_dataset {
  sql_table_name: `DAO3_looker.card_dataset`
    ;;

  dimension: clean_transported_cnt {
    type: number
    sql: ${TABLE}.clean_transported_cnt ;;
    label: "순수송인원수"
  }

  dimension_group: dt {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.dt ;;
  }

  dimension: foot_traffic_cnt {
    type: number
    sql: ${TABLE}.foot_traffic_cnt ;;
    label: "유동인원수"
  }

  dimension: getoff_passenger_cnt {
    type: number
    sql: ${TABLE}.getoff_passenger_cnt ;;
    label: "하차인원수"
  }

  dimension: passenger_cnt {
    type: number
    sql: ${TABLE}.passenger_cnt ;;
    label: "승차인원수"
  }

  measure: sum_foot_traffic_cnt{
    type :  sum
    sql: ${TABLE}.foot_traffic_cnt ;;
    label: "합산 유동인원수"
  }

  measure: avg_foot_traffic_cnt{
    type :  average
    sql: ${TABLE}.foot_traffic_cnt ;;
    label: "평균 유동인원수"
  }


  dimension: station_nm {
    type: string
    sql: ${TABLE}.station_nm ;;
    label: "역 이름"
  }

  dimension: subway_line_nm {
    type: string
    sql: ${TABLE}.subway_line_nm ;;
    label: "노선명"
  }

  measure: count {
    type: count
    drill_fields: []
  }

  # measure: avg_card_dataset_sum_foot_traffic_cnt {
  #   type: average
  #   label: "전체역 합산 유동인원수의 평균"
  #   sql: all_station.avg_card_dataset_sum_foot_traffic_cnt ;;
  # }

}
