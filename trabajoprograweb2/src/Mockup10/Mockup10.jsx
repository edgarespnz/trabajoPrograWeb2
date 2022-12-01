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
import { Navigate, useNavigate } from "react-router";


function Mockup10() {

    const navigate = useNavigate();

    const onClickItem=(tipoPc)=>{
        localStorage.setItem("tipo_pc",tipoPc)
        navigate("/mockup-11")
    }

    return (
        <Container>
            <Row className="m10-row">
                <Col className="m10-col" onClick={()=>{onClickItem("gaming")}}>
                    <BsController size={175} color={"white"}/>
                    <h3 className="m10-buttonTag">Gaming</h3>
                    </Col>
                <Col className="m10-col" onClick={()=>{onClickItem("design")}}>
                    <BsPencilSquare size={175} color={"white"}/>
                    <h3 className="m10-buttonTag">Design</h3>
                </Col>
                <Col className="m10-col" onClick={()=>{onClickItem("coding")}}>
                    <BsCodeSquare size={175} color={"white"}/>
                    <h3 className="m10-buttonTag">Coding</h3>
                </Col>
            </Row>
            <Row className="m10-row">
                <Col className="m10-col" onClick={()=>{onClickItem("rendering")}}>
                    <GiLaptop size={175} color={"white"}/>
                    <h3 className="m10-buttonTag">Rendering</h3>
                </Col>
                <Col className="m10-col" onClick={()=>{onClickItem("office")}}>
                    <FaUserFriends size={175} color={"white"}/>
                    <h3 className="m10-buttonTag">Office</h3>
                </Col>
                <Col className="m10-col" onClick={()=>{onClickItem("other")}}>
                    <TbArrowsCross size={175} color={"white"}/>
                    <h3 className="m10-buttonTag">Other</h3>
                </Col>
            </Row>
        </Container>
    );
}

export default Mockup10;