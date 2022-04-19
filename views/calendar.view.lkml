view: calendar {
  sql_table_name: `DAO3_looker.calendar`
    ;;

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

  dimension: dt_day {
    type: string
    sql: ${TABLE}.dt_day ;;
    label: "요일"
  }

  dimension: holiday {
    type: string
    sql: ${TABLE}.holiday ;;
    label: "휴일"
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
