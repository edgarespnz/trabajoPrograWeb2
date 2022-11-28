import React, { useEffect, useState } from "react";
import { Container, Row, Col, Button } from "react-bootstrap";
import Footer from "../Footer/Footer";
import logo from "../Header/Images/LOGO.png"
import "../stylesheets/Mockup3-stylesheet.css"
import {useLocation } from "react-router-dom";
import { RUTA_BACKEND } from "../conf";

function Mockup3() {

    const location = useLocation();
    const correo = location.state.email
    const [user, setUser] = useState([]);

    const httpUsers = async () => {
        const resp = await fetch(`${RUTA_BACKEND}/usuarios?correo=${correo}`)
        const data = await resp.json()
        setUser(data)
        console.log(user)
    }

    useEffect(()=>{
        httpUsers();
    },[]);

    return (
        <>
         <Container className="container-mockup3">
            <Row className="m3-row-1">
                <Col sm={8} className="m3-col-left">
                    <img className="main-logo" src={logo} alt="logo" width={200} />
                    <h1 >Build your PC!</h1>
                    <h2>Just for what you need</h2>
                    <Button className="m3-buttons">Build for begginers</Button>
                    <Button className="m3-buttons">Advanced Building</Button>
                </Col>
                <Col sm={4} className="m3-col-right">

                </Col>
            </Row>
            
        </Container>
        <Footer/>
        </>

       
        
    );
}

export default Mockup3