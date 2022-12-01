import React, { useState, useEffect } from "react";
import { Alert } from "react-bootstrap";
import { isElementOfType } from "react-dom/test-utils";
import { useNavigate } from "react-router-dom";
import { RUTA_BACKEND } from "../conf";
import Mockup3 from "../Mockup3/Mockup3";
import "../stylesheets/Mockup2-stylesheet.css"
import { BrowserRouter, Routes, Route } from "react-router-dom";


function Mockup2() {
    const navigate = useNavigate();

    const [email, setEmail] = useState("")
    const [password, setPassword] = useState("")
    const [alertShow, setAlertShow] = useState(false);


    const httpLogin = async (email, password) => {
        const resp = await fetch(`${RUTA_BACKEND}/get_user`, {
            headers: {
                "Content-Type": "application/json"
            },
            method: "POST",
            body: JSON.stringify({
                email: email,
                password: password

            })
        })
        const data = await resp.json()
        console.log(data)
        //verificacion
        if (data.error === "") {
            localStorage.setItem("TOKEN" , data.TOKEN)
            localStorage.setItem("USUARIO" ,JSON.stringify(data.user))
            navigate("/mockup-3")
        }
        else {
            setAlertShow(true)
        }
    }

    return (
        <div className="main-container-mockup-2">
            <div className="container-mockup-2">
                <div className="container" id="contenedorLogin" />
                <Alert show={alertShow} variant="danger" onClose={() => setAlertShow(false)} dismissible>
                    <Alert.Heading>Oops! Error en el usuario o la contraseña</Alert.Heading>

                </Alert>
                <h2 id="textlog">
                    LOG IN
                </h2>
                <p id="texto1">Log in with your details below to view your order</p>

                <div className="form-group">

                    <label for="correo"></label>
                    <input type="text" className="form-control" placeholder="Email"
                        value={email}
                        onChange={(evt) => setEmail(evt.target.value)} />

                </div>
                <div className="form-group">
                    <label for="pass"></label>
                    <input type="password" className="form-control" placeholder="Password"
                        value={password}
                        onChange={(evt) => setPassword(evt.target.value)} />


                </div>
                <button type="button" className="btn btn-primary btn-lg btn-block"
                    onClick={() => { httpLogin(email, password) }}    >LOGIN
                </button>
                <p id="texto2">forgot your password?</p>
                <br />
                <br />
                <br />
                <p id="texto3">Dont have account?</p>
                <button type="button" className="btn btn-primary btn-lg btn-block" id="button2"
                    onClick={() => { navigate("/") }}>
                    SIGN UP
                </button>

            </div>
        </div>

    );
}
export default Mockup2;