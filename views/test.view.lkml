
view: test {
  derived_table: {
    sql: SELECT a.category_name, COUNT(b.ref_no) FROM spacebasic.category as a left join spacebasic.complaints as b 
      on a.id = b.category_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: category_name {
    type: string
    sql: ${TABLE}.category_name ;;
  }

  dimension: countb_ref_no {
    type: number
    sql: ${TABLE}.`COUNT(b.ref_no)` ;;
  }

  set: detail {
    fields: [
        category_name,
	countb_ref_no
    ]
  }
}
