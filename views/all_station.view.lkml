view: all_station {
  derived_table: {
    sql: -- raw sql results do not include filled-in values for 'calendar.dt_date'


      SELECT
      (calendar.dt ) AS calendar_dt_date,
      COALESCE(SUM(card_dataset.foot_traffic_cnt ), 0) AS card_dataset_sum_foot_traffic_cnt
      FROM `DAO3_looker.card_dataset`
      AS card_dataset
      LEFT JOIN `DAO3_looker.calendar`
      AS calendar ON card_dataset.dt = calendar.dt
      GROUP BY
      1
      ORDER BY
      1 DESC
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: id {
    primary_key: yes
    sql: ${TABLE}.calendar_dt_date ;;
  }

  dimension: calendar_dt_date {
    type: date
    label: "날짜"
    datatype: date
    sql: ${TABLE}.calendar_dt_date ;;
  }

  dimension: card_dataset_sum_foot_traffic_cnt {
    type: number
    label: "전체역 합산 유동인원수"
    sql: ${TABLE}.card_dataset_sum_foot_traffic_cnt ;;
  }

  measure: sum_card_dataset_sum_foot_traffic_cnt {
    type: sum
    label: "전체역 합산 유동인원수의 합"
    sql: ${TABLE}.card_dataset_sum_foot_traffic_cnt ;;
  }

  set: detail {
    fields: [calendar_dt_date, card_dataset_sum_foot_traffic_cnt]
  }
}
