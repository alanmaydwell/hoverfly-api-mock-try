# Hoverfly simulating API responses

./hoverctl start
./hoverctl import simluation.json


# Get Auth token
curl --proxy http://localhost:8500\
  -X POST \
  https://restful-booker.herokuapp.com/auth \
  -H 'Content-Type: application/json' \
  -d '{
    "username" : "admin",
    "password" : "password123"
}'\
  --cacert cert.pem

# Booking IDs
curl --proxy http://localhost:8500 -i https://restful-booker.herokuapp.com/booking --cacert cert.pem


# One booking
curl --proxy http://localhost:8500 -i https://restful-booker.herokuapp.com/booking/1 --cacert cert.pem

# Another booking - NOT CAPTURED SO EXPECTED TO FAIL SIMILATION
# curl --proxy http://localhost:8500 -i https://restful-booker.herokuapp.com/booking/2 --cacert cert.pem


# Stop hoverfly
./hoverctl stop
