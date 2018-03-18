$UserCredential = Get-Credential
$Session = New-PSSession -ConfigurationName Microsoft.Exchange -ConnectionUri https://outlook.office365.com/powershell-liveid/ -Credential $UserCredential -Authentication Basic -AllowRedirection
Import-PSSession $Session
get-mailbox | where-object {$_.RecipientTypeDetails -ne "DiscoveryMailbox"}
Remove-PSSession $Session