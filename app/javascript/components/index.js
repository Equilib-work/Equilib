// import { createElement } from "react"
import { render } from "react-dom"
import h from "components/htm_create_element"

render(
    h`<h1>Hello htm</h1>`,
    document.getElementById("root")
)