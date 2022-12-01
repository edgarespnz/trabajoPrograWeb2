import React, { useEffect, useState } from "react";
import { Container, Row, Col, Breadcrumb, Form, Button, FloatingLabel, FormLabel } from "react-bootstrap";
import { FaCcPaypal, FaCcApplePay, FaCcAmazonPay } from "react-icons/fa";
import { FaUserCircle } from "react-icons/fa";
import "../stylesheets/Mockup13-stylesheet.css"

function Mockup13() {

    const listaProductos = JSON.parse(localStorage.getItem("cart"))
    const [cart, setCart] = useState([]);

    useEffect(() => {
        setCart(listaProductos)
        console.log(cart)
    }, [])
    return (
        <Container style={{marginBottom: "2%" , marginTop: "2%"}}>
            <Row>
                <Col sm={6} style={{ backgroundColor: "white", padding: "2%" }}>
                    <Breadcrumb>
                        <Breadcrumb.Item href="/mockup-8">Cart</Breadcrumb.Item>
                        <Breadcrumb.Item >Information</Breadcrumb.Item>
                        <Breadcrumb.Item >Shipping</Breadcrumb.Item>
                        <Breadcrumb.Item active>Payment</Breadcrumb.Item>
                    </Breadcrumb>

                    <FaCcApplePay color="purple" size={150} style={{ margin: "1%" }} />
                    <FaCcPaypal color="yellow" size={150} style={{ margin: "1%" }} />
                    <FaCcAmazonPay color="grey" size={150} style={{ margin: "1%" }} />

                    <hr style={{ borderTop: "3px solid #bbb" }} />

                    <h3>Contact Information</h3>
                    <Row style={{ padding: "2%" }}>
                        <Col sm={2}>
                            <FaUserCircle size={100} color={"black"} />
                        </Col>

                        <Col sm={6}>
                            <h3 style={{ color: "grey" }}>Ed Va lkdafj@gmail.com</h3>
                            <a href="">Log Out</a>
                        </Col>
                    </Row>

                    <Row>
                        <Form>
                            <h3 style={{ color: "grey", marginTop: "2%", marginBottom: "5%" }}>Shipping Address</h3>
                            <FloatingLabel controlId="floatingSelect" label="Saved Adresses">
                                <Form.Select style={{ marginTop: "2%" }}>
                                    <option> United States (Ed Va)</option>
                                    <option> Perú</option>
                                </Form.Select>
                            </FloatingLabel>

                            <FloatingLabel controlId="floatingSelect" label="Country/Region">
                                <Form.Select style={{ marginTop: "2%" }} >
                                    <option> United States</option>
                                    <option> Perú</option>
                                </Form.Select>
                            </FloatingLabel>

                            <Row>
                                <Col>
                                    <FloatingLabel controlId="floatingSelect" label="First Name">
                                        <Form.Control style={{ marginTop: "2%" }} type="text" placeholder="" />
                                    </FloatingLabel>
                                </Col>
                                <Col>
                                    <FloatingLabel controlId="floatingSelect" label="Last Name">
                                        <Form.Control style={{ marginTop: "2%" }} />
                                    </FloatingLabel>
                                </Col>
                            </Row>
                            <Form.Control style={{ marginTop: "2%" }} placeholder="Company (optional)" />
                            <Form.Control style={{ marginTop: "2%" }} placeholder="Address" />
                            <Form.Control style={{ marginTop: "2%" }} placeholder="Apartment, suite, etc (optional)" />

                            <Row>
                                <Col>
                                    <FloatingLabel controlId="floatingSelect" label="City">
                                        <Form.Control style={{ marginTop: "2%" }} type="text" placeholder="City" />
                                    </FloatingLabel>
                                </Col>
                                <Col>
                                    <FloatingLabel controlId="floatingSelect" label="Last Name">
                                        <Form.Select style={{ marginTop: "2%" }} >
                                            <option> United States</option>
                                            <option> Perú</option>
                                        </Form.Select>
                                    </FloatingLabel>
                                </Col>
                                <Col>
                                    <FloatingLabel controlId="floatingSelect" label="Last Name">
                                        <Form.Control style={{ marginTop: "2%" }} type="text" placeholder="ZIP CODE" />
                                    </FloatingLabel>
                                </Col>
                            </Row>
                            <Form.Control style={{ marginTop: "2%" }} type="text" placeholder="Phone" />
                            <Row style={{ margin: "5%" }} className="buttons-m7-shipping">
                                <Col sm={2} className="buttons-m7-shipping">
                                    <Breadcrumb>
                                        <Breadcrumb.Item href="/mockup-8" >{"< Return to Cart"}</Breadcrumb.Item>
                                    </Breadcrumb>
                                </Col>
                                <Col sm={8} className="buttons-m7-shipping">
                                    <Button color="purple">Continue to Shipping</Button>
                                </Col>
                            </Row>


                        </Form>
                    </Row>


                </Col>

                <Col sm={6} style={{ backgroundColor: "black", padding: "2%" }}>
                    {cart.map((item) => {
                        return (
                            <Row className="components-results-m11" >
                                <Col><img className="shopping-cart-items-image" src={item.Url} alt="25x25" /></Col>
                                <Col><h3 className="shopping-cart-text">{item.Nombre}</h3></Col>
                                <Col><h3 className="shopping-cart-text">${item.Precio}</h3></Col>
                            </Row>
                        );
                    })}
                    <Row >
                        <Col sm={8}>
                            <Form.Control placeholder="Coupon" />
                        </Col>

                        <Col sm={2}>
                            <Button>Apply</Button>
                        </Col>
                    </Row>
                </Col>


            </Row>



        </Container>
    );
}

export default Mockup13;