# The name of this view in Looker is "Demo Telco Customer Churn Global Explain Model"
explore: demo_telco_customer_churn_global_explain_model {
  label: "BQML Model Drivers"
  hidden: yes
}
view: demo_telco_customer_churn_global_explain_model {
  sql_table_name: `machine-learning-accelerator.looker_bqml.Demo_Telco_Customer_Churn_global_explain_model`
    ;;

  dimension: attribution {
    type: number
    sql: ${TABLE}.attribution ;;
  }


  measure: total_attribution {
    type: sum
    sql: ${attribution} ;;
  }

  measure: average_attribution {
    type: average
    sql: ${attribution} ;;
  }

  dimension: feature {
    type: string
    sql: regexp_replace(regexp_replace(${TABLE}.feature,'customer_',''),'_',' ') ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
