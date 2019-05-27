#installs IIS if IIS is not installed
powershell_script 'Install IIS' do
    code 'Add-WindowsFeature Web-Server'
    guard_interpreter :powershell_script
    not_if "(Get-WindowsFeature -Name Web-Server).Installed"
  end
#checks to see if iis is running if not start and run at boot
  service 'w3svc' do
    action [:enable, :start]
  end

  file 'c:\\inetpub\\wwwroot\\Default.htm' do
    content '<html>
    <body>
      <h1>hello world</h1>
    </body>
  </html>'
  end