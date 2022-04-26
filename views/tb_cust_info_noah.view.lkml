view: tb_cust_info_noah {
  sql_table_name: public.tb_cust_info_noah ;;

  dimension: age_cd {
    type: string
    sql: ${TABLE}.age_cd ;;
  }

  dimension: age_grp_cd {
    type: string
    sql: ${TABLE}.age_grp_cd ;;
  }

  dimension: annual_income {
    type: number
    sql: ${TABLE}.annual_income ;;
  }

  dimension: avg_income_amt {
    type: number
    sql: ${TABLE}.avg_income_amt ;;
  }

  dimension: billtrs_yn {
    type: string
    sql: ${TABLE}.billtrs_yn ;;
  }

  dimension: birth_ymd {
    type: string
    sql: ${TABLE}.birth_ymd ;;
  }

  dimension: card_own_yn {
    type: string
    sql: ${TABLE}.card_own_yn ;;
  }

  dimension: cell_phn_no {
    type: string
    sql: ${TABLE}.cell_phn_no ;;
  }

  dimension: commtrs_yn {
    type: string
    sql: ${TABLE}.commtrs_yn ;;
  }

  dimension: crd_lmt_amt {
    type: number
    sql: ${TABLE}.crd_lmt_amt ;;
  }

  dimension: crd_lmt_exht_rt {
    type: number
    sql: ${TABLE}.crd_lmt_exht_rt ;;
  }

  dimension: crm_branch_cd {
    type: string
    sql: ${TABLE}.crm_branch_cd ;;
  }

  dimension: cust_nm {
    type: string
    sql: ${TABLE}.cust_nm ;;
  }

  dimension: cust_no {
    type: string
    sql: ${TABLE}.cust_no ;;
  }

  dimension: custgrd_cd {
    type: string
    sql: ${TABLE}.custgrd_cd ;;
  }

  dimension: dbl_income_yn {
    type: string
    sql: ${TABLE}.dbl_income_yn ;;
  }

  dimension: dfrcv_depo_avg {
    type: number
    sql: ${TABLE}.dfrcv_depo_avg ;;
  }

  dimension: dfrcv_depo_bal {
    type: number
    sql: ${TABLE}.dfrcv_depo_bal ;;
  }

  dimension: dmd_depo_avg {
    type: number
    sql: ${TABLE}.dmd_depo_avg ;;
  }

  dimension: dmd_depo_bal {
    type: number
    sql: ${TABLE}.dmd_depo_bal ;;
  }

  dimension: email_addr {
    type: string
    sql: ${TABLE}.email_addr ;;
  }

  dimension: emp_yn {
    type: string
    sql: ${TABLE}.emp_yn ;;
  }

  dimension: fund_opn_yn {
    type: string
    sql: ${TABLE}.fund_opn_yn ;;
  }

  dimension: houseown_cd {
    type: string
    sql: ${TABLE}.houseown_cd ;;
  }

  dimension: housetyp_cd {
    type: string
    sql: ${TABLE}.housetyp_cd ;;
  }

  dimension: housing_amt {
    type: number
    sql: ${TABLE}.housing_amt ;;
  }

  dimension: isa_own_yn {
    type: string
    sql: ${TABLE}.isa_own_yn ;;
  }

  dimension: l6mth_dmd_avg_amt {
    type: number
    sql: ${TABLE}.l6mth_dmd_avg_amt ;;
  }

  dimension: l6mth_overdue_cnt {
    type: number
    sql: ${TABLE}.l6mth_overdue_cnt ;;
  }

  dimension: lst_limit_inc_dt {
    type: string
    sql: ${TABLE}.lst_limit_inc_dt ;;
  }

  dimension: lstcamp_cd {
    type: string
    sql: ${TABLE}.lstcamp_cd ;;
  }

  dimension: lstcamp_dt {
    type: string
    sql: ${TABLE}.lstcamp_dt ;;
  }

  dimension: lstfund_cd {
    type: string
    sql: ${TABLE}.lstfund_cd ;;
  }

  dimension: lstfund_dt {
    type: string
    sql: ${TABLE}.lstfund_dt ;;
  }

  dimension: marriage_yn {
    type: string
    sql: ${TABLE}.marriage_yn ;;
  }

  dimension: mkt_agr_yn {
    type: string
    sql: ${TABLE}.mkt_agr_yn ;;
  }

  dimension: mng_assn_yn {
    type: string
    sql: ${TABLE}.mng_assn_yn ;;
  }

  dimension: mng_emp_no {
    type: string
    sql: ${TABLE}.mng_emp_no ;;
  }

  dimension: mo_bnkbook_yn {
    type: string
    sql: ${TABLE}.mo_bnkbook_yn ;;
  }

  dimension: mthavg_amt {
    type: number
    sql: ${TABLE}.mthavg_amt ;;
  }

  dimension: mthavg_cd {
    type: string
    sql: ${TABLE}.mthavg_cd ;;
  }

  dimension: overdue_yn {
    type: string
    sql: ${TABLE}.overdue_yn ;;
  }

  dimension: pldge_amt {
    type: number
    sql: ${TABLE}.pldge_amt ;;
  }

  dimension: psn_rct_acct_yn {
    type: string
    sql: ${TABLE}.psn_rct_acct_yn ;;
  }

  dimension: pub_ofcr_yn {
    type: string
    sql: ${TABLE}.pub_ofcr_yn ;;
  }

  dimension: rcv_depo_avg {
    type: number
    sql: ${TABLE}.rcv_depo_avg ;;
  }

  dimension: rcv_depo_bal {
    type: number
    sql: ${TABLE}.rcv_depo_bal ;;
  }

  dimension: rcv_dny_yn {
    type: string
    sql: ${TABLE}.rcv_dny_yn ;;
  }

  dimension: res_area {
    type: number
    sql: ${TABLE}.res_area ;;
  }

  dimension: rich100_yn {
    type: string
    sql: ${TABLE}.rich100_yn ;;
  }

  dimension: salamt_cd {
    type: string
    sql: ${TABLE}.salamt_cd ;;
  }

  dimension: saltrs_amt {
    type: number
    sql: ${TABLE}.saltrs_amt ;;
  }

  dimension: saltrs_cd {
    type: string
    sql: ${TABLE}.saltrs_cd ;;
  }

  dimension: saltrs_dt {
    type: string
    sql: ${TABLE}.saltrs_dt ;;
  }

  dimension: saltrs_yn {
    type: string
    sql: ${TABLE}.saltrs_yn ;;
  }

  dimension: sex_cd {
    type: string
    sql: ${TABLE}.sex_cd ;;
  }

  dimension: sms_dny_yn {
    type: string
    sql: ${TABLE}.sms_dny_yn ;;
  }

  dimension: social_id {
    type: string
    sql: ${TABLE}.social_id ;;
  }

  dimension: tenure_mcnt {
    type: number
    sql: ${TABLE}.tenure_mcnt ;;
  }

  dimension: webee_bank_yn {
    type: string
    sql: ${TABLE}.webee_bank_yn ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
