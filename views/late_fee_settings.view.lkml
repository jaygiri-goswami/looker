view: late_fee_settings {
  sql_table_name: spacebasic.late_fee_settings ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: creatd_by {
    type: number
    sql: ${TABLE}.creatd_by ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: is_deleted {
    type: number
    sql: ${TABLE}.is_deleted ;;
  }
  dimension: is_flat_charges {
    type: number
    sql: ${TABLE}.is_flat_charges ;;
  }
  dimension: late_fee_fine {
    type: number
    sql: ${TABLE}.late_fee_fine ;;
  }
  dimension: max_range {
    type: number
    sql: ${TABLE}.max_range ;;
  }
  dimension: min_range {
    type: number
    sql: ${TABLE}.min_range ;;
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
  dimension: updated_by {
    type: number
    sql: ${TABLE}.updated_by ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
