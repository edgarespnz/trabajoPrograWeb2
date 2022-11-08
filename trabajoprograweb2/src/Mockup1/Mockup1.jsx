import React, {useState} from "react";
import "../stylesheets/Mockup1-stylesheet.css"
import { useNavigate } from "react-router-dom"


function Mockup1(){

    const [firstname, setFirstName] = useState("")
    const [lastname, setLastName] = useState("")
    const [email, setEmail] = useState("")
    const [password, setPassword] = useState("")

    const navigate = useNavigate();

    //Acceder a la pagina login
    const createOnClick = () => {
        if (firstname !== "" && lastname !== "" && email !== "" && password !== "") {
            navigate("/mockup-2")
        }
    }

    return (
        <div className="main-container-mockup-1">
            <div className="container-mockup-1">
                <div className="container" id = "contenedorLogin"/>
                    <h2 id="textregis">
                        REGISTER
                    </h2>
                    
 
                    <div className="form-group">
                        <label for="Name"></label>
                            <input type="name" className="form-control" id="firstName"  placeholder="First Name"
                            value={firstname}
                            onChange={(evt)=>setFirstName(evt.target.value)}/>
                            
            
                    </div>
                    <div className="form-group">
                        <label for="NameSec"></label>
                            <input type="lastname" className="form-control" id="lastName"  placeholder="Last Name"
                            value={lastname}
                            onChange={(evt)=>setLastName(evt.target.value)}/>
                            
            
                    </div>
                    <div className="form-group">
                        <label for="correo"></label>
                            <input type="email" className="form-control" id="email"  placeholder="Email"
                            value={email}
                            onChange={(evt)=>setEmail(evt.target.value)}/>
                            
            
                    </div>
                    <div className="form-group">
                        <label for="pass"></label>
                            <input type="password" className="form-control" id="passw"  placeholder="Password"
                            value={password}
                            onChange={(evt)=>setPassword(evt.target.value)}/>
            
          
                    </div>
                        <button type="button" className="btn btn-primary btn-lg btn-block"
                        onClick={createOnClick}>
                            CREATE
                        </button>



            </div>
        </div>
    
    );
}
export default Mockup1;