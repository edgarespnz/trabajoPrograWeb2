import React from "react";
import { Container, Row, Col ,Button} from "react-bootstrap";
import { BsCart } from "react-icons/bs";

function Mockup12() {
    return (
        <Container>
            <Row><h1 style={{ color: "white" }}>Build your Own Pc!</h1></Row>
            <Row>
                <Col sm={8}>

                </Col>
                <Col sm={4}>
                    <Button className="groupbuttonsm11"> {"<Back"} </Button>
                    <Button className="groupbuttonsm11"> <BsCart /> Checkout </Button>
                </Col>
            </Row>

            <Row>
                <Col>
                
                </Col>

                <Col>
                
                </Col>
                <Col>
                
                </Col>

            </Row>
        </Container>
    );
}

export default Mockup12;