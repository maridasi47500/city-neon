// Action Cable provides the framework to deal with WebSockets in Rails.
// You can generate new channels where WebSocket features live using the `bin/rails generate channel` command.

import { createConsumer } from "@rails/actioncable"
// Specify a different URL to connect to
createConsumer('ws://localhost:3000/websocket')

 // Use a function to dynamically generate the URL

export default createConsumer()
