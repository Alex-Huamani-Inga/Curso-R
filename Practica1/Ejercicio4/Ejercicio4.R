#Nombre : Alex Huamani Inga 20121383B
#Respuesta4: El codigo muestra la simulacion del lanzamiento de una moneda




x=c(0,1)
#donde 0 es cara y 1 es sello
lanzamientos =sample(x,1000,replace = TRUE)
flage=0
for (i in lanzamientos)
{
  flage=flage+1
  if(i==1)
  {
    break
  }
}
#imprimiendo los lanzamientos
print(lanzamientos)
premio=(2**(flage))
beneficio= premio - 15 #participar en el juego cuesta 15 soles.
print("el monto que ha ganado es")
print(premio)
print("el beneficio es: ")
print(beneficio)