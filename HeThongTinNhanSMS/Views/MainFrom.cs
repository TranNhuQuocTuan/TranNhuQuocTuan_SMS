using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace HeThongTinNhanSMS
{
    public partial class MainFrom : Form
    {
        private Button currentButton;
        private Form ActiveFrom;

        public MainFrom()
        {
            InitializeComponent();
            this.Text = string.Empty;
            this.ControlBox = false;
            //set color controlbox blue 
            this.FormBorderStyle = FormBorderStyle.None;
            this.BackColor = Color.FromArgb(255, 255, 255);
            //align from center of screen
            this.StartPosition = FormStartPosition.CenterScreen;
            this.MaximizedBounds = Screen.FromHandle(this.Handle).WorkingArea;
        }
        [DllImport("user32.dll", EntryPoint = "ReleaseCapture")]
        private extern static void ReleaseCapture();
        [DllImport("user32.dll", EntryPoint = "SendMessage")]
        private extern static void SendMessage(System.IntPtr hwnd, int wmsg, int wparam, int lparam);

        private void ActivateButton(object senderBtn)
        {
            if (senderBtn != null)
            {
                if (currentButton != (Button)senderBtn)
                {
                    DisableButton();
                    //Button
                    currentButton = (Button)senderBtn;
                    currentButton.BackColor = Color.FromArgb(0, 79, 139);
                    labelTitle.Text = currentButton.Text.ToUpper();

                }
            }
        }
        private void DisableButton()
        {
            if (currentButton != null)
            {
                currentButton.BackColor = Color.FromArgb(1, 99, 175);

            }
        }
        private void OpenChildFrom(Form childForm, object sender)
        {
            if (ActiveFrom != null)
            {
                ActiveFrom.Close();
            }
            ActivateButton(sender);
            ActiveFrom = childForm;
            childForm.TopLevel = false;
            childForm.FormBorderStyle = FormBorderStyle.None;
            childForm.Dock = DockStyle.Fill;
            this.panelDesktop.Controls.Add(childForm);
            this.panelDesktop.Tag = childForm;
            childForm.BringToFront();
            childForm.Show();
        }
        private void MainFrom_Load(object sender, EventArgs e)
        {
            
        }

        private void btn_TrangChu_Click(object sender, EventArgs e)
        {
            OpenChildFrom(new Froms.TrangChuForm(), sender);
        }

        private void btn_GuiTinNhan_Click(object sender, EventArgs e)
        {
            OpenChildFrom(new Froms.GuiTinNhanForm(), sender);
        }

        private void btn_QuanLyDanhBa_Click(object sender, EventArgs e)
        {
            OpenChildFrom(new Froms.QuanLyDanhBaForm(), sender);
        }

        private void btn_QuanLyNhom_Click(object sender, EventArgs e)
        {
            OpenChildFrom(new Froms.QuanLyNhomForm(), sender);
        }

        private void btn_PhanNhom_Click(object sender, EventArgs e)
        {
            OpenChildFrom(new Froms.PhanNhomForm(), sender);
        }

        private void btn_ThongKeChiTietSMS_Click(object sender, EventArgs e)
        {
            OpenChildFrom(new Froms.ThongKeChiTietSMSForm(), sender);
        }

        private void panelTitleBar_MouseDown(object sender, MouseEventArgs e)
        {
            ReleaseCapture();
            SendMessage(this.Handle, 0x112, 0xf012, 0);
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void btnMaximize_Click(object sender, EventArgs e)
        {
            if (WindowState == FormWindowState.Normal)
            {
                this.WindowState = FormWindowState.Maximized;
            }
            else
            {
                this.WindowState = FormWindowState.Normal;
            }
        }

        private void btnMinimize_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }
    }
}
