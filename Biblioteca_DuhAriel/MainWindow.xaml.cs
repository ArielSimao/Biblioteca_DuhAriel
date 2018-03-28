using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace Biblioteca_DuhAriel
{
    /// <summary>
    /// Interação lógica para MainWindow.xam
    /// </summary>
    public partial class MainWindow : Window
    {

        Livros Liv = new Livros();
        BD Conexao = new BD();

        public List<Livros> ListaLivro = new List<Livros>();

        


        public MainWindow()
        {
            InitializeComponent();

            AtualizarGrid();
        }

        public void LimparCampos ()
        {
            txtId.Clear();
            txtNome.Clear();
            txtEscritor.Clear();
            cbGenero.Text = "";
        }

        public void AtualizarGrid()
        {
            ListaLivro = Conexao.Livros.ToList();
            dgLivros.ItemsSource = null;
            dgLivros.ItemsSource = ListaLivro;
        }

        public void CarregaGenero()
        {
            var sql = from l in Conexao.Genero select l.NomeGenero;
            cbGenero.ItemsSource = sql.ToList();
    
        }

        private void btnSair_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void btnNovo_Click(object sender, RoutedEventArgs e)
        {
            txtNome.Focus();
            LimparCampos();
        }

        
        private void btnSalvar_Click(object sender, RoutedEventArgs e)
        {
            Liv.Nome = txtNome.Text;
            Liv.Escritor = txtEscritor.Text;
            Liv.Genero = cbGenero.Text;
            Conexao.Livros.Add(Liv);
            Conexao.SaveChanges();

            MessageBox.Show("Salvo Com Sucesso !");

            txtId.Text = Liv.Id.ToString();

            LimparCampos();

            AtualizarGrid();
        }

        private void btnPesquisar_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (txtId.Text != "")
                {
                    Liv = Conexao.Livros.Find(int.Parse(txtId.Text));
                    txtNome.Text = Liv.Nome;
                    txtEscritor.Text = Liv.Escritor;
                    cbGenero.Text = Liv.Genero;
                }
                else
                {
                    MessageBox.Show("ID Invalido !");
                    LimparCampos();
                }
            }
            catch(Exception a)
            {
                MessageBox.Show(a.Message);
                LimparCampos();
            }
           
        }

        private void btnExcluir_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                Liv = Conexao.Livros.Remove(Liv);
                Liv.Nome = null;
                Liv.Escritor = null;
                Liv.Genero = null;

                Conexao.SaveChanges();
                MessageBox.Show("Excluido Com Sucesso !");
                LimparCampos();
                AtualizarGrid();
            }
            catch (Exception a)
            {
                MessageBox.Show(a.Message);
                LimparCampos();
            }
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            CarregaGenero();

        }
    }
}
