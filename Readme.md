## Swagger File

The file to edit is example.json

## Running

Go into the directory and:
`python -m SimpleHTTPServer`

## Editing

Edit the json file. 

There's an editor online that allows easy editing and exporting as json schema:
http://editor.swagger.io/#/

## Generating Swift Code

### Setting Up Codegen

First, you'll need to set up the swagger codegen on your system.
We're currently using a swagger codegen fork for Swift 2.0. This is included
as a Git Submodule. So the first thing is:

``` Bash
git submodule update --remote
```

Next up, you'll need to set up Swagger codegen. This is a java/scala project
and it will download *a lot* of files.

You'll need Java 7. You probably have 1.6 or 1.8.

Export JAVA_HOME in order to user proper Java version:
```
export JAVA_HOME=`/usr/libexec/java_home -v 1.7`
export PATH=${JAVA_HOME}/bin:$PATH
```

Compile the Codegen
``` Bash
cd ./swagger-codegen/
mvn package
```

Grab a cup of coffee

### Compiling the Swift code

Just run the conveniently included 'compile.sh' file here.
Give it the folder where you'll want the files to be written out.

``` Bash
// Example
./compile.sh ../pixelated-project/generated/
``` 

That's it.

## Links

### Swagger Scheme Documentation Spec:
https://github.com/swagger-api/swagger-spec/blob/master/versions/2.0.md

### Swagger
http://swagger.io/