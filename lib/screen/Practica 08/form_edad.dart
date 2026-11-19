import 'package:flutter/material.dart';

class ScreenEdad extends StatefulWidget {
  const ScreenEdad({super.key});

  @override
  State<ScreenEdad> createState() => _ScreenFormularioState();
}

class _ScreenFormularioState extends State<ScreenEdad> {

  //Controladores de los campos
  final _formKey = GlobalKey<FormState>();
  final _edadController = TextEditingController();

  void registrar(){
     if (_formKey.currentState!.validate()) {
    // Aquí puedes realizar la acción de registro, como enviar los datos a un servidor
    String edad = _edadController.text;
    
    
    // Por ejemplo, mostrar un mensaje de éxito
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Registro exitoso: $edad')),
    );
  }
}

  @override
  void dispose(){
    _edadController.dispose();
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Formulario')),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                controller: _edadController,
                decoration: const InputDecoration(labelText: 'Ingrese su edad'),
                validator: (value) {
                  if (value == null || value.isEmpty  ) {
                    return 'Por favor ingresa su edad';
                  }
                  final edad = int.tryParse(value.trim());
                  if (edad == null){
                    return 'Ingrese un numero valido';
                  }

                  if (edad < 18){
                    return 'Debe ser mayor o igual a 18 años';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: registrar,
                child: const Text('Registrar'),
              ),
            ],
          ),
        )
      )
    );
  }
}
  