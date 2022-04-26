view: tb_dept_trx_noah {
  sql_table_name: public.tb_dept_trx_noah ;;

  dimension: cust_no {
    type: string
    sql: ${TABLE}.cust_no ;;
  }

  dimension: deposit_amt {
    type: number
    sql: ${TABLE}.deposit_amt ;;
  }

  dimension: trx_dt {
    type: string
    sql: ${TABLE}.trx_dt ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
