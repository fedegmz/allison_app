import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Logo en la parte superior
          Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.grey[800],
            child: Center(
              child: Image.asset(
                'assets/images/logo_allison.png', // Cambia 'logo.png' por el nombre correcto de tu imagen
                height: 100, // Ajusta el tamaño según sea necesario
              ),
            ),
          ),
          // Botones debajo del logo
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                    text: 'Agregar Productos',
                    onPressed: () {
                      // Acción al presionar el botón
                    },
                  ),
                  SizedBox(height: 20),
                  CustomButton(
                    text: 'Escanear Productos',
                    onPressed: () {
                      // Acción al presionar el botón
                    },
                  ),
                  SizedBox(height: 20),
                  CustomButton(
                    text: 'Deudores',
                    onPressed: () {
                      // Acción al presionar el botón
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const CustomButton({
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.red[700], // Color del botón
          padding: EdgeInsets.symmetric(vertical: 15.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: 18.0),
        ),
      ),
    );
  }
}
