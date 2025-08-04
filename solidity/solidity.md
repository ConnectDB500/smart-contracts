Site para aprender sobre solidity:
Soliditylang - https://docs.soliditylang.org/en/v0.8.30/
Quicknode - https://www.quicknode.com/guides/welcome
Chainlink Tutorials - https://chain.link/tutorials


Cursos:
https://updraft.cyfrin.io/courses


Estrutura basica do codigo Solidity:
// SPDX-License-Identifier: MIT      // Identificador de licença
pragma solidity ^0.8.0;              // Versão do compilador

contract NomeDoContrato {
    // Variáveis de estado

    // Construtor
    constructor() {
        // Código de inicialização
    }

    // Funções
}


Contrato de token ESC-20:
 Methods
function name() public view returns (string memory);                // Nome do token

function symbol() public view returns (string memory);              // Símbolo (ex: "ETH")

function decimals() public view returns (uint8);                    // Casas decimais

function totalSupply() public view returns (uint256);               // Oferta total

function balanceOf(address owner) public view returns (uint256);    // Saldo de um endereço

function transfer(address to, uint256 value) public returns (bool); // Transferência direta

function transferFrom(address from, address to, uint256 value) public returns (bool); // Transferência com autorização

function approve(address spender, uint256 value) public returns (bool); // Aprova alguém para gastar tokens

function allowance(address owner, address spender) public view returns (uint256); // Quantidade aprovada


 Events
event Transfer(address indexed from, address indexed to, uint256 value);   // Evento de transferência

event Approval(address indexed owner, address indexed spender, uint256 value); // Evento de aprovação


Use a biblioteca OpenZeppelin, que fornece contratos prontos, auditados e seguros, como ERC20.sol.
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";


Padrao de token:                                                      
- ERC-20     Token fungível (criptomoedas como DAI, USDC, etc.)
- ERC-721    Token não fungível (NFTs únicos)
- ERC-777    Evolução do ERC-20 com hooks (mais flexível)
- ERC-1155   Multi-token padrão (fungíveis e não fungíveis no mesmo contrato)
- ERC-4526   Padrão de cofre (vault), usado para protocolos DeFi


public — visível por qualquer um
private — visível apenas dentro do contrato
internal — visível dentro do contrato e de contratos filhos
external — visível por contratos externos (menos usado em ERC-20)
view — função que lê dados, mas não altera o estado
pure — função que nem lê nem altera o estado
payable — função que pode receber Ether


Sites para obter faucets:
Alchemy Goerli Faucet - https://www.alchemy.com/faucets/ethereum-sepolia
QuickNode Faucet - https://faucet.quicknode.com/ethereum/sepolia
Chainlink Faucet - https://faucets.chain.link/sepolia


Ferramentas WEB:
Truffle - Framework para desenvolver, testar e fazer deploy de contratos:
Truffle Suite é uma coleção de ferramentas para desenvolvimento Web3

Infura - Serviço que fornece infraestrutura para acessar blockchains sem precisar rodar um nó completo:
Infura fornece RPC URLs para se conectar à Sepolia (ou qualquer rede Ethereum) sem rodar um nó completo.

Sepolia - Testnet oficial da Ethereum: 
Serve para testar contratos em uma rede distribuída real e quando você quer testar seu DApp de forma 
mais realista

Ganache - Blockchain local para testes:
Ganache é útil para testar localmente sem depender de Sepolia ou Infura.

 Como tudo se conecta:
- Você escreve seus contratos em Solidity usando Truffle.
- Durante o desenvolvimento, você testa tudo localmente com Ganache.
- Quando estiver pronto para um teste mais real:
Você configura o Truffle para fazer deploy na Sepolia. Para isso, você usa uma RPC da Infura no truffle-config.js.

Trecho do truffle-config.js com Sepolia + Infura:
sepolia: {
  provider: () => new HDWalletProvider(process.env.PRIVATE_KEY, "https://sepolia.infura.io/v3/SEU_PROJECT_ID"),
  network_id: 11155111,
  confirmations: 2,
  timeoutBlocks: 200,
  skipDryRun: true
}
