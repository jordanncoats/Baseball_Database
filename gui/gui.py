from tkinter import *
from PIL import ImageTk,Image
import sqlite3

root = Tk()
root.title('Baseball Database')
root.geometry("400x600")
#connect to db
conn = sqlite3.connect('address_book.db')

#Create cursor
c = conn.cursor()


"""#Create index
def index():
    #Connect to db
    conn = sqlite3.connect('address_book.db')
    #Create cursor
    c = conn.cursor()
    
    c.execute("""
        CREATE INDEX playerView
        ON players(p_id)
        """)    

    c.execute("""
        CREATE INDEX playernName
        ON players(p_name)
        """)

    c.execute("""
        CREATE INDEX playerTeam
        ON players(Team_t_id)
        """)


    #commit changes
    conn.commit()

    #Close connection
    conn.close()
"""
        
def save():
    #Connect to db
    conn = sqlite3.connect('address_book.db')
    #Create cursor
    c = conn.cursor()
    record_id = delete_box.get()

    c.execute("""UPDATE players SET
        p_id = :id,
        p_name = :name,
        Team_t_id = :Team_t_id,
        Team_t_name = :Team_t_name

        WHERE oid = :oid""",
        {
        'id': p_id_editor.get(),
        'name': p_name_editor.get(),
        'Team_t_id': Team_t_id_editor.get(),
        'Team_t_name': Team_t_name_editor.get(),
        'oid': record_id
        }
    )

    #commit changes
    conn.commit()

    #Close connection
    conn.close()


#Create update funciton
def update():
    update = Tk()
    update.title("Update Baseball Database")
    update.geometry("400x300")
    #connect = mySQL.connector('root')
    conn = sqlite3.connect('address_book.db')

    #Create cursor
    c = conn.cursor()

    #Query the Database
    record_id = delete_box.get()
    c.execute("SELECT * FROM players WHERE oid = " + record_id)
    records = c.fetchall()

    #create global variables for text box names
    global p_id_editor
    global p_name_editor
    global Team_t_id_editor
    global Team_t_name_editor


    #Create Txt boxes
    p_id_editor = Entry(update, width=30)
    p_id_editor.grid(row=0, column=1, padx=20, pady=(10,0))
    p_name_editor = Entry(update, width=30)
    p_name_editor.grid(row=1, column=1)
    Team_t_id_editor = Entry(update, width=30)
    Team_t_id_editor.grid(row=2, column=1)
    Team_t_name_editor = Entry(update, width=30)
    Team_t_name_editor.grid(row=3, column=1)

    #Create Txt box labels
    p_id_label = Label(update, text="Player ID")
    p_id_label.grid(row=0, column=0, pady=(10,0))
    p_name_label = Label(update, text="Player Name")
    p_name_label.grid(row=1, column=0)
    Team_t_id_label = Label(update, text="Team ID")
    Team_t_id_label.grid(row=2, column=0)
    Team_t_name_label = Label(update, text="Team Name")
    Team_t_name_label.grid(row=3, column=0)

    #Loop through results
    for record in records:
        p_id_editor.insert(0, record[0])
        p_name_editor.insert(0, record[1])
        Team_t_id_editor.insert(0, record[2])
        Team_t_name_editor.insert(0, record[3])

    #Create a save Button edited record
    edit_btn = Button(update, text="Save Record", command=save)
    edit_btn.grid(row = 6, column=0, columnspan=2, pady=10, padx=10, ipadx=133)

#Create function to delete record
def delete():
    #connect = mySQL.connector('root')
    conn = sqlite3.connect('address_book.db')

    #Create cursor
    c = conn.cursor()

    c.execute("DELETE from players WHERE oid =" + delete_box.get())



    #commit changes
    conn.commit()

    #Close connection
    conn.close()

#Create show function
def submit():
    #connect = mySQL.connector('root')
    conn = sqlite3.connect('address_book.db')

    #Create cursor
    c = conn.cursor()


    c.execute("INSERT INTO players VALUES (:p_id, :p_name, :Team_t_id, :Team_t_name)",
            {
                'p_id': p_id.get(),
                'p_name': p_name.get(),
                'Team_t_id': Team_t_id.get(),
                'Team_t_name': Team_t_name.get(),
            }
    )

    #commit changes
    conn.commit()

    #Close connection
    conn.close()

    #clear text boxes
    p_id.delete(0, END)
    p_name.delete(0, END)
    Team_t_id.delete(0, END)
    Team_t_name.delete(0, END)

#Create query
def query():
    #connect = mySQL.connector('root')
    conn = sqlite3.connect('address_book.db')

    #Create cursor
    c = conn.cursor()

    #Query the Database

    c.execute("SELECT *, oid FROM players")
    records = c.fetchall()
    #print(records)
    #loop through results
    print_records = ''
    for record in records:
        print_records += str(record[0]) + " " + str(record[1])+ ": " + str(record[2]) + " " + str(record[3]) + "\n"

    query_label = Label(root, text=print_records)
    query_label.grid(row=12, column=0, columnspan=2)
    #commit changes
    conn.commit()

    #Close connection
    conn.close()

    return
""""""""
#c.execute(""" CREATE TABLE players(
    #    firstname text,
    #    last_name text,
    #    address text,
    #    city text,
    #    state text,
        #zipcode integer
        #)""")
""""""""
#Create Txt boxes
p_id = Entry(root, width=30)
p_id.grid(row=0, column=1, padx=20, pady=(10,0))
p_name = Entry(root, width=30)
p_name.grid(row=1, column=1)
Team_t_id = Entry(root, width=30)
Team_t_id.grid(row=2, column=1)
Team_t_name = Entry(root, width=30)
Team_t_name.grid(row=3, column=1)
delete_box = Entry(root, width=30)
delete_box.grid(row=7, column=1, pady=(10,0))

#Create Txt box labels
p_id_label = Label(root, text="Player ID")
p_id_label.grid(row=0, column=0, pady=(10,0))
p_name_label = Label(root, text="Player Name")
p_name_label.grid(row=1, column=0)
Team_t_id_label = Label(root, text="Team ID")
Team_t_id_label.grid(row=2, column=0)
Team_t_name_label = Label(root, text="Team Name")
Team_t_name_label.grid(row=3, column=0)
delete_box_label = Label(root, text="Select ID")
delete_box_label.grid(row=7, column=0, pady=(10,0))

# Create submit
show_btn = Button(root, text="Add Record to Database", command=submit)
show_btn.grid(row=5, column=0, columnspan=2, pady=5, padx=10, ipadx=105)

#Create a query Button
query_button = Button(root, text="Show Records", command=query)
query_button.grid(row = 6, column=0, columnspan=2, pady=5, padx=10, ipadx=135)

#Create a del Button
delete_btn = Button(root, text="Delete Record", command=delete)
delete_btn.grid(row = 10, column=0, columnspan=2, pady=10, padx=10, ipadx=135)

#Create an update button
edit_btn = Button(root, text="Update Record", command=update)
edit_btn.grid(row = 11, column=0, columnspan=2, pady=10, padx=10, ipadx=133)




#commit changes
conn.commit()
#Close connection
conn.close()
root.mainloop()
