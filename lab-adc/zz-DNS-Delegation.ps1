#######################################################################################################
# Run this from your existing DNS server, not your AD controller, even though it too is a DNS server. #
#######################################################################################################
$ParentZone='lab.test'
$AdcShortname='adc'
$ChildZone='ad'
$IPv4Address = '10.248.100.4'
$IPv6Address = 'fdda:f6d4:f5a2:f1e6::4'

Add-DnsServerZoneDelegation -Name $ParentZone -ChildZoneName $ChildZone -IPAddress $IPv4Address -NameServer $AdcShortname -PassThru -Verbose
Add-DnsServerZoneDelegation -Name $ParentZone -ChildZoneName $ChildZone -IPAddress $IPv6Address -NameServer $AdcShortname -PassThru -Verbose

