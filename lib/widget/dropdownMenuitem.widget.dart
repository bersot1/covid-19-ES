import 'package:covid_19_es/bloc/data.covid.bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class DropdownMenuItemWidget extends StatefulWidget {
  @override
  _DropdownMenuItemWidgetState createState() => _DropdownMenuItemWidgetState();
}

class _DropdownMenuItemWidgetState extends State<DropdownMenuItemWidget> {
  String cityChosen = "Vitoria";

  @override
  Widget build(BuildContext context) {
    final HomePageBloc bloc = Provider.of<HomePageBloc>(context);
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: Color(0xFFE5E5E5)),
      ),
      child: Row(
        children: <Widget>[
          SvgPicture.asset(
            "assets/icons/maps-and-flags.svg",
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: DropdownButton(
              isExpanded: true,
              underline: SizedBox(),
              icon: SvgPicture.asset("assets/icons/dropdown.svg"),
              value: cityChosen,
              items: [
                'Afonso Cláudio',
                'àgua Doce do Norte',
                'Águia Branca',
                'Alegre',
                'Alfredo Chaves',
                'Alto Rio Novo',
                'Anchieta',
                'Apiaca',
                'Aracruz',
                'Atilio Vivacqua',
                'Baixo Guandu',
                'Barra de Sao Francisco',
                'Boa Esperanca',
                'Bom Jesus do Norte',
                'Brejetuba',
                'Cachoeiro de Itapemirim',
                'Cariacica',
                'Castelo',
                'Colatina',
                'Conceicao da Barra',
                'Conceicao do Castelo',
                'Divino de Sao Lourenco',
                'Domingos Martins',
                'Dores do Rio Preto',
                'Ecoporanga',
                'Fundao',
                'Guacui',
                'Guarapari',
                'Ibatiba',
                'Ibiracu',
                'Ibitirama',
                'Iconha',
                'Irupi',
                'Itaguacu',
                'Itapemirim',
                'Itarana',
                'Iuna',
                'Jaguare',
                'Jeronimo Monteiro',
                'Joao Neiva',
                'Laranja da Terra',
                'Linhares',
                'Mantenopolis',
                'Marataizes',
                'Marechal Floriano',
                'Marilandia',
                'Mimoso do Sul',
                'Montanha',
                'Mucurici',
                'Muniz Freire',
                'Muqui',
                'Nova Venecia',
                'Pancas',
                'Pedro Canario',
                'Pinheiros',
                'Piuma',
                'Ponto Belo',
                'Presidente Kennedy',
                'Rio Bananal',
                'Rio Novo do Sul',
                'Santa Leopoldina',
                'Santa Maria de Jetiba',
                'Santa Teresa',
                'Sao Domingos do Norte',
                'Sao Gabriel da Palha',
                'Sao Jose do Calcado',
                'Sao Mateus',
                'Sao Roque do Canaa',
                'Serra',
                'Sooretama',
                'Vargem Alta',
                'Venda Nova do Imigrante',
                'Viana',
                'Vila Pavao',
                'Vila Valerio',
                'Vila Velha',
                'Vitoria',
              ].map<DropdownMenuItem<String>>(
                (String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                },
              ).toList(),
              onChanged: (value) {
                setState(() {
                  cityChosen = value;
                  bloc.changeCity(value);
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
