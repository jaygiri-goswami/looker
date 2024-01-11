view: forms {
  sql_table_name: spacebasic.forms ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: associated_to {
    type: string
    sql: ${TABLE}.associated_to ;;
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
  dimension_group: expire {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.expire_on ;;
  }
  dimension: expires_after {
    type: number
    sql: ${TABLE}.expires_after ;;
  }
  dimension: is_notified {
    type: string
    sql: ${TABLE}.is_notified ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  dimension_group: next_notification {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.next_notification ;;
  }
  dimension: no_of_responses {
    type: number
    sql: ${TABLE}.no_of_responses ;;
  }
  dimension: notify_every {
    type: number
    sql: ${TABLE}.notify_every ;;
  }
  dimension: template_id {
    type: number
    sql: ${TABLE}.template_id ;;
  }
  dimension_group: updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.updated_at ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	name,
	colleges.id,
	colleges.name,
	colleges.college_pathname,
	form_associations.count,
	form_options.count,
	form_questions.count,
	form_responders.count,
	form_response_answers.count,
	form_responses.count
	]
  }

}
