TAXI_TYPE=$1 # "yellow"
YEAR=$2 # 2020

for MONTH in {1..12}; do
  FMONTH=`printf "%02d" ${MONTH}`

  LOCAL_PREFIX="data/raw/${TAXI_TYPE}/${YEAR}/${FMONTH}"
  LOCAL_FILE="${TAXI_TYPE}_tripdata_${YEAR}_${FMONTH}.csv.gz"
  LOCAL_PATH="${LOCAL_PREFIX}/${LOCAL_FILE}"

  NEW_FILE="${TAXI_TYPE}_tripdata_${YEAR}_${FMONTH}.parquet"
  NEW_PATH="${LOCAL_PREFIX}/${NEW_FILE}"

  echo "Moving ${LOCAL_FILE} to ${NEW_FILE}"
#   mkdir -p ${LOCAL_PREFIX}
  # wget ${URL} -O ${LOCAL_PATH}
  mv ${LOCAL_PATH} ${NEW_PATH}

done