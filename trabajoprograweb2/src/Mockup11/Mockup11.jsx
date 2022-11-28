import React from "react";
import { Container, Button, ButtonGroup, Row, Col } from "react-bootstrap";
import { BsCart } from "react-icons/bs";
import "../stylesheets/Mockup11-stylesheet.css"

function Mockup11() {



    return (
        <Container>
            <div className="div1-m7">
                
                    <Row>
                        <Col sm={8}>

                        </Col>
                        <Col sm ={4}>
                            <Button className = "groupbuttonsm7"> {"<Back"} </Button>
                            <Button className = "groupbuttonsm7"> <BsCart /> Checkout </Button>

                        </Col>
                    </Row>
                
            </div>

        </Container>
    );
}

export default Mockup11;