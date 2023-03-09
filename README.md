# YapYapYap
### yapyapyapyapyapyap

YapYapYap is a monorepo containing a set of Go microservices used to drive a mobile 
proximity chat application written in React Native.

---

## Prereqs
You will need Docker installed

You will need to have followed the react-native setup guide located [here](https://reactnative.dev/docs/environment-setup)

## Run

clone the repo then

    cd yapyapyap
    docker compose up

Get some coffee while the stack builds and deploys

    cd proxchat
    yarn install

If you will be running on the ios simulator

    cd ios
    pod install
    cd ..

Finally

    yarn react-native start
 
From here you can hit 'i' to launch on the ios simulator or 'a' to launch the android simulator

---

### /auth 
contains a Go microservice that handles account creation and authentication

### /message
contains a Go microservice that allows authenticated users to send and poll for messages

### /flyway
contains a PostGIS database schema and flyway migrations

### /proxchat
contains a React Native application that allows the user to chat with others that
are located within a certain radius of them
