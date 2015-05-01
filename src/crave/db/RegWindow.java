package crave.db;

import java.awt.Component;
import java.awt.Container;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.*;

/**
 * This class is the window in which a new user can register themselves in the database. 
 * It takes the user's full name, a username, and a password and attempts to add it to the database. 
 * If the credentials do not meet length minimums or if the username is taken, there is an error prompt. 
 * The login window is again reached through successful registration or the back button.
 */
public class RegWindow extends JFrame implements ActionListener {
	
	private CraveGUI crave;			// the gui manager
	private JTextField name;		// the name text field
	private JTextField user;		// the username text field
	private JPasswordField pw;		//the password text field
	
	/**
	 * Constructor - Initialize window settings
	 * @param gui The manager that launched this window
	 */
	public RegWindow(CraveGUI gui) {
		crave = gui;
		
		/* Frame setup */
		setTitle("Crave - Cleveland Menu Database");
		setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
		addComponentsToPane();
		setSize(500, 500);
		
		/* Make frame visible */
		pack();
		crave.centerFrame(this);
	    setVisible(true);
	}
	
	/**
	 * Add buttons, labels, text boxes, and panels to the content pane.
	 */
	private void addComponentsToPane() {
		
		/* Create the components */
		JTextField nameText = new JTextField(20);
		JTextField userText = new JTextField(15);
        JPasswordField pwText = new JPasswordField(15);
        JLabel titleLabel = new JLabel("Join Crave today!");
        JLabel detailLabel = new JLabel("Enter your account information below.");
        JLabel nameLabel = new JLabel("Name:      ");
        JLabel nameDetail = new JLabel("    (ex. Bob Smith)");
        JLabel userLabel = new JLabel("Username:    ");
        JLabel userDetail = new JLabel("    (ex. abc123)");
        JLabel pwLabel = new JLabel("Password:    ");
        JLabel pwDetail = new JLabel("    (> 4 alphanumeric)");
        JLabel space = new JLabel("          ");
        JButton back = new JButton("Back");
        JButton register = new JButton("Register!");
        
        /* Adjust labels */
        nameLabel.setLabelFor(nameText);
        userLabel.setLabelFor(userText);		//set the labels to their
        pwLabel.setLabelFor(pwText);			//respective components
        nameDetail.setLabelFor(nameText);
        userDetail.setLabelFor(userText);
        pwDetail.setLabelFor(pwText);
        titleLabel.setAlignmentX(Component.CENTER_ALIGNMENT);
        detailLabel.setAlignmentX(Component.CENTER_ALIGNMENT);
        
        /* Adjust text boxes */
        nameText.setAlignmentX(Component.CENTER_ALIGNMENT);
        userText.setAlignmentX(Component.CENTER_ALIGNMENT);
        pwText.setAlignmentX(Component.CENTER_ALIGNMENT);
        
        /* Adjust buttons */
        register.addActionListener(this);
        back.addActionListener(this);
        back.setActionCommand("back");
        
        name = nameText;
        user = userText;
        pw = pwText;
        
        /* Create panels */
        JPanel titlePanel = new JPanel();		// panel for title and detail labels
        titlePanel.setLayout(new BoxLayout(titlePanel, BoxLayout.Y_AXIS));
        titlePanel.setBorder(BorderFactory.createEmptyBorder(20,0,0,0));
        
        JPanel centerPanel = new JPanel();
        centerPanel.setLayout(new BoxLayout(centerPanel, BoxLayout.X_AXIS));	// to hold the next three panels
        centerPanel.setBorder(BorderFactory.createEmptyBorder(30,75,0,50));
        
        JPanel labelPanel = new JPanel();		// panel for label related components
        labelPanel.setLayout(new BoxLayout(labelPanel, BoxLayout.Y_AXIS));
        labelPanel.setBorder(BorderFactory.createEmptyBorder(0,0,0,0));
        
        JPanel inputPanel = new JPanel();	// panel for input text related components
        inputPanel.setLayout(new BoxLayout(inputPanel, BoxLayout.Y_AXIS));
        inputPanel.setBorder(BorderFactory.createEmptyBorder(0,0,0,0));
        
        JPanel detailPanel = new JPanel();		// panel for detail label related components
        detailPanel.setLayout(new BoxLayout(detailPanel, BoxLayout.Y_AXIS));
        detailPanel.setBorder(BorderFactory.createEmptyBorder(0,0,0,0));

        JPanel buttonPanel = new JPanel();		// panel for register button
        buttonPanel.setLayout(new BoxLayout(buttonPanel, BoxLayout.X_AXIS));
        buttonPanel.setBorder(BorderFactory.createEmptyBorder(30,0,20,0));
        buttonPanel.setAlignmentX(Component.CENTER_ALIGNMENT);
        
        /* Add components to respective panels */
        titlePanel.add(titleLabel);
        titlePanel.add(detailLabel);
        labelPanel.add(nameLabel);
        inputPanel.add(nameText);
        detailPanel.add(nameDetail);
        labelPanel.add(userLabel);
        inputPanel.add(userText);
        detailPanel.add(userDetail);
        labelPanel.add(pwLabel);
        inputPanel.add(pwText);
        detailPanel.add(pwDetail);
        buttonPanel.add(back);
        buttonPanel.add(space);
        buttonPanel.add(register);
        centerPanel.add(labelPanel);
        centerPanel.add(inputPanel);
        centerPanel.add(detailPanel);
        
        /* Add the panels to the top-level content pane */
        Container pane = getContentPane();		//Outermost frame's c-pane
        pane.setLayout(new BoxLayout(pane, BoxLayout.Y_AXIS));
        pane.add(titlePanel);
        pane.add(centerPanel);
        pane.add(buttonPanel);
        
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		if (e.getActionCommand().equals("back")) {	//back button got pressed
			crave.reshowLogin(this);
		}
		else {									//register button got pressed
			String namearg = name.getText();
			String username = user.getText();
			char[] pwInput = pw.getPassword();
			if (isInputValid(username, pwInput)) {	//check credential validity
				if (isUsernameValid(username)) {
					registerUser(namearg, username, pwInput);
					JOptionPane.showMessageDialog(this, "Congratulations " + namearg + "! You can now log in!");
					crave.reshowLogin(this);
				}
				else {		 //username taken
					JOptionPane.showMessageDialog(this,
							"                    Invalid Credentials:" + '\n' +
			                "Sorry! That username has already been taken",
			                "Error Message",
			                JOptionPane.ERROR_MESSAGE);
				}
	        }
			else {		//length of credentials is insufficient
	            JOptionPane.showMessageDialog(this,
	                "                    Invalid Credentials:" + '\n' +
	                "Username must be > 2 letters/numbers" + '\n' +
	                "Password must be > 3 letters/numbers",
	                "Error Message",
	                JOptionPane.ERROR_MESSAGE);
	        }
		}
	}
	
	/**
	 * Insert user instance in db with given credentials
	 * @param namearg The new user's full name
	 * @param username The new user's username
	 * @param password The new user's password
	 */
	private void registerUser(String namearg, String username, char[] password) {
		crave.dbAccess.insertUser(namearg, username, password, crave.conn);
	}
	
	/**
	 * Check username and password length
	 * @param username The user's input username
	 * @param pwInput The user's input password being checked
	 * @return Whether the input password matches the username's password in the database
	 */
	private boolean isInputValid(String username, char[] pwInput) {
		return (username.length() > 2 && pwInput.length > 3);
	}
	
	/**
	 * Check if a username is taken
	 * @param username The username being checked
	 * @return True if there is a users tuple in the database with this username
	 */
	private boolean isUsernameValid(String username) {
		return !crave.dbAccess.usernameExists(username, crave.conn);
	}
}