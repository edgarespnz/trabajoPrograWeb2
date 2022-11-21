import React, { useCallback } from "react";
import { Container,Row,Col,Button} from "react-bootstrap";
import { AiOutlineShoppingCart } from "@react-icons/all-files/ai/AiOutlineShoppingCart";
import { BsTrash } from "react-icons/bs";
import "../stylesheets/Mockup8-stylesheet.css"
import data from "../test_data.json"
import { useState } from "react";
import { useEffect } from "react";

function Mockup8(){

    
    const [listItems , setListItems] = useState(data);

    const deleteItem =(item_id) =>{
        setListItems(listItems.filter(listItems => listItems.id !== item_id))
        
    }


    return(
        <Container className="m7-main-container" >
            <Row className="title-row-m7">
                <Col>
                <h3 className="m7-shopping-title">Shopping Cart Items</h3>
                </Col>
                <Col>
                <Button className="shoppingButton"> <AiOutlineShoppingCart color="white" size="md" className="icon-m7"/> Checkout</Button>
                </Col>
                
            </Row>
            <Row>
                
                {listItems.map((Data)=>{
                    return (
                    <Row className="shopping-cart-results" key={Data.id}>
                        <Col><img className= "shopping-cart-items-image" src={Data.image} alt="25x25" /></Col>
                        <Col><h3 className="shopping-cart-text"> {Data.name} </h3></Col>
                        <Col><h3 className="shopping-cart-text">${Data.price}</h3></Col>
                        <Col><BsTrash onClick={()=> deleteItem(Data.id)} className="trash-icon-m7" color="black" size="50"/></Col>
                    </Row> );
                    
                })}
                
            </Row>

        </Container>
    );
}

export default Mockup8;