<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pesquisar.aspx.cs" Inherits="UFCD_9951_11_I_TrabalhoModelo_202021_WIP.Disciplinas.pesquisar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Nome da disciplina:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button  ID="Button1" runat="server" Text="Pesquisar" />
            <asp:GridView EmptyDataText="Não foram encontradas disciplinas" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="codigo" DataSourceID="SqlDisciplinas">
                <Columns>
                    <asp:CommandField ShowSelectButton="True"></asp:CommandField>
                    <asp:BoundField DataField="codigo" HeaderText="codigo" ReadOnly="True" InsertVisible="False" SortExpression="codigo"></asp:BoundField>
                    <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome"></asp:BoundField>
                    <asp:BoundField DataField="nr_modulos" HeaderText="nr_modulos" SortExpression="nr_modulos"></asp:BoundField>
                    <asp:BoundField DataField="ano_escolaridade" HeaderText="ano_escolaridade" SortExpression="ano_escolaridade"></asp:BoundField>
                </Columns>
            </asp:GridView>

            <asp:SqlDataSource runat="server" ID="SqlDisciplinas" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [disciplinas] WHERE ([nome] LIKE '%' + @nome + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" PropertyName="Text" Name="nome" Type="String"></asp:ControlParameter>
                </SelectParameters>
            </asp:SqlDataSource>
        
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlNotas">
                <AlternatingItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Label Text='<%# Eval("data_nota") %>' runat="server" ID="data_notaLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("nr_modulo") %>' runat="server" ID="nr_moduloLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("nota") %>' runat="server" ID="notaLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("nome") %>' runat="server" ID="nomeLabel" /></td>
                    </tr>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" />
                            <asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" />
                        </td>
                        <td>
                            <asp:TextBox Text='<%# Bind("data_nota") %>' runat="server" ID="data_notaTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("nr_modulo") %>' runat="server" ID="nr_moduloTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("nota") %>' runat="server" ID="notaTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("nome") %>' runat="server" ID="nomeTextBox" /></td>
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
                        <td>
                            <asp:TextBox Text='<%# Bind("data_nota") %>' runat="server" ID="data_notaTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("nr_modulo") %>' runat="server" ID="nr_moduloTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("nota") %>' runat="server" ID="notaTextBox" /></td>
                        <td>
                            <asp:TextBox Text='<%# Bind("nome") %>' runat="server" ID="nomeTextBox" /></td>
                    </tr>
                </InsertItemTemplate>
                <ItemTemplate>
                    <tr style="">
                        <td>
                            <asp:Label Text='<%# Eval("data_nota") %>' runat="server" ID="data_notaLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("nr_modulo") %>' runat="server" ID="nr_moduloLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("nota") %>' runat="server" ID="notaLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("nome") %>' runat="server" ID="nomeLabel" /></td>
                    </tr>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table runat="server" id="itemPlaceholderContainer" style="" border="0">
                                    <tr runat="server" style="">
                                        <th runat="server">data_nota</th>
                                        <th runat="server">nr_modulo</th>
                                        <th runat="server">nota</th>
                                        <th runat="server">nome</th>
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
                            <asp:Label Text='<%# Eval("data_nota") %>' runat="server" ID="data_notaLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("nr_modulo") %>' runat="server" ID="nr_moduloLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("nota") %>' runat="server" ID="notaLabel" /></td>
                        <td>
                            <asp:Label Text='<%# Eval("nome") %>' runat="server" ID="nomeLabel" /></td>
                    </tr>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource runat="server" ID="SqlNotas" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT notas.data_nota, notas.nr_modulo, notas.nota, alunos.nome FROM notas INNER JOIN alunos ON notas.nprocesso = alunos.nprocesso WHERE (notas.codigo_disciplina = @codigo_disciplina)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" PropertyName="SelectedValue" Name="codigo_disciplina"></asp:ControlParameter>
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
