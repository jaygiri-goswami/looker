view: leave_comment_images {
  sql_table_name: spacebasic.leave_comment_images ;;
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
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: deleted_by {
    type: number
    sql: ${TABLE}.deleted_by ;;
  }
  dimension: image {
    type: string
    sql: ${TABLE}.image ;;
  }
  dimension: leave_comment_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.leave_comment_id ;;
  }
  dimension: leave_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.leave_id ;;
  }
  dimension: leave_queue_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.leave_queue_id ;;
  }
  dimension: ref_id {
    type: number
    sql: ${TABLE}.ref_id ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, leaves.id, leaves.contact_name, leave_comments.id, leave_queue.id]
  }
}
