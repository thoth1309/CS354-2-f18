public class LightSwitch
{

	private ToggleButton button;
	private BinaryCounter counter;

	public LightSwitch()
	{
		button = new ToggleButton("off","on");
		counter = new BinaryCounter(0);
		button.addActionListener(counter);
	JPanel contentPane = new JPanel();
	contentPane.add(button);
	contentPane.add(counter);
		JFrame frame = new JFrame("LightSwitch");
		frame.DefaultCloseOperation = JFrame.EXIT_ON_CLOSE;
	frame.ContentPane = contentPane;
		frame.pack();
		frame.setSize(500,200);
		frame.Visible = true;
	}

	public static void Main(string[] args)
	{
		SwingUtilities.invokeLater(() =>
		{
		new LightSwitch();
		});
	}

}
