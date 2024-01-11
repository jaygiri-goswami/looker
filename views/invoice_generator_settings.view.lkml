view: invoice_generator_settings {
  sql_table_name: spacebasic.invoice_generator_settings ;;
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
  dimension: created_by {
    type: number
    sql: ${TABLE}.created_by ;;
  }
  dimension: enabled {
    type: yesno
    sql: ${TABLE}.enabled ;;
  }
  dimension: field_type {
    type: string
    sql: ${TABLE}.field_type ;;
  }
  dimension: field_value {
    type: string
    sql: ${TABLE}.field_value ;;
  }
  dimension: invoice_id {
    type: number
    sql: ${TABLE}.invoice_id ;;
  }
  dimension: prefix {
    type: string
    sql: ${TABLE}.prefix ;;
  }
  dimension: priority {
    type: number
    sql: ${TABLE}.priority ;;
  }
  dimension: show_on_ui {
    type: yesno
    sql: ${TABLE}.show_on_ui ;;
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
  dimension: used_in_id_generation {
    type: yesno
    sql: ${TABLE}.used_in_id_generation ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
