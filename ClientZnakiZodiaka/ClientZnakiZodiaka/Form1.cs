using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using ClientZnakiZodiaka.ServiceReference1;

namespace ClientZnakiZodiaka
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            button1.Enabled = false;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            using (HoroscopClient p = new HoroscopClient())
            {
                try
                {
                    string tt;
                    ClassHoroskop ch = new ClassHoroskop();
                    int temp = int.Parse(textBox1.Text);
                    int month = int.Parse(textBox3.Text);
                    ch = p.ConnectionDataBase(temp, month);
                    label2.Text +="  " + ch.Name;
                    tt = ch.Name;
                    textBox2.Text = ch.Discription;
                    Rendering(ch.Name);
                    pictureBox1.SizeMode = PictureBoxSizeMode.StretchImage;
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
        }
        private void Rendering(string str)
        {
            switch (str)
            {
                case "Oven":
                    pictureBox1.Image = Properties.Resources.Овен;
                    break;
                case "Telec":
                    pictureBox1.Image = Properties.Resources.Телец;
                    break;
                case "Bliznec":
                    pictureBox1.Image = Properties.Resources.Близнецы;
                    break;
                case "Rak":
                    pictureBox1.Image = Properties.Resources.Рак;
                    break;
                case "Lev":
                    pictureBox1.Image = Properties.Resources.Лев;
                    break;
                case "Deva":
                    pictureBox1.Image = Properties.Resources.Дева;
                    break;
                case "Vesi":
                    pictureBox1.Image = Properties.Resources.Весы;
                    break;
                case "Scorpion":
                    pictureBox1.Image = Properties.Resources.Рак;
                    break;
                case "Strelec":
                    pictureBox1.Image = Properties.Resources.Стрелец;
                    break;
                case "Kozerog":
                    pictureBox1.Image = Properties.Resources.Козерог;
                    break;
                case "Vodoley":
                    pictureBox1.Image = Properties.Resources.Водолей;
                    break;
                case "Ruba":
                    pictureBox1.Image = Properties.Resources.Рыбы;
                    break;
            }
          
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            button1.Enabled = true;
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }
    }
}
