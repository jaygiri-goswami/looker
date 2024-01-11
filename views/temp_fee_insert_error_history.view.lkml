view: temp_fee_insert_error_history {
  sql_table_name: spacebasic.temp_fee_insert_error_history ;;
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
  dimension: data {
    type: string
    sql: ${TABLE}.data ;;
  }
  dimension: error_details {
    type: string
    sql: ${TABLE}.error_details ;;
  }
  dimension: is_error {
    type: number
    sql: ${TABLE}.is_error ;;
  }
  dimension: is_processed {
    type: number
    sql: ${TABLE}.is_processed ;;
  }
  dimension: trn_id {
    type: string
    sql: ${TABLE}.trn_id ;;
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
