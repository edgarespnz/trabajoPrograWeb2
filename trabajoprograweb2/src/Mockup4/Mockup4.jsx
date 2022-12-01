import React from "react";
import { Button, Option, Col, Container, Form, Row } from "react-bootstrap";
import "../stylesheets/Mockup4-stylesheet.css"
import { useState } from "react";

function Mockup4() {
    const [selectedButton, setSelectedButton] = useState("0")

    const selectButton = () => {

    }

    return (

        <Container className="m4-container" fluid>
            <Row className="m4-row1">
                <Col sm={4} className="m4-col1">
                    <Button className="m4-button1" variant="light" id="1"> Order History</Button>
                    <Button className="m4-button1" variant="light" id="2">Profile Info</Button>
                    <Button className="m4-button1" variant="light" id="3">Log Out </Button>
                </Col>
                <Col xs={true} className="m4-row2">
                    <Col sm={4} className="m4-col2">
                        <h3 >Default </h3>
                        <h4 className="m4-pf-info"> Ed va </h4>
                        <h4 className="m4-pf-info"> United States</h4>
                    </Col>
                    <Col sm={8} className="m4-col3">
                        <Form className="m4-profile-container">
                            <Form.Group>
                                <Row className="m4-form-names">
                                    <Col>
                                        <Form.Label>First Name</Form.Label>
                                        <Form.Control className="m4-input-short" type="text" />
                                    </Col>
                                    <Col>
                                        <Form.Label>Last Name</Form.Label>
                                        <Form.Control className="m4-input-short" type="text" />
                                    </Col>
                                </Row>
                            </Form.Group>

                            <Form.Label>Email</Form.Label>
                            <Form.Control type="email" />

                            <Form.Label>Address</Form.Label>
                            <Form.Control type="text" />

                            <Form.Group>
                                <Row className="m4-form-address">
                                    <Col>
                                        <Form.Label>Apartment,Suit,Etc</Form.Label>
                                        <Form.Control className="m4-input-short" type="text" />
                                    </Col>
                                    <Col>
                                        <Form.Label>City</Form.Label>
                                        <Form.Control className="m4-input-short" type="text" />
                                    </Col>
                                </Row>
                            </Form.Group>

                            <Form.Group>
                                <Row className="m4-form-region">
                                    <Col>
                                        <Form.Label>Country/Region</Form.Label>
                                        <Form.Select type="text">
                                            <option value="1"></option>
                                            <option value="2">Argentina</option>
                                            <option value="3">Bolivia</option>
                                            <option value="4">Brasil</option>
                                            <option value="5">Colombia</option>
                                            <option value="6">Chile</option>
                                            <option value="7">Ecuador</option>
                                            <option value="8">Mexico</option>
                                            <option value="10">Paraguay</option>
                                            <option value="11">Perú</option>
                                            <option value="12">Uruguay</option>
                                            <option value="13">USA</option>
                                            <option value="14">Venezuela</option>
                                        </Form.Select>
                                    </Col>
                                    <Col>
                                        <Form.Label>Postal/zip code</Form.Label>
                                        <Form.Control type="text" />
                                    </Col>
                                </Row>
                            </Form.Group>

                            <Form.Label>Phone</Form.Label>
                            <Form.Control type="text"/>

                            <Form.Group className="m4-form-buttons">
                                <Button className="m4-update-button">Update Info</Button>
                                <h3 className="m4-cancel-button"> Cancel</h3>
                                
                            </Form.Group>
                        </Form>
                    </Col>
                </Col>
            </Row>

        </Container>

    );
}

export default Mockup4