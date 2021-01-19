<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pesquisar.aspx.cs" Inherits="UFCD_9951_11_I_TrabalhoModelo_202021_WIP.Alunos.Pesquisar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="/public/bootstrap.min.css" rel="stylesheet" />
    <link href="/public/estilos.css" rel="stylesheet" />
</head>
<body>
    <!--Menu-->
    <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
        <a class="navbar-brand" href="/index.aspx">PS - UFCD 9951</a>
        <!--Botão hamburguer-->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <!--Botão hamburguer-->
        <div class="collapse navbar-collapse" id="navbarsExampleDefault">
            <ul class="navbar-nav mr-auto">
                <!--Alunos-->
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Alunos</a>
                    <div class="dropdown-menu" aria-labelledby="dropdown01">
                        <a class="dropdown-item" href="/Alunos/adicionar.aspx">Adicionar</a>
                        <a class="dropdown-item" href="/Alunos/gerir.aspx">Gerir</a>
                        <a class="dropdown-item" href="/Alunos/pesquisar.aspx">Pesquisar</a>
                    </div>
                </li>
                <!--Alunos-->
                <!--Disciplinas-->
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="dropdown02" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Disciplinas</a>
                    <div class="dropdown-menu" aria-labelledby="dropdown02">
                        <a class="dropdown-item" href="/Disciplinas/adicionar.aspx">Adicionar</a>
                        <a class="dropdown-item" href="/Disciplinas/gerir.aspx">Gerir</a>
                        <a class="dropdown-item" href="/Disciplinas/pesquisar.aspx">Pesquisar</a>
                    </div>
                </li>
                <!--Disciplinas-->
                <!--Notas-->
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="dropdown03" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Notas</a>
                    <div class="dropdown-menu" aria-labelledby="dropdown03">
                        <a class="dropdown-item" href="/Notas/adicionar.aspx">Adicionar</a>
                        <a class="dropdown-item" href="/Notas/gerir.aspx">Gerir</a>
                        <a class="dropdown-item" href="/Notas/pesquisar.aspx">Pesquisar</a>
                    </div>
                </li>
                <!--Notas-->
                <!--Estatísticas-->
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Estatísticas</a>
                    <div class="dropdown-menu" aria-labelledby="dropdown04">
                        <a class="dropdown-item"  href="/Consultas/media_aluno.aspx">Média por aluno</a>
                        <a class="dropdown-item"  href="/Consultas/melhor_aluno.aspx">Melhor aluno</a>
                        <a class="dropdown-item"  href="/Consultas/nr_notas_disciplina.aspx">Nr de Notas Por Disciplina</a>
                    </div>
                </li>
                <!--Estatísticas-->
            </ul>
        </div>
    </nav>
    <!--Menu-->
    <form id="form1" runat="server">
        <div class="container">
            <h1>Pesquisar aluno</h1>
            Nome:<asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"></asp:TextBox><asp:Button CssClass="btn btn-info" ID="Button1" runat="server" Text="Pesquisar" />
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlAlunos" DataKeyNames="nprocesso">
                <AlternatingItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Label Text='<%# Eval("nprocesso") %>' runat="server" ID="nprocessoLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("nome") %>' runat="server" ID="nomeLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("data_nascimento") %>' runat="server" ID="data_nascimentoLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("genero") %>' runat="server" ID="generoLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("morada") %>' runat="server" ID="moradaLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("cp") %>' runat="server" ID="cpLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("localidade") %>' runat="server" ID="localidadeLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("email") %>' runat="server" ID="emailLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("fotografia") %>' runat="server" ID="fotografiaLabel" /></td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" />
                            <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" />
                        </td>
                        <td>
                            <asp:Label Text='<%# Eval("nprocesso") %>' runat="server" ID="nprocessoLabel1" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("nome") %>' runat="server" ID="nomeTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("data_nascimento") %>' runat="server" ID="data_nascimentoTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("genero") %>' runat="server" ID="generoTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("morada") %>' runat="server" ID="moradaTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("cp") %>' runat="server" ID="cpTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("localidade") %>' runat="server" ID="localidadeTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("email") %>' runat="server" ID="emailTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("fotografia") %>' runat="server" ID="fotografiaTextBox" /></td>
                    </tr>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="">
                        <tr>
                            <td>No data was returned.</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" />
                            <asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" />
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            <asp:TextBox Text='<%# Bind("nome") %>' runat="server" ID="nomeTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("data_nascimento") %>' runat="server" ID="data_nascimentoTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("genero") %>' runat="server" ID="generoTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("morada") %>' runat="server" ID="moradaTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("cp") %>' runat="server" ID="cpTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("localidade") %>' runat="server" ID="localidadeTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("email") %>' runat="server" ID="emailTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("fotografia") %>' runat="server" ID="fotografiaTextBox" /></td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Label Text='<%# Eval("nprocesso") %>' runat="server" ID="nprocessoLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("nome") %>' runat="server" ID="nomeLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("data_nascimento") %>' runat="server" ID="data_nascimentoLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("genero") %>' runat="server" ID="generoLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("morada") %>' runat="server" ID="moradaLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("cp") %>' runat="server" ID="cpLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("localidade") %>' runat="server" ID="localidadeLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("email") %>' runat="server" ID="emailLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("fotografia") %>' runat="server" ID="fotografiaLabel" /></td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table class="table" runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table runat="server" id="itemPlaceholderContainer" style="" border="0">
                                    <tr runat="server" style="">
                                        <th runat="server">nprocesso</th>
                                        <th runat="server">nome</th>
                                        <th runat="server">data_nascimento</th>
                                        <th runat="server">genero</th>
                                        <th runat="server">morada</th>
                                        <th runat="server">cp</th>
                                        <th runat="server">localidade</th>
                                        <th runat="server">email</th>
                                        <th runat="server">fotografia</th>
                                    </tr>
                                    <tr runat="server" id="itemPlaceholder"></tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style=""></td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Label Text='<%# Eval("nprocesso") %>' runat="server" ID="nprocessoLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("nome") %>' runat="server" ID="nomeLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("data_nascimento") %>' runat="server" ID="data_nascimentoLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("genero") %>' runat="server" ID="generoLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("morada") %>' runat="server" ID="moradaLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("cp") %>' runat="server" ID="cpLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("localidade") %>' runat="server" ID="localidadeLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("email") %>' runat="server" ID="emailLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("fotografia") %>' runat="server" ID="fotografiaLabel" /></td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource runat="server" ID="SqlAlunos" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [alunos] WHERE ([nome] LIKE '%' + @nome + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" PropertyName="Text" Name="nome" Type="String"></asp:ControlParameter>
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
      <script src="/public/jquery-3.5.1.slim.min.js"></script>
    <script src="/public/bootstrap.bundle.min.js"></script>
</body>
</html>
