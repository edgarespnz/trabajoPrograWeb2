import React from 'react';
import ReactDOM from 'react-dom/client';
import 'bootstrap/dist/css/bootstrap.min.css';

import { BrowserRouter,Route,Routes } from 'react-router-dom';

import Mockup1 from './Mockup1/Mockup1';
import Mockup2 from './Mockup2/Mockup2';
import Mockup3 from './Mockup3/Mockup3';
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
      </Route>
    </Routes>
    <Footer/>
  </BrowserRouter>
  </React.StrictMode>
);


