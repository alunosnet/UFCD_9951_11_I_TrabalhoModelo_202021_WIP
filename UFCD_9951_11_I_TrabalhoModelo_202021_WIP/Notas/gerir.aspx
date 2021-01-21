<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="gerir.aspx.cs" Inherits="UFCD_9951_11_I_TrabalhoModelo_202021_WIP.Notas.gerir" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="nr_nota" DataSourceID="SqlNotas">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True"></asp:CommandField>
                    <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome"></asp:BoundField>
                    <asp:BoundField DataField="Expr1" HeaderText="Expr1" SortExpression="Expr1"></asp:BoundField>
                    <asp:BoundField DataField="nr_nota" HeaderText="nr_nota" ReadOnly="True" InsertVisible="False" SortExpression="nr_nota"></asp:BoundField>
                    <asp:BoundField DataField="nprocesso" HeaderText="nprocesso" SortExpression="nprocesso"></asp:BoundField>
                    <asp:BoundField DataField="codigo_disciplina" HeaderText="codigo_disciplina" SortExpression="codigo_disciplina"></asp:BoundField>
                    <asp:BoundField DataField="data_nota" DataFormatString="{0:dd-MM-yyyy}" HeaderText="data_nota" SortExpression="data_nota"></asp:BoundField>
                    <asp:BoundField DataField="nr_modulo" HeaderText="nr_modulo" SortExpression="nr_modulo"></asp:BoundField>
                    <asp:BoundField DataField="nota" HeaderText="nota" SortExpression="nota"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlNotas" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' DeleteCommand="DELETE FROM notas WHERE (nr_nota = @nr_nota)" SelectCommand="SELECT alunos.nome, disciplinas.nome AS Expr1, notas.* FROM alunos INNER JOIN notas ON alunos.nprocesso = notas.nprocesso INNER JOIN disciplinas ON notas.codigo_disciplina = disciplinas.codigo">
                <DeleteParameters>
                    <asp:Parameter Name="nr_nota"></asp:Parameter>
                </DeleteParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
