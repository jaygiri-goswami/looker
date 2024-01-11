view: form_questions {
  sql_table_name: spacebasic.form_questions ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: answer_type {
    type: string
    sql: ${TABLE}.answer_type ;;
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
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.deleted_at ;;
  }
  dimension: form_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.form_id ;;
  }
  dimension: is_mandatory {
    type: string
    sql: ${TABLE}.is_mandatory ;;
  }
  dimension: question_text {
    type: string
    sql: ${TABLE}.question_text ;;
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
	colleges.id,
	colleges.name,
	colleges.college_pathname,
	forms.id,
	forms.name
	]
  }

}
