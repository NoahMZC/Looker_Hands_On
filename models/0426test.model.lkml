connection: "0426"

# include all the views
include: "/views/**/*.view"

datagroup: 0426test_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: 0426test_default_datagroup

explore: tb_atm_trx_noah {}

explore: tb_cust_info_noah {}

explore: tb_dept_trx_noah {}

explore: tb_property_tax_noah {}
