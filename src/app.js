import React from "react"
import ReactDOM from "react-dom/client"

const within = React.createElement("div", {}, "FromWithinApp.js")
ReactDOM.createRoot(document.getElementById('app')).render(
    within
)
