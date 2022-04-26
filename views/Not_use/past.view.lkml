view: past {
  derived_table: {
    sql: -- raw sql results do not include filled-in values for 'card_dataset.dt_date'


      SELECT
      (card_dataset.dt ) AS card_dataset_dt_date,
      COALESCE(SUM(CAST(card_dataset.foot_traffic_cnt AS FLOAT64)), 0) AS sum_of
      FROM `DAO3_looker.card_dataset`
      AS card_dataset
      WHERE (card_dataset.dt ) < ((DATE_ADD(CURRENT_DATE(), INTERVAL -365 DAY)))
      GROUP BY
      1
      ORDER BY
      1 DESC
      -- LIMIT 5000
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: card_dataset_dt_date {
    type: date
    datatype: date
    sql: ${TABLE}.card_dataset_dt_date ;;
  }

  dimension: pk {
    primary_key: yes
    sql: ${TABLE}.card_dataset_dt_date ;;
  }


  dimension: sum_of {
    type: number
    sql: ${TABLE}.sum_of ;;
  }

  set: detail {
    fields: [card_dataset_dt_date, sum_of]
  }
}
