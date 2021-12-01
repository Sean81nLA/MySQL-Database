select person.firstName, person.lastName, Address.city, address.state
from person left join address on person.personid=address.personid
