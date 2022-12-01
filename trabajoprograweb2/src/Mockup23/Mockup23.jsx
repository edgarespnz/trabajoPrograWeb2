import React from "react";
import { useState } from "react";
import { Container, Row, Col, Button } from "react-bootstrap";
import { BsHeadset } from "react-icons/bs";
import { BsKeyboardFill } from "react-icons/bs";
import { AiTwotoneDownSquare } from "react-icons/ai";
import { BsFillChatLeftFill } from "react-icons/bs";
import "../stylesheets/Mockup23-stylesheet.css"

function Mockup23(){

    return(

        <Container className="m23-container">

            <h1 className="m23-h1" >Ranking best sellers periferics</h1>

            <Row className="m23-row">
                <Col className="m23-col1"><BsHeadset/></Col>
                <Col className="m23-col2">Headset</Col>
                <Col className="m23-col3"></Col>
            </Row>
            <Row className="m23-row">
                <Col className="m23-col1"><BsKeyboardFill/></Col>
                <Col className="m23-col2">Mouse & Keyboard</Col>
                <Col className="m23-col3"></Col>
            </Row>
            <Row className="m23-row">
                <Col className="m23-col1"><AiTwotoneDownSquare/></Col>
                <Col className="m23-col2">Standard Mouse Pad</Col>
                <Col className="m23-col3"></Col>
            </Row>
            <Row className="m23-row">
                <Col className="m23-col1"><BsFillChatLeftFill/></Col>
                <Col className="m23-col2">XL Mouse Pad</Col>
                <Col className="m23-col3"></Col>
            </Row>

            <div className="container cart-items">
                
                

            </div>
        </Container>
    );
}

export default Mockup23;