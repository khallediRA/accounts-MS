declare
-a
modules=(
    "configserver"
    "eurakaserver"
    "laons"
    "cards"
    "gatewayserver"
    "accounts"
)
for module in "${modules[@]}"; do
    path="$module/"
    tag="$module:latest"
    docker build $path -t $tag
    echo "done for $module"
done

echo "all done"

