view: bills {
  sql_table_name: spacebasic.bills ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension_group: bill_end {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.bill_end_date ;;
  }
  dimension_group: bill_issue {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.bill_issue_date ;;
  }
  dimension: bill_no {
    type: string
    sql: ${TABLE}.bill_no ;;
  }
  dimension_group: bill_start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.bill_start_date ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: created_by {
    type: number
    sql: ${TABLE}.created_by ;;
  }
  dimension: deleted_by {
    type: number
    sql: ${TABLE}.deleted_by ;;
  }
  dimension: fee_id {
    type: number
    sql: ${TABLE}.fee_id ;;
  }
  dimension: fee_type_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.fee_type_id ;;
  }
  dimension: is_deleted {
    type: number
    sql: ${TABLE}.is_deleted ;;
  }
  dimension: is_paid {
    type: number
    value_format_name: id
    sql: ${TABLE}.is_paid ;;
  }
  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
  }
  dimension: total_amt {
    type: number
    sql: ${TABLE}.total_amt ;;
  }
  dimension: transaction_id {
    type: number
    sql: ${TABLE}.transaction_id ;;
  }
  dimension: units_consumed {
    type: string
    sql: ${TABLE}.units_consumed ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: updated_by {
    type: number
    sql: ${TABLE}.updated_by ;;
  }
  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
    drill_fields: [id, users.id, users.name, users.last_name, fee_types.id]
  }
}
