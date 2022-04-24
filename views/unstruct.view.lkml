view: unstruct {
  derived_table: {
    sql: SELECT
          (unstructured.dt ) AS unstructured_dt_date,
              (FORMAT_DATE('%Y-%m', unstructured.dt )) AS unstructured_dt_month,
              (FORMAT_DATE('%F', DATE_TRUNC(unstructured.dt , WEEK(MONDAY)))) AS unstructured_dt_week,
          time_type.tm_range_nm  AS time_type_tm_range_nm,
          station_type.station_nm  AS station_type_station_nm,
          passenger_type.passenger_type_nm  AS passenger_type_passenger_type_nm,
          station_type.station_cd  AS station_type_station_cd,
          station_type.transfer_station_gb  AS station_type_transfer_station_gb,
          station_type.subway_line_cd  AS station_type_subway_line_cd,
          unstructured.getoff_passenger_cnt  AS unstructured_getoff_passenger_cnt,
          unstructured.passenger_cnt  AS unstructured_passenger_cnt,
          unstructured.foot_traffic_cnt  AS unstructured_foot_traffic_cnt,
          unstructured.clean_transported_cnt  AS unstructured_clean_transported_cnt,
          calendar.dt_day  AS calendar_dt_day
      FROM `DAO3_looker.subway_dataset`
           AS unstructured
      INNER JOIN `DAO3_looker.time_type`
           AS time_type ON time_type.tm_range_cd = unstructured.tm_range_cd
      INNER JOIN `DAO3_looker.calendar`
          AS calendar ON calendar.dt = unstructured.dt
      INNER JOIN `DAO3_looker.station_type`
           AS station_type ON station_type.station_cd = unstructured.station_cd and station_type.subway_line_cd = unstructured.subway_line_cd
      INNER JOIN `DAO3_looker.passenger_type`
           AS passenger_type ON passenger_type.passenger_type_cd = unstructured.passenger_type_cd
      GROUP BY
          1,
          2,
          3,
          4,
          5,
          6,
          7,
          8,
          9,
          10,
          11,
          12,
          13,
          14

      ORDER BY
          1 DESC
       ;;
  }



  dimension: unstructured_dt_date {
    type: date
    datatype: date
    label: "기준일자"
    sql: ${TABLE}.unstructured_dt_date ;;
  }

  dimension: unstructured_dt_month {
    type: string
    label: "기준월"
    sql: ${TABLE}.unstructured_dt_month ;;
  }

  dimension :  calendar_dt_day {
    type: string
    label: "요일"
    sql: ${TABLE}.calendar_dt_day ;;
  }


  dimension: time_type_tm_range_nm {
    type: string
    label: "시간대"
    sql: ${TABLE}.time_type_tm_range_nm ;;

  }

  dimension: station_type_station_nm {
    type: string
    label: "역명"
    sql: ${TABLE}.station_type_station_nm ;;
  }

  dimension: station_type_subway_line_cd {
    type: string
    label: "호선명명"
    sql: ${TABLE}.station_type_subway_line_cd ;;
  }

  dimension: passenger_type_passenger_type_nm {
    type: string
    label: "승객유형"
    sql: ${TABLE}.passenger_type_passenger_type_nm ;;
  }

  dimension: station_type_transfer_station_gb {
    type: string
    label: "환승구분"
    sql: ${TABLE}.station_type_transfer_station_gb ;;
  }

  measure: unstructured_getoff_passenger_cnt {
    type: sum
    label: "하차인원수"
    sql: ${TABLE}.unstructured_getoff_passenger_cnt ;;
  }

  measure: unstructured_passenger_cnt {
    type: sum
    label: "승차인원수"
    sql: ${TABLE}.unstructured_passenger_cnt ;;
  }

  measure: unstructured_foot_traffic_cnt {
    type: sum
    label: "유동인원수"
    sql: ${TABLE}.unstructured_foot_traffic_cnt ;;
  }

  measure: unstructured_clean_transported_cnt {
    type: sum
    label: "순수송인원수"
    sql: ${TABLE}.unstructured_clean_transported_cnt ;;
  }





  set: detail {
    fields: [
      unstructured_dt_date,
      unstructured_dt_month,
      time_type_tm_range_nm,
      station_type_station_nm,
      passenger_type_passenger_type_nm,
      station_type_transfer_station_gb,
      unstructured_getoff_passenger_cnt,
      unstructured_passenger_cnt,
      unstructured_foot_traffic_cnt,
      unstructured_clean_transported_cnt
    ]
  }
}
