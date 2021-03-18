#Define CSS for table
$header = @"
<h3>schrodinger's cat is alive</h3>
<p/>
<p/>
<p/>
<p/>
KITNAY LOG THAY!!!!
"@

#Install IIS
Install-WindowsFeature -name Web-Server
curl https://raw.githubusercontent.com/rehanann/powershell/main/index.html --output index.html 
Copy-Item -Path index.html -Destination C:\inetpub\wwwroot\index.html 
IISReset /RESTART
#Query Azure Instance Metadata service
#$metadata = Invoke-RestMethod -Headers @{"Metadata"="true"} -URI http://169.254.169.254/metadata/instance?api-version=2017-08-01 -Method get

#Convert object to HTML and overwrite existing index
#$HTML = $body | ConvertTo-Html -Title "MSC DR DEMO"-Body $header
#$HTML | Out-File -FilePath "C:\inetpub\wwwroot\index.html" -Force
