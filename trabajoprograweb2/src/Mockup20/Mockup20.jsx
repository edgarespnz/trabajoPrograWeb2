import React, { useCallback } from "react";
import { Container, Row, Col } from "react-bootstrap";
import { AiFillStar } from "react-icons/ai";
import { FaStarHalfAlt } from "react-icons/fa";
import { AiOutlineStar } from "react-icons/ai";
import "../stylesheets/Mockup20-stylesheet.css"
import { useState } from "react";
import { useEffect } from "react";
import { RUTA_BACKEND } from "../conf";

function Mockup20() {

    const [listaResenas, setListaResenas] = useState([]);

    const httpObtenerResena = async () => {
        const resp = await fetch(`${RUTA_BACKEND}/resenas`)
        const data = await resp.json()
        setListaResenas(data)
    }

    useEffect(() => {
        httpObtenerResena()
    }, [])

    /*return (
        
       /*<Container className="m20-container">
            <h1 className="m20-encabezado">User Reviews</h1>
            <div className="m20-div1">
                <Row className="=m20-row1">
                <Col xs lg="1"id="m20-col1">Global rate</Col>
                <Col xs lg="5" id="m20-col-stars"><AiFillStar/><AiFillStar/><AiFillStar/><FaStarHalfAlt/><AiOutlineStar/></Col>
                </Row>
            </div>
            <hr size="2px" color="gray" width="98%"></hr>
            
            <Row>
                {listaResenas.map(item)=>{
                    
                }}
           
            </Row>
        </Container>
    );*/
}

export default Mockup20;