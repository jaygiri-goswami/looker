view: dummy_student {
  sql_table_name: spacebasic.dummy_student ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }
  dimension: aemail {
    type: string
    sql: ${TABLE}.aemail ;;
  }
  dimension: mobile {
    type: string
    sql: ${TABLE}.mobile ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }
  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
