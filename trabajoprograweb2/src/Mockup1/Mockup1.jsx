import React, { useState, useEffect } from "react";
import "../stylesheets/Mockup1-stylesheet.css"
import { useNavigate } from "react-router-dom"
import { Button, Form, Container, Row, Col } from "react-bootstrap"
import { RUTA_BACKEND } from "../conf";


function Mockup1() {
//para controlar los formularios
    const [firstname, setFirstName] = useState("")
    const [lastname, setLastName] = useState("")
    const [email, setEmail] = useState("")
    const [password, setPassword] = useState("")
    const navigate = useNavigate();

    //para comprobar usuarios
    const [user, setUser] = useState([])

    const httpGetUsersList = async (correo = null) => {
        const resp = await fetch(RUTA_BACKEND+``)
        const data = await resp.json()
        setUser(data)
        console.log(user)
    }

    //Acceder a la pagina login
    const createOnClick = () => {
        user.forEach(element => {
            if(element.Correo !== email){
                navigate("/mockup-2")
            }
            else{
                console.log("error")
            }
        });
    };

    useEffect(() => {
        httpGetUsersList();
    }, [])

    return (
        <Container className="container-m1">
            <Form>
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
                    <Button variant="light" type="submit" onClick={createOnClick} >
                        Create
                    </Button>
                </div>
            </Form>
        </Container>

    );
}
export default Mockup1;