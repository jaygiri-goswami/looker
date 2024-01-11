view: student_payment {
  sql_table_name: spacebasic.student_payment ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: allocated {
    type: number
    sql: ${TABLE}.allocated ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: deducated {
    type: number
    sql: ${TABLE}.deducated ;;
  }
  dimension: is_email_receipt {
    type: string
    sql: ${TABLE}.is_email_receipt ;;
  }
  dimension: paid_by {
    type: string
    sql: ${TABLE}.paid_by ;;
  }
  dimension: payment_made {
    type: number
    sql: ${TABLE}.paymentMade ;;
  }
  dimension: pending {
    type: number
    sql: ${TABLE}.pending ;;
  }
  dimension: service_name {
    type: string
    sql: ${TABLE}.serviceName ;;
  }
  dimension: studentfee_id {
    type: string
    sql: ${TABLE}.studentfee_id ;;
  }
  dimension: tarnsaction_id {
    type: string
    sql: ${TABLE}.tarnsaction_id ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, service_name]
  }
}
