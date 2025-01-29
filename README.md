# RobotFrameworkAutomation

Gist Page: https://gist.github.com/T-e-j-k-u-m-a-r/a61dcdcf45c95d2ac2d86c58d87d5e14

Get Started: 

1. Install python from official site(https://www.python.org/downloads/)
	Define the python environment variables
		Run the command where python from the command line to know the python installed location
		Open the file explorer for the path till PythonXXX where XXX stands for version 
			Example: Python 3.13.1, The folder name would be somthing like Python313

		Path: C:\Users\LENOVO\AppData\Local\Programs\Python\Python313
		
	Note: Navigate inside the path: C:\Users\LENOVO\AppData\Local\Programs\Python\Python313\Scripts folder and copy the path
	
	Open edit the system environment variables -> Environment Variables -> System Variables -> Click on Path -> Click on edit
			And PASTE the above link of the Python script path and close that window

	Check if the python installation works fine by running below commands. 
		
		python --version
		pip --version
		
-----------------------------------------------------------------------------------------------------------------------------------------------------	

2. Install Pycharm from offical site (Community version: https://www.jetbrains.com/pycharm/download/?section=windows)
	
	Create a new project with name Automation in Pycharm

	Install the packages(3)
		Pycharm -> Settings -> Project: Automation -> Python Interpreter 

		Note: By default: Only pip package will be shown in the installed list		

		Click on the '+' icon and install the below packages. 

		selenium
		robotframework
		robotframework-seleniumlibrary

		For execution in parallel mode: Install this package from Python Interpreter screen 
		
		robotframework-pabot

		Note: 
			1. replace robot filename.robot by pabot filename.robot to run a specific .robot file
			2. To run all the tests using pabot then the command should be pabot . 

		Once all 3 are installed in the Python Interpreter section, Below 4 packages should be present
			

	Install the plugin for auto completion
		
		Pycharm -> Settings -> Plugins -> 

			1. Enter this plugin name "IntelliBot @SeleniumLibrary Patched" in the search bar and install it
			2. 1. Enter this plugin name "Hyper RobotFramework Support" in the search bar and install it and close the window
			3. RobotCode- Robot Framework Support
	

	Check if robot framework works fine by running below command: 

		robot --version
		pip show robotframework

