## unnested array predicted_customer_churn_probs found in demo_telco_customer_churn view

view: demo_telco_customer_churn_predictions__predicted_customer_churn_probs {
  view_label: "Predictions"
  dimension: demo_telco_customer_churn_predictions__predicted_customer_churn_probs {
    type: string
    hidden: yes
    sql: demo_telco_customer_churn_predictions__predicted_customer_churn_probs ;;
  }

  dimension: pk {
    hidden: yes
    sql: concat(${demo_telco_customer_churn_predictions.customer_id},${label}) ;;
  }


  dimension: label {
    group_label: "Probabilities by Label"
    label: "Label"
    type: string
    sql: label ;;
  }

  dimension: prob {
    group_label: "Probabilities by Label"
    label: "Probability of Label"
    type: number
    sql: prob ;;
    value_format_name: "percent_2"
  }

  measure: average_prob {
    group_label: "Probabilities by Label"
    label: "Average Probability of Label"
    type: average
    sql: ${prob} ;;
    value_format_name: "percent_2"
  }
}
