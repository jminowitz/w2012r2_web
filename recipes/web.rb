#
# Cookbook:: w2012_webserver
# Recipe:: web
#
# Copyright:: 2018, The Authors, All Rights Reserved.

# Enable the IIS role.
dsc_script 'Web-Server' do
  code <<-EOH
  WindowsFeature InstallWebServer
  {
    Name = "Web-Server"
    Ensure = "Present"
  }
  EOH
end

# Install IIS-HttpRedirect.
dsc_script 'Web-Http-Redirect' do
  code <<-EOH
  WindowsFeature InstallWebHttpRedirect
  {
    Name = "Web-Http-Redirect"
    Ensure = "Present"
  }
  EOH
end

# Install IIS-LoggingTools.
dsc_script 'IIS-LoggingLibraries' do
  code <<-EOH
  WindowsFeature WebLogLibraries
  {
    Name = "Web-Log-Libraries"
    Ensure = "Present"
  }
  EOH
end

# Install IIS-RequestMonitor.
dsc_script 'IIS-RequestMonitor' do
  code <<-EOH
  WindowsFeature WebRequestMonitor 
  {
    Name = "Web-Request-Monitor"
    Ensure = "Present"
  }
  EOH
end

# Install IIS-HttpTracing.
dsc_script 'IIS-HttpTracing' do
  code <<-EOH
  WindowsFeature WebHttpTracing 
  {
    Name = "Web-Http-Tracing"
    Ensure = "Present"
  }
  EOH
end

# Install IIS-BasicAuthentication.
dsc_script 'IIS-BasicAuthentication' do
  code <<-EOH
  WindowsFeature WebBasicAuth
  {
    Name = "Web-Basic-Auth"
    Ensure = "Present"
  }
  EOH
end

# Install IIS-WindowsAuthentication.
dsc_script 'IIS-WindowsAuthentication' do
  code <<-EOH
  WindowsFeature WebWindowsAuth
  {
    Name = "Web-Windows-Auth"
    Ensure = "Present"
  }
  EOH
end

# Install IIS-Applicationinitialization.
dsc_script 'IIS-Applicationinit' do
  code <<-EOH
  WindowsFeature WebAppInit
  {
    Name = "Web-Appinit"
    Ensure = "Present"
  }
  EOH
end

# Install IIS-CGI.
dsc_script 'IIS-CGI' do
  code <<-EOH
  WindowsFeature WebCGI 
  {
    Name = "Web-CGI"
    Ensure = "Present"
  }
  EOH
end

# Install ASP.NET 4.5.
dsc_script 'Web-Asp-Net45' do
  code <<-EOH
  WindowsFeature InstallDotNet45
  {
    Name = "Web-Asp-Net45"
    Ensure = "Present"
  }
  EOH
end

# Install ASP.NET 3.5.
dsc_script 'Web-Asp-Net' do
  code <<-EOH
  WindowsFeature InstallDotNet35
  {
    Name = "Web-Asp-Net"
    Ensure = "Present"
  }
  EOH
end

# Install FTP Server.
dsc_script 'Web-Ftp-Server' do
  code <<-EOH
  WindowsFeature InstallWebFtpServer
  {
    Name = "Web-Ftp-Server"
    Ensure = "Present"
  }
  EOH
end

