# Ejemplo Counter App usando el package provider junto con ChangeNotifier
Este es un simple ejemplo de como pasar a usar ChangeNotifier + provider en la aplicación counter de ejemplo en Flutter.

Pasos a seguir:

1- Convertimos el widget **MyHomePage** en **StatelessWidget**, sacandolo a un nuevo archivo en esta estructura de carpetas:

![image](https://user-images.githubusercontent.com/6271240/144838130-476e03f0-4246-49fd-95fd-7ae0a53578f9.png)

2- Creamos la clase **HomeModel** que extiende de **ChangeNotifier**, convirtiendose en nuestra clase de estado, mantenemos tanto la propiedad **_counter** como el método **incrementCounter()**, pero haciendo este último público; además, creamos un getter para obtener el valor de **_counter**.

![image](https://user-images.githubusercontent.com/6271240/144838346-f6cd9aab-05f2-4a64-99bd-1dfe96bf86e5.png)

3- Ahora toca modificar el widget **MyHomePage** para que escuche lo cambios que se produzcan en el estado y actuar ante ello, para esto añadimos un **Consumer** de **HomeModel** en el widget que será afectado por el cambio de estado, en este caso es en el **Text** que muestra el total del contador. **No hay que olvidarse añadir el package provider al archivo pubspec.yaml, en este caso usamos la versión 6.0.1.**

![image](https://user-images.githubusercontent.com/6271240/144839002-c9c368b7-f7c9-40df-a8e5-a2fcf54de92b.png)

4- Por último nos quedaría cambiar la implementación del botón que incrementa el valor del contador, en este caso necesitamos obtener una instancia del modelo para llamar al método **incrementCounter()**, así pues, usamos el contexto para obtener el modelo:

![image](https://user-images.githubusercontent.com/6271240/144839381-300a1a30-8933-4bf7-8e89-4cbd61eb7ad2.png)


