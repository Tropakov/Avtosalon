using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;
namespace avtosalon
{
    public partial class spravka : Form
    {
        public spravka()
        {
            InitializeComponent();
            getinfo();
        }

        private void getinfo()
        {
            string query = "SELECT id_avto, cost, model FROM spravka";
            MySqlConnection conn = DBUtils.GetDBConnection();
            MySqlDataAdapter sda = new MySqlDataAdapter(query, conn);
            DataTable dt = new DataTable();
            try
            {
                conn.Open();
                sda.Fill(dt);
                dataGridView1.DataSource = dt;
                dataGridView1.ClearSelection();
                conn.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Произошла непредвиденная ошибка!" + Environment.NewLine + ex.Message);
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Owner.Show();
            this.Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            try
            {
                MySqlConnection conn = new MySqlConnection("Server=localhost;Database=avtosalon;User=root;Password=2633;");
                MySqlCommand cmd = new MySqlCommand("update spravka set id_avto ='" + textBox1.Text + "', cost = '" + textBox2.Text + dataGridView1[0, dataGridView1.CurrentRow.Index].Value.ToString() + ";", conn);
                conn.Open();
                cmd.ExecuteReader();
                conn.Close();
                getinfo("select * from spravka;");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void getinfo(string v)
        {
            throw new NotImplementedException();
        }
    }
}
