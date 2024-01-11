view: bulletin {
  sql_table_name: spacebasic.bulletin ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: allow_comments {
    type: number
    sql: ${TABLE}.allow_comments ;;
  }
  dimension_group: archived {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.archived_at ;;
  }
  dimension: archived_by {
    type: number
    sql: ${TABLE}.archived_by ;;
  }
  dimension: board {
    type: string
    sql: ${TABLE}.board ;;
  }
  dimension: category_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.category_id ;;
  }
  dimension: college_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.college_id ;;
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
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }
  dimension_group: flagged_approved {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.flagged_approved_time ;;
  }
  dimension: flagged_by {
    type: number
    sql: ${TABLE}.flagged_by ;;
  }
  dimension_group: flagged {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.flagged_time ;;
  }
  dimension: hide_comments {
    type: number
    sql: ${TABLE}.hide_comments ;;
  }
  dimension: hostel_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.hostel_id ;;
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
  dimension: is_user_notified {
    type: number
    sql: ${TABLE}.is_user_notified ;;
  }
  dimension: priority_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.priority_id ;;
  }
  dimension: send_to_parent {
    type: number
    sql: ${TABLE}.send_to_parent ;;
  }
  dimension: send_to_student {
    type: number
    sql: ${TABLE}.send_to_student ;;
  }
  dimension: title {
    type: string
    sql: ${TABLE}.title ;;
  }
  dimension: university_id {
    type: number
    sql: ${TABLE}.university_id ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  dimension: view_count {
    type: number
    sql: ${TABLE}.view_count ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	colleges.id,
	colleges.name,
	colleges.college_pathname,
	hostels.id,
	hostels.name,
	priority.id,
	priority.priority_name,
	category.id,
	category.category_name,
	announcement_push_token.count,
	bulletin_attachments.count,
	bulletin_block.count,
	bulletin_colleges.count,
	bulletin_comment_images.count,
	bulletin_comments.count,
	bulletin_views.count,
	comments.count,
	flagged_bulletins.count
	]
  }

}
