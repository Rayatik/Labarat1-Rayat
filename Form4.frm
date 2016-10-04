VERSION 5.00
Begin VB.Form Form4 
   BorderStyle     =   1  'Fixed Single
   ClientHeight    =   9615
   ClientLeft      =   45
   ClientTop       =   345
   ClientWidth     =   13800
   LinkTopic       =   "Form4"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9615
   ScaleWidth      =   13800
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Назад"
      Height          =   2055
      Left            =   6240
      TabIndex        =   7
      Top             =   7200
      Width           =   6855
   End
   Begin VB.PictureBox Picture2 
      Height          =   2415
      Left            =   120
      Picture         =   "Form4.frx":0000
      ScaleHeight     =   2355
      ScaleWidth      =   5595
      TabIndex        =   6
      Top             =   7080
      Width           =   5655
   End
   Begin VB.PictureBox Picture1 
      Height          =   6855
      Left            =   3840
      Picture         =   "Form4.frx":2AD32
      ScaleHeight     =   6795
      ScaleWidth      =   9555
      TabIndex        =   0
      Top             =   120
      Width           =   9615
   End
   Begin VB.Label Label6 
      Caption         =   "Inputbox:"
      Height          =   255
      Left            =   240
      TabIndex        =   8
      Top             =   6600
      Width           =   3015
   End
   Begin VB.Label Label5 
      Caption         =   "Вывод результатов в Picturebox 5, а график в Picturebox 4."
      Height          =   495
      Left            =   240
      TabIndex        =   5
      Top             =   3120
      Width           =   3375
   End
   Begin VB.Label Label4 
      Caption         =   $"Form4.frx":1018C8
      Height          =   2055
      Left            =   240
      TabIndex        =   4
      Top             =   1200
      Width           =   3255
   End
   Begin VB.Label Label3 
      Caption         =   "Действия с программой:"
      Height          =   375
      Left            =   240
      TabIndex        =   3
      Top             =   960
      Width           =   3135
   End
   Begin VB.Label Label2 
      Caption         =   "Решение систем линейных уравнений методом Халецкого."
      Height          =   375
      Left            =   240
      TabIndex        =   2
      Top             =   480
      Width           =   3255
   End
   Begin VB.Label Label1 
      Caption         =   "Назначение программы:"
      Height          =   255
      Left            =   240
      TabIndex        =   1
      Top             =   240
      Width           =   2175
   End
End
Attribute VB_Name = "Form4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Form2.Show
Form4.Hide
End Sub

