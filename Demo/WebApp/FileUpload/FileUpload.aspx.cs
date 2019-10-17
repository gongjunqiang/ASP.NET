using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp.FileUpload
{
    public partial class FileUpload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnFileUpload_Click(object sender, EventArgs e)
        {
            //1.判断文件是否存在
            if (!this.ful.HasFile) return;
            //2.判断文件大小(变成MB)以及类型是否符合要求
            double fileLength = this.ful.FileContent.Length / (1024.0 * 1024.0);
            //3.获取配置文件中上传文件大小的现在:转换成MB
            double limiteLength = Convert.ToDouble(System.Configuration.ConfigurationManager.AppSettings["PhysicsObjectLength"]) / 1024.0 ;
            //4.判断文件大小是否符合要求
            if (fileLength > limiteLength)
            {
                this.Itmsg.Text = "上传文件大小不能大于"+ limiteLength+"MB";
                this.Itmsg.Text = "<script type='text/javascript'>alert('上传文件大小不能大于" + limiteLength + "MB')</script>";

                return;
            }
            //5.获取文件名
            var fileName = this.ful.FileName;
            //6.判断是否是exe
            var fileExtenion = fileName.Substring(fileName.IndexOf(".") + 1).ToLower();
            if (fileExtenion == "exe")
            {
                this.Itmsg.Text = "<script type='text/javascript'>alert('文件类型不符合要求！')</script>";
                return;
            }
            //7.修改文件名保存到服务器上
            fileName = DateTime.Now.ToString("yyyyMMddhhmmssms") + "_" + fileName;
            //8获取服务器文件夹路径
            string path = Server.MapPath("~/Files");
            //9.上传文件
            try
            {
                this.ful.SaveAs(path + "/" + fileName);
                this.Itmsg.Text = "<script type='text/javascript'>alert('文件上传成功！')</script>";
            }
            catch (Exception ex)
            {
                this.Itmsg.Text = "<script type='text/javascript'>alert('文件上传失败" + ex.Message + "')</script>";
            }

        }
    }
}