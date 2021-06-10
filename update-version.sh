rootPath="Kendo-UI-Bootstrap-Integration/src/Kendo-UI-Bootstrap-Integration/"
layoutFile="${rootPath}Views/Shared/_Layout.cshtml";
CURRENT_VERSION=$(grep -hnr "kendo.cdn" $layoutFile | head -1 |cut -d '/' -f 4)
echo "Current release version from $layoutFile is $CURRENT_VERSION"

LAST_RELEASE=$(curl -s https://api.github.com/repos/telerik/kendo-ui-core/releases | grep tag_name | head -n 1 |  cut -d '"' -f 4)
echo "Last release version is $LAST_RELEASE"

files=(${rootPath}Kendo-UI-Bootstrap-Integration.csproj ${rootPath}Views/Shared/_Layout.cshtml ${rootPath}wwwroot/css/styles.css)
for file in ${files[@]}
do
sed -i "s/$CURRENT_VERSION/$LAST_RELEASE/g" $file
done