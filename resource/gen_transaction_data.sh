JAR_NAME=/home/ruta/chombo/target/chombo-1.0.jar
CLASS_NAME=org.chombo.mr.Projection

echo "running mr"
IN_PATH=/user/ruta/mmfr/input
OUT_PATH=/user/ruta/mmfr/sequence
echo "input $IN_PATH output $OUT_PATH"
hadoop fs -rm -r $OUT_PATH
echo "removed output dir"

hadoop jar $JAR_NAME $CLASS_NAME -Dconf.path=/home/ruta/beymani/resource/mmfr.properties $IN_PATH $OUT_PATH
