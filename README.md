# YapYapYap
### yapyapyapyapyapyap

YapYapYap is a monorepo containing a set of Go microservices used to drive a mobile 
proximity chat application written in React Native.

---

### /auth 
contains a Go microservice that handles account creation and authentication

### /message
contains a Go microservice that allows authenticated users to send and poll for messages

### /db
contains a PostGIS database schema and flyway migrations

### /proxchat
contains a React Native application that allows the user to chat with others that
are located within a certain radius of them

---

## Todo

- utilize terraform to simplify deployment of services and required resources