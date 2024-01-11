view: outbound_calls {
  sql_table_name: spacebasic.outbound_calls ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: http_response {
    type: string
    sql: ${TABLE}.http_response ;;
  }
  dimension: initiated_by {
    type: number
    sql: ${TABLE}.initiated_by ;;
  }
  dimension: is_interim {
    type: yesno
    sql: ${TABLE}.is_interim ;;
  }
  dimension: leave_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.leave_id ;;
  }
  dimension: parent_phone_no {
    type: string
    sql: ${TABLE}.parent_phone_no ;;
  }
  dimension: sid {
    type: string
    sql: ${TABLE}.sid ;;
  }
  dimension: sms_approve_code {
    type: string
    sql: ${TABLE}.sms_approve_code ;;
  }
  dimension: student_name {
    type: string
    sql: ${TABLE}.student_name ;;
  }
  dimension: to_user_id {
    type: number
    sql: ${TABLE}.to_user_id ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, student_name, leaves.id, leaves.contact_name]
  }
}
