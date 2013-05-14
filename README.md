# Vitelity Gem
Provides access to Vitelity's developer API.

Inspired by the [Net-Vitelity](http://search.cpan.org/~ivan/Net-Vitelity-0.03/lib/Net/Vitelity.pm) interface.
## Requirements
rest_client  
awesome_print  
activesupport

### Installing
% gem install vitelity_gem
### Example
Instantiate a new Vitelity client and use 'getlocaldid' to order a new number, and then use callfw to forward it to an existing number.

    client = Vitelity.new('your_username', 'your_password')  
    response = client.getlocaldid( { :did => '12223333' } ) # Number to order  
    destination = '32221111' # Number to forward to (destination)  
    client.callfw( { :did => 12223333, :forward => destination })  

### Methods
http://apihelp.vitelity.net/

###Billing
####balance
Reports back your current account balance
####cdrlist
Gives all new cdr records and keeps track of which ones you have vs. which ones you do not. can only be ran in 5 minute intervals
####resetcdrlist
Reset cdr records for the cdrlist api command (you cannot undo this)
####didcdrdetail
Give the seconds of use and cost for a specific did for a timeframe
####subaccountcdrdetail
Pull details records for a specific sub account for a date range
###DID Inventory
####listtollfree
Lists all toll free numbers that are available for immediate order
####listlocal
Lists all local did numbers currently in stock
####listnpanxx
Lists all available local numbers with a specific npanxx
####listratecenters
Lists all of the ratecenters available for a specific state
####listavailratecenters
Lists all ratecenters that we currently have in stock
####searchtoll
Searches the sms/800 database for a specific vanity number or numbers
####listavailstates
Lists all states that have dids which are currently in stock
####liststates
Lists all available did states line by line
####listdids
Lists all current local and toll free dids
####didnote
Add note to did for future reference
####listintlratecenters
Lists all international ratecenters for a specific country
####listintl
Lists all countries supported for international dids
####getdidnote
Get the current did note set for a specific did
####listspecificlocal
Lists the rates assocated with a specific and available did number
####listnpa
Lists all available local numbers with a specific npa / area code
####lidb
Set the callerid name for a specific number (lidb / cnam)
####lidbavailall
List all numbers where lidb / callerid / cnam name change is available
###DID Ordering
####getbackorder
Get the status of a did backorder to tell if it's been filled
####gettollfree
Orders a specific toll free number in our available list
####getlocaldid
Orders a specific local number in our available list
####removedid
Remove a currently assigned did number
####requestvanity
Orders a specific toll free number from the sms800 available pool
####localbackorder
Back orders a specific ratecenter/state that is not in stock
####getintldid
Orders a specific international did based on ratecenter/country
####localbackorderrate
Get rate for backordering a ratecenter
####didforcebilling
Force the billing for a specific did to a certain sub account
###E911
####e911send
Input or update new 911 address for a specific did number
####e911delete
Delete a registered 911 address from a specific did
####e911checkaddress
Check eligibility of a specific address for 911 service
####e911getinfo
Get 911 information on a specific did number
###Fax
####listincomingfaxes
Lists all incoming faxes
####getfax
Retrieve a specific fax from our system
####sentfaxstatus
Lists all or specific info on sent faxes
####sendfax
Allows you to send a fax over the api
####faxlistdids
List vfax did numbers available for purchase
####faxgetdid
Order a specific vfax did number to your account
####faxlistratecenters
Lists all of the available rate centers for a specific state line by line
####faxliststates
Lists all of the available states line by line
####faxchangeemail
Changes email addresses assigned to a vfax did (new faxes are emailed here)
####newfaxacc
Creates new vfax account for use with viewmyfax.com/faxcentral.net
####setfaxacc
Set dids associated to vfax account
####allowdidchangeemail
This option allows end user to modify the email addresses faxes are sent to when they receive a fax
####allowoutchangeemail
Allows user to update the email addresses for sending out faxes to number@emailyourfax.com.
####increasecredits
Increases the number of dids a specific vfax account is allowed to order. 
####setcredits
Set the number of dids a vfax account can order through viewmyfax portal
####getcredits
Return how many did order credits a customer has remaining on a vfax account
####setlimit
Set the number of daily outbound faxes a specific vfax account can send per day
####faxlistmydids
Return a full list of your vfax numbers
####delfaxacc
Remove existing vfax account
###LNP
####addport
Add lnp order
####uploadsignature
Upload signature for lnp order if required. must be 225 pixels by 50 pixels in size, in jpg, gif, png or bmp format.
####uploadbill
Upload bill for lnp order if required. bill copy must be in pdf or jpg formats. pdf recommended.
####checkavail
Check lnp availability for did number
####checkmultiavail
Check lnp availability for multiple did numbers at once. will respond with number:support. (support may be voice, both or nosupport) both means voice & vfax.
###Placing A Call
####callfromclick
Sends someone a phone call that then connects them to customer service/another number.
###Routing & Network
####reroute
Changes the sub account or ip that the did routes to
####routeall
Changes routing for all of your did numbers to a specific ip or sub account
####getrate
Gets a rate on a specific domestic or international call (ex:011-number or 1-number)
####subaccounts
Lists all sub accounts
####failover
Set fail over for a specific did number
####callfw
Set call forwarding for specific did
####newvoicemail
New voicemail account - allows you to create a new voicemail account
####resetvoicemail
Reset voicemail password for specific account
####listvoicemails
List all voicemail accounts
####addvoicemailtodid
Link a voicemail account to a did number 
####cnamenable
Enable cnam services on a specific did
####cnamdisable
Disable cnam on a specific did number
####cnamstatus
Check whether cnam is disabled or enabled on a specific did number
####addsubacc
Add a sub account or sip peer to your account
####delsubacc
Delete a sip peer or sub account from your account (irreversible)
####lidbavail
Verify availability of callerid name on a specific did (only works on limited did numbers)
####lidbcheck
Give status of a lidb request
####remvoicemail
Delete voicemail account
####migratedids
Migrate did numbers from one sub account to another
####massreroute
Changes the sub account or ip that multiple dids routes to
###SMS
####checksms
Check availability of sms on a specific did
####removesms
Remove sms from a specific did number
####smsdids
List all dids that you own and have sms functionality available
####smsenableurl
Set the url for sms messages to be delivered to for sms+http enabled dids
####sendsms
Send an sms message from an sms enabled did number
####setsms
Enable sms functionality on a specific did
####smsenablehtt
Enable sms functionality on a specific did and sends via an httpd request. will post the variables: $msgid, $src, $dst and $msg to your url.
####sendshort
Send short code sms messages over api
###Telecom Functions
####cnam
Looks up the specific caller id name for a specific number
####npanxxlookup
Lookup ratecenter & state name in lerg format

## Copyright

(C) 2013 NetVersa, LLC.
