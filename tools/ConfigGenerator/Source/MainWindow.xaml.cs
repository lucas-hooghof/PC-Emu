using System.Windows;
using System.Windows.Controls;


namespace ConfigGenerator
{
    public partial class MainWindow : Window
    {
        private string StoredFile = null;
        private string StoredDiskImage = null;
        private const string ConfigFileSig = "PEF";

        private const char ConfigFileArchitectureSig = 'A';
        private const char ConfigFileFirmwareSig = 'F';
        private const char ConfigFileDiskImage = 'D';
        public MainWindow()
        {
            InitializeComponent();
            
        }

        private void SelectDisk_Click(object sender, RoutedEventArgs e)
        {
            var FileDialog = new Microsoft.Win32.SaveFileDialog();
            FileDialog.FileName = "OS";
            FileDialog.DefaultExt = ".img";
            FileDialog.Filter = "Disk Images (.hdd .img)|*.hdd *.img";

            bool? result = FileDialog.ShowDialog();

            if (result == true)
            {
                StoredDiskImage = FileDialog.FileName;
            }
        }

        private void SelectFile_Click(object sender, RoutedEventArgs e)
        {
            var FileDialog = new Microsoft.Win32.SaveFileDialog();
            FileDialog.FileName = "Config";
            FileDialog.DefaultExt = ".pecf";
            FileDialog.Filter = "PC-Emu config (.pecf)|*.pecf";

            bool? result = FileDialog.ShowDialog();

            if (result == true)
            {
                StoredFile = FileDialog.FileName;
            }
        }

        private void GenerateButton_Click(object sender, RoutedEventArgs e)
        {
            string SelectedArchitecture = (ArchitectureComboBox.SelectedItem as ComboBoxItem)?.Content.ToString();
            string SelectedFirmware = (FirmwareComboBox.SelectedItem as ComboBoxItem)?.Content.ToString();

            if (string.IsNullOrEmpty(SelectedArchitecture))
            {
                MessageBox.Show($"Architecture not set","Error",MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }
            if (string.IsNullOrEmpty(SelectedFirmware))
            {
                MessageBox.Show($"Firmware not set","Error",MessageBoxButton.OK,MessageBoxImage.Error);
                return;
            }
            if (string.IsNullOrEmpty(StoredFile))
            {
                MessageBox.Show($"No output file set", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            System.IO.BinaryWriter config = new System.IO.BinaryWriter(System.IO.File.Open(StoredFile, System.IO.FileMode.Create));
            config.Write(ConfigFileSig);

            config.Write(ConfigFileArchitectureSig);
            config.Write(SelectedArchitecture);
            config.Write(ConfigFileFirmwareSig);
            config.Write(SelectedFirmware);
            config.Write(ConfigFileDiskImage);
            if (StoredDiskImage != null)
            {
                config.Write(StoredDiskImage);
            }
            else
            {
                config.Write("NULL");
            }

            MessageBox.Show($"Done", "Info", MessageBoxButton.OK, MessageBoxImage.Information);
        }
    }
}
