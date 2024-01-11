view: comments {
  sql_table_name: spacebasic.comments ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: bulletin_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.bulletin_id ;;
  }
  dimension: comment {
    type: string
    sql: ${TABLE}.comment ;;
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
  dimension_group: flagged_approved {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.flagged_approved_time ;;
  }
  dimension: is_flagged {
    type: number
    sql: ${TABLE}.is_flagged ;;
  }
  dimension: is_flagged_approved {
    type: number
    sql: ${TABLE}.is_flagged_approved ;;
  }
  dimension: is_flagged_approved_user_id {
    type: number
    sql: ${TABLE}.is_flagged_approved_user_id ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, bulletin.id, flagged_comments.count]
  }
}
