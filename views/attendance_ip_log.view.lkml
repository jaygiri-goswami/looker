view: attendance_ip_log {
  sql_table_name: spacebasic.attendance_ip_log ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: college_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.college_id ;;
  }
  dimension: content {
    type: string
    sql: ${TABLE}.content ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: ip {
    type: string
    sql: ${TABLE}.ip ;;
  }
  dimension: port {
    type: string
    sql: ${TABLE}.port ;;
  }
  measure: count {
    type: count
    drill_fields: [id, colleges.id, colleges.name, colleges.college_pathname]
  }
}
