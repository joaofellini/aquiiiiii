import 'package:flutter/material.dart';

void main() {
  runApp(MyPortfolio());
}

class MyPortfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('João Pedro Fellini Cavenaghi - Portfólio'),
        ),
        body: PortfolioPage(),
      ),
    );
  }
}

class PortfolioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Imagem no topo
        Image.asset(
          'foto.jpg',
          width: 150, // Ajuste o tamanho conforme necessário
          height: 150,
        ),

        // Nome
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'João Pedro',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        // Botões com links
        ElevatedButton(
          onPressed: () {
            // Adicione a lógica para abrir o link do WhatsApp
            _launchURL('LINK_DO_WHATSAPP_AQUI');
          },
          child: Text('WhatsApp'),
        ),
        ElevatedButton(
          onPressed: () {
            // Adicione a lógica para abrir o link do Instagram
            _launchURL('LINK_DO_INSTAGRAM_AQUI');
          },
          child: Text('Instagram'),
        ),
        ElevatedButton(
          onPressed: () {
            // Adicione a lógica para abrir o link do LinkedIn
            _launchURL('LINK_DO_LINKEDIN_AQUI');
          },
          child: Text('LinkedIn'),
        ),
      ],
    );
  }

  // Função para abrir os links
  void _launchURL(String url) async {
    // Adicione a lógica para abrir o link aqui
  }
}
