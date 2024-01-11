view: disciplinary_comments_images {
  sql_table_name: spacebasic.disciplinary_comments_images ;;
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
  dimension: disciplinary_comments_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.disciplinary_comments_id ;;
  }
  dimension: discipline_id {
    type: number
    sql: ${TABLE}.discipline_id ;;
  }
  dimension: image {
    type: string
    sql: ${TABLE}.image ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [id, disciplinary_comments.id]
  }
}
