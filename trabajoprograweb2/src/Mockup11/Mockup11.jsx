import React from "react";
import { Container, Button, ButtonGroup, Row, Col } from "react-bootstrap";
import { BsCart } from "react-icons/bs";
import "../stylesheets/Mockup11-stylesheet.css"

function Mockup11() {

    return (
        <Container>
            <div className="div1-m7">
                <h1 >Your optimized Build!</h1>
                <Row>
                    <Col sm={8}>

                    </Col>
                    <Col sm={4}>
                        <Button className="groupbuttonsm7"> {"<Back"} </Button>
                        <Button className="groupbuttonsm7"> <BsCart /> Checkout </Button>
                    </Col>
                </Row>

                <Row className="pcInfo-components-m7">
                    <Col sm={4} className="col-left-m7">
                        <img src="https://falabella.scene7.com/is/image/FalabellaPE/18221422_1?wid=800&hei=800&qlt=70" alt="250x250" />
                    </Col>
                    
                    <Col sm={8} className = "col-right-m7">
                        <h1>texto de prueba para ver tamaño</h1>
                    </Col>
                </Row>
            </div>

        </Container>
    );
}

export default Mockup11;