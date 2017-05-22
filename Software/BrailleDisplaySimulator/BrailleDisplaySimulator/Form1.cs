/*
    Author : Christoph Ulbinger
    Date :   22.05.2017

    Copyright (C) 2017  Christoph Ulbinger

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO.Ports;


namespace BrailleDisplaySimulator
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            getAvailablePorts();
        }

        private void buttonConnect_Click(object sender, EventArgs e)
        {
            try
            {
                if(serialPort1.IsOpen)
                {
                    serialPort1.Close();
                    buttonSend.Enabled = false;
                    textBox2.Enabled = false;
                    buttonConnect.Text = "Connect";
                }
                else
                {
                    if (comboBox1.Text != "")
                    {
                        serialPort1.PortName = comboBox1.Text;
                        serialPort1.BaudRate = 9600;
                        serialPort1.DataReceived += new SerialDataReceivedEventHandler(port_DataReceived);
                        serialPort1.Open();
                        buttonSend.Enabled = true;
                        textBox2.Enabled = true;
                        buttonConnect.Text = "Disconnect";
                    }
                    else
                    {
                        textBox1.AppendText("No COM Port selected\r\n");
                        buttonSend.Enabled = false;
                        textBox2.Enabled = false;
                        buttonConnect.Text = "Connect";

                    }
                }
                
            }
            catch(Exception x)
            {
                textBox1.AppendText("Error occured\r\n");
                buttonSend.Enabled = false;
                textBox2.Enabled = false;
                buttonConnect.Text = "Connect";
            }
        }

        private void buttonSend_Click(object sender, EventArgs e)
        {
            try
            {
                serialPort1.WriteLine(textBox2.Text);
                textBox2.Text = "";
            }catch(Exception x)
            {
                textBox1.AppendText("Error occured\r\n");
                buttonSend.Enabled = false;
                textBox2.Enabled = false;
                buttonConnect.Text = "Connect";
            }
            
        }

        void getAvailablePorts()
        {
            String[] ports = SerialPort.GetPortNames();
            comboBox1.Items.Clear();
            comboBox1.Items.AddRange(ports);
        }

        void port_DataReceived(object sender, SerialDataReceivedEventArgs e)
        {
            SerialPort sp = (SerialPort)sender;
            //string indata = sp.ReadExisting();

            string indata = sp.ReadLine();
            if (textBox1.InvokeRequired)
            {
                textBox1.Invoke((MethodInvoker)delegate
                {
                    if ((indata.Contains("[KEY]")) || (indata.Contains("[EVENT]")) || (indata.Contains("[ERROR]")) || (indata.Contains("[WARNING]")) || (indata.Contains("[OK]")))
                    {
                        textBox1.AppendText(indata + "\r\n");
                    }
                    else
                    {
                        textBoxBraille.Text = indata;
                    }

                });
            }
            else
            {
                if ((indata.Contains("[KEY]")) || (indata.Contains("[EVENT]")) || (indata.Contains("[ERROR]")) || (indata.Contains("[WARNING]")) || (indata.Contains("[OK]")))
                {
                    textBox1.AppendText(indata + "\r\n");
                }
                else
                {
                    textBoxBraille.Text = indata;
                }
            }

        }
        
        private void buttonRefresh_Click(object sender, EventArgs e)
        {
            getAvailablePorts();
        }
    }
}
