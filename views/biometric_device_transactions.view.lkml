view: biometric_device_transactions {
  sql_table_name: spacebasic.biometric_device_transactions ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: bio_id {
    type: string
    sql: ${TABLE}.bio_id ;;
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
  dimension: face_upload_status {
    type: number
    sql: ${TABLE}.face_upload_status ;;
  }
  dimension: is_face_upload {
    type: number
    sql: ${TABLE}.is_face_upload ;;
  }
  dimension: is_user_delete {
    type: number
    sql: ${TABLE}.is_user_delete ;;
  }
  dimension: is_user_upload {
    type: number
    sql: ${TABLE}.is_user_upload ;;
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
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: user_delete_status {
    type: number
    sql: ${TABLE}.user_delete_status ;;
  }
  dimension: user_upload_status {
    type: number
    sql: ${TABLE}.user_upload_status ;;
  }
  measure: count {
    type: count
    drill_fields: [id, students.sb_student_uid, students.first_name, students.last_name]
  }
}
