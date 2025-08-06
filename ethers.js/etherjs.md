Sites:
https://docs.ethers.org/v5/
https://www.npmjs.com/package/ethers

    Provider
  https://docs.ethers.org/v5/api/providers/
Um provider e uma classe o qual prover uma abstracao para uma conexao com Ethereum Network. Os provedores fornecem acesso apenas de leitura para o Blockchain e seus dados.

  new ethers.providers.[configure_o_provedor_a_onectar]


    Signer
Um signer e uma classe que geralmente tem acesso a uma chave privada, que pode assinar mensagens e transações para autorizar a rede a cobrar de sua conta ether para realizar operacoes.

  const provider = new ether.providers.Web3Provider(window.ethereum);
  // como o signer voce esta habilitado a assinar e enviar transacoes
  const signer = provider.getSigner();


    Contract
Um contrato e uma abstracao que representa uma conexao com um contrato especifico na rede Ethereum, para que os aplicativos possam usa-lo como um objeto Javascript.

  new ether.Contract(tokenAddress, tokenAbi, provider);