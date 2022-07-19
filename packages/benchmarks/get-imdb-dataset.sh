DATASET_NAME="title.basics.tsv"
DATASET="https://datasets.imdbws.com/$DATASET_NAME.gz"
DATASET_OUTPUT_DIR="./dataset"
DATASET_NEW_NAME="title.tsv"

wget $DATASET -O "$DATASET_OUTPUT_DIR/$DATASET_NAME.gz"
gunzip "$DATASET_OUTPUT_DIR/$DATASET_NAME.gz"
head -1000000 "$DATASET_OUTPUT_DIR/$DATASET_NAME" >> "$DATASET_OUTPUT_DIR/$DATASET_NEW_NAME"
rm "$DATASET_OUTPUT_DIR/$DATASET_NAME"