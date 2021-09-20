import mysql.connector

class mysqlhandler:
    def __init__(self):
        pass;
    def myfunc(self):

        from mysql.connector import Error


        try:
            connection = mysql.connector.connect(host='localhost',
                                                 database='UserDB',
                                                 user='root',
                                                 password='Abhinav1#')
            if connection.is_connected():
                db_Info = connection.get_server_info()
                cursor = connection.cursor(buffered=True)
                cursor.execute("select database();")


                def display_table() :
                    query= ("select * from user_data")
                    cursor.execute(query)
                    for rows in cursor:
                        print(rows)

                def add_user() :
                    na=input("Enter the user name : ")
                    ph=input("Enter the user phone number : ")
                    do=input("Enter the user dob :")
                    query=("insert into user_data(name,phno,dob)" "values(%s,%s,%s)");
                    data=(na,ph,do)
                    cursor.execute(query,data)
                    connection.commit()

                def delete_user() :
                    na=input("Enter name of the user to delete : ")
                    query=("delete from user_data where name='%s' "%(na));
                    cursor.execute(query)
                    connection.commit()

                def update_user() :
                    na=input("Enter the user's name whose details you want to update :")
                    field=input("Enter the field you want to update :")
                    value=input("The value you want to update the field with :")
                    query=("update user_data set %s='%s' where name='%s' " %(field,value,na))
                    cursor.execute(query)
                    connection.commit()

                f=int(input(" Enter 1 for displaying user \n Enter 2 for adding user \n Enter 3 for updating user \n Enter 4 for deleting data \n"))
                if f==1 :
                    display_table()
                elif f==2 :
                    add_user()
                elif f==3 :
                    display_users()
                elif f==4 :
                    delete_user()
                else :
                    print("Wrong Format") 

        except Error as e:
            print("Error", e)
            
if __name__ == "__main__":
    mydb = mysqlhandler()
    mydb.myfunc()
