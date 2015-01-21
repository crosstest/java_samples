$SOURCE_FILE=$ARGS[0]
$SOURCE_FILE=$SOURCE_FILE -replace "/", "\"
$CLASS=$SOURCE_FILE -replace "src\\main\\java\\", ""
$CLASS=$CLASS -replace "\.\\", ""
$CLASS=$CLASS -replace ".java", ""
$CLASS=$CLASS -replace "\\", "."
gradle assemble --quiet
java -classpath build/libs/java-1.0.jar $CLASS
