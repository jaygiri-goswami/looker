view: payment_trial {
  sql_table_name: spacebasic.payment_trial ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: amount {
    type: string
    sql: ${TABLE}.amount ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.createdAt ;;
  }
  dimension: created_by {
    type: string
    sql: ${TABLE}.createdBy ;;
  }
  dimension: payment_date_time {
    type: string
    sql: ${TABLE}.paymentDateTime ;;
  }
  dimension: payment_status {
    type: string
    sql: ${TABLE}.paymentStatus ;;
  }
  dimension: pg_payment_mode {
    type: string
    sql: ${TABLE}.pgPaymentMode ;;
  }
  dimension: pg_transaction_id {
    type: string
    sql: ${TABLE}.pgTransactionID ;;
  }
  dimension: phone_no {
    type: string
    sql: ${TABLE}.phoneNo ;;
  }
  dimension: student_code {
    type: string
    sql: ${TABLE}.studentCode ;;
  }
  dimension: transaction_id {
    type: string
    sql: ${TABLE}.transactionID ;;
  }
  dimension: type_name {
    type: string
    sql: ${TABLE}.typeName ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updatedAt ;;
  }
  dimension: updated_by {
    type: string
    sql: ${TABLE}.updatedBy ;;
  }
  measure: count {
    type: count
    drill_fields: [id, type_name]
  }
}
