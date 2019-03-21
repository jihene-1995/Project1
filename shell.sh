 #!/bin/sh
find ./src/app -type f | grep .ts$ >index.js
sed -i -e 's/^/export * from \"/' index.js
sed -e 's/$/\"/' -i index.js
sed -e'4a\  "main": "index.js",' -i package.json 


