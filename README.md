# database-project-01

---- SETTING UP THE DATABASE

1) First, open the txt file called PROJ_MUSIC_ORA_20211206_SQL and run it in the database to create all the tables.
2) Run the scl script called all_data_inserts.sql
3) If you would like to delete the database, run the code inside of drop_tables.txt


-- SETTING UP THE JAVA APPLICATION

1) Open the folder database-project-01 in VsCode.
2) Delete the existing settings.json and launch.json files.
3) Click on the file called SongDBJavaFx.
4) Then, at the bottom left, click on java projects, database-project-01, then at the bottom click Referenced Libraries.
5) Then, select the ojdbc.jar inside of the ojdbc file and add it.
6) Additonally, also add all of the jar files inside of the javafx folder.
7) Close VsCode and reopen it
8) Next click on the BIG run and debug icon on the BIG left side panel in VsCode and create a launch.json file. (Make sure that the java file that is open is the SONGDBjavafx.java)
9) add a , to the end of the line that contains project name in the launch.json and underneath it add
	            "vmArgs": [
                "--module-path",
                "write here the absolute path to the folder",
                "--add-modules=javafx.controls"
            ]
10) it should look something like this:
	{
    // Use IntelliSense to learn about possible attributes.
    // Hover to view descriptions of existing attributes.
    // For more information, visit: https://go.microsoft.com/fwlink/?linkid=830387
    "version": "0.2.0",
    "configurations": [
        {
            "type": "java",
            "name": "Launch Current File",
            "request": "launch",
            "mainClass": "${file}"
        },
        {
            "type": "java",
            "name": "Launch SongDBJavaFX",
            "request": "launch",
            "mainClass": "Application.SongDBJavaFX",
            "projectName": "database-project-01_b95c12ca",
            "vmArgs": [
                "--module-path",
                "C:\\Users\\raaga\\Desktop\\DawsonClasses\\ComputerScience\\3rd_Semester\\Programming_3\\javafx-sdk-17.0.1\\lib",
                "--add-modules=javafx.controls"
            ]
        }
    ]
}

11) Finally to run the application, go to the SongDBjavafx.java file and scroll to the main method and click run. The javaFx application should then open. 
12) If it doesn't don't hesitate to send us a mio and maybe we can set up a zoom call for us to show a demo of our working program or have us help you set it up



-- USING THE APPLICATION

1) First, make sure to enter your credentials and press the login button. (If you don't do this step none of the functionalities in the program will be available)
2) On the left side of the application you will find the retrieval functionality. The first and second column take as input a recording id or a compilation name.
	The 3rd column takes as input an artist name. Keep in mind everything is case and space sensitive.
3) In the middle you will find the update functionality of the program. Here you can update any of the data specified in the drop down options. 
	In the first textField enter the value you would like to change and the in the second, the value you would like to change it to.
4) On the right side of the application you will find the insert functionality (If you are on a laptop you might not be able to see it fully, try using it on a monitor)
5) Here you can insert a new recording as well as add a contributor to any recording.
