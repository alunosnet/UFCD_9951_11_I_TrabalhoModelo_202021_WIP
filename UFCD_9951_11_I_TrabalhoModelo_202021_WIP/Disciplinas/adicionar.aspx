<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adicionar.aspx.cs" Inherits="UFCD_9951_11_I_TrabalhoModelo_202021_WIP.Disciplinas.adicionar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FormView DefaultMode="Insert" ID="FormView1" runat="server" DataKeyNames="codigo" DataSourceID="SqlDataSource1">
                <EditItemTemplate>
                    codigo:
                    <asp:Label Text='<%# Eval("codigo") %>' runat="server" ID="codigoLabel1" /><br />
                    nome:
                    <asp:TextBox Text='<%# Bind("nome") %>' runat="server" ID="nomeTextBox" /><br />
                    nr_modulos:
                    <asp:TextBox Text='<%# Bind("nr_modulos") %>' runat="server" ID="nr_modulosTextBox" /><br />
                    ano_escolaridade:
                    <asp:TextBox Text='<%# Bind("ano_escolaridade") %>' runat="server" ID="ano_escolaridadeTextBox" /><br />
                    <asp:LinkButton runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    nome:
                    <asp:TextBox Text='<%# Bind("nome") %>' runat="server" ID="nomeTextBox" /><br />
                    nr_modulos:
                    <asp:TextBox Text='<%# Bind("nr_modulos") %>' runat="server" ID="nr_modulosTextBox" /><br />
                    ano_escolaridade:
                    <asp:TextBox Text='<%# Bind("ano_escolaridade") %>' runat="server" ID="ano_escolaridadeTextBox" /><br />
                    <asp:LinkButton runat="server" Text="Insert" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
                </InsertItemTemplate>
                <ItemTemplate>
                    codigo:
                    <asp:Label Text='<%# Eval("codigo") %>' runat="server" ID="codigoLabel" /><br />
                    nome:
                    <asp:Label Text='<%# Bind("nome") %>' runat="server" ID="nomeLabel" /><br />
                    nr_modulos:
                    <asp:Label Text='<%# Bind("nr_modulos") %>' runat="server" ID="nr_modulosLabel" /><br />
                    ano_escolaridade:
                    <asp:Label Text='<%# Bind("ano_escolaridade") %>' runat="server" ID="ano_escolaridadeLabel" /><br />
                    <asp:LinkButton runat="server" Text="New" CommandName="New" ID="NewButton" CausesValidation="False" />
                </ItemTemplate>
            </asp:FormView>

            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' InsertCommand="INSERT INTO disciplinas(nome, nr_modulos, ano_escolaridade) VALUES (@nome, @nr_modulos, @ano_escolaridade)" SelectCommand="SELECT * FROM [disciplinas]">
                <InsertParameters>
                    <asp:Parameter Name="nome"></asp:Parameter>
                    <asp:Parameter Name="nr_modulos"></asp:Parameter>
                    <asp:Parameter Name="ano_escolaridade"></asp:Parameter>
                </InsertParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
