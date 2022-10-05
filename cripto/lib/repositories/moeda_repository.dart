import '../model/moedaCripto.dart';

class MoedasRepository {
  static List<MoedaCripto> tabela = [
    MoedaCripto(
      icone: "images/ethereum.png" ,
      nome: "Ethereum",
      preco: 9855.99,
      sigla: "ETC",
    ),
    MoedaCripto(
      icone: "images/bitcoin.png",
      nome: "Bitcoin",
      preco: 1644603.00,
      sigla: "BTC",
    ),
    MoedaCripto(
      icone: "images/cardano.png",
      nome: "Cardano",
      preco: 113.00,
      sigla: "ADA",
    ),
    MoedaCripto(
      icone: "images/usdcoin.png",
      nome: "USD Coin",
      preco: 53.00,
      sigla: "USDC",
    ),
    MoedaCripto(
      icone: "images/xrp.png",
      nome: "XRP",
      preco: 123.00,
      sigla: "XRP",
    ),
    MoedaCripto(
      icone: "images/litecoin.png",
      nome: "Litecoin",
      preco: 678.00,
      sigla: "LTC",
    ),
  ];
}
