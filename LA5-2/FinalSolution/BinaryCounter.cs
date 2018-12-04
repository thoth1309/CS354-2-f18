using System;
using System.Windows.Forms;

public class BinaryCounter : Label
{

    private int count;

    public BinaryCounter(int count) : base()
    {
        Location = new System.Drawing.Point(255, 25);
        Name = "BinaryCounter";
        Text = Convert.ToString(count,2);
        TabIndex = 1;
        this.count = count;
    }

    public virtual void actionPerformed(object sender, System.EventArgs e)
    {
        Text = Convert.ToString(++count,2);
    }

}
