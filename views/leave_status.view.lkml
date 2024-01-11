view: leave_status {
  sql_table_name: spacebasic.leave_status ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: auto_approved {
    type: number
    sql: ${TABLE}.auto_approved ;;
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
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: deleted_by {
    type: number
    sql: ${TABLE}.deleted_by ;;
  }
  dimension: leave_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.leave_id ;;
  }
  dimension: ref_id {
    type: number
    sql: ${TABLE}.ref_id ;;
  }
  dimension: ref_phone {
    type: string
    sql: ${TABLE}.ref_phone ;;
  }
  dimension: remarks {
    type: string
    sql: ${TABLE}.remarks ;;
  }
  dimension: status {
    type: number
    sql: ${TABLE}.status ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, leaves.id, leaves.contact_name]
  }
}
