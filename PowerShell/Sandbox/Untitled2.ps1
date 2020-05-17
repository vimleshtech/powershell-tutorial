from Vimlesh Kumar to everyone:
vimlesh073@gmail.com
from Ajay Sharma (privately):
$MyEmail = "er.ajay666@gmail.com"
$SMTP= "smtp.gmail.com"
$To = "er.ajay666@gmail.com"
$Subject = "Ajay!"
$Body = "smtp email"
$Cred = (Get-Credential -Credential "$MyEmail")
Start-Sleep 2
Send-MailMessage -To $to -From $MyEmail -Subject $Subject -Body $Body -SmtpServer $SMTP -Credential $Cred -UseSsl -Port 587 -DeliveryNotificationOption never
<#
$PSEmailServer variable can be used to pre-configure the
SMTP server in your Powershell Profile
Delivery Notification Options:
--None: No notification.
--OnSuccess: Notify if the delivery is successful.
--OnFailure: Notify if the delivery is delayed.
--Never: Never notify.
#>
