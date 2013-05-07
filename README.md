# Vitelity Gem

Provides access to Vitelity's developer API.

Inspired by the [Net-Vitelity](http://search.cpan.org/~ivan/Net-Vitelity-0.03/lib/Net/Vitelity.pm) interface.
# Requirements
rest_client  

awesome_print  

activesupport

# Installing

% gem install vitelity_gem

# Usage

http://apihelp.vitelity.net/

## Examples
Instantiate a new Vitelity client and use 'getlocaldid' to order a new number, and then use callfw to forward it to an existing number.

client = Vitelity.new('your_username', 'your_password')  
response = client.getlocaldid( { :did => '12223333' } ) # Number to order (number_)  
destination = '1111111111' # Number to forward to (destination)  
client.callfw( { :did => 12223333, :forward => destination })  
