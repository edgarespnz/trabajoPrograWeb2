import React from "react";
import { Col, Container, ListGroup, Row, Button } from "react-bootstrap";
import "../stylesheets/Header-stylesheet.css"
import logo from "./Images/LOGO.png"
import { BsSearch } from "react-icons/bs"
import { AiOutlineUser, AiOutlineShoppingCart } from "react-icons/ai"
import { Navigate } from "react-router";
import {useState} from "react";
import SearchBar from "./SearchBar";

function Header() {
    
    const [searchButtonState, setSearchButtonState] = useState(false)

    const onClickSearchButton = () =>{
        setSearchButtonState(true);
    }

    return (
        <Container className="container-header">
            <Row className="header-row">
                <Col className="column-left-header">
                    <img className="header-logo" src={logo} alt="logo-image"/>
                </Col>

                <Col className="column-center-header">
                    <ListGroup horizontal>
                            <Button className="header-buttons">Home</Button>
                        
                            <Button className="header-buttons">About</Button>
                
                            <Button className="header-buttons">Support</Button>
                        
                            <Button className="header-buttons">Review</Button>
                       
                            <Button className="header-buttons"> Rankings</Button>
                     
                    </ListGroup>
                </Col>


                <Col className="column-right-header">
                    {searchButtonState === false ? <BsSearch className="icon-right" color="white" onClick={onClickSearchButton}/> : <SearchBar />}
                    <AiOutlineUser className="icon-right" color="white"/>
                    <AiOutlineShoppingCart className="icon-right" color="white"/>
                </Col>
            </Row>

        </Container>
    );
}


export default Header;