view: form_response_answers {
  sql_table_name: spacebasic.form_response_answers ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
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
  dimension: option_id {
    type: number
    sql: ${TABLE}.option_id ;;
  }
  dimension: question_id {
    type: number
    sql: ${TABLE}.question_id ;;
  }
  dimension: response_id {
    type: number
    sql: ${TABLE}.response_id ;;
  }
  dimension: text_answer {
    type: string
    sql: ${TABLE}.text_answer ;;
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
