import React, { useEffect } from "react";
import { Button, Option, Col, Container, Form, Row } from "react-bootstrap";
import "../stylesheets/Mockup4-stylesheet.css"
import { useState } from "react";
import { useNavigate } from "react-router";
import { RUTA_BACKEND } from "../conf";

function Mockup14() {
    const [usuario , setUsuario] = useState(JSON.parse(localStorage.getItem("USUARIO")))
    const [listaProductos , setListaProductos] = useState([])
    const navigate = useNavigate();

    const httpOrderHistory = async (user)=>{
        const resp = await fetch(`${RUTA_BACKEND}/obtener_ordenes_usuario`, {
            method: 'POST',
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                userId: user.Usuario_ID
            })
        })
        const data = await resp.json();
        setListaProductos(data)
    }

    useEffect(()=>{
        httpOrderHistory(usuario);
    },[])
    



    return (

        <Container className="m4-container" fluid>
            <Row className="m4-row1">
                <Col sm={4} className="m4-col1">
                    <Button className="m4-button1" variant="light" id="1" onClick={()=>{navigate("/mockup-14")}}> Order History</Button>
                    <Button className="m4-button1" variant="light" id="2" onClick={()=>{navigate("/mockup-4")}}>Profile Info</Button>
                    <Button className="m4-button1" variant="light" id="3">Log Out </Button>
                </Col>
                
                <Col>
                    {listaProductos.map((item)=>{
                            return(
                                <Row className="shopping-cart-results-m7" key={item.producto.Producto_ID} style={{display:"flex" , alignItems : "center" , justifyContent: "center" , borderRadius: "5px"}}>
                                        <Col><img className="shopping-cart-items-image-m7" src={item.producto.Url} alt="25x25" /></Col>
                                        <Col className="containertextom7"><h3 className="shopping-cart-text-m7"> {item.producto.Nombre} </h3></Col>
                                        <Col><h3 className="shopping-cart-text-m7">${item.producto.Precio}</h3></Col>
                                        
                                   </Row>
                            );
                        
                    })}
                </Col>
                
            </Row>

        </Container>

    );
}

export default Mockup14