import React, { useState }  from "react";
import { useNavigate } from "react-router-dom";
import "../stylesheets/Mockup2-stylesheet.css"


function Mockup2 (){
    
    const [email, setEmail]=useState("")
    const [password, setPassword]=useState("")

    const navigate=useNavigate();

    const signUpOnClick=()=>{
        navigate("/mockup-1")
    }
    
    const loginOnclick=()=>{
        if(email !=="" && password !==""){
            navigate("/mockup-3")
        }
    }


    return (
        <div className="main-container-mockup-2">
            <div className="container-mockup-2">
                <div className="container" id = "contenedorLogin"/>
                    <h2 id="textlog">
                        LOG IN
                    </h2>
                    <p id="texto1">Log in with your details below to view your order</p>
 
                    <div className="form-group">
            
                    <label for="correo"></label>
                        <input type="text" className="form-control"  placeholder="Email"
                        value={email}
                        onChange={(evt)=>setEmail(evt.target.value)}/>
            
                </div>
                <div className="form-group">
                    <label for="pass"></label>
                        <input type="password" className="form-control" placeholder="Password"
                        value={password}
                        onChange={(evt)=>setPassword(evt.target.value)}/>
            
          
                </div>
                <button type="button" className="btn btn-primary btn-lg btn-block"
                    onClick={loginOnclick}>LOGIN
                </button>
                <p id="texto2">forgot your password?</p>
                <br/>
                <br/>
                <br/>            
                <p id="texto3">Dont have account?</p>
                <button type="button" className="btn btn-primary btn-lg btn-block" id="button2"
                onClick={signUpOnClick}>
                    SIGN UP
                </button>

            </div>
        </div>
    
    );
}
export default Mockup2;