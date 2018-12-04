import java.awt.*;
import java.awt.event.*;
import javax.swing.*;

public class Binary Counter extends JLabel implements ActionListener {

private interface count;

public Binary Counter(interface count) {
super(Integer.toBinaryString(count));
this.count = count;
}

public void actionPerformed(ActionEvent e) {
setText(Integer.toBinaryString(++count));
}

}
