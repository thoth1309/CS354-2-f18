public class ToggleButton : JButton, ActionListener
{

	private string label1, label2;

	public ToggleButton(string label1, string label2) : base(label1)
	{
		this.label1 = label1;
		this.label2 = label2;
		addActionListener(this);
	}

	public virtual void actionPerformed(ActionEvent e)
	{
		string s = label1;
		label1 = label2;
		label2 = s;
		Text = label1;
	}

}
