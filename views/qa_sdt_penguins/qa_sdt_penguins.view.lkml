include: "/views/penguins/penguins.view"
view: qa_sdt_penguins {
  extends: [penguins]

derived_table: {
  sql:
        --comment

        SELECT *, GENERATE_UUID() as unique_id
          FROM `bigquery-public-data.ml_datasets.penguins`
          where body_mass_g is not null
    ;;
}

}
