if [ "$#" -ne 1 ]
then
    echo "Usage: compile.sh /folder/to/write/to"
    exit 1
fi
rm -rf $1
java -jar ./swagger-codegen/modules/swagger-codegen-cli/target/swagger-codegen-cli.jar generate -i ./editor.swagger.yaml -t ./swagger-codegen/modules/swagger-codegen/src/main/resources/swift -l swift -o $1