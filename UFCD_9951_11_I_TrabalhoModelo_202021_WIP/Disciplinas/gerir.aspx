<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gerir.aspx.cs" Inherits="UFCD_9951_11_I_TrabalhoModelo_202021_WIP.Disciplinas.gerir" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="codigo" DataSourceID="SqlDisciplinas" AllowSorting="True" AllowPaging="True">
                <Columns>
                    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                    <asp:BoundField DataField="codigo" HeaderText="codigo" ReadOnly="True" InsertVisible="False" SortExpression="codigo"></asp:BoundField>
                    <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome"></asp:BoundField>
                    <asp:BoundField DataField="nr_modulos" HeaderText="nr_modulos" SortExpression="nr_modulos"></asp:BoundField>
                    <asp:BoundField DataField="ano_escolaridade" HeaderText="ano_escolaridade" SortExpression="ano_escolaridade"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDisciplinas" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' DeleteCommand="delete from disciplinas WHERE codigo=@codigo" SelectCommand="SELECT * FROM [disciplinas]" UpdateCommand="UPDATE disciplinas SET nome = @nome, nr_modulos = @nr_modulos, ano_escolaridade = @ano_escolaridade WHERE (codigo = @codigo)">
                <DeleteParameters>
                    <asp:Parameter Name="codigo"></asp:Parameter>
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="nome"></asp:Parameter>
                    <asp:Parameter Name="nr_modulos"></asp:Parameter>
                    <asp:Parameter Name="ano_escolaridade"></asp:Parameter>
                    <asp:Parameter Name="codigo"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
