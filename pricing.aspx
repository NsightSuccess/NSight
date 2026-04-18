<%@ Page Language="VB"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Product Pricing</title>
</head>
<body>
    <form id="form1" runat="server" target="_blank">
    <div align="center">
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            Caption="Nsight Positive Impressions Questionnaire(NPIQ" DataSourceID="npiq" 
            Width="264px">
            <Columns>
                <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" />
                <asp:BoundField DataField="Qty2" HeaderText="Qty2" SortExpression="Qty2" />
                <asp:BoundField DataField="UnitPrice" DataFormatString="{0:c}" 
                    HeaderText="UnitPrice" SortExpression="UnitPrice" />
            </Columns>
        </asp:GridView>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            Caption="Nsight Aptitude(NAQ)" DataSourceID="npq" 
            Width="264px">
            <Columns>
                <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" />
                <asp:BoundField DataField="Qty2" HeaderText="Qty2" SortExpression="Qty2" />
                <asp:BoundField DataField="UnitPrice" DataFormatString="{0:c}" 
                    HeaderText="UnitPrice" SortExpression="UnitPrice" />
            </Columns>
        </asp:GridView>
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
            Caption="Nsight Personality Questionnaire(NPQ)" DataSourceID="napq" 
            Width="264px">
            <Columns>
                <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" />
                <asp:BoundField DataField="Qty2" HeaderText="Qty2" SortExpression="Qty2" />
                <asp:BoundField DataField="UnitPrice" DataFormatString="{0:c}" 
                    HeaderText="UnitPrice" SortExpression="UnitPrice" />
            </Columns>
        </asp:GridView>
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
            Caption="Nsight Aptitude/Personality Questionnaire(NAPQ)" 
            DataSourceID="naq" Width="264px">
            <Columns>
                <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" />
                <asp:BoundField DataField="Qty2" HeaderText="Qty2" SortExpression="Qty2" />
                <asp:BoundField DataField="UnitPrice" DataFormatString="{0:c}" 
                    HeaderText="UnitPrice" SortExpression="UnitPrice" />
            </Columns>
        </asp:GridView>
        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
            Caption="Nsight Verbal Reasoning(NVRQ)" DataSourceID="nvrq" Width="264px">
            <Columns>
                <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" />
                <asp:BoundField DataField="Qty2" HeaderText="Qty2" SortExpression="Qty2" />
                <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" 
                    SortExpression="UnitPrice" />
            </Columns>
        </asp:GridView>
        <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" 
            Caption="Nsight Numerical Reasoning(NNRQ)" DataSourceID="nnrq" Width="264px">
            <Columns>
                <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" />
                <asp:BoundField DataField="Qty2" HeaderText="Qty2" SortExpression="Qty2" />
                <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" 
                    SortExpression="UnitPrice" />
            </Columns>
        </asp:GridView>
        <asp:GridView ID="GridView7" runat="server" AutoGenerateColumns="False" 
            Caption="Nsight Vocabulary(NVQ)" DataSourceID="nvq" Width="264px">
            <Columns>
                <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" />
                <asp:BoundField DataField="Qty2" HeaderText="Qty2" SortExpression="Qty2" />
                <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" 
                    SortExpression="UnitPrice" />
            </Columns>
        </asp:GridView>
        <asp:GridView ID="GridView8" runat="server" AutoGenerateColumns="False" 
            Caption="Nsight Visual Perception(NVPQ)" DataSourceID="nvpq" Width="264px">
            <Columns>
                <asp:BoundField DataField="Qty" HeaderText="Qty" SortExpression="Qty" />
                <asp:BoundField DataField="Qty2" HeaderText="Qty2" SortExpression="Qty2" />
                <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" 
                    SortExpression="UnitPrice" />
            </Columns>
        </asp:GridView>
        <br />
        <a href="javascript:closeWin()" style="text-align: center">Close Window</a>
<script type="text/javascript">
<!--
function closeWin()
{
    close();
}

//-->
</script>
        <asp:SqlDataSource ID="npq" runat="server" 
            ConnectionString="<%$ ConnectionStrings:insi40ConnectionString %>" 
            SelectCommand="SELECT Prod_Prices.Qty, Prod_Prices.Qty2, Prod_Prices.UnitPrice FROM Prod_Prices INNER JOIN Products ON Prod_Prices.ProductID = Products.ProductID WHERE (Products.ProductID = 1)">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="npiq" runat="server" 
            ConnectionString="<%$ ConnectionStrings:insi40ConnectionString %>" 
            SelectCommand="SELECT Prod_Prices.Qty, Prod_Prices.Qty2, Prod_Prices.UnitPrice FROM Prod_Prices INNER JOIN Products ON Prod_Prices.ProductID = Products.ProductID WHERE (Prod_Prices.ProductID = 1)">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="napq" runat="server" 
            ConnectionString="<%$ ConnectionStrings:insi40ConnectionString %>" SelectCommand="SELECT        Prod_Prices.Qty, Prod_Prices.Qty2, Prod_Prices.UnitPrice
FROM            Prod_Prices INNER JOIN
                         Products ON Prod_Prices.ProductID = Products.ProductID
WHERE        (Products.ProductID = 2)"></asp:SqlDataSource>
        <asp:SqlDataSource ID="naq" runat="server" 
            ConnectionString="<%$ ConnectionStrings:insi40ConnectionString %>" SelectCommand="SELECT        Prod_Prices.Qty, Prod_Prices.Qty2, Prod_Prices.UnitPrice
FROM            Prod_Prices INNER JOIN
                         Products ON Prod_Prices.ProductID = Products.ProductID
WHERE        (Products.ProductID = 3)"></asp:SqlDataSource>
        <asp:SqlDataSource ID="nvrq" runat="server" 
            ConnectionString="<%$ ConnectionStrings:insi40ConnectionString %>" SelectCommand="SELECT        Prod_Prices.Qty, Prod_Prices.Qty2, Prod_Prices.UnitPrice
FROM            Prod_Prices INNER JOIN
                         Products ON Prod_Prices.ProductID = Products.ProductID
WHERE        (Products.ProductID = 4)"></asp:SqlDataSource>
        <asp:SqlDataSource ID="nnrq" runat="server" 
            ConnectionString="<%$ ConnectionStrings:insi40ConnectionString %>" SelectCommand="SELECT        Prod_Prices.Qty, Prod_Prices.Qty2, Prod_Prices.UnitPrice
FROM            Prod_Prices INNER JOIN
                         Products ON Prod_Prices.ProductID = Products.ProductID
WHERE        (Products.ProductID = 5)"></asp:SqlDataSource>
        <asp:SqlDataSource ID="nvq" runat="server" 
            ConnectionString="<%$ ConnectionStrings:insi40ConnectionString %>" SelectCommand="SELECT        Prod_Prices.Qty, Prod_Prices.Qty2, Prod_Prices.UnitPrice
FROM            Prod_Prices INNER JOIN
                         Products ON Prod_Prices.ProductID = Products.ProductID
WHERE        (Products.ProductID = 7)"></asp:SqlDataSource>
        <asp:SqlDataSource ID="nvpq" runat="server" 
            ConnectionString="<%$ ConnectionStrings:insi40ConnectionString %>" SelectCommand="SELECT        Prod_Prices.Qty, Prod_Prices.Qty2, Prod_Prices.UnitPrice
FROM            Prod_Prices INNER JOIN
                         Products ON Prod_Prices.ProductID = Products.ProductID
WHERE        (Products.ProductID = 8)"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
