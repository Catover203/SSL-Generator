@echo off
set /p domain="Enter Domain: "
set OPENSSL_CONF=./openssl.cnf

if not exist .\Certificate\%domain% mkdir .\Certificate\%domain%

openssl req -config cert.conf -new -sha256 -newkey rsa:2048 -nodes -keyout Certificate\%domain%\server-key.key -x509 -days 365 -out Certificate\%domain%\server-certificate.crt

echo.
echo.
echo.
echo [------------------------------------------------------------------------]
echo [-The ssl certificate was created on Certificate\%domain% ( self ssl ). -]
echo [-The key is on Certificate\%domain%\server-key.key                     -]
echo [-The certificate is on Certificate\%domain%\server-certificate.crt     -]
echo [------------------------------------------------------------------------]
echo.
echo.
echo.
pause