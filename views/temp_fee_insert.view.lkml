view: temp_fee_insert {
  sql_table_name: spacebasic.temp_fee_insert ;;
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
  dimension: is_processed {
    type: number
    sql: ${TABLE}.is_processed ;;
  }
  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
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
