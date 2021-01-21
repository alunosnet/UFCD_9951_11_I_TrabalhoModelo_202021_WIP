<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pesquisar.aspx.cs" Inherits="UFCD_9951_11_I_TrabalhoModelo_202021_WIP.Notas.pesquisar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!--Pesquisar por aluno com dropdownlist-->
            Aluno:<asp:DropDownList AutoPostBack="true" ID="DropDownList1" runat="server" DataSourceID="SqlAlunos" DataTextField="nome" DataValueField="nprocesso"></asp:DropDownList>
            <asp:SqlDataSource runat="server" ID="SqlAlunos" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [nprocesso], [nome] FROM [alunos] ORDER BY [nome]"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlNotas">
                <Columns>
                    <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome"></asp:BoundField>
                    <asp:BoundField DataField="ano_escolaridade" HeaderText="ano_escolaridade" SortExpression="ano_escolaridade"></asp:BoundField>
                    <asp:BoundField DataField="data_nota" HeaderText="data_nota" SortExpression="data_nota"></asp:BoundField>
                    <asp:BoundField DataField="nr_modulo" HeaderText="nr_modulo" SortExpression="nr_modulo"></asp:BoundField>
                    <asp:BoundField DataField="nota" HeaderText="nota" SortExpression="nota"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlNotas" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT disciplinas.nome, disciplinas.ano_escolaridade, notas.data_nota, notas.nr_modulo, notas.nota FROM disciplinas INNER JOIN notas ON disciplinas.codigo = notas.codigo_disciplina
where nprocesso=@nprocesso">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" PropertyName="SelectedValue" Name="nprocesso"></asp:ControlParameter>
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
