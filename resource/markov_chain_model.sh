JAR_NAME=/home/ruta/avenir/resource/uber-avenir-1.0.jar
CLASS_NAME=org.avenir.markov.MarkovStateTransitionModel

echo "running mr"
IN_PATH=/user/ruta/mmfr/sequence
OUT_PATH=/user/ruta/mmfr/model
echo "input $IN_PATH output $OUT_PATH"
hadoop fs -rm -r $OUT_PATH
echo "removed output dir"

hadoop jar $JAR_NAME $CLASS_NAME -Dconf.path=/home/ruta/beymani/resource/mmfr.properties $IN_PATH $OUT_PATH
