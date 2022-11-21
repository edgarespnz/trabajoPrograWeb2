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
import Header from './Header/Header';
import Footer from './Footer/Footer';

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(

  <React.StrictMode>
    <Header/>
    <BrowserRouter>
    <Routes>
      <Route>
      <Route path='/' element={<Mockup1/>} />
      <Route path='/mockup-2' element={<Mockup2/>}/>
      <Route path='/mockup-3' element={<Mockup3/>}/>
      <Route path='/mockup-4' element={<Mockup4/>}/>
      <Route path='/mockup-5' element={<Mockup5/>}/>
      <Route path='/mockup-6' element={<Mockup6/>}/>
      <Route path='/mockup-7' element={<Mockup7/>}/>
      <Route path='/mockup-8' element={<Mockup8/>}/>
      </Route>
    </Routes>
    
  </BrowserRouter>
  </React.StrictMode>
);


