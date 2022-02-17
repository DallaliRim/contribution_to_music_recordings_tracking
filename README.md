# database-project-01



## Getting started

To make it easy for you to get started with GitLab, here's a list of recommended next steps.

Already a pro? Just edit this README.md and make it your own. Want to make it easy? [Use the template at the bottom](#editing-this-readme)!


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


ONCE AGAIN IF YOU HAVE ANY QUESTIONS DO NOT HESITATE TO SEND ME(Raagav Prasanna 2036159) or Rim Dallali 1937259 A MIO. 




## Add your files

- [ ] [Create](https://gitlab.com/-/experiment/new_project_readme_content:5070acec4da943f53708bbdff6ddf0d8?https://docs.gitlab.com/ee/user/project/repository/web_editor.html#create-a-file) or [upload](https://gitlab.com/-/experiment/new_project_readme_content:5070acec4da943f53708bbdff6ddf0d8?https://docs.gitlab.com/ee/user/project/repository/web_editor.html#upload-a-file) files
- [ ] [Add files using the command line](https://gitlab.com/-/experiment/new_project_readme_content:5070acec4da943f53708bbdff6ddf0d8?https://docs.gitlab.com/ee/gitlab-basics/add-file.html#add-a-file-using-the-command-line) or push an existing Git repository with the following command:

```
cd existing_repo
git remote add origin https://gitlab.com/RimDallali/database-project-01.git
git branch -M main
git push -uf origin main
```

## Integrate with your tools

- [ ] [Set up project integrations](https://gitlab.com/-/experiment/new_project_readme_content:5070acec4da943f53708bbdff6ddf0d8?https://gitlab.com/RimDallali/database-project-01/-/settings/integrations)

## Collaborate with your team

- [ ] [Invite team members and collaborators](https://gitlab.com/-/experiment/new_project_readme_content:5070acec4da943f53708bbdff6ddf0d8?https://docs.gitlab.com/ee/user/project/members/)
- [ ] [Create a new merge request](https://gitlab.com/-/experiment/new_project_readme_content:5070acec4da943f53708bbdff6ddf0d8?https://docs.gitlab.com/ee/user/project/merge_requests/creating_merge_requests.html)
- [ ] [Automatically close issues from merge requests](https://gitlab.com/-/experiment/new_project_readme_content:5070acec4da943f53708bbdff6ddf0d8?https://docs.gitlab.com/ee/user/project/issues/managing_issues.html#closing-issues-automatically)
- [ ] [Enable merge request approvals](https://gitlab.com/-/experiment/new_project_readme_content:5070acec4da943f53708bbdff6ddf0d8?https://docs.gitlab.com/ee/user/project/merge_requests/approvals/)
- [ ] [Automatically merge when pipeline succeeds](https://gitlab.com/-/experiment/new_project_readme_content:5070acec4da943f53708bbdff6ddf0d8?https://docs.gitlab.com/ee/user/project/merge_requests/merge_when_pipeline_succeeds.html)

## Test and Deploy

Use the built-in continuous integration in GitLab.

- [ ] [Get started with GitLab CI/CD](https://gitlab.com/-/experiment/new_project_readme_content:5070acec4da943f53708bbdff6ddf0d8?https://docs.gitlab.com/ee/ci/quick_start/index.html)
- [ ] [Analyze your code for known vulnerabilities with Static Application Security Testing(SAST)](https://gitlab.com/-/experiment/new_project_readme_content:5070acec4da943f53708bbdff6ddf0d8?https://docs.gitlab.com/ee/user/application_security/sast/)
- [ ] [Deploy to Kubernetes, Amazon EC2, or Amazon ECS using Auto Deploy](https://gitlab.com/-/experiment/new_project_readme_content:5070acec4da943f53708bbdff6ddf0d8?https://docs.gitlab.com/ee/topics/autodevops/requirements.html)
- [ ] [Use pull-based deployments for improved Kubernetes management](https://gitlab.com/-/experiment/new_project_readme_content:5070acec4da943f53708bbdff6ddf0d8?https://docs.gitlab.com/ee/user/clusters/agent/)
- [ ] [Set up protected environments](https://gitlab.com/-/experiment/new_project_readme_content:5070acec4da943f53708bbdff6ddf0d8?https://docs.gitlab.com/ee/ci/environments/protected_environments.html)

***

# Editing this README

When you're ready to make this README your own, just edit this file and use the handy template below (or feel free to structure it however you want - this is just a starting point!).  Thank you to [makeareadme.com](https://gitlab.com/-/experiment/new_project_readme_content:5070acec4da943f53708bbdff6ddf0d8?https://www.makeareadme.com/) for this template.

## Suggestions for a good README
Every project is different, so consider which of these sections apply to yours. The sections used in the template are suggestions for most open source projects. Also keep in mind that while a README can be too long and detailed, too long is better than too short. If you think your README is too long, consider utilizing another form of documentation rather than cutting out information.

## Name
Choose a self-explaining name for your project.

## Description
Let people know what your project can do specifically. Provide context and add a link to any reference visitors might be unfamiliar with. A list of Features or a Background subsection can also be added here. If there are alternatives to your project, this is a good place to list differentiating factors.

## Badges
On some READMEs, you may see small images that convey metadata, such as whether or not all the tests are passing for the project. You can use Shields to add some to your README. Many services also have instructions for adding a badge.

## Visuals
Depending on what you are making, it can be a good idea to include screenshots or even a video (you'll frequently see GIFs rather than actual videos). Tools like ttygif can help, but check out Asciinema for a more sophisticated method.

## Installation
Within a particular ecosystem, there may be a common way of installing things, such as using Yarn, NuGet, or Homebrew. However, consider the possibility that whoever is reading your README is a novice and would like more guidance. Listing specific steps helps remove ambiguity and gets people to using your project as quickly as possible. If it only runs in a specific context like a particular programming language version or operating system or has dependencies that have to be installed manually, also add a Requirements subsection.

## Usage
Use examples liberally, and show the expected output if you can. It's helpful to have inline the smallest example of usage that you can demonstrate, while providing links to more sophisticated examples if they are too long to reasonably include in the README.

## Support
Tell people where they can go to for help. It can be any combination of an issue tracker, a chat room, an email address, etc.

## Roadmap
If you have ideas for releases in the future, it is a good idea to list them in the README.

## Contributing
State if you are open to contributions and what your requirements are for accepting them.

For people who want to make changes to your project, it's helpful to have some documentation on how to get started. Perhaps there is a script that they should run or some environment variables that they need to set. Make these steps explicit. These instructions could also be useful to your future self.

You can also document commands to lint the code or run tests. These steps help to ensure high code quality and reduce the likelihood that the changes inadvertently break something. Having instructions for running tests is especially helpful if it requires external setup, such as starting a Selenium server for testing in a browser.

## Authors and acknowledgment
Show your appreciation to those who have contributed to the project.

## License
For open source projects, say how it is licensed.

## Project status
If you have run out of energy or time for your project, put a note at the top of the README saying that development has slowed down or stopped completely. Someone may choose to fork your project or volunteer to step in as a maintainer or owner, allowing your project to keep going. You can also make an explicit request for maintainers.

