import React from "react";
import { Col, Container, ListGroup, Row, Button } from "react-bootstrap";
import "../stylesheets/Header-stylesheet.css"
import logo from "./Images/LOGO.png"
import { BsSearch } from "react-icons/bs"
import { AiOutlineUser, AiOutlineShoppingCart } from "react-icons/ai"
import { Navigate } from "react-router";

function Header() {

    return (
        <Container className="container-header">
            <Row>
                <Col className="column-left-header">
                    <img className="header-logo" src={logo} alt="logo-image" />
                </Col>

                <Col className="column-center-header">
                    <ListGroup horizontal>
                            <Button className="header-buttons">Home</Button>
                        
                            <Button className="header-buttons">About</Button>
                
                            <Button className="header-buttons">Support</Button>
                        
                            <Button className="header-buttons">Review</Button>
                       
                            <Button className="header-buttons"> Rankings</Button>
                     
                    </ListGroup>
                </Col>


                <Col className="column-right-header">
                    <BsSearch className="icon-right" />
                    <AiOutlineUser className="icon-right" />
                    <AiOutlineShoppingCart className="icon-right" />
                </Col>
            </Row>

        </Container>
    );
}


export default Header;