<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EP_TRA.aspx.cs"  Inherits="Default" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html>

  


<script runat="server" herf="EP_TRA.aspx.cs" >

    List<string> temp = new List<string>();

    string sql1 = "select Im_Value from npiimportdata where SType='DIF' AND Im_Pos='D4' ";
    string sql2 = "select Im_Value from npiimportdata where SType='DIF' AND Im_Pos='D5' ";
    string sql3 = "select Im_Value from npiimportdata where SType='DIF' AND Im_Pos='D19' ";
    string sql4 = "select Im_Value from npiimportdata where SType='DIF' AND Im_Pos='G19' ";
    string sql5 = "select Im_Value from npiimportdata where SType='Q_R' AND Im_Pos='D16' ";
    string sql6 = "select Im_Value from npiimportdata where SType='Q_R' AND Im_Pos='D13' ";
    string sql7 = "select Im_Value from npiimportdata where SType='Q_R' AND Im_Pos='D7' ";
    string sql8 = "select Im_Value from npiimportdata where SType='Q_R' AND Im_Pos='D8' ";
    string sql9 = "select Im_Value from npiimportdata where SType='Q_R' AND Im_Pos='D9' ";
    string sql10 = "select Im_Value from npiimportdata where SType='DIF' AND Im_Pos='F11' ";
    string sql11 = "select Im_Value from npiimportdata where SType='Q_R' AND Im_Pos='D11' ";
    string sql12 = "select Im_Value from npiimportdata where SType='Q_R' AND Im_Pos='D12' ";
    string sql13 = "select Im_Value from npiimportdata where SType='Q_R' AND Im_Pos='D26' ";
    string sql14 = "select Im_Value from npiimportdata where SType='DRC' AND Im_Pos='F38' ";
    string sql15 = "select Im_Value from npiimportdata where SType='DRC' AND Im_Pos='F39' ";
    string sql16 = "select Im_Value from npiimportdata where SType='DRC' AND Im_Pos='F35' ";
    string sql17 = "select Im_Value from npiimportdata where SType='DRC' AND Im_Pos='F34' ";
    string sql18 = "select Im_Value from npiimportdata where SType='DIF' AND Im_Pos='D29' ";
    string sql19 = "select Im_Value from npiimportdata where SType='Q_R' AND Im_Pos='E26' ";
    string sql20 = "select Im_Value from npiimportdata where SType='Q_R' AND Im_Pos='D30' ";
    string sql21 = "select Im_Value from npiimportdata where SType='DIF' AND Im_Pos='D30' ";

   




    protected void Search_Device_Butt1_Click(object sender, EventArgs e)
    {

        string SQL_Customer = "SELECT DISTINCT npiimportdata.New_Customer FROM npiimportdata";
        string SQL_NewDevice = "SELECT DISTINCT npiimportdata.New_Device FROM npiimportdata";

        if(Customer_TB.Text.Trim() != "" && ND_TB.Text.Trim() != "")
        {
            if(check_Customer_data(SQL_Customer,Conninf) && check_NewDevice_data(SQL_NewDevice,Conninf) )
            {
                receive_npiappmanualdata();
            }
            else
            {
                if( (!check_NewDevice_data(SQL_NewDevice,Conninf)) && (!check_Customer_data(SQL_Customer,Conninf)))
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "msg", "alert('DIF/Q&R/DRC/Application/Mamual File中的New_Customer 與 New_Device欄位無此資料，請重新填寫!')",true);
                }
                if(!check_Customer_data(SQL_Customer,Conninf))
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "msg", "alert('DIF/Q&R/DRC/Application/Mamual File中的New_Customer欄位無此資料，請重新填寫!')", true);
                }
                if(!check_NewDevice_data(SQL_NewDevice,Conninf))
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "msg", "alert('DIF/Q&R/DRC/Application/Mamual File中的New_Device欄位無此資料，請重新填寫!')", true);
                }

            }

        }
        else {
            if(Customer_TB.Text.Trim() == "" && ND_TB.Text.Trim() == "")
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "msg", "alert('New_Customer與New_Device條件必須填寫')", true);
            if (Customer_TB.Text.Trim() == "")
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "msg", "alert('New_Customer條件必須填寫')", true);
            if(ND_TB.Text.Trim() == "")
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "msg", "alert('New_Device條件必須填寫')", true);

        }

    }




</script>



  
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>EP_TRA</title>
<link rel="stylesheet" href="..\css\styles.css" type="text/css" />
<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.2/themes/base/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.8.3.js"></script>
<script src="http://jqueryui.com/resources/demos/external/jquery.bgiframe-2.1.2.js"></script>
<script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
<script type="text/javascript">
    function AddWork()
    {
        $(function () {
            $("#dialog").dialog({
                autoOpen: false,
                width: 1300,
                height: 1300,
                title: "Select POR_Golden",
            });
            $("#dialogFrame").attr('src', 'POR_Golden.aspx');
            $("#dialog").dialog("open");
            return false;
        });
    }   
    
</script> 
    <style type="text/css">
        .shape {behavior:url(#default#VML);}
        .auto-style117 {
            font-family: 微軟正黑體;
            font-size: large;
            vertical-align: medium;
            color: yellow;
            font-weight: bold;
            text-transform: capitalize;
        }
        .auto-style121 {
            padding: 0;
            width: 162pt;
            color: black;
            font-size: 12.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border-right-color: inherit;
            border-left-color: #E46D0A;
            border-top-color: #E46D0A;
            border-bottom-color: #E46D0A;
        }
        .auto-style122 {
            width: 112pt;
            color: white;
            font-size: large;
            font-weight: bold;
            font-style: normal;
            text-decoration: none;
            font-family: 微軟正黑體;
            text-align: center;
            vertical-align: medium;
            white-space: nowrap;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
             background: #538ED5;
            text-transform: capitalize;
            border-right-color: #E46D0A;
            border-right-width: 1.5pt;
        }
        .auto-style123 {
            border-color: #E46D0A;
            padding: 0;
            color: black;
            font-size: 12.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: left;
            vertical-align: middle;
            white-space: nowrap;
            height: 32pt;
        }
        .auto-style125 {
            border-style: none;
            width: 270pt;
            padding: 1px 4px;
        }
        .auto-style126 {
            height: 29pt;
            width: 119pt;
            color: black;
            font-size: 12.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border-right-color: inherit;
            background: #538ED5;
            border-left-color: #E46D0A;
            border-top-color: #E46D0A;
            border-bottom-color: #E46D0A;
        }
        .auto-style129 {
            color: black;
            font-size: 12.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border-right-color: inherit;
            border-left-color: #E46D0A;
            border-top-color: #E46D0A;
            border-bottom-color: #E46D0A;
        }
        .auto-style130 {
            width: 108pt;
            color: black;
            font-size: 12.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border-right-color: inherit;
            height: 29pt;
            border-left-color: #E46D0A;
            border-top-color: #E46D0A;
            border-bottom-color: #E46D0A;
        }
        .auto-style131 {
            height: 29.25pt;
            color: windowtext;
            font-size: 12.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border-right-color: inherit;
            background: #538ED5;
            width: 119pt;
            border-left-color: #E46D0A;
            border-top-color: #E46D0A;
            border-bottom-color: #E46D0A;
        }
        .auto-style132 {
            width: 378pt;
            border-right-style: solid;
            border-right-width: 0;
        }
        .auto-style145 {
            color: black;
            font-size: 12.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border-style: none;
            border-color: inherit;
            border-width: medium;
            padding: 0px;
        }
        .auto-style150 {
            height: 82.5pt;
            color: black;
            font-size: 12.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: left;
            vertical-align: middle;
            white-space: nowrap;
            border-style: none;
            border-color: inherit;
            border-width: medium;
            padding: 0px;
        }
        .auto-style151 {
            width: 100%;
            height: 9px;
            margin-bottom: 0px;
        }
        .auto-style152 {
            width: 1057px;
        }
        .auto-style153 {
            width: 272px;
            font-family: Arial, Helvetica, sans-serif;
            font-weight: bold;
            color: #FF0000;
        }
        .auto-style154 {
            width: 749pt;
        }
        .auto-style164 {
            color: black;
            font-size: 12.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border-left: .5pt solid #F2F2F2;
            border-right: .5pt solid #F2F2F2;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom: .5pt solid #F2F2F2;
            padding: 0px;
            background: #EAF1DD;
        }
        .auto-style166 {
            height: 33pt;
            width: 76pt;
            color: white;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: "Times New Roman", serif;
            text-align: center;
            vertical-align: middle;
            white-space: normal;
            border-left: 1.0pt solid windowtext;
            border-right: .5pt solid white;
            border-top: 1.0pt solid windowtext;
            border-bottom: 1.0pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
            background: #254061;
        }
        .auto-style168 {
            width: 93pt;
            color: white;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: "Times New Roman", serif;
            text-align: center;
            vertical-align: middle;
            white-space: normal;
            border-left: .5pt solid white;
            border-right: .5pt solid white;
            border-top: 1.0pt solid windowtext;
            border-bottom: 1.0pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
            background: #254061;
            height: 33pt;
        }
        .auto-style169 {
            width: 76pt;
            color: white;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: "Times New Roman", serif;
            text-align: center;
            vertical-align: middle;
            white-space: normal;
            border-left: .5pt solid white;
            border-right: 1.0pt solid windowtext;
            border-top: 1.0pt solid windowtext;
            border-bottom: 1.0pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
            background: #254061;
            height: 33pt;
        }
        .auto-style171 {
            width: 162pt;
            color: black;
            font-size: 12.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border-right-color: inherit;
            height: 29pt;
            border-left-color: #E46D0A;
            border-top-color: #E46D0A;
            border-bottom-color: #E46D0A;
        }
        .auto-style172 {
            font-family: 微軟正黑體;
            font-size: large;
            vertical-align: medium;
            color: white;
            font-weight: bold;
            text-transform: capitalize;
        }
        .auto-style173 {
            width: 768pt;
        }
        .auto-style174 {
            width: 76pt;
            color: white;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: "Times New Roman", serif;
            text-align: center;
            vertical-align: middle;
            white-space: normal;
            border-left: .5pt solid white;
            border-right: .5pt solid white;
            border-top: 1.0pt solid windowtext;
            border-bottom: 1.0pt solid windowtext;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
            background: #254061;
            height: 33pt;
        }
        .auto-style175 {
            height: 49.5pt;
            width: 191pt;
            color: black;
            font-size: 12.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border-style: none;
            border-color: inherit;
            border-width: medium;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style176 {
            width: 196pt;
            color: black;
            font-size: 12.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border-style: none;
            border-color: inherit;
            border-width: medium;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style177 {
            width: 162pt;
            color: black;
            font-size: 12.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border-style: none;
            border-color: inherit;
            border-width: medium;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style178 {
            width: 76pt;
            color: black;
            font-size: 12.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border-style: none;
            border-color: inherit;
            border-width: medium;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style179 {
            width: 384pt;
            color: black;
            font-size: 12.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border-style: none;
            border-color: inherit;
            border-width: medium;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style180 {
            height: 33.0pt;
            color: black;
            font-size: 12.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border-style: none;
            border-color: inherit;
            border-width: medium;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style181 {
            color: black;
            font-size: 12.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border-style: none;
            border-color: inherit;
            border-width: medium;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style182 {
            height: 891.0pt;
            color: black;
            font-size: 12.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border-style: none;
            border-color: inherit;
            border-width: medium;
            padding-left: 1px;
            padding-right: 1px;
            padding-top: 1px;
        }
        .auto-style183 {
            height: 16.5pt;
            width: 303pt;
            color: windowtext;
            font-size: 12.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border-left: .5pt solid white;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: .5pt solid white;
            border-bottom: .5pt solid white;
            padding: 0px;
            background: #E5E0EC;
        }
        .auto-style184 {
            height: 94.5pt;
            width: 38pt;
            color: windowtext;
            font-size: 11.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: normal;
            border: .5pt solid white;
            padding: 0px;
            background: #E5E0EC;
        }
        .auto-style185 {
            height: 127.5pt;
            color: windowtext;
            font-size: 11.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #CCCCFF;
        }
        .auto-style186 {
            height: 175.5pt;
            color: windowtext;
            font-size: 11.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #92D050;
        }
        .auto-style187 {
            height: 276.0pt;
            width: 38pt;
            color: windowtext;
            font-size: 11.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: normal;
            border: .5pt solid white;
            padding: 0px;
            background: yellow;
        }
        .auto-style188 {
            height: 16.5pt;
            width: 38pt;
            color: windowtext;
            font-size: 11.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: normal;
            border: .5pt solid white;
            padding: 0px;
            background: yellow;
        }
        .auto-style189 {
            height: 150.0pt;
            width: 38pt;
            color: windowtext;
            font-size: 11.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: normal;
            border: .5pt solid white;
            padding: 0px;
            background: #FCD5B4;
        }
        .auto-style190 {
            height: 300.0pt;
            color: windowtext;
            font-size: 11.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #92D050;
        }
        .auto-style191 {
            height: 63.0pt;
            width: 38pt;
            color: black;
            font-size: 11.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: normal;
            border: .5pt solid white;
            padding: 0px;
            background: #00B0F0;
        }
        .auto-style192 {
            height: 93.0pt;
            width: 38pt;
            color: black;
            font-size: 11.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: normal;
            border: .5pt solid white;
            padding: 0px;
            background: #C5D9F1;
        }
        .auto-style193 {
            width: 314pt;
        }
        .auto-style194 {
            height: 16.5pt;
            width: 120pt;
            color: windowtext;
            font-size: 11.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: normal;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
        }
        .auto-style195 {
            width: 86pt;
            color: #C0504D;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border-left: .5pt solid white;
            border-right: .5pt solid white;
            border-top-style: none;
            border-top-color: inherit;
            border-top-width: medium;
            border-bottom: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
        }
        .auto-style196 {
            height: 16.5pt;
            color: windowtext;
            font-size: 11.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
        }
        .auto-style197 {
            color: #C0504D;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
        }
        .auto-style198 {
            height: 28.5pt;
            width: 120pt;
            color: windowtext;
            font-size: 11.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: normal;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
        }
        .auto-style199 {
            height: 71.25pt;
            width: 120pt;
            color: windowtext;
            font-size: 11.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: normal;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
        }
        .auto-style200 {
            height: 42.75pt;
            width: 120pt;
            color: windowtext;
            font-size: 11.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: normal;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
        }
        .auto-style201 {
            color: black;
            font-size: 12.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
        }
        .auto-style202 {
            height: 28.5pt;
            color: windowtext;
            font-size: 11.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
        }
        .auto-style203 {
            height: 16.5pt;
            color: windowtext;
            font-size: 11.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border-left: .5pt solid white;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: .5pt solid white;
            border-bottom: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
        }
        .auto-style204 {
            height: 25.5pt;
            color: windowtext;
            font-size: 11.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border-left: .5pt solid white;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: .5pt solid white;
            border-bottom: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
        }
        .auto-style205 {
            height: 16.5pt;
            color: #C0504D;
            font-size: 11.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border-left: .5pt solid white;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: .5pt solid white;
            border-bottom: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
        }
        .auto-style206 {
            height: 30.0pt;
            color: windowtext;
            font-size: 11.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
        }
        .auto-style207 {
            width: 86pt;
            color: windowtext;
            font-size: 11.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: normal;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
        }
        .auto-style208 {
            height: 30.0pt;
            width: 120pt;
            color: windowtext;
            font-size: 11.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: normal;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
        }
        .auto-style209 {
            height: 46.5pt;
            width: 120pt;
            color: white;
            font-size: 11.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: normal;
            border-left: .5pt solid white;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: .5pt solid white;
            border-bottom: .5pt solid white;
            padding: 0px;
            background: #538ED5;
        }
        .auto-style210 {
            height: 16.5pt;
            width: 130pt;
            color: #1F497D;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
        }
        .auto-style211 {
            height: 16.5pt;
            color: #1F497D;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
        }
        .auto-style212 {
            height: 28.5pt;
            color: #1F497D;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
        }
        .auto-style213 {
            height: 71.25pt;
            color: #1F497D;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
        }
        .auto-style214 {
            height: 42.75pt;
            color: #1F497D;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
        }
        .auto-style215 {
            height: 25.5pt;
            color: #1F497D;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
        }
        .auto-style216 {
            height: 30.0pt;
            color: #1F497D;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
        }
        .auto-style217 {
            height: 46.5pt;
            width: 130pt;
            color: white;
            font-size: 11.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: normal;
            border-left-style: none;
            border-left-color: inherit;
            border-left-width: medium;
            border-right: .5pt solid white;
            border-top: .5pt solid white;
            border-bottom: .5pt solid white;
            padding: 0px;
            background: #538ED5;
        }
        .auto-style218 {
            height: 46.5pt;
            width: 54pt;
            color: white;
            font-size: 11.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: normal;
            border: .5pt solid white;
            padding: 0px;
            background: #538ED5;
        }
        .auto-style219 {
            height: 16.5pt;
            width: 54pt;
            color: black;
            font-size: 12.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: general;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
        }
        .auto-style220 {
            height: 16.5pt;
            color: black;
            font-size: 12.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: general;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
        }
        .auto-style221 {
            height: 28.5pt;
            color: black;
            font-size: 12.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: general;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
        }
        .auto-style222 {
            height: 71.25pt;
            color: black;
            font-size: 12.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: general;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
        }
        .auto-style223 {
            height: 42.75pt;
            color: black;
            font-size: 12.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: general;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
        }
        .auto-style224 {
            height: 25.5pt;
            color: black;
            font-size: 12.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: general;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
        }
        .auto-style225 {
            height: 30.0pt;
            color: black;
            font-size: 12.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: general;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
        }
        .auto-style226 {
            width: 72pt;
        }
        .auto-style227 {
            width: 68pt;
            height: 1823px;
        }
        .auto-style228 {
            height: 16.5pt;
            width: 340pt;
            color: white;
            font-size: 11.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #538ED5;
        }
        .auto-style229 {
            height: 30.0pt;
            width: 70pt;
            color: white;
            font-size: 11.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: left;
            vertical-align: middle;
            white-space: normal;
            border: .5pt solid white;
            padding: 0px;
            background: #538ED5;
        }
        .auto-style230 {
            height: 30.0pt;
            width: 54pt;
            color: white;
            font-size: 11.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #538ED5;
        }
        .auto-style231 {
            width: 61pt;
        }
        .auto-style232 {
            width: 62pt;
        }
        .auto-style233 {
            width: 386pt;
        }
        .auto-style234 {
            height: 16.5pt;
            width: 54pt;
            color: black;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: general;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
        }
        .auto-style235 {
            height: 16.5pt;
            color: black;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: general;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
        }
        .auto-style236 {
            height: 28.5pt;
            color: black;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: general;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
        }
        .auto-style237 {
            height: 71.25pt;
            color: black;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: general;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
        }
        .auto-style238 {
            height: 42.75pt;
            color: black;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: general;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
        }
        .auto-style239 {
            height: 25.5pt;
            color: black;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: general;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
        }
        .auto-style240 {
            height: 30.0pt;
            color: black;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: general;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
        }
        .auto-style241 {
            height: 16.5pt;
            width: 70pt;
            color: black;
            font-size: 12.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: general;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
        }
        .auto-style242 {
            width: 60pt;
        }
        .auto-style243 {
            width: 59pt;
        }
        .auto-style244 {
            width: 58pt;
            height: 1822px;
        }
        .auto-style245 {
            width: 206pt;
            height: 1823px;
        }
        .auto-style246 {
            width: 130pt;
            height: 1823px;
        }
        .auto-style247 {
            width: 59pt;
            height: 1823px;
        }
        .auto-style248 {
            width: 59pt;
            height: 1821px;
        }
        .auto-style249 {
            width: 303pt;
            height: 1755px;
        }
        .auto-style250 {
            width: 254pt;
        }
        .auto-style251 {
            height: 17pt;
            width: 54pt;
            color: black;
            font-size: 12.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: general;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
        }
        .auto-style252 {
            height: 16.5pt;
            color: #FFFF00;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: 新細明體, serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
        }
        .auto-style253 {
            margin-right: 0px;
        }
        </style>
</head>
<link href="EP_TRA.css" rel="stylesheet" type="text/css" />
<body style="width: 100%; height:100%">
  
   
    
    <form id="form1" runat="server">
       
            
        

        <asp:Panel ID="POR_Panel" runat="server" Width="1494px">
        
        <fieldset class="auto-style152">
            <legend style="font-size: large;" class="auto-style153"><strong>POR Golden &amp; New Device</strong></legend>
            <br />
            <table border="0" cellpadding="0" cellspacing="0" style="border-collapse:
 collapse;" class="auto-style154">
                <tr height="22">
                    <td class="auto-style150" height="110">
                        <table cellpadding="0" cellspacing="0" class="auto-style125" style="border-collapse: collapse;" width="360">
                            <colgroup>
                                <col span="1" />
                                <col span="1" width="72" />
                            </colgroup>
                            <tr height="39">
                                <td class="auto-style122" height="39" rowspan="2">Device:</td>
                                <td class="auto-style121" width="216">
                                    <asp:Button ID="POR_Butt4" runat="server" CausesValidation="False" ClientIDMode="Predictable" CommandName="Insert" CssClass="auto-style1" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" ForeColor="Black" Height="29px" OnClick="POR_Butt_Click1" Text="選擇 POR Golden" Width="211px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style123">
                                    <asp:TextBox ID="TextBox2" runat="server" Height="27px" Width="200px"></asp:TextBox>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td class="auto-style145">
                        <table cellpadding="0" cellspacing="0" class="auto-style132" style="border-collapse:collapse;" width="504">
                            <colgroup>
                                <col span="4" width="72" />
                            </colgroup>
                            <tr>
                                <td class="auto-style126"><span class="auto-style172">Customer</span><span class="auto-style117">:</span></td>
                                <td class="auto-style171" width="216">
                                    <asp:TextBox ID="Customer_TB" runat="server" Height="27px" OnTextChanged="Customer_TB_TextChanged" Width="200px"></asp:TextBox>
                                </td>
                                <td class="auto-style130" width="144">
                                    <asp:Button ID="Search_Device_Butt1" runat="server" CssClass="auto-style1" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" ForeColor="Black" Height="29px" OnClick="Search_Device_Butt1_Click" Text="查詢NewDevice" Width="139px" />
                                </td>
                            </tr>
                            <tr height="39">
                                <td class="auto-style131" height="39"><span class="auto-style117">&nbsp;</span><span class="auto-style172"> New_Device: </span></td>
                                <td class="auto-style129">
                                    <asp:TextBox ID="ND_TB" runat="server" Height="27px" Width="200px"></asp:TextBox>
                                </td>
                                <td class="auto-style129">
                                    <asp:Button ID="GAP_Butt" runat="server" CssClass="auto-style1" Font-Bold="True" Font-Names="Arial" Font-Overline="False" Font-Size="Medium" Font-Strikeout="False" ForeColor="Black" Height="29px" Text="GAP比對" Width="139px" />
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <br />
            <br />
            <table border="0" cellpadding="0" cellspacing="0" style="border-collapse:
 collapse;" class="auto-style173">
                <colgroup>
                    <col span="5" width="101" />
                    <col width="124" />
                    <col span="2" width="101" />
                </colgroup>
                <tr>
                    <td class="auto-style166" width="101">Device</td>
                    <td class="auto-style174" width="101">*Production Site</td>
                    <td class="auto-style174" width="101">*PKG<span style="mso-spacerun:yes">&nbsp;</span></td>
                    <td class="auto-style174" width="101">*Wafer Tech.(nm)</td>
                    <td class="auto-style174" width="101">*FAB</td>
                    <td class="auto-style168" width="124">*Wafer PSV type / Thickness</td>
                    <td class="auto-style174" width="101">*RVSI(Y/N)</td>
                    <td class="auto-style169" width="101">*Customer</td>
                </tr>
                <tr height="22">
                    <td class="auto-style164" height="44" id="td1">　<asp:Label ID="Label1" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style164" id="td2">　<asp:Label ID="Label2" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style164" id="td3">　<asp:Label ID="Label3" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style164" id="td4">　<asp:Label ID="Label4" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style164" id="td5">　<asp:Label ID="Label5" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style164" id="td6">　<asp:Label ID="Label6" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style164" id="td7">
                        <asp:Label ID="Label7" runat="server"></asp:Label>
                        　</td>
                    <td class="auto-style164" id="td8">　<asp:Label ID="Label8" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
            <asp:Button ID="cmdFilter" runat="server" OnClick="cmdFilter_Click" Text="Button" ClientIDMode="Static" Style="display: none;" /> 
            <br />
            <asp:Label ID="lblError" runat="server" ForeColor="Red" Font-Size="Large"></asp:Label>
        <hr size="5px" align="left" color="#FFFFFF" class="auto-style151"  >
     </fieldset>
             
     <br />
        </asp:Panel>
        <br />
        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse:
 collapse;width:1009pt" width="1342">
            <colgroup>
                <col span="3" width="72" />
                <col width="38" />
                <col span="3" width="72" />
                <col width="45" />
                <col span="3" width="72" />
                <col width="101" />
                <col span="6" width="85" />
            </colgroup>
            <tr height="22">
                <td class="auto-style175" colspan="4" height="66" rowspan="2" width="254">
                    <table border="0" cellpadding="0" cellspacing="0" class="auto-style193" style="border-collapse: collapse;">
                        <colgroup>
                            <col width="51" />
                            <col width="32" />
                            <col width="129" />
                            <col width="192" />
                        </colgroup>
                        <tr height="22">
                            <td class="auto-style2" colspan="4" height="62" width="404">Key item</td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style176" colspan="4" rowspan="2" width="261">
                    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse:
 collapse;" class="auto-style250">
                        <colgroup>
                            <col width="160" />
                            <col width="114" />
                        </colgroup>
                        <tr height="22">
                            <td class="auto-style209" height="62" width="160">Capability<span style="mso-spacerun:yes">&nbsp;</span></td>
                            <td class="auto-style4" width="114">POR (Baseline)</td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style177" colspan="3" rowspan="2" width="216">
                    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse:
 collapse;width:130pt" width="173">
                        <colgroup>
                            <col width="173" />
                        </colgroup>
                        <tr height="22">
                            <td class="auto-style217" height="62" width="173">New Device</td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style178" rowspan="2" width="101">
                    <table border="0" cellpadding="0" cellspacing="0" class="auto-style226" style="border-collapse: collapse;">
                        <colgroup>
                            <col width="72" />
                        </colgroup>
                        <tr height="22">
                            <td class="auto-style218" height="62" width="72">Gap<br />
                                (Y/N)</td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style179" colspan="6" width="510">
                    <table border="0" cellpadding="0" cellspacing="0" class="auto-style233" style="border-collapse: collapse;">
                        <colgroup>
                            <col span="3" style="width:54pt" width="72" />
                            <col style="mso-width-source:userset;mso-width-alt:2976;width:70pt" width="93" />
                            <col span="2" style="width:54pt" width="72" />
                        </colgroup>
                        <tr height="22" style="mso-height-source:userset;height:16.5pt">
                            <td class="auto-style228" colspan="6" height="22" width="453">Package/ProcessTRA</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr height="22">
                <td class="auto-style180" height="44">
                    <table border="0" cellpadding="0" cellspacing="0" class="auto-style231" style="border-collapse: collapse;">
                        <colgroup>
                            <col style="width:54pt" width="72" />
                        </colgroup>
                        <tr height="40" style="height:30.0pt">
                            <td class="auto-style8" height="40" width="72">Effect stage</td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style181">
                    <table border="0" cellpadding="0" cellspacing="0" class="auto-style232" style="border-collapse: collapse;">
                        <colgroup>
                            <col style="width:54pt" width="72" />
                        </colgroup>
                        <tr height="40" style="height:30.0pt">
                            <td class="auto-style8" height="40" width="72">Potential Effect</td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style181">
                    <table border="0" cellpadding="0" cellspacing="0" class="auto-style231" style="border-collapse: collapse;">
                        <colgroup>
                            <col style="width:54pt" width="72" />
                        </colgroup>
                        <tr height="40" style="height:30.0pt">
                            <td class="auto-style8" height="40" width="72">TRA Lv.</td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style181">
                    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse:
 collapse;width:70pt" width="93">
                        <colgroup>
                            <col style="mso-width-source:userset;mso-width-alt:2976;width:70pt" width="93" />
                        </colgroup>
                        <tr height="40" style="height:30.0pt">
                            <td class="auto-style229" height="40" width="93">Recommend action</td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style181">
                    <table border="0" cellpadding="0" cellspacing="0" class="auto-style231" style="border-collapse: collapse;">
                        <colgroup>
                            <col style="width:54pt" width="72" />
                        </colgroup>
                        <tr height="40" style="height:30.0pt">
                            <td class="auto-style230" height="40" width="72">Owner</td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style181">
                    <table border="0" cellpadding="0" cellspacing="0" class="auto-style232" style="border-collapse: collapse;">
                        <colgroup>
                            <col style="width:54pt" width="72" />
                        </colgroup>
                        <tr height="40" style="height:30.0pt">
                            <td class="auto-style8" height="40" width="72">Due Date</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr height="22">
                <td class="auto-style182" colspan="4" height="1188">
                    <table border="0" cellpadding="0" cellspacing="0" class="auto-style249" style="border-collapse: collapse;" width="404">
                        <colgroup>
                            <col width="51" />
                            <col width="32" />
                            <col width="129" />
                            <col width="192" />
                        </colgroup>
                        <tr height="22">
                            <td class="auto-style183" colspan="4" height="22" width="404">PROD</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style184" height="126" rowspan="5" width="51">Device Information</td>
                            <td class="auto-style16">1</td>
                            <td class="auto-style17" colspan="2">Customer<span style="mso-spacerun:yes">&nbsp;</span></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style20" height="22">2</td>
                            <td class="auto-style17" colspan="2">Device<span style="mso-spacerun:yes">&nbsp;</span></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style20" height="22">3</td>
                            <td class="auto-style17" colspan="2">Die size(mm*mm)</td>
                        </tr>
                        <tr height="38">
                            <td class="auto-style21" height="38">4</td>
                            <td class="auto-style17" colspan="2">C/P probe card type</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style20" height="22">5</td>
                            <td class="auto-style17" colspan="2">Probing on bump pad (Y/N)</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style185" height="170" rowspan="7">Wafer Information</td>
                            <td class="auto-style23">6</td>
                            <td class="auto-style24" colspan="2">Wafer Fab</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style25" height="22">7</td>
                            <td class="auto-style24" colspan="2">Wafer tech.(nm)</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style25" height="22">8</td>
                            <td class="auto-style24" colspan="2">Low K Type</td>
                        </tr>
                        <tr height="38">
                            <td class="auto-style26" height="38">9</td>
                            <td class="auto-style24" colspan="2">Final Metal Pad type</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style25" height="22">10</td>
                            <td class="auto-style24" colspan="2">RV hole(Y/N)</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style25" height="22">11</td>
                            <td class="auto-style24" colspan="2">Wafer PSV type / Thickness</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style25" height="22">12</td>
                            <td class="auto-style24" colspan="2">Seal-Ring Protected by SiN (Y/N)</td>
                        </tr>
                        <tr height="95">
                            <td class="auto-style186" height="234" rowspan="5">Bump structure</td>
                            <td class="auto-style29">13</td>
                            <td class="auto-style30" colspan="2">PKG Type</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style31" height="22" width="32">14</td>
                            <td class="auto-style32" colspan="2" width="321">PI type</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style31" height="22" width="32">15</td>
                            <td class="auto-style32" colspan="2" width="321">PI Thickness (um)</td>
                        </tr>
                        <tr height="38">
                            <td class="auto-style33" height="38" width="32">16</td>
                            <td class="auto-style32" colspan="2" width="321">UBM type / Thickness (um)</td>
                        </tr>
                        <tr height="57">
                            <td class="auto-style34" height="57" width="32">17</td>
                            <td class="auto-style32" colspan="2" width="321">Bump composition</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style187" height="368" rowspan="16" width="51">Bump design</td>
                            <td class="auto-style36" width="32">18</td>
                            <td class="auto-style37" colspan="2" width="321">REPSV PI Opening Size(um)</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style38" height="22" width="32">19</td>
                            <td class="auto-style37" colspan="2" width="321">Min fianl metal trace to seal ring (um)</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style38" height="22" width="32">20</td>
                            <td class="auto-style37" colspan="2" width="321">PI via opening bottom edge
                                <br />
                                to pad psv. Edge (um)</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style38" height="22" width="32">21</td>
                            <td class="auto-style37" colspan="2" width="321">PI edge inside seal ring (um)</td>
                        </tr>
                        <tr height="38">
                            <td class="auto-style42" height="38" width="32">22</td>
                            <td class="auto-style37" colspan="2" width="321">PR thickness(um)</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style38" height="22" width="32">23</td>
                            <td class="auto-style37" colspan="2" width="321">UBM Size(um)</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style38" height="22" width="32">24</td>
                            <td class="auto-style37" colspan="2" width="321">UBM Overlap PSV (um)</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style38" height="22" width="32">25</td>
                            <td class="auto-style37" colspan="2" width="321">UBM insdie final metal for FOC (um)</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style38" height="22" width="32">26</td>
                            <td class="auto-style37" colspan="2" width="321">UBM Plating Area(dm<font class="font8"><sup>2</sup></font><font class="font7">)</font></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style38" height="22" width="32">27</td>
                            <td class="auto-style37" colspan="2" width="321">UBM Density (UBM Area/Die Area)</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style38" height="22" width="32">28</td>
                            <td class="auto-style37" colspan="2" width="321">Mushroom CD(um)</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style38" height="22" width="32">29</td>
                            <td class="auto-style37" colspan="2" width="321">Min Mushroom space(um)</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style44" height="22">30</td>
                            <td class="auto-style45" colspan="2">Min. Bump pitch (um)</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style38" height="22" width="32">31</td>
                            <td class="auto-style37" colspan="2" width="321">Bump Height(um)</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style38" height="22" width="32">32</td>
                            <td class="auto-style37" colspan="2" width="321">Bump Diameter(um)</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style38" height="22" width="32">33</td>
                            <td class="auto-style37" colspan="2" width="321">Bump Density (Bump Q&#39;ty/Die Area)</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style188" height="22" width="51">　</td>
                            <td class="auto-style36" width="32">34</td>
                            <td class="auto-style37" colspan="2" width="321">BH/UBM ratio</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style189" height="200" rowspan="8" width="51">Outgoing criteria</td>
                            <td class="auto-style48" width="32">35</td>
                            <td class="auto-style49" colspan="2" width="321">LF Bump Ag% target</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style51" height="22" width="32">36</td>
                            <td class="auto-style49" colspan="2" width="321">Bump Height(um)</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style51" height="22" width="32">37</td>
                            <td class="auto-style49" colspan="2" width="321">Bump diameter</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style51" height="22" width="32">38</td>
                            <td class="auto-style49" colspan="2" width="321">Bump Coplanarity<span style="mso-spacerun:yes">&nbsp;</span></td>
                        </tr>
                        <tr height="34">
                            <td class="auto-style53" height="34" width="32">39</td>
                            <td class="auto-style49" colspan="2" width="321">Bump Shear Strenght</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style51" height="22" width="32">40</td>
                            <td class="auto-style49" colspan="2" width="321">Bump void<span style="mso-spacerun:yes">&nbsp;&nbsp;</span></td>
                        </tr>
                        <tr height="34">
                            <td class="auto-style53" height="34" width="32">41</td>
                            <td class="auto-style49" colspan="2" width="321">PI Rougness (Ra)</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style51" height="22" width="32">42</td>
                            <td class="auto-style49" colspan="2" width="321">Bump Resistance (POR capability)</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style190" height="400" rowspan="15">Metrology tool</td>
                            <td class="auto-style55" rowspan="7" width="32">43</td>
                            <td class="auto-style56" rowspan="7" width="129">August</td>
                            <td class="auto-style57">Gross die</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style58" height="22" width="192">Expose pad</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style58" height="22" width="192">PSV1(PI1/PBO1) opening</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style58" height="22" width="192">Bump diameter</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style59" height="40" width="192">Low SPEC of min RDL Width</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style59" height="40" width="192">Low SPEC of min RDL Spacing</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style59" height="40" width="192">Min RDL Width/Spacing pattern &amp; location</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style60" height="88" rowspan="4" width="32">44</td>
                            <td class="auto-style56" rowspan="4" width="129">RVSI</td>
                            <td class="auto-style57">Gross die</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style58" height="22" width="192">Bump count per die</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style58" height="22" width="192">Bump height</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style58" height="22" width="192">Bump diameter</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style31" height="22" width="32">45</td>
                            <td class="auto-style56" width="129">RS meter</td>
                            <td class="auto-style61" width="192">Bump diameter</td>
                        </tr>
                        <tr height="38">
                            <td class="auto-style33" height="38" width="32">46</td>
                            <td class="auto-style56" width="129">Void (X-ray)</td>
                            <td class="auto-style61" width="192">Bump diameter</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style31" height="22" width="32">47</td>
                            <td class="auto-style56" width="129">Bump shear</td>
                            <td class="auto-style61" width="192">Bump diameter</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style31" height="22" width="32">48</td>
                            <td class="auto-style56" width="129">Bump pull</td>
                            <td class="auto-style61" width="192">Bump diameter</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style191" height="84" rowspan="3" width="51">AB requirement</td>
                            <td class="auto-style63" width="32">49</td>
                            <td class="auto-style64" width="129">Bump to bump space</td>
                            <td class="auto-style65" width="192">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style66" height="22">50</td>
                            <td class="auto-style67">SMO</td>
                            <td class="auto-style67">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style66" height="22">51</td>
                            <td class="auto-style67">UBM/SMO ratio</td>
                            <td class="auto-style67">　</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style192" height="124" rowspan="4" width="51">Special Requirement</td>
                            <td class="auto-style69" width="32">52</td>
                            <td class="auto-style70" width="129">Process / Machine</td>
                            <td class="auto-style71" width="192">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style72" height="22" width="32">53</td>
                            <td class="auto-style70" width="129">Material</td>
                            <td class="auto-style71" width="192">　</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style73" height="40" width="32">54</td>
                            <td class="auto-style70" width="129">Measurement tool</td>
                            <td class="auto-style71" width="192">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style72" height="22" width="32">55</td>
                            <td class="auto-style70" width="129">Reliability</td>
                            <td class="auto-style71" width="192">　</td>
                        </tr>
                    </table>
                </td>
                
                <td class="auto-style181" colspan="4">
                    <asp:FormView ID="FormView1" runat="server" Width="327px" CssClass="auto-style253">
                        
                    <HeaderTemplate>
                    <table border="0" cellpadding="0" cellspacing="0" class="auto-style245" style="border-collapse: collapse;" width="274">
                        <colgroup>
                            <col width="160" />
                            <col width="114" />
                        </colgroup>
                        </HeaderTemplate>
                        <ItemTemplate>
                        <tr height="22">
                            <td class="auto-style194" height="22" width="160">-</td>
                            <td class="auto-style195" width="114"><%# Eval("POR_15")%></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style196" height="22">-</td>
                            <td class="auto-style197"><%# Eval("POR_14")%></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style196" height="22">-</td>
                            <td class="auto-style197"><%# Eval("POR_17")%></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style194" height="22" width="160">4*4~23*23</td>
                            <td class="auto-style197"><%# Eval("POR_18")%></td>
                        </tr>
                        <tr height="38">
                            <td class="auto-style198" height="38" width="160">Vertical probe<br />
                                Membrane</td>
                            <td class="auto-style197"><%# Eval("POR_46")%></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style196" height="22">Not Allowed</td>
                            <td class="auto-style197"><%# Eval("POR_24")%></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style196" height="22">TSMC,UMC,GF,SMIC</td>
                            <td class="auto-style197"><%# Eval("POR_04")%></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style196" height="22">28~130</td>
                            <td class="auto-style197"><%# Eval("POR_03")%></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style196" height="22">ELK</td>
                            <td class="auto-style197"><%# Eval("POR_12")%></td>
                        </tr>
                        <tr height="38">
                            <td class="auto-style198" height="38" width="160">Al<br />
                                Cu</td>
                            <td class="auto-style197"><%# Eval("POR_20")%></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style196" height="22">Not Allowed</td>
                            <td class="auto-style197"><%# Eval("POR_23")%></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style196" height="22">SiN</td>
                            <td class="auto-style197"><%# Eval("POR_21")%></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style194" height="22" width="160">Y</td>
                            <td class="auto-style197"><%# Eval("POR_25")%></td>
                        </tr>
                        <tr height="95">
                            <td class="auto-style199" height="95" width="160">EP REPSV-12-EU<br />
                                EP REPSV-12-LF<br />
                                EP FOC-12-EU<br />
                                EP FOC-12-LF<br />
                                EP REPSV-8-LF</td>
                            <td class="auto-style197"><%# Eval("POR_02")%></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style196" height="22">HD4104</td>
                            <td class="auto-style197"><%# Eval("POR_26")%></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style196" height="22">5um</td>
                            <td class="auto-style197"><%# Eval("POR_55")%></td>
                        </tr>
                        <tr height="38">
                            <td class="auto-style198" height="38" width="160">Ti1K/Cu5K/Ni2um<br />
                                Ti1K/Cu5K/Ni3um</td>
                            <td class="auto-style197"><%# Eval("POR_16")%></td>
                        </tr>
                        <tr height="57">
                            <td class="auto-style200" height="57" width="160">SnAg 1.8<br />
                                SnAg 2.3<br />
                                Eu</td>
                            <td class="auto-style197"><%# Eval("POR_33")%></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style196" height="22">30~62</td>
                            <td class="auto-style197"><%# Eval("POR_30")%></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style196" height="22">6.7~20</td>
                            <td class="auto-style201">NA</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style196" height="22">7~20</td>
                            <td class="auto-style197"><%# Eval("POR_31")%></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style196" height="22">5~13</td>
                            <td class="auto-style197"><%# Eval("POR_32")%></td>
                        </tr>
                        <tr height="38">
                            <td class="auto-style202" height="38">30<br />
                                50</td>
                            <td class="auto-style197"><%# Eval("POR_13")%></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style196" height="22">69~110</td>
                            <td class="auto-style197"><%# Eval("POR_29")%></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style196" height="22">10~25</td>
                            <td class="auto-style197"><%# Eval("POR_27")%></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style196" height="22">3~7</td>
                            <td class="auto-style197"><%# Eval("POR_28")%></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style196" height="22">0.26~1.66</td>
                            <td class="auto-style197"><%# Eval("POR_34")%></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style196" height="22">2.52~25.06</td>
                            <td class="auto-style197"><%# Eval("POR_50")%></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style196" height="22">105~173</td>
                            <td class="auto-style197"><%# Eval("POR_44")%></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style196" height="22">20~182</td>
                            <td class="auto-style197"><%# Eval("POR_43")%></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style196" height="22">150~300</td>
                            <td class="auto-style197"><%# Eval("POR_19")%></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style196" height="22">70~100</td>
                            <td class="auto-style197"><%# Eval("POR_35")%></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style196" height="22">-</td>
                            <td class="auto-style197"><%# Eval("POR_45")%></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style196" height="22">8.8~39.95</td>
                            <td class="auto-style197"><%# Eval("POR_22")%></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style196" height="22">0.85~1.1</td>
                            <td class="auto-style18">1</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style203" colspan="2" height="22">+/-0.5</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style203" colspan="2" height="22">+/-10%</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style203" colspan="2" height="22">+/-10%</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style203" colspan="2" height="22">&lt;20 um</td>
                        </tr>
                        <tr height="34">
                            <td class="auto-style204" colspan="2" height="34">LF: &gt;2.5 g/mil^2</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style203" colspan="2" height="22">&lt;10 %</td>
                        </tr>
                        <tr height="34">
                            <td class="auto-style204" colspan="2" height="34">BGM3A:15~30nm</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style205" colspan="2" height="22"><%# Eval("POR_10")%></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style196" height="22">10~50000 ea</td>
                            <td class="auto-style18">58~25747 ea</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style196" height="22">-</td>
                            <td class="auto-style18">No</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style196" height="22">10~1000</td>
                            <td class="auto-style18">22~240</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style196" height="22">10~1000</td>
                            <td class="auto-style18">84~127</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style206" height="40">2</td>
                            <td class="auto-style18">10~78</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style206" height="40">2</td>
                            <td class="auto-style18">10~29</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style206" height="40">-</td>
                            <td class="auto-style18">-</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style196" height="22">10~50000 ea</td>
                            <td class="auto-style18">58~25747 ea</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style196" height="22">1~500K</td>
                            <td class="auto-style18">172~18510</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style196" height="22">3~1000</td>
                            <td class="auto-style18">65~108</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style196" height="22">20~1000</td>
                            <td class="auto-style18">84~138</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style196" height="22">25~1000</td>
                            <td class="auto-style18">30~326</td>
                        </tr>
                        <tr height="38">
                            <td class="auto-style198" height="38" width="160">CS/DF site: 80~1000<br />
                                CH site: 10~1000</td>
                            <td class="auto-style207" width="114">CS/DF: 80~326<br />
                                CH: 30~326</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style194" height="22" width="160">3~400</td>
                            <td class="auto-style18">23~326</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style194" height="22" width="160">83-140, 200-326</td>
                            <td class="auto-style18">83-140, 200-326</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style208" height="40" width="160">FCCSP &gt;19um<br />
                                FCBGA&gt;20um</td>
                            <td class="auto-style197"><%# Eval("POR_48")%></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style194" height="22" width="160">-</td>
                            <td class="auto-style197"><%# Eval("POR_49")%></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style194" height="22" width="160">0.85 - 1.1</td>
                            <td class="auto-style197"><%# Eval("POR_36")%></td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style208" height="40" width="160">-</td>
                            <td class="auto-style197"><%# Eval("POR_38")%></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style194" height="22" width="160">-</td>
                            <td class="auto-style197"><%# Eval("POR_39")%></td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style208" height="40" width="160">-</td>
                            <td class="auto-style197"><%# Eval("POR_40")%></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style196" height="22">-</td>
                            <td class="auto-style197"><%# Eval("POR_41")%></td>
                        </tr>
                             </ItemTemplate>
                        <FooterTemplate>
                    </table>         
                   </FooterTemplate>
                 </asp:FormView>
                </td>
                <td class="auto-style181" colspan="3">
                    
                       
                    <asp:FormView ID="FormView2" runat="server">
                        <HeaderTemplate>
                    <table border="0" cellpadding="0" cellspacing="0" class="auto-style246" style="border-collapse: collapse;" width="173">
                        <colgroup>
                            <col width="173" />
                        </colgroup>
                        </HeaderTemplate>
                        <ItemTemplate>
                        <tr height="22">
                            <td class="auto-style210" height="22" width="173">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style211" height="22"><% =receive_npiimportdata(sql1,Conninf,0) %></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style211" height="22"><% =receive_npiimportdata(sql2,Conninf,1) %></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style211" height="22"><% =receive_npiimportdata(sql3,Conninf,2) %> x <% =receive_npiimportdata(sql4,Conninf,3) %></td>
                        </tr>
                        <tr height="38">
                            <td class="auto-style212" height="38"><% =receive_npiimportdata(sql5,Conninf,4) %></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style211" height="22"><% =receive_npiimportdata(sql6,Conninf,5) %></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style211" height="22"><% =receive_npiimportdata(sql7,Conninf,6) %></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style211" height="22"><% =receive_npiimportdata(sql8,Conninf,7) %></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style211" height="22"><% =receive_npiimportdata(sql9,Conninf,8) %></td>
                        </tr>
                        <tr height="38">
                            <td class="auto-style212" height="38"><% =receive_npiimportdata(sql10,Conninf,9) %></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style211" height="22"><% =receive_npiimportdata(sql11,Conninf,10) %></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style211" height="22"><%# Eval("Man_01") %></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style211" height="22"><% =receive_npiimportdata(sql12,Conninf,11) %></td>
                        </tr>
                        <tr height="95">
                            <td class="auto-style213" height="95"><%# Eval("APP_08") %></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style211" height="22"><%# Eval("Man_02") %></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style211" height="22"><%# Eval("Man_03") %></td>
                        </tr>
                        <tr height="38">
                            <td class="auto-style212" height="38"><%# Eval("Man_04") %></td>
                        </tr>
                        <tr height="57">
                            <td class="auto-style214" height="57"><% =receive_npiimportdata(sql13,Conninf,12) %></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style211" height="22"><%# Eval("APP_21") %></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style211" height="22"><% =receive_npiimportdata(sql14,Conninf,13) %></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style211" height="22"><% =receive_npiimportdata(sql15,Conninf,14) %></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style211" height="22"><% =receive_npiimportdata(sql16,Conninf,15) %></td>
                        </tr>
                        <tr height="38">
                            <td class="auto-style212" height="38"><%# Eval("Man_05") %></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style211" height="22"><%# Eval("APP_33") %></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style211" height="22"><% =receive_npiimportdata(sql17,Conninf,16) %></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style211" height="22"><%# Eval("Man_06") %></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style211" height="22"><%# Eval("Man_07") %></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style211" height="22"><%# Eval("Man_08") %></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style211" height="22"><%# Eval("Man_09") %></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style211" height="22"><%# Eval("Man_10") %></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style211" height="22"><% =receive_npiimportdata(sql18,Conninf,17) %></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style211" height="22"><%# Eval("APP_09") %></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style211" height="22"><%# Eval("APP_11") %></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style211" height="22"><%# Eval("Man_11") %></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style211" height="22"><%# Eval("Man_12") %></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style211" height="22"><% =receive_npiimportdata(sql19,Conninf,18) %></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style211" height="22"><%# Eval("APP_10") %></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style211" height="22"><%# Eval("APP_12") %></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style211" height="22"><%# Eval("Man_13") %></td>
                        </tr>
                        <tr height="34">
                            <td class="auto-style215" height="34"><%# Eval("Man_14") %></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style211" height="22"><%# Eval("Man_15") %></td>
                        </tr>
                        <tr height="34">
                            <td class="auto-style215" height="34"><%# Eval("Man_16") %></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style211" height="22"><% =receive_npiimportdata(sql20,Conninf,19) %></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style211" height="22"><%# Eval("Man_17") %></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style211" height="22"><%# Eval("Man_18") %></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style211" height="22"><%# Eval("APP_21") %></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style211" height="22"><%# Eval("APP_11") %></td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style216" height="40">-</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style216" height="40">-</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style216" height="40">-</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style211" height="22"><%# Eval("Man_19") %></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style252" height="22">DIF! D30</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style211" height="22"><%# Eval("APP_09") %></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style211" height="22"><%# Eval("APP_11") %></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style211" height="22"><%# Eval("APP_11") %></td>
                        </tr>
                        <tr height="38">
                            <td class="auto-style212" height="38"><%# Eval("APP_11") %></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style211" height="22"><%# Eval("APP_11") %></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style211" height="22"><%# Eval("APP_11") %></td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style216" height="40"><%# Eval("Man_20") %></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style211" height="22"><%# Eval("Man_21") %></td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style211" height="22"><%# Eval("Man_22") %></td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style216" height="40">NA</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style211" height="22">NA</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style216" height="40">NA</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style211" height="22">NA</td>
                        </tr>
                             </ItemTemplate>
                        <FooterTemplate>
                    </table>
                   </FooterTemplate>
                  </asp:FormView>
                </td>
                <td class="auto-style181">
                    <table border="0" cellpadding="0" cellspacing="0" class="auto-style227" style="border-collapse: collapse;">
                        <colgroup>
                            <col width="72" />
                        </colgroup>
                        <tr>
                            <td class="auto-style251" width="72">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="38">
                            <td class="auto-style221" height="38">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="38">
                            <td class="auto-style221" height="38">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="95">
                            <td class="auto-style222" height="95">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="38">
                            <td class="auto-style221" height="38">　</td>
                        </tr>
                        <tr height="57">
                            <td class="auto-style223" height="57">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="38">
                            <td class="auto-style221" height="38">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="34">
                            <td class="auto-style224" height="34">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="34">
                            <td class="auto-style224" height="34">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style225" height="40">　</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style225" height="40">　</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style225" height="40">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="38">
                            <td class="auto-style221" height="38">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style225" height="40">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style225" height="40">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style225" height="40">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style181">
                    <table border="0" cellpadding="0" cellspacing="0" class="auto-style247" style="border-collapse: collapse;">
                        <colgroup>
                            <col width="72" />
                        </colgroup>
                        <tr height="22">
                            <td class="auto-style234" height="22" width="72">Eff_01</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Eff_02</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Eff_03</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Eff_04</td>
                        </tr>
                        <tr height="38">
                            <td class="auto-style236" height="38">Eff_05</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Eff_06</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Eff_07</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Eff_08</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Eff_09</td>
                        </tr>
                        <tr height="38">
                            <td class="auto-style236" height="38">Eff_10</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Eff_11</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Eff_12</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Eff_13</td>
                        </tr>
                        <tr height="95">
                            <td class="auto-style237" height="95">Eff_14</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Eff_15</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Eff_16</td>
                        </tr>
                        <tr height="38">
                            <td class="auto-style236" height="38">Eff_17</td>
                        </tr>
                        <tr height="57">
                            <td class="auto-style238" height="57">Eff_18</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Eff_19</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Eff_20</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Eff_21</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Eff_22</td>
                        </tr>
                        <tr height="38">
                            <td class="auto-style236" height="38">Eff_23</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Eff_24</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Eff_25</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Eff_26</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Eff_27</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Eff_28</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Eff_29</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Eff_30</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Eff_31</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Eff_32</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Eff_33</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Eff_34</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Eff_35</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Eff_36</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Eff_37</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Eff_38</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Eff_39</td>
                        </tr>
                        <tr height="34">
                            <td class="auto-style239" height="34">Eff_40</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Eff_41</td>
                        </tr>
                        <tr height="34">
                            <td class="auto-style239" height="34">Eff_42</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Eff_43</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Eff_44</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Eff_45</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Eff_46</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Eff_47</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style240" height="40">Eff_48</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style240" height="40">Eff_49</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style240" height="40">Eff_50</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Eff_51</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Eff_52</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Eff_53</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Eff_54</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Eff_55</td>
                        </tr>
                        <tr height="38">
                            <td class="auto-style236" height="38">Eff_56</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Eff_57</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Eff_58</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style240" height="40">Eff_59</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Eff_60</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Eff_61</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style240" height="40">Eff_62</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Eff_63</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style240" height="40">Eff_64</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Eff_65</td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style181">
                    <table border="0" cellpadding="0" cellspacing="0" class="auto-style244" style="border-collapse: collapse;">
                        <colgroup>
                            <col width="72" />
                        </colgroup>
                        <tr height="22">
                            <td class="auto-style234" height="22" width="72">Pot_01</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Pot_02</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Pot_03</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Pot_04</td>
                        </tr>
                        <tr height="38">
                            <td class="auto-style236" height="38">Pot_05</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Pot_06</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Pot_07</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Pot_08</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Pot_09</td>
                        </tr>
                        <tr height="38">
                            <td class="auto-style236" height="38">Pot_10</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Pot_11</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Pot_12</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Pot_13</td>
                        </tr>
                        <tr height="95">
                            <td class="auto-style237" height="95">Pot_14</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Pot_15</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Pot_16</td>
                        </tr>
                        <tr height="38">
                            <td class="auto-style236" height="38">Pot_17</td>
                        </tr>
                        <tr height="57">
                            <td class="auto-style238" height="57">Pot_18</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Pot_19</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Pot_20</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Pot_21</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Pot_22</td>
                        </tr>
                        <tr height="38">
                            <td class="auto-style236" height="38">Pot_23</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Pot_24</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Pot_25</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Pot_26</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Pot_27</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Pot_28</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Pot_29</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Pot_30</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Pot_31</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Pot_32</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Pot_33</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Pot_34</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Pot_35</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Pot_36</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Pot_37</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Pot_38</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Pot_39</td>
                        </tr>
                        <tr height="34">
                            <td class="auto-style239" height="34">Pot_40</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Pot_41</td>
                        </tr>
                        <tr height="34">
                            <td class="auto-style239" height="34">Pot_42</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Pot_43</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Pot_44</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Pot_45</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Pot_46</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Pot_47</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style240" height="40">Pot_48</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style240" height="40">Pot_49</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style240" height="40">Pot_50</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Pot_51</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Pot_52</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Pot_53</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Pot_54</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Pot_55</td>
                        </tr>
                        <tr height="38">
                            <td class="auto-style236" height="38">Pot_56</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Pot_57</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Pot_58</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style240" height="40">Pot_59</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Pot_60</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Pot_61</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style240" height="40">Pot_62</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Pot_63</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style240" height="40">Pot_64</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style235" height="22">Pot_65</td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style181">
                    <table border="0" cellpadding="0" cellspacing="0" class="auto-style248" style="border-collapse: collapse;">
                        <colgroup>
                            <col width="72" />
                        </colgroup>
                        <tr height="22">
                            <td class="auto-style219" height="22" width="72">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="38">
                            <td class="auto-style221" height="38">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="38">
                            <td class="auto-style221" height="38">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="95">
                            <td class="auto-style222" height="95">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="38">
                            <td class="auto-style221" height="38">　</td>
                        </tr>
                        <tr height="57">
                            <td class="auto-style223" height="57">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="38">
                            <td class="auto-style221" height="38">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="34">
                            <td class="auto-style224" height="34">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="34">
                            <td class="auto-style224" height="34">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style225" height="40">　</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style225" height="40">　</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style225" height="40">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="38">
                            <td class="auto-style221" height="38">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style225" height="40">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style225" height="40">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style225" height="40">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style181">
                    <table border="0" cellpadding="0" cellspacing="0" style="border-collapse:
 collapse;width:70pt" width="93">
                        <colgroup>
                            <col width="93" />
                        </colgroup>
                        <tr height="22">
                            <td class="auto-style241" height="22" width="93">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="38">
                            <td class="auto-style221" height="38">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="38">
                            <td class="auto-style221" height="38">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="95">
                            <td class="auto-style222" height="95">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="38">
                            <td class="auto-style221" height="38">　</td>
                        </tr>
                        <tr height="57">
                            <td class="auto-style223" height="57">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="38">
                            <td class="auto-style221" height="38">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="34">
                            <td class="auto-style224" height="34">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="34">
                            <td class="auto-style224" height="34">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style225" height="40">　</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style225" height="40">　</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style225" height="40">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="38">
                            <td class="auto-style221" height="38">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style225" height="40">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style225" height="40">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style225" height="40">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style181">
                    <table border="0" cellpadding="0" cellspacing="0" class="auto-style242" style="border-collapse: collapse;">
                        <colgroup>
                            <col width="72" />
                        </colgroup>
                        <tr height="22">
                            <td class="auto-style219" height="22" width="72">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="38">
                            <td class="auto-style221" height="38">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="38">
                            <td class="auto-style221" height="38">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="95">
                            <td class="auto-style222" height="95">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="38">
                            <td class="auto-style221" height="38">　</td>
                        </tr>
                        <tr height="57">
                            <td class="auto-style223" height="57">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="38">
                            <td class="auto-style221" height="38">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="34">
                            <td class="auto-style224" height="34">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="34">
                            <td class="auto-style224" height="34">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style225" height="40">　</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style225" height="40">　</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style225" height="40">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="38">
                            <td class="auto-style221" height="38">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style225" height="40">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style225" height="40">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style225" height="40">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                    </table>
                </td>
                <td class="auto-style181">
                    <table border="0" cellpadding="0" cellspacing="0" class="auto-style243" style="border-collapse: collapse;">
                        <colgroup>
                            <col width="72" />
                        </colgroup>
                        <tr height="22">
                            <td class="auto-style219" height="22" width="72">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="38">
                            <td class="auto-style221" height="38">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="38">
                            <td class="auto-style221" height="38">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="95">
                            <td class="auto-style222" height="95">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="38">
                            <td class="auto-style221" height="38">　</td>
                        </tr>
                        <tr height="57">
                            <td class="auto-style223" height="57">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="38">
                            <td class="auto-style221" height="38">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="34">
                            <td class="auto-style224" height="34">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="34">
                            <td class="auto-style224" height="34">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style225" height="40">　</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style225" height="40">　</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style225" height="40">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="38">
                            <td class="auto-style221" height="38">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style225" height="40">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style225" height="40">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                        <tr height="40">
                            <td class="auto-style225" height="40">　</td>
                        </tr>
                        <tr height="22">
                            <td class="auto-style220" height="22">　</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <br />
        <br />
      
      
         
            
            
   <div id="dialog"><iframe src="" frameborder="0" height="100%" width="100%" id="dialogFrame" scrolling="auto"></iframe> </div>      
         </form>
    </body>
</html>

