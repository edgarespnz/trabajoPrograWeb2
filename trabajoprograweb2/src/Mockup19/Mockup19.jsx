import React, { useEffect, useState } from "react";
import { Alert, Form } from "react-bootstrap";
import { RUTA_BACKEND } from "../conf";
// import { BsCart } from "react-icons/bs";
import "../stylesheets/Mockup19-stylesheet.css"

function Mockup19() {

    const [usuario, setUsuario] = useState(JSON.parse(localStorage.getItem("USUARIO")))

    const [correo, setCorreo] = useState("");
    const [descripcion, setDescripcion] = useState("");
    const [usuarioId, setUsuarioId] = useState("");
    const [nombre, setNombre] = useState("");
    const [telefono, setTelefono] = useState("");
    const [asunto, setAsunto] = useState("");

    const [alert, setAlert] = useState(false);

    const createReporte = async (correo, descripcion, usuarioId, nombre, telefono, asunto) => {
        const resp = await fetch(`${RUTA_BACKEND}/reporte`, {
            method: 'POST',
            headers: {
                'Accept': 'application/json',
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                correo: correo,
                descripcion: descripcion,
                userid: usuarioId,
                nombre: nombre,
                telefono: telefono,
                asunto: asunto,
            })
        })

        const data = await resp.json()
    }


    useEffect(() => {
        setUsuarioId(usuario.Usuario_ID)
    }, [usuario])



    return (
        <div className="m19-div1" style={{ marginBottom: "5%" }}>
            <h2 className="m19-encabezado">Submit a request</h2>
            <Alert show={alert} variant="success" dismissible onClose={()=>{setAlert(false)}}>
                <Alert.Heading> Se subió correctamente el reporte !</Alert.Heading>
            </Alert>
            <form className="m19-form">
                <div className="m19-div-forms">
                    <Form.Label className="m19-label">Email</Form.Label>
                    <Form.Control className="m19-text" type="email" onChange={(evt) => { setCorreo(evt.target.value) }} />
                </div>
                <div className="m19-div-forms">
                    <Form.Label className="m19-label">Name</Form.Label>
                    <Form.Control className="m19-text" type="text" onChange={(evt) => { setNombre(evt.target.value) }} />
                </div>
                <div className="m19-div-forms">
                    <Form.Label className="m19-label">Phone</Form.Label>
                    <Form.Control className="m19-text" type="text" onChange={(evt) => { setTelefono(evt.target.value) }} />
                </div>
                <div className="m19-div-forms">
                    <Form.Label className="m19-label">Subject</Form.Label>
                    <Form.Control className="m19-text" type="text" onChange={(evt) => { setAsunto(evt.target.value) }} />
                </div>
                <div className="m19-div-forms">
                    <Form.Label className="m19-label">Description</Form.Label>
                    <Form.Control className="m19-textarea" as="textarea" rows={5} onChange={(evt) => { setDescripcion(evt.target.value) }} />
                </div>
                <input className="m19-submit" type="submit" value="Submit" onClick={() => {

                    createReporte(correo, descripcion, usuarioId, nombre, telefono, asunto)
                    setAlert(true)
                }} />
            </form>

        </div>
    );
}

export default Mockup19;