// Action Cable provides the framework to deal with WebSockets in Rails.
// You can generate new channels where WebSocket features live using the `bin/rails generate channel` command.

import { createConsumer } from "@rails/actioncable"

// Specify a different URL to connect to
createConsumer('http://localhost:3000/cable')

// Use a function to dynamically generate the URL
createConsumer(getWebSocketURL)

function getWebSocketURL() {
    const token = localStorage.get('auth-token')
    return `http://localhost:3000/cable?token=${token}`
}



export default createConsumer()
