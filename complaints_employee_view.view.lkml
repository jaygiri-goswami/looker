
view: complaints_employee_view {
  derived_table: {
    sql: SELECT CONCAT(u.`name`,' ', COALESCE(u.last_name,'')) AS `employee_name`, cat.`category_name`, COUNT(c.id) FROM complaints c
      JOIN category cat ON c.category_id=cat.id
      JOIN complaints_response cr ON cr.complaint_id=c.id AND cr.`status`=3
      JOIN users u ON cr.created_by = u.id
      WHERE c.college_id=131
      GROUP BY u.id, cat.id ORDER BY COUNT(c.id) DESC ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: employee_name {
    type: string
    sql: ${TABLE}.employee_name ;;
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
        employee_name,
	category_name,
	countc_id
    ]
  }
}
