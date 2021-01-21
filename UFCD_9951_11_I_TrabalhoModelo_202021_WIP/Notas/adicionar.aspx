<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adicionar.aspx.cs" Inherits="UFCD_9951_11_I_TrabalhoModelo_202021_WIP.Notas.adicionar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FormView DefaultMode="Insert" ID="FormView1" runat="server" DataSourceID="SqlNotas" DataKeyNames="nr_nota">
                <EditItemTemplate>
                    nr_nota:
                    <asp:Label Text='<%# Eval("nr_nota") %>' runat="server" ID="nr_notaLabel1" /><br />
                    nprocesso:
                    <asp:TextBox Text='<%# Bind("nprocesso") %>' runat="server" ID="nprocessoTextBox" /><br />
                    codigo_disciplina:
                    <asp:TextBox Text='<%# Bind("codigo_disciplina") %>' runat="server" ID="codigo_disciplinaTextBox" /><br />
                    data_nota:
                    <asp:TextBox Text='<%# Bind("data_nota") %>' runat="server" ID="data_notaTextBox" /><br />
                    nr_modulo:
                    <asp:TextBox Text='<%# Bind("nr_modulo") %>' runat="server" ID="nr_moduloTextBox" /><br />
                    nota:
                    <asp:TextBox Text='<%# Bind("nota") %>' runat="server" ID="notaTextBox" /><br />
                    <asp:LinkButton runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    nprocesso:
                    <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("nprocesso") %>' DataSourceID="SqlAlunos" DataTextField="nome" DataValueField="nprocesso"></asp:DropDownList><asp:SqlDataSource runat="server" ID="SqlAlunos" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [nprocesso], [nome] FROM [alunos] ORDER BY [nome]"></asp:SqlDataSource>
                    <br />
                    codigo_disciplina:
                    <asp:DropDownList ID="DropDownList2" runat="server" SelectedValue='<%# Bind("codigo_disciplina") %>' DataSourceID="SqlDisciplinas" DataTextField="nome" DataValueField="codigo"></asp:DropDownList><asp:SqlDataSource runat="server" ID="SqlDisciplinas" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [codigo], [nome] FROM [disciplinas] ORDER BY [nome]"></asp:SqlDataSource>
                    <br />
                    data_nota:
                    <asp:TextBox TextMode="Date" Text='<%# Bind("data_nota") %>' runat="server" ID="data_notaTextBox" /><br />
                    nr_modulo:
                    <asp:TextBox TextMode="Number" Text='<%# Bind("nr_modulo") %>' runat="server" ID="nr_moduloTextBox" /><br />
                    nota:
                    <asp:TextBox TextMode="Number"  Text='<%# Bind("nota") %>' runat="server" ID="notaTextBox" /><br />
                    <asp:LinkButton runat="server" Text="Insert" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
                </InsertItemTemplate>
                <ItemTemplate>
                    nr_nota:
                    <asp:Label Text='<%# Eval("nr_nota") %>' runat="server" ID="nr_notaLabel" /><br />
                    nprocesso:
                    <asp:Label Text='<%# Bind("nprocesso") %>' runat="server" ID="nprocessoLabel" /><br />
                    codigo_disciplina:
                    <asp:Label Text='<%# Bind("codigo_disciplina") %>' runat="server" ID="codigo_disciplinaLabel" /><br />
                    data_nota:
                    <asp:Label Text='<%# Bind("data_nota") %>' runat="server" ID="data_notaLabel" /><br />
                    nr_modulo:
                    <asp:Label Text='<%# Bind("nr_modulo") %>' runat="server" ID="nr_moduloLabel" /><br />
                    nota:
                    <asp:Label Text='<%# Bind("nota") %>' runat="server" ID="notaLabel" /><br />
                    <asp:LinkButton runat="server" Text="New" CommandName="New" ID="NewButton" CausesValidation="False" />
                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource runat="server" ID="SqlNotas" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' InsertCommand="INSERT INTO notas(nprocesso, codigo_disciplina, data_nota, nr_modulo, nota) VALUES (@nprocesso, @codigo_disciplina, @data_nota, @nr_modulo, @nota)" SelectCommand="select * from notas">
                <InsertParameters>
                    <asp:Parameter Name="nprocesso"></asp:Parameter>
                    <asp:Parameter Name="codigo_disciplina"></asp:Parameter>
                    <asp:Parameter Name="data_nota" DbType="Date"></asp:Parameter>
                    <asp:Parameter Name="nr_modulo"></asp:Parameter>
                    <asp:Parameter Name="nota"></asp:Parameter>
                </InsertParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
