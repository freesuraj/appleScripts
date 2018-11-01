using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;


namespace mousecursor
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();

            this.MouseClick += new System.Windows.Forms.MouseEventHandler(this.MouseUp);
        }

        private void button3_Click(object sender, EventArgs e)
        {
            var x = 0;
            var y = 0;

            this.Cursor = new Cursor(Cursor.Current.Handle);
            Cursor.Position = new Point(Cursor.Position.X - 50, Cursor.Position.Y - 50);
             x = Cursor.Position.X;
             y = Cursor.Position.Y;


        }

        private void MouseUp(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Left)
            {
                
            }
            if (e.Button == MouseButtons.Right)
            {
                
            }
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }
    }
}
