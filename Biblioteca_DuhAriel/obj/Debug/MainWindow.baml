   M S B A M L   `   `   `  ����N  JBiblioteca_DuhAriel, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null9!clr-namespace:Biblioteca_DuhArielBiblioteca_DuhAriel  5   	   $    Biblioteca_DuhAriel.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   3local!clr-namespace:Biblioteca_DuhAriel     5   	   -   5           MaterialDesignBody#���   5      $��Regular"�5	   	   $��13(�5
   	   &   System.Windows.Media.TextOptions    TextFormattingMode$  Ideal=�5   	      TextRenderingMode$
 Auto=�5   	     MaterialDesignPaper#���  5   	     MaterialDesignFont#���  5   	    � WindowStartupLocation$ CenterScreen=�6;   $
��1125��6`   $	��625��6m   .��5      � $��0,-2,0,2q�6   .+�5   
   �� $��ID��6   $
��Left=�6   $��
58,108,0,0q�68   $	��Top=�6L   $��45��6d   $��Right=�6o   �� 5   
   $
��Nome��6   $
��Left=�6   $��
58,176,0,0q�6:   $	��Top=�6N   $��Right=�6f   �� 5   
   $��Escritor��6   $
��Left=�6#   $��
58,220,0,0q�6>   $	��Top=�6R    J� RenderTransformOrigin$ 1.183,5.054&�6j   $��Right=�6�   �� 5   
   $��Genero��6   $
��Left=�6!   $��
58,273,0,0q�6<   $	��Top=�6P   $ 1.183,5.054&�6h   $��Right=�6�   �� 5   
   -   5        $��txtId��5      $
��Left=�6   $��35��6:   $��117,108,0,0q�6F    �� TextWrapping$
 Wrap=�6[   $	��Top=�6o   $��75��6�   $��1q�6�   �� 5   
   -   5        $��txtNome��5      $
��Left=�6!   $��35��6<   $��117,167,0,0q�6H   $
 Wrap=�6]   $	��Top=�6q   $	��217��6�   $��1q�6�    �� 	MaxLength$ 50��6�   �� 5   
   -   5        $��txtEscritor��5      $
��Left=�6%   $��35��6@   $��115,220,0,0q�6L   $
 Wrap=�6a   $	��Top=�6u   $	��217��6�   $��1q�6�   $ 50��6�   �� 5   
   -   5        $��cbGenero��5      $
��Left=�6#   $��117,282,0,0q�6>   $	��Top=�6S   $	��217��6k   $��1q�6w   $��35��6�   �� 5   
   -   5        $��btnNovo��5      $
��Novo��6    $
��Left=�6/   $��
58,366,0,0q�6J   $	��Top=�6^   $	��134��6v   $��39��6�   6�   �� 5   
   -   5        $��	btnSalvar��5      $��Salvar��6"   $
��Left=�63   $��200,366,0,0q�6N   $	��Top=�6c   $	��134��6{   $��39��6�   6�   �� 5   
   -   5        $��btnPesquisar��5      $��	Pesquisar��6%   $
��Left=�69   $��
58,412,0,0q�6T   $	��Top=�6h   $	��134��6�   $��39��6�   6�   �� 5   
   -	   5        $��
btnExcluir��5      $��Excluir��6#   $
��Left=�65   $��200,412,0,0q�6P   $	��Top=�6e   $	��134��6}   $��39��6�   $ 0.616,-0.504&�6�   6�   �� 5   
   -
   5        $��btnSair��5      $
��Sair��6    $
��Left=�6/   $��
58,478,0,0q�6J   $	��Top=�6^   $	��276��6v   $��39��6�   6�   &   System.Windows.Controls.DataGrid  5   
   -   5        $��dgLivros��5      $
��Left=�6#   $	��409��6>   $��408,108,0,0q�6K   $	��Top=�6`   $	��654��6x   $��1q�6�   
���   �   AutoGenerateColumns .     Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6B   1  +System.Windows.Controls.DataGridBoundColumn	   Binding	 6%   �� 
 �� Path$
 Id�6B     5       $
 NOME��6D   	 6%   �� $

 Nome�6D     5!      $ AUTOR��6H   	 6%   �� $
 Escritor�6H     5"      $ GENERO��6F   	 6%   �� $
 Genero�6F   5$      �� 5%   
   $��Biblioteca Duh Ariel��6   $
��Left=�6/   $��
254,33,0,0q�6J   $	��Top=�6^   $	��632��6v   $��Center=�6�   $��22(�6�   $��Black"�6�   5(      5)      