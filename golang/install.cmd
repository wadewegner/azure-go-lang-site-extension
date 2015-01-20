IF NOT EXIST "%WEBROOT_PATH%server.go" (
	cp app.go %WEBROOT_PATH%
)

IF NOT EXIST "%WEBROOT_PATH%go1.4.windows-386.zip" (
	cd /D %WEBROOT_PATH%
	curl -O http://wadescratch.blob.core.windows.net/public/go1.4.1.windows-386-waw.zip
	start unzip -o go1.4.1.windows-386-waw.zip -d .
)