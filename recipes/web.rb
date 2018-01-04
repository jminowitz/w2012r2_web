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

