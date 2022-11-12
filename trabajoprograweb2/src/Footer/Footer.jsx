import React from "react";
import { Container } from "react-bootstrap";
import footerBackground from "./Images/Footer.PNG"
import "../stylesheets/Footer-stylesheet.css"

function Footer(){
    return(
        <Container className="container-footer">
            <img className="footer-background" src={footerBackground} alt="footer-background" />
        </Container>
    );
}

export default Footer;