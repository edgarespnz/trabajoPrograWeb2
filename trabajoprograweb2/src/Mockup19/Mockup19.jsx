import React from "react";
import { Form } from "react-bootstrap";
// import { BsCart } from "react-icons/bs";
import "../stylesheets/Mockup19-stylesheet.css"

function Mockup19() {


    return (
        <div className="m19-div1">
            <h2 className="m19-encabezado">Submit a request</h2>
            <form className="m19-form">
                <div className="m19-div-forms">
                    <Form.Label className="m19-label">Email</Form.Label>
                    <Form.Control className="m19-text" type="email" />
                </div>
                <div className="m19-div-forms">
                    <Form.Label className="m19-label">Name</Form.Label>
                    <Form.Control className="m19-text" type="text" />
                </div>
                <div className="m19-div-forms">
                    <Form.Label className="m19-label">Phone</Form.Label>
                    <Form.Control className="m19-text" type="text" />
                </div>
                <div className="m19-div-forms">
                    <Form.Label className="m19-label">Subject</Form.Label>
                    <Form.Control className="m19-text" type="text" />
                </div>
                <div className="m19-div-forms">
                    <Form.Label className="m19-label">Description</Form.Label>
                    <Form.Control className="m19-textarea" as="textarea" rows={5}/>
                </div>
                <input className="m19-submit" type={"submit"} value="Submit"/>
            </form>
            
        </div>
    );
}

export default Mockup19;