<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="yazilim_admin13062022.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="tc" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
                <Columns>
                    <asp:BoundField DataField="tc" HeaderText="tc" ReadOnly="True" SortExpression="tc" />
                    <asp:BoundField DataField="unvan" HeaderText="unvan" SortExpression="unvan" />
                    <asp:BoundField DataField="cinsiyet" HeaderText="cinsiyet" SortExpression="cinsiyet" />
                    <asp:BoundField DataField="dtar" HeaderText="dtar" SortExpression="dtar" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:yazkutuphanedbConnectionString1 %>" DeleteCommand="DELETE FROM [okuyucu] WHERE [tc] = @tc" InsertCommand="INSERT INTO [okuyucu] ([tc], [unvan], [cinsiyet], [dtar]) VALUES (@tc, @unvan, @cinsiyet, @dtar)" ProviderName="<%$ ConnectionStrings:yazkutuphanedbConnectionString1.ProviderName %>" SelectCommand="SELECT [tc], [unvan], [cinsiyet], [dtar] FROM [okuyucu]" UpdateCommand="UPDATE [okuyucu] SET [unvan] = @unvan, [cinsiyet] = @cinsiyet, [dtar] = @dtar WHERE [tc] = @tc">
                <DeleteParameters>
                    <asp:Parameter Name="tc" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="tc" Type="String" />
                    <asp:Parameter Name="unvan" Type="String" />
                    <asp:Parameter Name="cinsiyet" Type="String" />
                    <asp:Parameter DbType="Date" Name="dtar" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="unvan" Type="String" />
                    <asp:Parameter Name="cinsiyet" Type="String" />
                    <asp:Parameter DbType="Date" Name="dtar" />
                    <asp:Parameter Name="tc" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
