using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using System.IO;

using Newtonsoft.Json.Linq;

namespace FineUI.Examples.grid
{
    public partial class grid_editor_cell_new : PageBase
    {
        private bool AppendToEnd = true;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                JObject defaultObj = new JObject();
                defaultObj.Add("Name", "用户名");
                defaultObj.Add("Gender", "1");
                defaultObj.Add("EntranceYear", "2015");
                defaultObj.Add("EntranceDate", "2015-09-01");
                defaultObj.Add("AtSchool", false);
                defaultObj.Add("Major", "化学系");

                // 第一行新增一条数据
                btnNew.OnClientClick = Grid1.GetAddNewRecordReference(defaultObj, AppendToEnd);

                btnReset.OnClientClick = Grid1.GetRejectChangesReference();

                BindGrid();
            }
        }

        #region BindGrid

        private void BindGrid()
        {
            DataTable table = GetSourceData();

            Grid1.DataSource = table;
            Grid1.DataBind();
        }

        #endregion

        #region Events

        private DataRow CreateNewData(DataTable table, Dictionary<string, string> newAddedData)
        {
            DataRow rowData = table.NewRow();

            // 设置行ID（模拟数据库的自增长列）
            rowData["Id"] = GetNextRowID();
            UpdateDataRow(newAddedData, rowData);

            return rowData;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            // 修改的现有数据
            Dictionary<int, Dictionary<string, string>> modifiedDict = Grid1.GetModifiedDict();
            foreach (int rowIndex in modifiedDict.Keys)
            {
                int rowID = Convert.ToInt32(Grid1.DataKeys[rowIndex][0]);
                DataRow row = FindRowByID(rowID);

                UpdateDataRow(modifiedDict[rowIndex], row);
            }

            // 新增数据
            List<Dictionary<string, string>> newAddedList = Grid1.GetNewAddedList();
            DataTable table = GetSourceData();
            if (AppendToEnd)
            {
                for (int i = 0; i < newAddedList.Count; i++)
                {
                    DataRow rowData = CreateNewData(table, newAddedList[i]);
                    table.Rows.Add(rowData);
                }
            }
            else
            {
                for (int i = newAddedList.Count - 1; i >= 0; i--)
                {
                    DataRow rowData = CreateNewData(table, newAddedList[i]);
                    table.Rows.InsertAt(rowData, 0);
                }
            }


            BindGrid();

            labResult.Text = "用户修改的数据：" + Grid1.GetModifiedData().ToString(Newtonsoft.Json.Formatting.None);

            Alert.Show("数据保存成功！（表格数据已重新绑定）");
        }


        private static void UpdateDataRow(Dictionary<string, string> rowDict, DataRow rowData)
        {
            // 姓名
            if (rowDict.ContainsKey("Name"))
            {
                rowData["Name"] = rowDict["Name"];
            }
            // 性别
            if (rowDict.ContainsKey("Gender"))
            {
                rowData["Gender"] = Convert.ToInt32(rowDict["Gender"]);
            }
            // 入学年份
            if (rowDict.ContainsKey("EntranceYear"))
            {
                rowData["EntranceYear"] = rowDict["EntranceYear"];
            }
            // 入学日期
            if (rowDict.ContainsKey("EntranceDate"))
            {
                rowData["EntranceDate"] = DateTime.Parse(rowDict["EntranceDate"]).ToString("yyyy-MM-dd");
            }
            // 是否在校
            if (rowDict.ContainsKey("AtSchool"))
            {
                rowData["AtSchool"] = Convert.ToBoolean(rowDict["AtSchool"]);
            }
            // 所学专业
            if (rowDict.ContainsKey("Major"))
            {
                rowData["Major"] = rowDict["Major"];
            }
        }

        #endregion

        #region Data

        private static readonly string KEY_FOR_DATASOURCE_SESSION = "datatable_for_grid_editor_cell_new";

        // 模拟在服务器端保存数据
        // 特别注意：在真实的开发环境中，不要在Session放置大量数据，否则会严重影响服务器性能
        private DataTable GetSourceData()
        {
            if (Session[KEY_FOR_DATASOURCE_SESSION] == null)
            {
                Session[KEY_FOR_DATASOURCE_SESSION] = GetDataTable();
            }
            return (DataTable)Session[KEY_FOR_DATASOURCE_SESSION];
        }

        // 根据行ID来获取行数据
        private DataRow FindRowByID(int rowID)
        {
            DataTable table = GetSourceData();
            foreach (DataRow row in table.Rows)
            {
                if (Convert.ToInt32(row["Id"]) == rowID)
                {
                    return row;
                }
            }
            return null;
        }

        // 模拟数据库的自增长列
        private int GetNextRowID()
        {
            int maxID = 0;
            DataTable table = GetSourceData();
            foreach (DataRow row in table.Rows)
            {
                int currentRowID = Convert.ToInt32(row["Id"]);
                if (currentRowID > maxID)
                {
                    maxID = currentRowID;
                }
            }
            return maxID + 1;
        }

        #endregion
    }
}
