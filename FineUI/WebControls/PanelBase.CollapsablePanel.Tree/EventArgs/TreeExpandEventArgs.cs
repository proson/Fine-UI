
#region Comment

/*
 * Project：    FineUI
 * 
 * FileName:    TreeExpandEventArgs.cs
 * CreatedOn:   2008-07-22
 * CreatedBy:   30372245@qq.com
 * 
 * 
 * Description：
 *      ->
 *   
 * History：
 *      ->
 * 
 * 
 * 
 * 
 */

#endregion

using System;
using System.Data;
using System.Reflection;
using System.ComponentModel;
using System.Web.UI;


namespace FineUI
{
    /// <summary>
    /// 树节点展开事件参数
    /// </summary>
    public class TreeExpandEventArgs : EventArgs
    {
        private TreeNode _node;

        /// <summary>
        /// 树实例
        /// </summary>
        public TreeNode Node
        {
            get { return _node; }
            set { _node = value; }
        }


        private string _nodeID;

        /// <summary>
        /// 树节点ID
        /// </summary>
        public string NodeID
        {
            get { return _nodeID; }
            set { _nodeID = value; }
        }

        /// <summary>
        /// 构造函数
        /// </summary>
        /// <param name="node">树节点</param>
        public TreeExpandEventArgs(TreeNode node)
        {
            _node = node;
            _nodeID = node.NodeID;
        }

    }
}



