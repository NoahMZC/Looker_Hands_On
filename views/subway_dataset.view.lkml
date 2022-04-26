view: subway_dataset {
  sql_table_name: `DAO3_looker.subway_dataset`
    ;;

  dimension: clean_transported_cnt {
    type: number
    sql: abs(${TABLE}.clean_transported_cnt) ;;
    label: "순수송인원수"
  }

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

  dimension: foot_traffic_cnt {
    type: number
    sql: ${TABLE}.foot_traffic_cnt ;;
    label: "유동인원수"
  }

  dimension: getoff_passenger_cnt {
    type: number
    sql: ${TABLE}.getoff_passenger_cnt ;;
    label: "하차인원수"
  }

  dimension: passenger_cnt {
    type: number
    sql: ${TABLE}.passenger_cnt ;;
    label: "승차인원수"
  }

  dimension: passenger_type_cd {
    type: string
    sql: ${TABLE}.passenger_type_cd ;;
    label: "고객 유형 코드"
  }

  dimension: station_cd {
    type: string
    sql: ${TABLE}.station_cd ;;
    label: "역 코드"
  }

  dimension: subway_line_cd {
    type: string
    sql: ${TABLE}.subway_line_cd ;;
    label: "호선 정보"
  }

  dimension: tm_range_cd {
    type: string
    sql: ${TABLE}.tm_range_cd ;;
    label: "시간 코드"
  }

  #‘총 승차인원수‘, ‘총 하차인원수’, ‘총 유동인원수‘, ‘총 순수송인원수’ 생성
  measure: sum_passenger_cnt {
    type: sum
    sql: ${TABLE}.passenger_cnt ;;
    label: "총 승차인원수"
  }
  measure: sum_getoff_passenger_cnt {
    type: sum
    sql: ${TABLE}.getoff_passenger_cnt ;;
    label: "총 하차인원수"
  }
  measure: sum_foot_traffic_cnt {
    type: sum
    sql: ${TABLE}.foot_traffic_cnt ;;
    label: "총 수송인원수"
  }
  measure: sum_clean_transported_cnt {
    type: sum
    sql: abs(${TABLE}.clean_transported_cnt) ;;
    label: "총 순수송인원수"
  }

  #대시보드 필터 값 출력
  measure: print_filter{
    type: max
    sql: 1 ;;
    html: <p style =
              "color: #000000;
              font-size:30%;
              text-align:center">
              기간 : {% if _filters['dt_date']%}
                          {{_filters['dt_date']}}
                     {% else %} 선택 값 없음 {% endif %}
              &nbsp;&nbsp;&nbsp;
              유형 : {% if _filters['passenger_type.passenger_type_nm']%}
                          {{_filters['passenger_type.passenger_type_nm']}}
                      {% else %} 선택 값 없음 {% endif %}
              &nbsp;&nbsp;&nbsp;
          </p>;;
  }
}
