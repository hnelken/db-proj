package crave.db;
import javax.swing.*;

import java.awt.*;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

/**
 * This class's purpose is to serve as the top level interface manager that 
 * directs the opening and closing of subsequently opened windows in the 
 * interface. As such, it maintains the references to important classes like 
 * DBAccess and QueryManager that allow communication with the database.
 */
public class CraveGUI {
	
	public Connection conn;			// The connection to the database required for querying
	public DBAccess dbAccess;		// The application's way of interacting with the database
	public QueryManager qman;		// The application's dynamic query generator
	private String currentUser;		// The username of the last user to successfully login

    /**
     * Constructor
     * Initializes QueryManager, connects to database, launches GUI.
     * @throws Exception if connection to database fails or if query template is not found
     */
    public CraveGUI() throws Exception {
		
		/* Create a query manager */
		qman = new QueryManager();
		try {
			this.qman.addTemplate(new QueryTemplate("templates/master_query.txt"));
		}
		catch(Exception e) {
			System.err.println("Error loading query template.");
			throw e;
		}
		
    	/* Connect to the database */
    	DBAccess db = new DBAccess();
    	dbAccess = db;
    	try {
    		conn = db.getConnection();
    	}
    	catch(SQLException e) {
    		System.err.println("Error connecting to database.");
    		e.printStackTrace();
    		throw e;
    	}
    	
    	/* Launch first interface */
    	showLogin();
    }

    /**
     * Launch the login screen for the first time.
     */
	public void showLogin() {
		new LoginWindow(this);
	}
	
	/**
	 * Launch the login screen after returning from another interface,
	 * closing the interface being returned from.
	 * @param frame The frame the control is returning from
	 */
	public void reshowLogin(JFrame frame) {
		frame.dispose();
		new LoginWindow(this);
	}
	
	/**
	 * Launch the registration window and dispose of the login screen
	 * @param log The login screen registration was reached from
	 */
	public void registerUser(LoginWindow log) {
		log.dispose();
		new RegWindow(this);
	}
	
	/**
	 * Launch the main application interface after successful login
	 * @param log The login window to be disposed of
	 * @param username The username of the successfully logged in user
	 */
	public void loginSuccess(LoginWindow log, String username) {
        this.currentUser = username;
		log.dispose();
		new SearchWindow(this);
	}
	
	/**
	 * Centers the given frame on the user's respective screen
	 * @param frame The frame being centered
	 */
	public void centerFrame(JFrame frame) {
    	Dimension screenSize = Toolkit.getDefaultToolkit().getScreenSize();
		Point middle = new Point(screenSize.width / 2, screenSize.height / 2);
		Point newLocation = new Point(middle.x - (frame.getWidth() / 2), 
		                              middle.y - (frame.getHeight() / 2));
		frame.setLocation(newLocation);
    }
	
	/**
     * Return the current user's username
     * @return the username stored at last succesful login
     */
    public String getCurrentUser() { return currentUser; }
	
    /**
     * Return the application's query manager
     * @return The QueryManager object created at startup
     */
	public QueryManager getManager() { return this.qman; }
	
	/**
	 * Return the application's database connection
	 * @return The Connection object created at startup
	 */
	public Connection getConnection() { return this.conn; }
	
	/**
	 * Return the application's database access instance
	 * @return The DBAccess object created at startup
	 */
	public DBAccess getDatabaseAccess() { return this.dbAccess; }
	
	
	/**
	 * Schedule a job for the event-dispatching thread:
	 * creating and showing this application's GUI.
	 */
	public static void main(String[] args) {
        javax.swing.SwingUtilities.invokeLater(new Runnable() {

        	public void run() {
            	try {
            		new CraveGUI();
            	}
            	catch (SQLException e) {
            		System.out.println("ERROR: Could not connect to the database");
            		e.printStackTrace();
            		System.exit(-1);
            	}
            	catch (Exception e) {
            		System.out.println("ERROR: Could not find query template");
            		System.exit(-1);
            	}
            }
        	
        });
    }
}
