<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MyAppExtension.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title><%=Name%></title>
</head>
<body>
    Ver 1.0<br />
    <form id="form1" runat="server">
        <div>
            <table>
            <%
    foreach (System.Collections.DictionaryEntry entry in Environment.GetEnvironmentVariables())
    {
            %>
        <tr>
            <%
            if (entry.Key.ToString().IndexOf("letsencrypt:") == -1)
            {
            %>

                <td><%=entry.Key.ToString()%></td>
                <td><%=entry.Value.ToString()%></td>
            <%
                }
            %>
        </tr>
            <%
    }
             %>
                </table>
        </div>
    </form>
</body>
</html>
