import React from "react";
import { Container, Row, Col, Form, Button } from "react-bootstrap";
import footerBackground from "./Images/Footer.PNG"
import "../stylesheets/Footer-stylesheet.css"
import {BsFacebook , BsInstagram} from "react-icons/bs"
import {FiTwitter} from "react-icons/fi"


function Footer() {
    return (
        <Container className="container-footer" fluid>
            <Row className="footer-row1">
                <Col className="footer-col" id="col-1">
                    <h1 className="footer-col-left-h1">Sign up to our newsletter for the latest PC news.</h1>
                    <Form.Group className="footer-email-group">
                    <Form.Control type="email" placeholder="Email" className="footer-email-form"/>
                    <Button> Suscribe</Button>
                    </Form.Group>
                    <BsFacebook color="white" className="socialmedia-icons" size = {25}/>
                    <FiTwitter color="white" className="socialmedia-icons" size = {25}/>
                    <BsInstagram color="white" className="socialmedia-icons" size = {25}/>
                    
                </Col>
                <Col className="footer-col" id="col-items-text">
                    <h3 className="footer-list-text" >Build your PC</h3>
                    <h3 className="footer-list-text">Why Redux</h3>
                    <h3 className="footer-list-text">Support</h3>
                </Col>
                <Col className="footer-col" id="col-items-text">
                    <h3 className="footer-list-text" >Good.</h3>
                    <h3 className="footer-list-text">Better.</h3>
                    <h3 className="footer-list-text">Best.</h3>
                </Col>
                <Col className="footer-col" id="col-items-text">
                    <h3 className="footer-list-text" >Terms & conditions</h3>
                    <h3 className="footer-list-text">Privacy Policy</h3>
                    <h3 className="footer-list-text">Refund Policy</h3>
                </Col>
            </Row>
            <Row className="copyright">
                <h3 className="footer-list-text"> Copyright 2022 , hecho por grupo Deku+4</h3>
            </Row>

        </Container>
    );
}

export default Footer;