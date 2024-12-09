
set -e

TAXI_TYPE=$1 # "yellow"
YEAR=$2 # 2020

URL_PREFIX="https://github.com/DataTalksClub/nyc-tlc-data/releases/download"
DOWNLOAD_PATH=~/Downloads

for MONTH in {1..12}; do
  FMONTH=`printf "%02d" ${MONTH}`

  URL="${URL_PREFIX}/${TAXI_TYPE}/${TAXI_TYPE}_tripdata_${YEAR}-${FMONTH}.csv.gz"
  DOWNLOAD_FILE="${DOWNLOAD_PATH}/${TAXI_TYPE}_tripdata_${YEAR}-${FMONTH}.parquet"

  LOCAL_PREFIX="data/raw/${TAXI_TYPE}/${YEAR}/${FMONTH}"
  LOCAL_FILE="${TAXI_TYPE}_tripdata_${YEAR}_${FMONTH}.parquet"
  LOCAL_PATH="${LOCAL_PREFIX}/${LOCAL_FILE}"

  echo "Moving ${DOWNLOAD_FILE} to ${LOCAL_PATH}"
  mkdir -p ${LOCAL_PREFIX}
  # wget ${URL} -O ${LOCAL_PATH}
  mv ${DOWNLOAD_FILE} ${LOCAL_PATH}

done