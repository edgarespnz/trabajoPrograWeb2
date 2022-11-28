import React, { useCallback } from "react";
import { Container, Row, Col, Button } from "react-bootstrap";
import { AiOutlineShoppingCart } from "@react-icons/all-files/ai/AiOutlineShoppingCart";
import { BsTrash } from "react-icons/bs";
import "../stylesheets/Mockup8-stylesheet.css"
import { useState } from "react";
import { useEffect } from "react";
import { RUTA_BACKEND } from "../conf";

function Mockup8() {

    const [listaOrdenes, setListaOrdenes] = useState([]);
    const orden = 'f2feddf8-e9f8-4759-9a88-94d4a28a82aa';

    const httpObtenerOrden = async () => {
        const resp = await fetch(`${RUTA_BACKEND}/cart?orden=${orden}`)
        const data = await resp.json()
        setListaOrdenes(data)
    }

    const deleteItem = (item_id) => {
        setListaOrdenes(listaOrdenes.filter(listaOrdenes => listaOrdenes.producto.Producto_ID !== item_id))
    }

    useEffect(() => {
        httpObtenerOrden()
    }, [])


    return (
        <Container className="m7-main-container" >
            <Row className="title-row-m7">
                <Col>
                    <h3 className="m7-shopping-title">Shopping Cart Items</h3>
                </Col>
                <Col>
                    <Button className="shoppingButton"> <AiOutlineShoppingCart color="white" size="md" className="icon-m7" /> Checkout</Button>
                </Col>
            </Row>
            <Row>
                {listaOrdenes.map((item)=>{
                    return <Row className="shopping-cart-results" key={item.producto.Producto_ID}>
                    <Col><img className="shopping-cart-items-image" src={item.producto.Url} alt="25x25" /></Col>
                    <Col><h3 className="shopping-cart-text"> {item.producto.Nombre} </h3></Col>
                    <Col><h3 className="shopping-cart-text">${item.producto.Precio}</h3></Col>
                    <Col><BsTrash onClick={()=> deleteItem(item.producto.Producto_ID)} className="trash-icon-m7" color="black" size="50"/></Col>
                </Row>
                })}

            </Row>

        </Container>
    );
}

export default Mockup8;