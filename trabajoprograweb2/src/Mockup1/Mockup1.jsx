import React, { useState, useEffect } from "react";
import "../stylesheets/Mockup1-stylesheet.css"
import { useNavigate } from "react-router-dom"
import { Button, Form, Container, Row, Col } from "react-bootstrap"
import { RUTA_BACKEND } from "../conf";
import { Alert } from "react-bootstrap";


function Mockup1() {

    const [alertShow, setAlertShow] = useState(false);
    //para controlar los formularios
    const [firstname, setFirstName] = useState('')
    const [lastname, setLastName] = useState('')
    const [email, setEmail] = useState('')
    const [password, setPassword] = useState('')
    const navigate = useNavigate();

    const httpPostUser = async () => {
        const resp = await fetch(`${RUTA_BACKEND}/create_user`, {
            method: 'POST',
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                firstName: firstname,
                lastName: lastname,
                password: password,
                email: email
            })
        });
        const data = await resp.json()
        if (data.error === '' && firstname !== "" && lastname !== "" && email !== "" && password !== "") {
            navigate("/login")
        }
        else {
            setAlertShow(true)
        }

    }

    // items = [{productoid : 12345}, {productoid : 1234546}]
    /* items.map((data)=>{
    })*/
    //Acceder a la pagina login

    return (
        <Container className="container-m1">
            <Form>
                <Alert show={alertShow} variant="danger" onClose={() => setAlertShow(false)} dismissible>
                    <Alert.Heading>Oops! Error al crear usuario</Alert.Heading>
                </Alert>

                <h1 className="title">CREATE ACCOUNT</h1>
                <Form.Group className="mb-3" controlId="formFirstName">
                    <Form.Control type="firstName" placeholder="First Name" value={firstname}
                        onChange={(evt) => setFirstName(evt.target.value)} />
                </Form.Group>

                <Form.Group className="mb-3" controlId="formLastName">
                    <Form.Control type="lastName" placeholder="Last Name"
                        value={lastname}
                        onChange={(evt) => setLastName(evt.target.value)} />
                </Form.Group>

                <Form.Group className="mb-3" controlId="formEmail">

                    <Form.Control type="email" placeholder="Email"
                        value={email}
                        onChange={(evt) => setEmail(evt.target.value)} />
                </Form.Group>

                <Form.Group className="mb-3" controlId="formPassword">

                    <Form.Control type="password" placeholder="Password"
                        value={password}
                        onChange={(evt) => setPassword(evt.target.value)} />
                </Form.Group>

                <div className="d-grid gap-2">
                    <Button variant="light" type="button" onClick={httpPostUser} >
                        Create
                    </Button>
                </div>
            </Form>
        </Container>

    );
}
export default Mockup1;