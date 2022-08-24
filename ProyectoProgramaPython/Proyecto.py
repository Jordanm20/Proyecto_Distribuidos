import mysql.connector as sql
import os
import random
import datetime
from tabulate import tabulate
def conec():
    mydb = sql.connect(
        host="localhost",
        user="root",
        password="lascano20",
        database="proyectobd")
    mycursor = mydb.cursor()
    return mycursor,mydb
def Elegirrol():
    print("\t ---------------------------Elegir rol---------------------------------------")
    print("\t1.Pastelero")
    print("\t2.Cliente")
    print("\t3.salir")
def Categorias():
    print("\t ---------------------------Elegir Categorias---------------------------------------")
    print("\t1.Tortas")
    print("\t2.Cheescake")
    print("\t3.Panes")
    print("\t4.Exit")

def Verificacion():
    print("\t ---------------------------Inicio de sesion---------------------------------------")
    print("\t1.Iniciar Sesion")
    print("\t2.Crear cuenta")
    print("\t3.salir")

def crearcuenta(Rol):
    if(Rol=="Pastelero"):
       c,m=conec()
       CedulaPanadero=input("Ingrese su numero de Cedula")
       Nombre = input("Ingrese su nombre")
       Telefono = int(input("Ingrese su Telefono"))
       Correo = input("Ingrese su Correo")
       Contraseña = input("Ingrese su Contraseña")
       Cod_postal= int(input("Ingrese su Cod_postal"))
       numerodelocal = int(input("Ingrese su numero de casa"))
       Calleprincipal = input("Ingrese su Calleprincipal")
       Callesecundaria = input("Ingrese su Callesecundaria")

       c.callproc("PROCEDUREcrearcuentapastelero", (CedulaPanadero, Nombre, Telefono, Correo, Contraseña, Cod_postal, numerodelocal, Calleprincipal, Callesecundaria))
       c.nextset()
       c.close()
       m.commit()
    else:
        c2,m2 = conec()
        Cedula = input("Ingrese su numero de Cedula")
        Nombre = input("Ingrese su nombre")
        Telefono = int(input("Ingrese su Telefono"))
        Correo = input("Ingrese su Correo")
        Contraseña = input("Ingrese su Contraseña")

        c2.callproc("PROCEDUREcrearcuentacliente", (Cedula, Nombre, Telefono, Correo, Contraseña))
        c2.close()
        m2.commit()

def crearProducto(Id):

       l=[]
       Nombre = input("Ingrese su nombre")
       Canti = int(input("Ingrese su Cantidad"))
       Precio = float(input("Ingrese su Precio"))
       Categorias()
       opcion = int(input("Ingrese una opción:"))
       while opcion != 4:
           if (opcion == 1):
               Categoria = 11111
               id_prod=random.randint(1000, 9999)
               while id_prod in l:
                   id_prod = random.randint(1000, 999999)
               if(id_prod not in l):
                   c, m = conec()
                   c.callproc("PROCEDUREingresarproductos", (str(id_prod), Nombre, Canti, Precio, Categoria, Id))
                   c.nextset()
                   c.close()
                   m.commit()
                   opcion=4

           if (opcion == 2):
               Categoria = 22222
               id_prod = random.randint(1000, 9999)
               while id_prod in l:
                   id_prod = random.randint(1000, 9999)
               if (id_prod not in l):
                   c, m = conec()
                   c.callproc("PROCEDUREingresarproductos", (id_prod, Nombre, Canti, Precio, Categoria, Id))
                   c.nextset()
                   c.close()
                   m.commit()
                   opcion=4

           if (opcion == 3):
               Categoria = 32323
               id_prod = random.randint(1000, 9999)
               while id_prod in l:
                   id_prod = random.randint(1000, 9999)
               if (id_prod not in l):
                   c, m = conec()
                   c.callproc("PROCEDUREingresarproductos", (id_prod, Nombre, Canti, Precio, Categoria, Id))
                   c.nextset()
                   c.close()
                   m.commit()
                   opcion=4

def run_query(query=''):
    mydb = sql.connect(
        host="localhost",
        user="root",
        password="lascano20",
        database="proyectobd")
    mycursor = mydb.cursor()
    mycursor.execute(query)
    myresult = mycursor.fetchall()
    return myresult



def cargarmenucliente():
    print("\t1.Ver Panaderos Disponibles")
    print("\t2.Realizar Pedido:")
    print("\t3.Consultar Pedidos:")
    print("\t4.Consultar Calificaciones")
    print("\t5.salir")
def cargarmenupanadero():
    print("\t1.Publicar "
          "Producto")
    print("\t2.Consultar Producto")
    print("\t3.Consultar Pedidos")
    print("\t4.Salir")
def tipodecuenta():
    print("\t1.Cuenta de ahorro")
    print("\t2.Cuenta corriente")
    print("\t3.Salir")
def verpanaderos():

     sqlse = "select *from consultapanaderos "
     c, m = conec()
     c.execute(sqlse)
     result2 = c.fetchall()
     h=["Cedula","Nombre","Telefono","Correo","Codigo_Postal","Caller primaria","Calle Secundaria"]
     print(tabulate(result2,headers=h,tablefmt="psql"))
     c.close()
def Realizarpedido(ID):
    verpanaderos()
    opcion2 = input("Ingrese la cedula del panadero al que desea realizarle el pedido:")
    sqlse = "SELECT * FROM Producto where pastelero_CedulaPanadero =%s"
    c, m = conec()
    c.execute(sqlse, (opcion2,))
    result=c.fetchall()
    lr=[]
    for x in result:
        sqlse = "SELECT Nombre_categoria FROM categoria where Id_Categoria =%s"
        c, m = conec()
        c.execute(sqlse, (x[4],))
        result2 = c.fetchall()
        for x2 in result2:
         print("ID: " +str(x[0]) +" Nombre: " +x[1]+ " Precio: " +str(x[3])+" Categoria:" +x2[0])
    con="S"
    no=[]
    cat=[]
    preciou=[]
    preciot=[]
    Dic = []
    preciot2=0
    while con!="N":
      opcion = input("Ingrese el id del producto que desea pedir:")
      cantidad=int(input("Ingrese cantidad:"))
      sqlse = "SELECT Nombre,Precio FROM Producto where Prod_Id =%s"
      c, m = conec()
      c.execute(sqlse, (opcion,))
      result3 = c.fetchall()
      for x4 in result3:
         no.append(x4[0])
         cat.append(cantidad)
         preciou.append(float(x4[1]))
         precio2=float(x4[1])*cantidad
         preciot2=preciot2+precio2
         preciot.append(precio2)
      con = input("Desea otro producto [S/N]:")[0].upper()
    for i in range(len(no)):
        l=[]
        l.append(no[i])
        l.append(cat[i])
        l.append(preciou[i])
        l.append(preciot[i])
        Dic.append(l)
    Dic.append(["Total","","",preciot2])
    print(tabulate(Dic, headers=['Nombre',"Cantidad","Precio U","Precio T"], tablefmt='grid'))
    opcion = input("¿Desea continuar con el pedido?[S/n]:")[0].upper()
    idp=[]
    if(opcion=="S"):
        id_pedido = random.randint(1000, 9999)
        while id_pedido in idp:
            id_pedido = random.randint(1000, 9999)
        if (id_pedido not in idp):
            Fe = input("Ingrese fecha de entrega en el siguiente formato AAAA-MM-DD:")
            sql = "INSERT INTO pedido (Pedido_id, Fecha, Total, Estado, cliente_Cedula, pastelero_CedulaPanadero) VALUES (%s, %s, %s, %s, %s, %s)"
            val = (id_pedido, Fe, preciot2, "Pendiente",ID ,opcion2 )
            c.execute(sql, val)
            m.commit()
            Fe = input("Ingrese numero de cuenta:")
            tipodecuenta()
            opcion = int(input("Ingrese una opcion:"))
            while opcion != 3:
                if (opcion == 1):
                    sql = "INSERT INTO cuentabancaria (Numero_cuenta, Tipo_de_cuenta, Ced_clie) VALUES (%s, %s, %s)"
                    val = (Fe, "Cuenta de ahorro",ID)
                    c.execute(sql, val)
                    m.commit()
                    print("Pedido realizado con exito")
                    opcion=3
                if (opcion == 2):
                    sql = "INSERT INTO cuentabancaria (Numero_cuenta, Tipo_de_cuenta, Ced_clie) VALUES (%s, %s, %s)"
                    val = (Fe, "Cuenta corriente", ID)
                    c.execute(sql, val)
                    m.commit()
                    print("Pedido realizado con exito")
                    opcion=3






def cargarcalificaciones(ID):
    sqlse = "select Id_calif,Nota_cali,Comentario,Fecha,Ced_Pas,Nombre from cargarcalificaciones where cliente_Cedula =%s"
    c, m = conec()
    c.execute(sqlse, (ID,))
    result=c.fetchall()
    l=["Id_calif","Nota_cali","Comentario","Fecha","Cedula_Pastelero","Nombre"]
    print(tabulate(result, headers=l, tablefmt="psql"))


def cargarpedido(ID,rol):

    if(rol=="P"):
     sqlse = "select Pedido_id,Fecha,Total,Estado,cliente_Cedula from consultarpedidos where pastelero_CedulaPanadero =%s"
     c, m = conec()
     c.execute(sqlse, (ID,))
     result=c.fetchall()
     h = ["Pedido id", "Fecha", "Total", "Estado", "Cedula cliente"]
     print(tabulate(result, headers=h, tablefmt="psql"))
     c.close()
    if (rol == "C"):
         print("En")
         sqlse = "select Pedido_id,Fecha,Total,Estado,pastelero_CedulaPanadero,Nombre_pastelero,telefono_pastelero,calificado from consultarpedidos where cliente_Cedula =%s"
         c, m = conec()
         c.execute(sqlse, (ID,))
         h = ["Pedido id", "Fecha", "Total", "Estado", "Cedula Pastelero", "Nombre Pastelero", "Telefono Patelero","Estado de calificacion"]
         result = c.fetchall()
         print(tabulate(result, headers=h, tablefmt="psql"))
         sqlse = "select calificado,pastelero_CedulaPanadero,Pedido_id from pedido where cliente_Cedula =%s"
         c, m = conec()
         c.execute(sqlse, (ID,))
         resultado = c.fetchall()
         idp = []
         t=0
         for i in resultado:
               if(i[0]=="No"):
                t=i[1]
         r = input("Desea calificar los pedidos sin calificar S/N: ")
         while r[0].upper()=="S":
                    id_califica = random.randint(1000, 9999)
                    while id_califica in idp:
                        id_califica = random.randint(1000, 9999)
                    if (id_califica not in idp):
                        x = datetime.datetime.now()
                        fechaactual=("%s-%s-%s"%(x.year,x.month,x.day))
                        print(fechaactual)
                        nota = float(input("Ingrese la calificacion en un valor del 1 al 5"))
                        comentario = input("Ingrese un comentario")
                        clienteid=ID
                        cedulapast = i[1]
                        c.callproc("PROCEDUREingresarcalificiacion", (id_califica, nota, comentario, fechaactual, clienteid, cedulapast))
                        c.nextset()
                        c.close()
                        m.commit()
                    print("Tiene más pedidos sin calificar")
                    r = input("Desea calificar los pedidos completados S/N")






def cargarproduc(ID):
    sqlse = "select Prod_Id,Nombre,Canti,Precio,Nombre_categoria from consultarproductos where pastelero_CedulaPanadero =%s"
    c, m = conec()
    c.execute(sqlse, (ID,))
    result=c.fetchall()
    h=["Prod_Id","Nombre","Cantidad","Precio","Nombre_categoria"]
    print(tabulate(result, headers=h, tablefmt="psql"))
def Login():
    r=0
    print("\t ---------------------------Login---------------------------------------")
    ID = str(input("Ingrese su ID:"))
    clave = str(input("Ingrese su clave:"))
    result=run_query("SELECT Cedula,Contraseña FROM cliente")
    result2 = run_query("SELECT CedulaPanadero,Contraseña FROM pastelero")
    for x in result:
        if(ID==x[0] and clave==x[1]):
            print("\t ---------------------------Bienvenido Cliente---------------------------------------")
            cargarmenucliente()
            opcion = int(input("Ingrese una opción:"))
            r + 2
            while opcion != 5:
                if (opcion == 1):
                    verpanaderos()
                    print("\t ---------------------------Bienvenido Cliente---------------------------------------")
                    cargarmenucliente()

                    opcion = int(input("Ingrese una opción:"))
                if (opcion == 2):
                    Realizarpedido(ID)
                    print("\t ---------------------------Bienvenido Cliente---------------------------------------")
                    cargarmenucliente()

                    opcion = int(input("Ingrese una opción:"))
                if (opcion == 3):
                    cargarpedido(ID,"C")
                    print("\t ---------------------------Bienvenido Cliente---------------------------------------")
                    cargarmenucliente()
                    opcion = int(input("Ingrese una opción:"))
                if (opcion == 4):
                    cargarcalificaciones(ID)
                    print("\t ---------------------------Bienvenido Cliente---------------------------------------")
                    cargarmenucliente()
                    opcion = int(input("Ingrese una opción:"))

    for x in result2:
        if(ID==x[0] and clave==x[1]):
            r + 2
            print("\t ---------------------------Bienvenido Panadero---------------------------------------")
            cargarmenupanadero()
            opcion = int(input("Ingrese una opción:"))
            while opcion != 4:
                if (opcion == 1):
                    crearProducto(ID)
                    print("\t ---------------------------Bienvenido Panadero---------------------------------------")
                    cargarmenupanadero()


                    opcion = int(input("Ingrese una opción:"))
                if (opcion == 2):
                    cargarproduc(ID)
                    print("\t ---------------------------Bienvenido Panadero---------------------------------------")
                    cargarmenupanadero()
                    opcion = int(input("Ingrese una opción:"))
                if (opcion == 3):
                    cargarpedido(ID,"P")
                    print("\t ---------------------------Bienvenido Panadero---------------------------------------")
                    cargarmenupanadero()
                    opcion = int(input("Ingrese una opción:"))

    if(r==2):
        r=0
    if(r==0):
       r=2
    print(r)
    return r
def cargaropcione(nunopcion):
    print(nunopcion)
    Verificacion()
    opcion = int(input("Ingrese una opción:"))
    while opcion != 3:
        if (opcion == 1):
            r = 1
            while r != 0:
                r = int(Login())
                if r == 2:
                    print("Contraseña Incorrecta")
                    r = int(Login())

        if (opcion == 2):
                print(nunopcion)
                if(nunopcion==1):
                 crearcuenta("Pastelero")
                 Verificacion()
                 opcion = int(input("Ingrese una opción:"))
                else:
                    crearcuenta("Cliente")
                    Verificacion()
                    opcion = int(input("Ingrese una opción:"))

Elegirrol()
opcion = int(input("Ingrese una opción:"))
while opcion !=3 :
    if(opcion==1):
        cargaropcione(opcion)
        Elegirrol()
        opcion = int(input("Ingrese una opción:"))
    else:
         cargaropcione(opcion)
         Elegirrol()
         opcion = int(input("Ingrese una opción:"))