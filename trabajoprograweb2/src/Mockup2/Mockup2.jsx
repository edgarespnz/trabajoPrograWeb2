import React, { useState, useEffect } from "react";
import { Alert } from "react-bootstrap";
import { isElementOfType } from "react-dom/test-utils";
import { useNavigate } from "react-router-dom";
import { RUTA_BACKEND } from "../conf";
import Mockup3 from "../Mockup3/Mockup3";
import "../stylesheets/Mockup2-stylesheet.css"
import { BrowserRouter , Routes, Route} from "react-router-dom";


function Mockup2() {
    const [usuario, setUsuario] = useState([])

    const navigate = useNavigate();
    const [loginClick, setLoginClick] = useState(false)

    const [email, setEmail] = useState("")
    const [password, setPassword] = useState("")
    const [alertShow, setAlertShow] = useState(false);


    const httpUsers = async (correo) => {
        const resp = await fetch(`${RUTA_BACKEND}/usuarios?correo=${correo}`)
        const data = await resp.json()
        setUsuario(data)
    }

    const loginOnClick = () => {
        let correo = email
        httpUsers(correo)

        try {
            if (usuario !== undefined && (usuario[0].Correo == correo && password == usuario[0].Contraseña)) {
                navigate("/mockup-3", {
                    state : {email : email}
                })
            }
            else {
                setAlertShow(true)
            }    
        } catch (error) {
            setAlertShow(true)
        }
    }

    <div className="choco" style={"background-color=black"}></div>

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
                    onClick={loginOnClick}    >LOGIN
                </button>
                <p id="texto2">forgot your password?</p>
                <br />
                <br />
                <br />
                <p id="texto3">Dont have account?</p>
                <button type="button" className="btn btn-primary btn-lg btn-block" id="button2"
                onClick={()=>{navigate("/")}}>
                    SIGN UP
                </button>

            </div>
        </div>

    );
}
export default Mockup2;