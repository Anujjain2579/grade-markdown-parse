
git clone $1
if test -f "$1"; then 
    echo "$1 exists."
fi
cp GradingTests.java markdown-parser/
cd markdown-parser
javac -cp lib/*:. GradingTests.java MarkdownParse.java
java -cp lib/*:. org.junit.runner.JUnitCore GradingTests
