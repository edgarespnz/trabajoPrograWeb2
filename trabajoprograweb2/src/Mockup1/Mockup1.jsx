import React, { useState } from "react";
import "../stylesheets/Mockup1-stylesheet.css"
import { useNavigate } from "react-router-dom"
import { Button, Form, Container, Row, Col } from "react-bootstrap"


function Mockup1() {

    const [firstname, setFirstName] = useState("")
    const [lastname, setLastName] = useState("")
    const [email, setEmail] = useState("")
    const [password, setPassword] = useState("")

    const navigate = useNavigate();

    //Acceder a la pagina login
    const createOnClick = () => {
        if (firstname !== "" && lastname !== "" && email !== "" && password !== "") {
            navigate("/mockup-2")
        }
    }

    return (
        <Container>
            <Form>
                <h1 className="title">CREATE ACCOUNT</h1>
                <Form.Group className="mb-3" controlId="formFirstName">
                    <Form.Control type="firstName" placeholder="First Name" value={firstname}
                            onChange={(evt)=>setFirstName(evt.target.value)}/>
                </Form.Group>

                <Form.Group className="mb-3" controlId="formLastName">
                    <Form.Control type="lastName" placeholder="Last Name" 
                    value={lastname}
                    onChange={(evt)=>setLastName(evt.target.value)}/>
                </Form.Group>

                <Form.Group className="mb-3" controlId="formEmail">

                    <Form.Control type="email" placeholder="Email" 
                     value={email}
                     onChange={(evt)=>setEmail(evt.target.value)}/>
                </Form.Group>

                <Form.Group className="mb-3" controlId="formPassword">

                    <Form.Control type="password" placeholder="Password" 
                     value={password}
                     onChange={(evt)=>setPassword(evt.target.value)}/>
                </Form.Group>

                <div className="d-grid gap-2">
                <Button variant="primary" type="submit" onClick={createOnClick} >
                    Submit
                </Button>
                </div>
            </Form>
        </Container>

    );
}
export default Mockup1;