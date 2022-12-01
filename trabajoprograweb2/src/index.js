import React from 'react';
import ReactDOM from 'react-dom/client';
import 'bootstrap/dist/css/bootstrap.min.css';

import { BrowserRouter,Route,Routes } from 'react-router-dom';

import Mockup1 from './Mockup1/Mockup1';
import Mockup2 from './Mockup2/Mockup2';
import Mockup3 from './Mockup3/Mockup3';
import Mockup4 from './Mockup4/Mockup4';
import Mockup5 from './Mockup5/Mockup5';
import Mockup6 from './Mockup6/Mockup6';
import Mockup7 from './Mockup7/Mockup7';
import Mockup8 from './Mockup8/Mockup8';
import Mockup10 from './Mockup10/Mockup10';
import Mockup11 from './Mockup11/Mockup11';
import Mockup12 from './Mockup12/Mockup12';
import Mockup19 from './Mockup19/Mockup19';
import Mockup20 from './Mockup20/Mockup20';
import Mockup23 from './Mockup23/Mockup23';
import Header from './Header/Header';
import Footer from './Footer/Footer';

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(

  <React.StrictMode>
    <BrowserRouter>
    <Header/>
    <Routes>
      <Route>
      <Route path='/' element={<Mockup1/>} />
      <Route path='/login' element={<Mockup2/>}/>
      <Route path='/mockup-3' element={<Mockup3/>}/>
      <Route path='/mockup-7' element={<Mockup7/>}/>
      <Route path='/mockup-8' element={<Mockup8/>}/>
      <Route path='/mockup-10' element={<Mockup10/>}/>
      <Route path='/mockup-11' element={<Mockup11/>}/>
      <Route path='/mockup-12' element={<Mockup12/>}/>
      <Route path='/mockup-19' element={<Mockup19/>}/>
      <Route path='/mockup-20' element={<Mockup20/>}/>
      <Route path='/mockup-23' element={<Mockup23/>}/>
      </Route>
    </Routes>
    
  </BrowserRouter>
  </React.StrictMode>
);


