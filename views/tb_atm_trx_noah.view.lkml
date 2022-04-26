view: tb_atm_trx_noah {
  sql_table_name: public.tb_atm_trx_noah ;;

  dimension: cust_no {
    type: string
    sql: ${TABLE}.cust_no ;;
  }

  dimension: trx_amt {
    type: number
    sql: ${TABLE}.trx_amt ;;
  }

  dimension: trx_atm_no {
    type: string
    sql: ${TABLE}.trx_atm_no ;;
  }

  dimension: trx_branch_no {
    type: string
    sql: ${TABLE}.trx_branch_no ;;
  }

  dimension: trx_cd {
    type: string
    sql: ${TABLE}.trx_cd ;;
  }

  dimension: trx_dny_rsn_cd {
    type: string
    sql: ${TABLE}.trx_dny_rsn_cd ;;
  }

  dimension: trx_dttm {
    type: string
    sql: ${TABLE}.trx_dttm ;;
  }

  dimension: trx_rslt_cd {
    type: string
    sql: ${TABLE}.trx_rslt_cd ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
