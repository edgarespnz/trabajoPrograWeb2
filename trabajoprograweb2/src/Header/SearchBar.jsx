import React, { useEffect, useState } from "react";
import { Container, Form, InputGroup, Figure, ListGroup, Badge } from "react-bootstrap";
import "../Header/Searchbar-stylesheet.css"
import { TfiClose } from "react-icons/tfi"
import { RUTA_BACKEND } from "../conf";
import Autocomplete from "react-autocomplete";
import Mockup7 from "../Mockup7/Mockup7";
import {Navigate, useNavigate } from "react-router-dom";


function SearchBar() {

    const navigate = useNavigate();
    const [data, setData] = useState([]);
    const [filter, setFilter] = useState([]);
    const [value, setValue] = useState("")
    const [selectedId, setSelectedId] = useState("")

    const httpObtenerProductos = async () => {
        const resp = await fetch(`${RUTA_BACKEND}/productos`)
        const data = await resp.json()
        setData(data)
    }

    useEffect(() => {
        httpObtenerProductos()
    }, [])

    const handleFilter = (event) => {
        const searchWord = event.target.value;
        const newFilter = data.filter((value) => {
            return value.Nombre.toLowerCase().includes(searchWord.toLowerCase());
        });
        setValue(searchWord)
        setFilter(newFilter)
    }

    const renderItem=(producto_id)=>{
       navigate("/mockup-7",{state: {id: producto_id}})
    }


    return (
        <Container>
            <Autocomplete
                getItemValue={(item) => item.Producto_ID}
                items={filter}
                renderItem={(item, isHighlighted) =>
                    <div style={{ background: isHighlighted ? 'lightgray' : 'white' }}>
                        <ListGroup as="ol">
                            <ListGroup.Item
                                as="li"
                                className="d-flex justify-content-between align-items-start"
                            >
                                <div className="ms-2 me-auto">
                                    <div className="fw-bold">{item.Nombre}</div>
                                    
                                </div>
                                <Badge bg="white" pill>
                                    <img className="item-image-search" src={item.Url} alt="25x25" />
                                </Badge>
                            </ListGroup.Item>
                        </ListGroup>
                    </div>
                }
                value={value}
                onChange={handleFilter}
                onSelect={(value, item) => renderItem(item.Producto_ID)}
                
            />
        </Container>

    );
}

export default SearchBar