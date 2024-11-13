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

namespace KT4_AndreevaSophia.Pages
{
    /// <summary>
    /// Логика взаимодействия для All.xaml
    /// </summary>
    public partial class All : Page
    {
        public All()
        {
            InitializeComponent();
            Init();
        }
        public void Init()
        {
            DataGrid.ItemsSource = Data.databaseEntities.GetContext().Main.ToList();
        }

        private void OneP_Click(object sender, RoutedEventArgs e)
        {
            Classes.Manager.MainFrame.Navigate(new Pages.People());
        }

        private void AllP_Click(object sender, RoutedEventArgs e)
        {
            Classes.Manager.MainFrame.Navigate(new Pages.People());
        }
    }
}
