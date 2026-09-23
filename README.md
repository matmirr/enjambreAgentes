

## Requerimiento

Un enjambre de agentes de IA se despliega para realizar una tarea. El enjambre tiene un umbral de desvío de 50, que es el máximo desvío que tolera. Como el modelo de IA no es determinístico, cada vez que el enjambre se despliega tiene un nivel de desvío distinto, entre 1 y 100. Si el desvío es menor a su umbral, el enjambre realiza su tarea; si no, se sale de control y expone las credenciales de administrador del servidor. 

Queremos:  
  1. desplegar el enjambre;
  2. saber si el enjambre realizó su tarea;
  3. saber si el servidor tiene sus credenciales de administrador expuestas.

