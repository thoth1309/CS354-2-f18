public class BinaryCounter : JLabel, ActionListener
{

	private int count;

	public BinaryCounter(int count) : base(Integer.toBinaryString(count))
	{
	this.count = count;
	}

	public virtual void actionPerformed(ActionEvent e)
	{
		Text = Integer.toBinaryString(++count);
	}

}
