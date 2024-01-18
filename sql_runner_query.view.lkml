
view: sql_runner_query {
  derived_table: {
    sql: SELECT b.`name`, cat.`category_name`, COUNT(c.id) FROM complaints c
      JOIN category cat ON c.category_id=cat.id
      JOIN student_room sr ON c.student_id=sr.student_id AND sr.deleted_at IS NULL AND sr.is_deleted = 0 AND sr.archived_at IS NULL AND sr.is_archived=0
      JOIN blocks b ON sr.block_id=b.id
      WHERE c.college_id=133
      GROUP BY b.id, cat.id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: category_name {
    type: string
    sql: ${TABLE}.category_name ;;
  }

  dimension: countc_id {
    type: number
    sql: ${TABLE}.`COUNT(c.id)` ;;
  }

  set: detail {
    fields: [
        name,
	category_name,
	countc_id
    ]
  }
}
