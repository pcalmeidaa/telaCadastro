import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Take Care',
      home: telaCadastro(),
    ),
  );
}

class telaCadastro extends StatefulWidget {
  const telaCadastro({super.key});

  @override
  State<telaCadastro> createState() => _telaCadastroState();
}

class _telaCadastroState extends State<telaCadastro> {
  //ATRIBUTOS

  var mask = MaskTextInputFormatter(mask: '(##) # ####-####');
  final ButtonStyle style =
      ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));

  //METODOS

  Widget fieldName() {
    return TextFormField(
      decoration:
          InputDecoration(border: OutlineInputBorder(), labelText: 'Nome:'),
    );
  }

  Widget fieldDtNascimento() {
    return TextFormField(
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Data Nascimento:',
          hintText: 'DD/MM/YYYY'),
    );
  }

  Widget fieldSexo() {
    return TextFormField(
      decoration:
          InputDecoration(border: OutlineInputBorder(), labelText: 'Sexo:'),
    );
  }

  Widget fieldPhone() {
    return TextFormField(
      inputFormatters: [mask],
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Telefone:',
          hintText: '(99) 9 9999-9999'),
    );
  }

  Widget fieldTipoCuidador() {
    return TextFormField(
      decoration: InputDecoration(
          border: OutlineInputBorder(), labelText: 'Tipo de Cuidador:'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Monte seu Perfil', style: TextStyle(color: Colors.black),),

        actions: [IconButton(icon: Icon(Icons.save), onPressed: null)],
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Form(
            child: Column(
              children: [
                fieldName(),
                SizedBox(
                  height: 20,
                ),
                fieldDtNascimento(),
                SizedBox(
                  height: 20,
                ),
                fieldSexo(),
                SizedBox(
                  height: 20,
                ),
                fieldPhone(),
                SizedBox(
                  height: 20,
                ),
                fieldTipoCuidador(),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 153,
                  height: 66,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Pronto',
                        style: TextStyle(fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff16ABFF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
