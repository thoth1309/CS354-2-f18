using System.Windows.Forms;

public class ToggleButton : Button
{

    private string label1, label2;

    public ToggleButton(string label1, string label2) : base()
    {
        Location = new System.Drawing.Point(175, 20);
        Text = label1;
        TabIndex = 0;
        this.label1 = label1;
        this.label2 = label2;
        Click += new System.EventHandler(this.actionPerformed);
    }

    private void actionPerformed(object sender, System.EventArgs e)
    {
        string s = label1;
        label1 = label2;
        label2 = s;
        Text = label1;
    }

}
