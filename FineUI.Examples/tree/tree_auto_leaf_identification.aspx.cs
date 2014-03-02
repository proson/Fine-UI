using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;

namespace ExtAspNet.Examples.data
{
    public partial class tree_auto_leaf_identification : PageBase
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }
        }

        private void LoadData()
        {
            DataTable table = CreateDataTable();

            DataSet ds = new DataSet();
            ds.Tables.Add(table);
            ds.Relations.Add("TreeRelation", ds.Tables[0].Columns["Id"], ds.Tables[0].Columns["ParentId"]);

            foreach (DataRow row in ds.Tables[0].Rows)
            {
                if (row.IsNull("ParentId"))
                {
                    // For first tree.
                    ResolveTree(row, Tree1.Nodes);

                    // For second tree(much simpler).
                    ResolveTreeAutoLeaf(row, Tree2.Nodes);
                }
            }
        }

        private void ResolveTree(DataRow dataRow, TreeNodeCollection nodes)
        {
            DataRow[] rows = dataRow.GetChildRows("TreeRelation");
            TreeNode node = new TreeNode();
            node.Text = dataRow["MyText"].ToString();

            if (rows.Length > 0)
            {
                node.Leaf = false;
            }
            else
            {
                node.Leaf = true;
            }
            nodes.Add(node);

            foreach (DataRow row in rows)
            {
                ResolveTree(row, node.Nodes);
            }
        }


        private void ResolveTreeAutoLeaf(DataRow dataRow, TreeNodeCollection nodes)
        {
            TreeNode node = new TreeNode();
            node.Text = dataRow["MyText"].ToString();
            nodes.Add(node);

            DataRow[] rows = dataRow.GetChildRows("TreeRelation");
            foreach (DataRow row in rows)
            {
                ResolveTreeAutoLeaf(row, node.Nodes);
            }
        }

        #region CreateDataTable

        private DataTable CreateDataTable()
        {
            DataTable table = new DataTable();
            DataColumn column1 = new DataColumn("Id", typeof(string));
            DataColumn column2 = new DataColumn("MyText", typeof(String));
            DataColumn column4 = new DataColumn("ParentId", typeof(string));
            table.Columns.Add(column1);
            table.Columns.Add(column2);
            table.Columns.Add(column4);

            DataRow row = table.NewRow();
            row["Id"] = "china";
            row["MyText"] = "China";
            row["ParentId"] = DBNull.Value;
            table.Rows.Add(row);

            row = table.NewRow();
            row["Id"] = "henan";
            row["MyText"] = "Henan";
            row["ParentId"] = "china";
            table.Rows.Add(row);

            row = table.NewRow();
            row["Id"] = "zhumadian";
            row["MyText"] = "Zhumadian";
            row["ParentId"] = "henan";
            table.Rows.Add(row);

            row = table.NewRow();
            row["Id"] = "luohe";
            row["MyText"] = "Luohe";
            row["ParentId"] = "henan";
            table.Rows.Add(row);

            row = table.NewRow();
            row["Id"] = "anhui";
            row["MyText"] = "Anhui";
            row["ParentId"] = "china";
            table.Rows.Add(row);

            row = table.NewRow();
            row["Id"] = "hefei";
            row["MyText"] = "Hefei";
            row["ParentId"] = "anhui";
            table.Rows.Add(row);

            row = table.NewRow();
            row["Id"] = "microsoft";
            row["MyText"] = "Golden Pond";
            row["ParentId"] = "hefei";
            table.Rows.Add(row);

            row = table.NewRow();
            row["Id"] = "ustc";
            row["MyText"] = "USTC";
            row["ParentId"] = "hefei";
            table.Rows.Add(row);

            return table;
        }


        #endregion

    }
}
