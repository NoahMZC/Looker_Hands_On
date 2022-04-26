view: tb_property_tax_noah {
  sql_table_name: public.tb_property_tax_noah ;;

  dimension: cust_no {
    type: string
    sql: ${TABLE}.cust_no ;;
  }

  dimension: property_tax_amt {
    type: number
    sql: ${TABLE}.property_tax_amt ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
