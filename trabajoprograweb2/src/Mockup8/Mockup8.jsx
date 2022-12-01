import React, { useCallback } from "react";
import { Container, Row, Col, Button } from "react-bootstrap";
import { AiOutlineShoppingCart } from "@react-icons/all-files/ai/AiOutlineShoppingCart";
import { BsTrash } from "react-icons/bs";
import "../stylesheets/Mockup8-stylesheet.css"
import { useState } from "react";
import { useEffect } from "react";
import { RUTA_BACKEND } from "../conf";
import { useNavigate } from "react-router";

function Mockup8() {

    const navigate = useNavigate();
    const carrito = JSON.parse(localStorage.getItem("cart"))
    const [listaCarrito , setListaCarrito] = useState([])

    const deleteItem = (item_id) => {
        console.log(listaCarrito)
        setListaCarrito(listaCarrito.filter(item => item.Producto_ID !== item_id))
    }

    useEffect(() => {
        setListaCarrito(carrito)
    }, [])


    const onCheckoutClick=()=>{
        localStorage.setItem("cart" , JSON.stringify(listaCarrito))
        navigate("/mockup-13")
    }

    return (
        <Container className="m7-main-container" >
            <Row className="title-row-m7">
                <Col>
                    <h3 className="m7-shopping-title">Shopping Cart Items</h3>
                </Col>
                <Col>
                    <Button className="shoppingButton" onClick={onCheckoutClick}> <AiOutlineShoppingCart color="white" size="md" className="icon-m7" /> Checkout</Button>
                </Col>
            </Row>
            <Row>
                {listaCarrito.map((item)=>{
                    return <Row className="shopping-cart-results" key={item.Producto_ID}>
                    <Col><img className="shopping-cart-items-image" src={item.Url} alt="25x25" /></Col>
                    <Col><h3 className="shopping-cart-text" style={{color:"black"}}> {item.Nombre} </h3></Col>
                    <Col><h3 className="shopping-cart-text" style={{color:"black"}}>${item.Precio}</h3></Col>
                    <Col><BsTrash onClick={()=> deleteItem(item.Producto_ID)} className="trash-icon-m7" color="black" size="50"/></Col>
                </Row>
                })}

            </Row>

        </Container>
    );
}

export default Mockup8;