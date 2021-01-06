export AIRFLOW_HOME="${PWD}/airflow"
export DAG_ID="helloworld"

alias "activate-env-airflow"="source env-airflow/bin/activate"

alias "airflow-start"="airflow webserver --port 8080"

alias "airflow-dag-pause-${DAG_ID}"="airflow dags pause ${DAG_ID}"
alias "airflow-dag-unpause-${DAG_ID}"="airflow dags unpause ${DAG_ID}"
alias "airflow-dag-trigger-${DAG_ID}"="airflow dags trigger ${DAG_ID}"
