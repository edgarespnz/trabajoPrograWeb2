import React from "react";
import { Col, Row, Container, Button, Alert } from "react-bootstrap";
import "../stylesheets/Mockup7-stylesheet.css"
import { Figure } from "react-bootstrap";
import { useState, useEffect } from "react";
import { RUTA_BACKEND } from "../conf";
import { json } from "react-router";

function Mockup7() {

    const idProductoBuscado = localStorage.getItem("idProductoBuscado")
    const [item, setItem] = useState([]);
    const [addState , setAddState] = useState(false)
    const [cart , setCart] = useState([]);

    const [itemUrl , setItemUrl] = useState("")
    const [itemNombre , setItemNombre] = useState("")
    const [itemPrecio , setItemPrecio] = useState("")
    const [itemManufacturer, setItemManufacturer] = useState("")
    const [itemGpu, setItemGpu] = useState("")
    const [itemCoreClock, setItemCoreClock] = useState("")
    const [itemBoostClock, setItemBoostClock] = useState("")
    const [itemCudaCores, setItemCudaCores] = useState("")

    const httpObtenerProducto = async (idProductoBuscado) => {
        const resp = await fetch(`${RUTA_BACKEND}/obtener_producto`, {
            method: 'POST',
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                idProductoBuscado: idProductoBuscado
            })
        })
        const data = await resp.json();
        setItem(data)
        setItemUrl(item.producto.Url)
        setItemNombre(item.producto.Nombre)
        setItemPrecio(item.producto.Precio)
    }

    useEffect(() => {
        httpObtenerProducto(idProductoBuscado);
    }, [item])

    useEffect(() => {
        localStorage.setItem("cart", JSON.stringify(cart))
    }, [cart])

    const onClickAddToCart=()=>{
        setCart(cart.concat(item.producto))
        localStorage.setItem("cart", JSON.stringify(cart))
        setAddState(true)
    }


    return (
        <Container>
            <Row className="m7-row1">
                <Col xs lg="2" className="m7-col left">
                    <Figure.Image className="item-image-m7"
                        width={250}
                        height={400}
                        alt="50x50"
                        src={itemUrl} />
                    <Button onClick={onClickAddToCart}>Add to the cart</Button>
                    <Alert show = {addState} variant="success" onClose={()=>{setAddState(false)}} dismissible>
                        <Alert.Heading>Item añadido</Alert.Heading>
                    </Alert>
                </Col>
                <Col sm="auto" className="m7-col middle">

                </Col>
                <Col xs lg="2" className="m7-col right">
                    <h1 className="m7-list-item-title">{itemNombre}</h1>
                    <h2 className="m7-list-item-price">${itemPrecio}</h2>
                    <h3 className="m7-list-item-shippingText"><a href="">Shipping</a> calculated at checkout</h3>
                    <Row className="m7-row1">
                        <Col className="m7-col1" id="details">
                            <h3>Manufacturer</h3>
                        </Col>
                        <Col className="m7-col2" id="details">
                            {itemManufacturer}
                        </Col>
                    </Row>
                    <Row className="m7-row2">
                        <Col className="m7-col2" id="details">
                            <h3>GPU</h3>
                        </Col>
                        <Col className="m7-col2" id="details">
                            {itemGpu}
                        </Col>
                    </Row>
                    <Row className="m7-row3">
                        <Col className="m7-col3" id="details">
                            <h3>CORE CLOCK</h3>
                        </Col>
                        <Col className="m7-col3" id="details">
                            {itemCoreClock}
                        </Col>
                    </Row>
                    <Row className="m7-row3">
                        <Col className="m7-col4" id="details">
                            <h3>BOOST CLOCK</h3>
                        </Col>
                        <Col className="m7-col4" id="details">
                            {itemBoostClock}
                        </Col>
                    </Row>
                    <Row className="m7-row3">
                        <Col className="m7-col5" id="details">
                            <h3>CUDA CORES</h3>
                        </Col>
                        <Col className="m7-col5" id="details">
                            {itemCudaCores}
                        </Col>
                    </Row>
                </Col>
            </Row>
        </Container>
    );
}

export default Mockup7;