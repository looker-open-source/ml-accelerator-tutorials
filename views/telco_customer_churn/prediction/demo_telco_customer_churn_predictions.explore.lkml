include: "./*.view"

explore: demo_telco_customer_churn_predictions {
  hidden: yes

  join: demo_telco_customer_churn_predictions__predicted_customer_churn_probs {

    sql: LEFT JOIN UNNEST(${demo_telco_customer_churn_predictions.predicted_customer_churn_probs}) as demo_telco_customer_churn_predictions__predicted_customer_churn_probs ;;
    relationship: one_to_many
  }
}
