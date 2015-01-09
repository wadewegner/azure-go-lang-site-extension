IF NOT EXIST "%WEBROOT_PATH%server.go" (
	cp app.go %WEBROOT_PATH%
)

IF NOT EXIST "%WEBROOT_PATH%go1.4.windows-386.zip" (
	cd /D %WEBROOT_PATH%
	curl -O https://storage.googleapis.com/golang/go1.4.windows-386.zip
	start unzip -o go1.4.windows-386.zip -d .
)