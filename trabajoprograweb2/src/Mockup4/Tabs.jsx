import React from "react";
import { useState } from "react";
import { Button, ButtonGroup, Col, Container, Form, Row } from "react-bootstrap";
import { FiPrinter } from "react-icons/fi";
import "./Tabs-stylesheet.css"

function Tabs() {

    const [selectedButton, setSelectedButton] = useState("0")

    const selectButton = () => {

    }

    return (

        <Container className="main-container-mockup4" fluid>
            <Row className="row-left-m4">
                <Col sm={4} className="tabs-container">
                    <Button className="tabs-buttons" variant="light" id="1"> Order History</Button>
                    <Button className="tabs-buttons" variant="light" id="2">Profile Info</Button>
                    <Button className="tabs-buttons" variant="light" id="3">Log Out </Button>
                </Col>
                <Col xs={true} className="row-right-m4">
                    <Col sm={4} className="row-content-left-m4">
                        <h3 >Default </h3>
                        <h4 className="pf-info firstname"> Ed va </h4>
                        <h4 className="pf-info country"> United States</h4>
                    </Col>
                    <Col sm={8} className="row-content-right-m4">
                        <Form className="profile-container">
                            <Form.Group>
                                <Row className="form-names">
                                    <Col>
                                        <Form.Label>First Name</Form.Label>
                                        <Form.Control type="text" />
                                    </Col>
                                    <Col>
                                        <Form.Label>Last Name</Form.Label>
                                        <Form.Control type="text" />
                                    </Col>
                                </Row>
                            </Form.Group>

                            <Form.Label>Email</Form.Label>
                            <Form.Control type="email" />

                            <Form.Label>Address</Form.Label>
                            <Form.Control type="text" />

                            <Form.Group>
                                <Row className="form-address">
                                    <Col>
                                        <Form.Label>Apartment,Suit,Etc</Form.Label>
                                        <Form.Control type="text" />
                                    </Col>
                                    <Col>
                                        <Form.Label>City</Form.Label>
                                        <Form.Control type="text" />
                                    </Col>
                                </Row>
                            </Form.Group>

                            <Form.Group>
                                <Row className="form-region">
                                    <Col>
                                        <Form.Label>Country/Region</Form.Label>
                                        <Form.Select type="text" />
                                    </Col>
                                    <Col>
                                        <Form.Label>Postal/zip code</Form.Label>
                                        <Form.Control type="text" />
                                    </Col>
                                </Row>
                            </Form.Group>

                            <Form.Label>Phone</Form.Label>
                            <Form.Control type="text"/>

                            <Form.Group className="form-buttons">
                                <Button >Update Info</Button>
                                <h3 className="cancel-button"> Cancel</h3>
                                
                            </Form.Group>
                        </Form>
                    </Col>
                </Col>
            </Row>

        </Container>

    );
}

export default Tabs;