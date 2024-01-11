view: biometric_device_blocked_users {
  sql_table_name: spacebasic.biometric_device_blocked_users ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: biometric_device_id {
    type: number
    sql: ${TABLE}.biometric_device_id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: device_id {
    type: string
    sql: ${TABLE}.device_id ;;
  }
  dimension: student_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.student_id ;;
  }
  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id, students.sb_student_uid, students.first_name, students.last_name]
  }
}
