# Laravel Rest Api

Este repositorio fue creado con la finalidad de realizar un Test de Ingreso.

##### Rutas
las rutas establecidas son las siguientes
###### students
```javascript
GET /api/students //retrive all students
GET /api/students/{id} //retrive an specified student
POST /api/students //create an new student
PUT /api/students/{id} //update an student
DELETE /api/students/{id} //delete an student
GET /api/students/grades/{id} //retrive all grades for specified student
```

formato del json para las peticiones POST y PUT 

```javascript
{
	"fname":"Carlos",
	"lname":"Sandrea",
	"sex":"M",
	"stage":9,
	"address":"Direccion",
	"dni":"1234456",
	"phone":"05416",
	"carnetId":"543216",
	"status":1
}
```


###### Cursos
```javascript
GET /api/courses //retrive all courses
GET /api/courses/{id} //retrive an specified course
POST /api/courses //create an new course
PUT /api/courses/{id} //update an course
DELETE /api/courses/{id} //delete an course
```
formato del json para las peticiones POST y PUT 

```javascript
{
	"name":"Quimica",
	"stage":1
}
```
###### Calificaciones
```javascript
GET /api/grades //retrive all grades
GET /api/grades/{id} //retrive an specified grade
POST /api/grades //create an new grade
PUT /api/grades/{id} //update an grade
DELETE /api/grades/{id} //delete an grade
```
formato del json para las peticiones POST y PUT 
```javascript
{
	"studentId":1,
	"courseId":1,
	"score":19
}
```
##### Base de Datos
el nombre de la base de datos es **test_farmacia**
se pude importar la base de datos desde la siguiente ruta
> database/test/test_farmacia.sql

>los datos fueron generados aleatoriamente 

o si tambien desea puede crear la base de datos en blanco utilizando

`php artisan migrate` o `php artisan migrate:refresh`

#####  Diagrama de La Estructura de la base de Datos
![](https://imgur.com/K4rU2lD.png)

