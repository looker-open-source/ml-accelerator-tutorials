include: "/views/telco_customer_churn/*.view"

explore: telco_customer_churn {
  view_name: customer
  join: telco_model_demo_predictions {
    fields: [telco_model_demo_predictions.predicted_customer_churn,telco_model_demo_predictions.predicted_customer_churn_probs]
    sql_on: ${customer.customer_id} = ${telco_model_demo_predictions.customer_customer_id} ;;
    relationship: one_to_one
  }
}
