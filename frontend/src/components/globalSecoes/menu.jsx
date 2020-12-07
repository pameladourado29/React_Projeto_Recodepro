import React from 'react';
// import logotipo from '../../logotipopam1.jpeg';
import img_logo from '../../image/logotipopam1.jpeg';
import '../../global.css';



const Menu = () => {
    return (
    
    <>
 <nav className="nav nav-tabs ">
      <li className="nav-item "   >
          <a className="nav-link active" href="./index.php"><img className="img_logo" src={img_logo} alt="logotipo"></img></a>
      </li>
      <li className="nav-item  ">
          <a className="nav-link active " href="./produtos.php"><button type="button" className="btn btn-light text-danger">Nossos Produtos</button></a>
      </li>
      <div className="dropdown-divider "></div>
      <li className="nav-item  ">
          <a className="nav-link active " href="./pedidos.php"><button type="button" className="btn btn-light text-danger">Pedidos</button></a>
      </li>
      <div className="dropdown-divider "></div>
      <li className="nav-item ">
          <a className="nav-link active " href="./loja.php"><button type="button" className="btn btn-light text-danger">Nossas Lojas</button></a>
      </li>
      <div className="dropdown-divider "></div>
      <li className="nav-item dropdown ">
          <a className="nav-link dropdown-toggle bg-light text-danger" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">Contatos</a>
          <div class="dropdown-menu">
              <a className="dropdown-item text-danger my-4" href="./contato.php">Contato Full Stack Eletro</a>
             
          </div>
       </li>  
   </nav>
   </>
   );
 
 }

 export default Menu;

