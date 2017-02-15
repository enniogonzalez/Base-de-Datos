/********************************/
/*	Autor: Ennio Gonzalez				*/
/*	Preparador de Bases de Datos*/
/********************************/

package Practica;

import java.awt.event.*;
import javax.swing.*;

class Ejemplo extends JFrame  implements ActionListener
{
		//Atributos de la Clase
		private JLabel userLabel,passwordLabel;
		private JTextField userField;
		private JPasswordField passwordField;
		private JButton ingresar;


		// Constructor
		public Ejemplo(){
			this.innit();
		}

		private void innit(){

			int x,y;

			//Se establece el nombre de la ventana
			this.setTitle("Ennio");

			this.setLayout(null);

			// Obtener dinamicamente el tamaño de la pantalla para
			// abrir JFrame exactamente en la mitad de cualquier
			//monitor
			x = (java.awt.Toolkit.getDefaultToolkit().getScreenSize().width-400)/2;
			y = (java.awt.Toolkit.getDefaultToolkit().getScreenSize().height-250)/2;

			//Se establece las dimensiones del JFrame
			//setBounds(x,y,with,height)
			this.setBounds(x,y,400,250);

			//Se indica al programa que finalice en case de que el JFrame se cierre
			this.setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

			//Se le da a los campos a mostrar
			this.userLabel = new JLabel("Usuario: ");
			this.userLabel.setBounds(50,50,100,30);
			this.passwordLabel = new JLabel("Contraseña: ");
			this.passwordLabel.setBounds(50,100,100,30);
			this.userField = new JTextField();
			this.userField.setBounds(150,50,200,30);
			this.passwordField = new JPasswordField();
			this.passwordField.setBounds(150,100,200,30);
			this.ingresar = new JButton("Ingresar");
			this.ingresar.setBounds(200,150,100,30);
			this.ingresar.addActionListener(this);

			//Se agregan campos al JFrame
			this.getContentPane().add(this.userLabel);
			this.getContentPane().add(this.passwordLabel);
			this.getContentPane().add(this.userField);
			this.getContentPane().add(this.passwordField);
			this.getContentPane().add(this.ingresar);

			//Se da la orden de que se vea el JFrame
			this.setVisible(true);
		}

		public void actionPerformed(ActionEvent e){
				if(e.getSource()==ingresar)
				{
					System.out.println("he pulsado el boton");
					this.setVisible(false);
					HomePage p = new HomePage();
					this.setVisible(true);
				}
		}
}
