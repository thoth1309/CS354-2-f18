using System.Windows.Forms;

public class LightSwitch : Form
{

    private ToggleButton button;
    private BinaryCounter counter;

    public LightSwitch()
    {
        Name = "LightSwitch";
        Text = "LightSwitch";
        SuspendLayout();
        button = new ToggleButton("off", "on");
        counter = new BinaryCounter(0);
        button.Click += new System.EventHandler(counter.actionPerformed);


        ClientSize = new System.Drawing.Size(500, 200);
        Controls.AddRange(new System.Windows.Forms.Control[]
        {
            button, counter
        });

        ResumeLayout(false);
    }

    public static void Main(string[] args)
    {
        Application.Run(new LightSwitch());
    }

}
