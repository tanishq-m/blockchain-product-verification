//

require('@nomiclabs/hardhat-waffle');

module.exports = {
   solidity :  '0.8.0',
   networks : {
     ropsten: {
       url: 'https://eth-ropsten.alchemyapi.io/v2/9Ca83yNGRfLXocWYeUI5YhPUxG0minlA' ,
       accounts: ['7b3653c509decb2dac9e29934293ca76a38bf1becfecbbd0dfd52c6b7ad1f022']
     }
   } 
}