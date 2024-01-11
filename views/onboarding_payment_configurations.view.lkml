view: onboarding_payment_configurations {
  sql_table_name: spacebasic.onboarding_payment_configurations ;;
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
  dimension: currency {
    type: string
    sql: ${TABLE}.currency ;;
  }
  dimension: is_partial_payments {
    type: number
    sql: ${TABLE}.isPartialPayments ;;
  }
  dimension: is_payment_approval {
    type: number
    sql: ${TABLE}.isPaymentApproval ;;
  }
  dimension: is_payment_gateway {
    type: number
    sql: ${TABLE}.isPaymentGateway ;;
  }
  dimension: payment_type {
    type: string
    sql: ${TABLE}.paymentType ;;
  }
  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenantId ;;
  }
  dimension: tenant_url {
    type: string
    sql: ${TABLE}.tenantURL ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
