   M S B A M L   `   `   `  ����  ConfigGenerator     ConfigGenerator.MainWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   Aav2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     6G     � Title$  Config Generator��5   	   $	��300��6"   $	��500��6/   .��5      � $��10q�6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5	      $
��Auto �6   �� 5
      $
��Auto �6   �� 5      $��* �6   .+�5   
   ��  �� Orientation$ 
Horizontal=�6   $��0��6.   $��0,0,0,10q�6;   .+�5      �� $��Architecture:��6   $��Center=�6,   $	��100��6G   �� 5      -   5         ��Name$ ArchitectureComboBox��5      $	��250��65   .@�5      �� $	��x86��6   �� 5      $	��x64��6   �� 5      $	��ARM��6   5      5      �� 5   
   $ 
Horizontal=�6   $��1��6.   $��0,0,0,10q�6;   .+�5      �� $��	Firmware:��6   $��Center=�6(   $	��100��6C   �� 5      -   5        $ FirmwareComboBox��5      $	��250��61   $��20��6=   .@�5      �� $
��BIOS��6   �� 5      $
��UEFI��6   5      5      �� 5   
   -   5         ��Name$ GenerateButton��5      $��Generate��6)   $	��100��6<   $��2��6H   $
��Left=�5        J� RenderTransformOrigin$ -0.95,-0.317&�6J   $��370,105,0,35q�6o   �� 5!   
   $��Output File:��6   $	��Top=�6'   $
��Left=�6?   $	��100��6Z   $��0,20,0,0q�6f   $ -0.95,-0.317&�6y   $��2��6�   6�   �� 5"   
   -   5        $ SelectFileButton��5"      $��Select file��6+   $��83��6A   $��2��6L   $
��Left=�5#      $ -0.95,-0.317&�6F   $��105,20,0,108q�6k   �� 5$   
   $��
Disk File:��6   $��Center=�6%   $
��Left=�6@   $	��100��6[   $ -0.95,-0.317&�6h   $��2��6�   �� 5%   
   -   5        $ SelctDiskImage��5%      $��Select Image��6)   $��83��6@   $��2��6K   $
��Left=�5&      $ -0.95,-0.317&�6F   $��105,67,0,61q�6k   5(      5*      