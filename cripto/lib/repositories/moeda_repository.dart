import '../model/moedaCripto.dart';

class MoedasRepository {
  static List<MoedaCripto> tabela = [
    MoedaCripto(
      icone: "cripto\images\png-transparent-ethereum-eth-hd-logo-thumbnail.png",
      nome: "Ethereum",
      preco: 9855.99,
      sigla: "ETC",
    ),
    MoedaCripto(
      icone: "cripto\images\png-transparent-bitcoin-btc-coin-cryptocurrency-currency-and-cryptocurrency-signs-free-icon.png",
      nome: "Bitcoin",
      preco: 1644603.00,
      sigla: "BTC",
    ),
    MoedaCripto(
      icone: "cripto\images\cardano-ada-logo-4B6BADDB43-seeklogo.com.png",
      nome: "Cardano",
      preco: 113.00,
      sigla: "ADA",
    ),
    MoedaCripto(
      icone: "cripto\images\coin-flat-design-icon-png-favpng-XVc7Ban0jqBjkcStJfNJGbr9j.jpg",
      nome: "USD Coin",
      preco: 53.00,
      sigla: "USDC",
    ),
    MoedaCripto(
      icone: "cripto\images\127-1279698_ripple-coin-xrp-png-transparent-png.png",
      nome: "XRP",
      preco: 123.00,
      sigla: "XRP",
    ),
    MoedaCripto(
      icone: "cripto\images\Litecoin-Crypto-Logo-PNG.png",
      nome: "Litecoin",
      preco: 678.00,
      sigla: "LTC",
    ),
  ];
}
