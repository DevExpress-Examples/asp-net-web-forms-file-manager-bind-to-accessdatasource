using System;
using System.Collections.Generic;

public partial class _Default : System.Web.UI.Page {

    protected void AccessDataSource1_Modifying(object sender, System.Web.UI.WebControls.SqlDataSourceCommandEventArgs e) {
        throw new Exception("Please download the example to modify the datasource");
    }
}
