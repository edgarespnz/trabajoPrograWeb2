import React from "react";
import { Col, Row, Container, Button } from "react-bootstrap";
import "../stylesheets/Mockup7-stylesheet.css"
import { Figure } from "react-bootstrap";
import { useState, useEffect} from "react";
import { RUTA_BACKEND } from "../conf";
import { useLocation } from "react-router-dom";


function Mockup7() {
    
    const location = useLocation();
    const [item, setItem] = useState([]);

    const httpObtenerProducto = async () => {
        const resp = await fetch(`${RUTA_BACKEND}/productos?id=${location.state.id}`)
        const data = await resp.json()
        setItem(data)
    }

    useEffect(() => { 
        console.log(item)
        httpObtenerProducto()
    },[location])

    return (
        <Container>
           {item.map((data)=>{
            return  <Row className="m7-row1">
                <Col xs lg="2" className="m7-col left">
                    <Figure.Image className="item-image-m7"
                        width={250}
                        height={400}
                        alt="50x50"
                        src={item[0].Url} />
                    <Button>Add to the cart</Button>
                </Col>
                <Col sm="auto" className="m7-col middle">
                    
                </Col>
                <Col xs lg="2" className="m7-col right">
                    <h1 className="m7-list-item-title">{item[0].Nombre}</h1>
                    <h2 className="m7-list-item-price">${item[0].Precio}</h2>
                    <h3 className="m7-list-item-shippingText"><a href="">Shipping</a> calculated at checkout</h3>
                    <Row className="m7-row1">
                        <Col className="m7-col1" id = "details">
                            <h3>Manufacturer</h3>
                        </Col>
                        <Col className="m7-col2" id = "details">
                        {item[0].manufacturer}
                        </Col>
                    </Row>
                    <Row className="m7-row2">
                        <Col className="m7-col2" id = "details">
                            <h3>GPU</h3>
                        </Col>
                        <Col className="m7-col2" id = "details">
                        {item[0].gpu}
                        </Col>
                    </Row>
                    <Row className="m7-row3">
                        <Col className="m7-col3" id = "details">
                            <h3>CORE CLOCK</h3>
                        </Col>
                        <Col className="m7-col3" id = "details">
                        {item[0].core_clock}
                        </Col>
                    </Row>
                    <Row className="m7-row3">
                        <Col className="m7-col4" id = "details">
                            <h3>BOOST CLOCK</h3>
                        </Col>
                        <Col className="m7-col4" id = "details">
                        {item[0].boost_clock}
                        </Col>
                    </Row>
                    <Row className="m7-row3">
                        <Col className="m7-col5" id = "details">
                            <h3>CUDA CORES</h3>
                        </Col>
                        <Col className="m7-col5" id = "details">
                        {item[0].cuda_cores}
                        </Col>
                    </Row>
                </Col>
            </Row>
           })}
        </Container>
    );
}

export default Mockup7;