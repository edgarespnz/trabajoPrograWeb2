import React, { useEffect, useState } from "react";
import { Container, Figure, Form, FormGroup, InputGroup } from "react-bootstrap";
import "../Header/Searchbar-stylesheet.css"
import { TfiClose } from "react-icons/tfi"
import { RUTA_BACKEND } from "../conf";

function SearchBar(props) {

    const [filteredData, setFilteredData] = useState([]);

    const [searchWord, setSearchWord] = useState("")

    const httpObtenerProductos = async () => {
        const resp = await fetch("http://localhost:8888/productos")
        const data = await resp.json()
        setFilteredData(data)
    }
    
    const handleFilter = (event) => {
        const searchWord = event.target.value;

        const newFilter = filteredData.filter((value) => {
            return value.Nombre.toLocaleLowerCase().includes(searchWord.toLocaleLowerCase());
        });


        searchWord === "" ? setFilteredData([]) : setFilteredData(newFilter)
        setSearchWord(searchWord)
    }

    useEffect(() => {
        httpObtenerProductos()
    },[])

    return (

        <Container className="searchContainer">
            <InputGroup className="searchInputGroup">

                <Form.Control className="searchInput" placeholder={props.placeholder} onChange={handleFilter} />
                <InputGroup.Text className="search-close-icon"><TfiClose color="white"  /></InputGroup.Text>
            </InputGroup>

            {filteredData.length != 0 && (<div className="dataResult">
                <h3 className="dataResult-title">Products</h3>
                {filteredData.slice(0,15).map((value, key) => {
                    return (
                        <Figure className="results-rows">
                            <Figure.Image
                                width={50}
                                height={50}
                                alt="50x50"
                                src={value.Imagen} />
                            <Figure.Caption className="item-name"> {value.Nombre}</Figure.Caption>
                        </Figure>
                    );
                })}
                <h3 className="dataResult-footer">{`Search for "${searchWord}"`}</h3>

            </div>)}
        </Container>
    );
}

export default SearchBar