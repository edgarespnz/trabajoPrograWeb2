import React, { useEffect } from "react";
import { useState } from "react";
import { Container, Button, ButtonGroup, Row, Col } from "react-bootstrap";
import { BsCart } from "react-icons/bs";
import { RUTA_BACKEND } from "../conf";
import "../stylesheets/Mockup11-stylesheet.css"

function Mockup11() {

    let tipoPC = localStorage.getItem("tipo_pc")
    const [productos, setProductos] = useState([])


    const httpObtenerProductos = async () => {
        const resp = await fetch(`${RUTA_BACKEND}/obtener_productos_pc_armado?tipo=${tipoPC}`)
        const data = await resp.json()
        setProductos(data)
        console.log(tipoPC)
        console.log(productos)
    }

    
    useEffect(()=>{
        httpObtenerProductos()
    },[])


    return (
        <Container>
            <div className="div1-m11">
                <h1 >Your optimized Build!</h1>
                <Row>
                    <Col sm={8}>

                    </Col>
                    <Col sm={4}>
                        <Button className="groupbuttonsm11" > {"<Back"}</Button>
                        <Button className="groupbuttonsm11"> <BsCart /> Checkout </Button>
                    </Col>
                </Row>

                <Row className="pcInfo-components-m11">
                    <Col sm={4} id="col-left-m11">
                        <h1></h1>
                        <img src="https://falabella.scene7.com/is/image/FalabellaPE/18221422_1?wid=800&hei=800&qlt=70" alt="250x250" />
                        <div className="priceContainer">
                            <h3>Components Price</h3>
                            <h4>$1999</h4>

                            <h3>Build Fee</h3>
                            <h4></h4>
                        </div>

                    </Col>

                    <Col sm={8} id="col-right-m11">
                        <h1>Components</h1>

                        <div className="itemsResultsm7">
                        {productos.map((data)=>{
                            return <Row className="components-results-m11" >
                            <Col><img className="shopping-cart-items-image" src={data.producto.Url} alt="25x25" /></Col>
                            <Col><h3 className="shopping-cart-text">{data.producto.Nombre}</h3></Col>
                            <Col><h3 className="shopping-cart-text">${data.producto.Precio}</h3></Col>
                        </Row>
                        })}
                        </div>
                    </Col>
                    <Col>
                        Item
                    </Col>
                </Row>
            </div>

        </Container>
    );
}

export default Mockup11;