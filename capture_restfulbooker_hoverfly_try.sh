# Hoverfly capturing from API

# Need Hoverfly SSL cert from below to use https
# wget https://raw.githubusercontent.com/SpectoLabs/hoverfly/master/core/cert.pem

./hoverctl start
./hoverctl mode capture


# Get auth token
curl --proxy http://localhost:8500\
  -X POST \
  https://restful-booker.herokuapp.com/auth \
  -H 'Content-Type: application/json' \
  -d '{
    "username" : "admin",
    "password" : "password123"
}'\
  --cacert cert.pem


#  Booking IDs
curl --proxy http://localhost:8500 -i https://restful-booker.herokuapp.com/booking --cacert cert.pem


# One booking
curl --proxy http://localhost:8500 -i https://restful-booker.herokuapp.com/booking/1 --cacert cert.pem


# Export captured details and stop
./hoverctl export simluation.json
./hoverctl stop
