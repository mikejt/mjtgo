version=$( curl "https://api.github.com/repos/spf13/hugo" | jq ".pushed_at" | tr -d '"' )
echo $version
go install -ldflags "-X main.version $version" github.com/mikejt/mjtgo