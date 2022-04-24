view: passenger_type {
  sql_table_name: `DAO3_looker.passenger_type`
    ;;

  dimension: passenger_type_cd {
    type: string
    sql: ${TABLE}.passenger_type_cd ;;
    label: "고객 유형 코드"
  }

  dimension: passenger_type_nm {
    type: string
    sql: ${TABLE}.passenger_type_nm ;;
    label: "고객 유형"
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
