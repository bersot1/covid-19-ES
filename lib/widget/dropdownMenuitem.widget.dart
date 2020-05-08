import 'package:covid_19_es/bloc/data.covid.bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class DropdownMenuItemWidget extends StatefulWidget {
  @override
  _DropdownMenuItemWidgetState createState() => _DropdownMenuItemWidgetState();
}

class _DropdownMenuItemWidgetState extends State<DropdownMenuItemWidget> {
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
              value: bloc.citySelected,
              items: [
                'Afonso Cláudio',
                'Água Doce do Norte',
                'Águia Branca',
                'Alegre',
                'Alfredo Chaves',
                'Alto Rio Novo',
                'Anchieta',
                'Apiacá',
                'Aracruz',
                'Atílio Vivácqua',
                'Baixo Guandu',
                'Barra de São Francisco',
                'Boa Esperança',
                'Bom Jesus do Norte',
                'Brejetuba',
                'Cachoeiro de Itapemirim',
                'Cariacica',
                'Castelo',
                'Colatina',
                'Conceição da Barra',
                'Conceição do Castelo',
                'Divino de São Lourenço',
                'Domingos Martins',
                'Dores do Rio Preto',
                'Ecoporanga',
                'Fundão',
                'Governador Lindenberg',
                'Guaçuí',
                'Guarapari',
                'Ibatiba',
                'Ibiraçu',
                'Ibitirama',
                'Iconha',
                'Irupi',
                'Itaguaçu',
                'Itapemirim',
                'Itarana',
                'Iúna',
                'Jaguaré',
                'Jerônimo Monteiro',
                'João Neiva',
                'Laranja da Terra',
                'Linhares',
                'Mantenópolis',
                'Marataízes',
                'Marechal Floriano',
                'Marilândia',
                'Mimoso do Sul',
                'Montanha',
                'Mucurici',
                'Muniz Freire',
                'Muqui',
                'Nova Venécia',
                'Pancas',
                'Pedro Canário',
                'Pinheiros',
                'Piúma',
                'Ponto Belo',
                'Presidente Kennedy',
                'Rio Bananal',
                'Rio Novo do Sul',
                'Santa Leopoldina',
                'Santa Maria de Jetibá',
                'Santa Teresa',
                'São Domingos do Norte',
                'São Gabriel da Palha',
                'São José do Calçado',
                'São Mateus',
                'São Roque do Canaã',
                'Serra',
                'Sooretama',
                'Vargem Alta',
                'Venda Nova do Imigrante',
                'Viana',
                'Vila Pavão',
                'Vila Valério',
                'Vila Velha',
                'Vitória'
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
