view: escalate_matrix {
  sql_table_name: spacebasic.escalate_matrix ;;
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
  dimension: escalation_name {
    type: string
    sql: ${TABLE}.escalation_name ;;
  }
  dimension: subcategory_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.subcategory_id ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	escalation_name,
	colleges.id,
	colleges.name,
	colleges.college_pathname,
	subcategory.id,
	subcategory.name
	]
  }

}
