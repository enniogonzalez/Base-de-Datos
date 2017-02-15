
package Practica;

import javax.swing.*;
import java.awt.event.*;

class HomePage extends JFrame{
  		// Constructor
  		public HomePage(){
  			this.innit();
  		}


  		private void innit(){

  			int x,y;

  			//Se establece el nombre de la ventana
  			this.setTitle("hola");

  			this.setLayout(null);

            System.out.println("Frame closing");
  			// Obtener dinamicamente el tamaño de la pantalla para
  			// abrir JFrame exactamente en la mitad de cualquier
  			//monitor
  			x = (java.awt.Toolkit.getDefaultToolkit().getScreenSize().width-400)/2;
  			y = (java.awt.Toolkit.getDefaultToolkit().getScreenSize().height-250)/2;

        this.setBounds(x,y,400,250);
        this.addWindowListener(new WindowAdapter() {
          @Override
          public void windowClosing(WindowEvent event) {
              System.out.println("Frame closing");
          }
        });
        this.setVisible(true);

      }
}
