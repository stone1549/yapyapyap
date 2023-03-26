# YapYapYap

YapYapYap is a monorepo containing a set of Go/NodeJS services that drive a mobile 
proximity chat application written in Typescript with React Native and a web based proximity
chat application written in Typescript with React.
---
## Prereqs
You will need Docker installed

You will need to have followed the react-native setup guide located [here](https://reactnative.dev/docs/environment-setup)

## Launch Stack

clone the repo then

    cd yapyapyap
    docker compose up

Get some coffee while the stack builds and deploys

## Launch the mobile app

    cd proxchat
    yarn install

If you will be running on the ios simulator

    cd ios
    pod install
    cd ..

Finally

    yarn react-native start
 
From here you can hit 'i' to launch on the ios simulator or 'a' to launch the android simulator

## Launch the web app

    cd proxchat-web
    yarn install
    yarn start
---

### /auth 
contains a RESTful Go service that handles account creation and authentication

### /flyway
contains a PostGIS database schema and flyway migrations

### /message
contains a RESTful Go service that allows authenticated users to send and poll for messages

### /message-writer
contains a Go service that reads from a Kafka topic and writes messages to the database

### /proxchat
contains a React Native application that allows the user to chat with others that
are located within a certain radius of them

### /proxchat-hub 
contains a NodeJS service that allows the user to subscribe to a websocket that
will push messages to them when they are within a certain radius of the sender and to
send their own messages to other connected users. The service is written in Typescript

### /proxchat-web
contains a React application that allows the user to chat with others that
are located within a certain radius of them. Written in Typescript
