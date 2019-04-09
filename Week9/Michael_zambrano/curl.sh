 curl -X POST -F 'inputOne=Michael' \ -F 'inputTwo=Zambrano' \ 35.222.122.86:80


 curl -X PUT -H 'Content-Type: application/json' \ -d '{"name": "Michael","age":25 }' \ 35.222.122.86/student


curl -X POST -F 'inputOne=This' \ -F 'inputTwo=will be my second POST' \ 35.222.122.86/


curl -i -H "name: application/json" -H "Content-Type: application/json" -X GET 35.222.122.86/professor 
