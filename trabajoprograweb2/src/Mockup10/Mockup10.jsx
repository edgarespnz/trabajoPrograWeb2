import React from "react";
import { useState } from "react";
import { Container, Row, Col, Button } from "react-bootstrap";
import "../stylesheets/Mockup10-stylesheet.css"
import { BsController } from "react-icons/bs";
import { BsPencilSquare } from "react-icons/bs";
import { BsCodeSquare } from "react-icons/bs";
import { GiLaptop } from "react-icons/gi";
import { FaUserFriends } from "react-icons/fa";
import { TbArrowsCross } from "react-icons/tb";


function Mockup10() {

    const [customizedBuild, setCustomizedBuild] = useState([])


    return (
        <Container>
            <Row className="m10-row">
                <Col className="m10-col">
                    <BsController size={175} color={"white"}/>
                    <h3 className="m10-buttonTag">Gaming</h3>
                    </Col>
                <Col className="m10-col">
                    <BsPencilSquare size={175} color={"white"}/>
                    <h3 className="m10-buttonTag">Design</h3>
                </Col>
                <Col className="m10-col">
                    <BsCodeSquare size={175} color={"white"}/>
                    <h3 className="m10-buttonTag">Coding</h3>
                </Col>
            </Row>
            <Row className="m10-row">
                <Col className="m10-col">
                    <GiLaptop size={175} color={"white"}/>
                    <h3 className="m10-buttonTag">Rendering</h3>
                </Col>
                <Col className="m10-col">
                    <FaUserFriends size={175} color={"white"}/>
                    <h3 className="m10-buttonTag">Office</h3>
                </Col>
                <Col className="m10-col">
                    <TbArrowsCross size={175} color={"white"}/>
                    <h3 className="m10-buttonTag">Other</h3>
                </Col>
            </Row>
        </Container>
    );
}

export default Mockup10;