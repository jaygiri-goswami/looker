view: offboarding_email_recievers {
  sql_table_name: spacebasic.offboarding_email_recievers ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: bcc {
    type: string
    sql: ${TABLE}.bcc ;;
  }
  dimension: cc {
    type: string
    sql: ${TABLE}.cc ;;
  }
  dimension: college_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.college_id ;;
  }
  dimension: is_deleted {
    type: string
    sql: ${TABLE}.is_deleted ;;
  }
  dimension: to {
    type: string
    sql: ${TABLE}.`to` ;;
  }
  measure: count {
    type: count
    drill_fields: [id, colleges.id, colleges.name, colleges.college_pathname]
  }
}
