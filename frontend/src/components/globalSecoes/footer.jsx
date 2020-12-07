import formasdepagamento from '../../image/formasdepagamento.jpeg';
import formas_pagamento from '../../image/logotipopam1.jpeg';
import '../../global.css';


const Footer = () => {
    return (
    <footer className="footer1" >
        <div className="container-flouid final-flouid " src={formas_pagamento}>
          <div id="rodape">
            <p id="formas_pagamento">Formas de pagamento</p>
            <img className="formas_pag w-50" src={formasdepagamento} alt="formasdepagamento"></img>
            <p>&copy;Recode Pro</p>
            </div>
        </div>
    </footer>
   )
 
 }

 export default Footer;
 