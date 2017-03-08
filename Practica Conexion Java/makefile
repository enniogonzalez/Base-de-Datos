JC = javac
JV = java
CLASSES = Connected/Principal.class Connected/Ejemplo.class Connected/conexion.class
MAINCLASS = Connected/Principal
CP = ./lib/postgresql-9.2-1004.jdbc4.jar:.

compile:
	$(JC) $(MAINCLASS).java
run:
	$(JV) -classpath $(CP) $(MAINCLASS)
clean:
	rm -rf $(CLASSES)
