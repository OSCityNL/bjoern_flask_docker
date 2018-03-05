# Flask app served from Bjoern WSGI server

See: https://github.com/jonashaag/bjoern

## usage:

place flask app in directory, copy into container or mount as volume in /app/
include bjoern.wsgi with content: 

```
import bjoern
from app import app

bjoern.run(
    wsgi_app=app,
    host='0.0.0.0',
    port=9808,
    reuse_port=True
) 
```
