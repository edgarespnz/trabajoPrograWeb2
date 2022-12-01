import React, { useEffect, useState } from "react";
import { useNavigate } from "react-router";
import { Container, Row, Col, Button } from "react-bootstrap";
import { BsCart } from "react-icons/bs";
import { RUTA_BACKEND } from "../conf";
import { AiFillCheckCircle } from "react-icons/ai";
import "../stylesheets/Mockup12-stylesheet.css"

function Mockup12() {

    const navigate = useNavigate();
    const [productos, setProductos] = useState([]);
    const [categoria, setCategoria] = useState("");
    const [showIcon , setShowIcon] = useState("none")
    const [cart, setCart] = useState([]);
    const [precioTotal, setPrecioTotal] = useState(0)

    const httpProductos = async () => {
        const resp = await fetch(`${RUTA_BACKEND}/productos`)
        const data = await resp.json();
        setProductos(data)
    }

    useEffect(() => {
        httpProductos();
    }, [])

    useEffect(() => {
        localStorage.setItem("cart", JSON.stringify(cart))
    }, [cart])

    const onClickAddToCart = (producto_id) => {
        productos.map((item) => {
            if (item.Producto_ID == producto_id) {
                setCart(cart.concat(item))
                localStorage.setItem("cart", JSON.stringify(cart))
            }
        })
        console.log(cart)
    }

    const setTotalPrice = (cart)=>{
        let precioTotal = 0;
        cart.map((item)=>{
            precioTotal = precioTotal + parseInt(item.Precio)
        })
        setPrecioTotal(precioTotal)
        console.log(precioTotal)
    }

    useEffect(() => {
        setTotalPrice(cart);
    }, [cart])

    return (
        <Container className="container-m12">
            <Row><h1 style={{ color: "white" }}>Build your Own Pc!</h1></Row>
            <Row>
                <Col sm={8}>

                </Col>
                <Col sm={4}>
                    <Button className="groupbuttonsm11"> {"<Back"} </Button>
                    <Button className="groupbuttonsm11" onClick={()=>{navigate("/mockup-13")}}> <BsCart /> Checkout </Button>
                </Col>
            </Row>

            <Row className="itemsContainer-m12">
                <Col>
                    <img style={{ width: "250px", height: "300px" }} src="https://falabella.scene7.com/is/image/FalabellaPE/18221422_1?wid=800&hei=800&qlt=70" alt="250x250" />
                    <div className="priceContainer" >
                        <h3>Components Price</h3>
                        <h4>${precioTotal}</h4>
                        <h3>Build Fee</h3>
                        <h4>$99</h4>
                    </div>
                </Col>

                <Col className="buttonsGruopm12">
                    <Button onClick={() => { setCategoria("Graphics") }}>Graphics</Button>
                    <Button onClick={() => { setCategoria("Processor") }}>Processor</Button>
                    <Button onClick={() => { setCategoria("Memory") }}>Memory</Button>
                    <Button onClick={() => { setCategoria("Storage") }}>Storage</Button>
                    <Button onClick={() => { setCategoria("Cooler") }}>Cooler</Button>
                    <Button onClick={() => { setCategoria("Windows") }}>Windows</Button>
                    <Button onClick={() => { setCategoria("Power supply") }}>Power Supply</Button>
                    {productos.map((item) => {
                        if (item.Categoria == categoria) {
                            return (
                                <Row className="shopping-cart-results-m7" key={item.Producto_ID}>
                                    <Col><img className="shopping-cart-items-image-m7" src={item.Url} alt="25x25" /></Col>
                                    <Col className="containertextom7"><h3 className="shopping-cart-text-m7"> {item.Nombre} </h3></Col>
                                    <Col><h3 className="shopping-cart-text-m7">${item.Precio}</h3></Col>
                                    <Col onClick={() => { onClickAddToCart(item.Producto_ID)}} className="selectedIconm7" style={{ backgroundColor: "purple", cursor: "pointer" }}> <AiFillCheckCircle display={showIcon}/> </Col>
                                </Row>
                            );
                        }
                    })}

                </Col>
                <Col style={{marginLeft: "5%"}}>
                    <h1 style={{color : "white" , fontSize :"small"}}>ITEMS AÑADIDOS</h1>
                    {cart.map((item) => {
                            return (
                                <Row className="shopping-cart-results-m7" key={item.Producto_ID} style={{display:"flex" , alignItems : "center" , justifyContent: "center"}}>
                                    <Col><img className="shopping-cart-items-image-m7" src={item.Url} alt="25x25" /></Col>
                                    <Col className="containertextom7"><h3 className="shopping-cart-text-m7"> {item.Nombre} </h3></Col>
                                    <Col><h3 className="shopping-cart-text-m7">${item.Precio}</h3></Col>
                               </Row>
                            );
                        }
                    )}

                </Col>

            </Row>
        </Container>
    );
}

export default Mockup12;