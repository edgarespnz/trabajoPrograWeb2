import React, { useEffect, useState } from "react";
import { Container, Form, InputGroup, Figure} from "react-bootstrap";
import "../Header/Searchbar-stylesheet.css"
import { TfiClose } from "react-icons/tfi"
import { RUTA_BACKEND } from "../conf";
import Autocomplete from "react-autocomplete";


function SearchBar() {

    const [data, setData] = useState([]);
    const [value, setValue] = useState("")
    

    const httpObtenerProductos = async () => {
        const resp = await fetch(`${RUTA_BACKEND}/productos`)
        const data = await resp.json()
        setData(data)
    }

    useEffect(() => {
        httpObtenerProductos()
    }, [])

    const handleFilter=(event)=>{
        const searchWord = event.target.value;
        const newFilter = data.filter((value)=>{
            return value.Nombre.toLowerCase().includes(searchWord.toLowerCase());
        });
        setValue(searchWord)
        setData(newFilter)
    }

    return (
        <Container>
            <Autocomplete
                getItemValue={(item) => item.Producto_ID}
                items={data}
                renderItem={(item, isHighlighted) =>
                    <div style={{ background: isHighlighted ? 'lightgray' : 'white' }}>
                        <Figure className="search-result-row">
                            <Figure.Image
                                width={50}
                                height={50}
                                alt="50x50"
                                src={item.url}
                            />
                            <Figure.Caption>
                                {item.Nombre}
                            </Figure.Caption>
                        </Figure>
                    </div>
                }
                value={value}
                onChange={handleFilter}
            />
        </Container>

    );
}

export default SearchBar