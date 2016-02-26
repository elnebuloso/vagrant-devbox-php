<VirtualHost *:80>
        ServerName grafana.box.entwickl.de
        ServerSignature Off

        ProxyPass           /  http://localhost:49152/ nocanon
        ProxyPassReverse    /  http://localhost:49152/
        ProxyRequests       Off
        AllowEncodedSlashes NoDecode
</VirtualHost>