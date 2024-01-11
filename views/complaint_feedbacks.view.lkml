view: complaint_feedbacks {
  sql_table_name: spacebasic.complaint_feedbacks ;;

  dimension: cleanliness_rating {
    type: number
    sql: ${TABLE}.cleanliness_rating ;;
  }
  dimension: clear_communication_rating {
    type: number
    sql: ${TABLE}.clear_communication_rating ;;
  }
  dimension_group: complaint {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.complaint_date ;;
  }
  dimension: complaint_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.complaint_id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }
  dimension: equipment_quality_rating {
    type: number
    sql: ${TABLE}.equipment_quality_rating ;;
  }
  dimension: feedbackdesc {
    type: string
    sql: ${TABLE}.`feedback-desc` ;;
  }
  dimension: problem_resoulution_rating {
    type: number
    sql: ${TABLE}.problem_resoulution_rating ;;
  }
  dimension: reliabililty_rating {
    type: number
    sql: ${TABLE}.reliabililty_rating ;;
  }
  dimension: responsive_rating {
    type: number
    sql: ${TABLE}.responsive_rating ;;
  }
  dimension: saftey_compliance_rating {
    type: number
    sql: ${TABLE}.saftey_compliance_rating ;;
  }
  dimension: student_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.student_id ;;
  }
  dimension: tenant_id {
    type: number
    sql: ${TABLE}.tenant_id ;;
  }
  measure: count {
    type: count
    drill_fields: [complaints.id, students.sb_student_uid, students.first_name, students.last_name]
  }
}
