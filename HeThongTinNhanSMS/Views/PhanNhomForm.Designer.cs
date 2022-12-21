namespace HeThongTinNhanSMS.Froms
{
    partial class PhanNhomForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.lbTenNhom = new System.Windows.Forms.Label();
            this.cbbTenNhom = new System.Windows.Forms.ComboBox();
            this.SuspendLayout();
            // 
            // lbTenNhom
            // 
            this.lbTenNhom.AutoSize = true;
            this.lbTenNhom.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbTenNhom.Location = new System.Drawing.Point(518, 38);
            this.lbTenNhom.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lbTenNhom.Name = "lbTenNhom";
            this.lbTenNhom.Size = new System.Drawing.Size(91, 22);
            this.lbTenNhom.TabIndex = 0;
            this.lbTenNhom.Text = "Tên nhóm";
            // 
            // cbbTenNhom
            // 
            this.cbbTenNhom.FormattingEnabled = true;
            this.cbbTenNhom.Items.AddRange(new object[] {
            "--<Chọn nhóm>--"});
            this.cbbTenNhom.Location = new System.Drawing.Point(411, 72);
            this.cbbTenNhom.Name = "cbbTenNhom";
            this.cbbTenNhom.Size = new System.Drawing.Size(326, 28);
            this.cbbTenNhom.TabIndex = 1;
            this.cbbTenNhom.Text = "--<Chọn nhóm>--";
            this.cbbTenNhom.SelectedIndexChanged += new System.EventHandler(this.comboBox1_SelectedIndexChanged);
            // 
            // PhanNhomForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(10F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1194, 706);
            this.Controls.Add(this.cbbTenNhom);
            this.Controls.Add(this.lbTenNhom);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.Name = "PhanNhomForm";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label lbTenNhom;
        private System.Windows.Forms.ComboBox cbbTenNhom;
    }
}