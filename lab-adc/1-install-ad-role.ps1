# Change this. 
$SafeModeAdminPassword='P@ssw0rd2'
Install-WindowsFeature AD-Domain-Services -IncludeManagementTools
# Install the domain with a very bad password for the safe-mode administrator
Install-ADDSForest -DomainName 'ad.lab.test -SafeModeAdministratorPassword ($SafeModeAdminPassword|ConvertTo-SecureString -AsPlainText -Force) -installDNS -Force
