package com.rntbci;

import javax.swing.*;
import java.awt.event.*;

/**
 * 
 */
public class Gui {
public static class MyAction implements ActionListener {
public void actionPerformed(ActionEvent ae){
        JOptionPane.showMessageDialog(null, "Thanks.", "GUI Test", 1);
}
}
public static void main(String args[]){
        JFrame frame = new JFrame("GUI Test");
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.setSize(300,300);
        JButton button1 = new JButton("Click me");
        frame.getContentPane().add(button1);
        button1.addActionListener(new MyAction());

        frame.setVisible(true);
}
}
