$originalpaths = (Get-ItemProperty -Path ‘Registry::HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\Environment’ -Name PSModulePath).PSModulePath

# Add your new path to below after the ;

$newPath=$originalpaths+’;D:\GitHub\’

Set-ItemProperty -Path ‘Registry::HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Session Manager\Environment’ -Name PSModulePath –Value $newPath