declare
-a
modules=(
    "configserver/pom.xml"
    "eurakaserver/pom.xml"
    "accounts/pom.xml"
    "laons/pom.xml"
    "cards/pom.xml"
    "gatewayserver/pom.xml"
)
for module in "${modules[@]}"; do

    mvn -f $module clean package -DskipTests &
    echo "done for $module"
done

echo "all done"
