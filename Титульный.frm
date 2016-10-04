VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form1"
   ClientHeight    =   5385
   ClientLeft      =   45
   ClientTop       =   345
   ClientWidth     =   7185
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5385
   ScaleWidth      =   7185
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Далее"
      Height          =   315
      Left            =   6000
      TabIndex        =   7
      Top             =   4920
      Width           =   1095
   End
   Begin VB.Label Label11 
      Caption         =   "Федеральное государственное бюджетное образовательное учреждение                           высшего профессионального образования"
      Height          =   495
      Left            =   840
      TabIndex        =   11
      Top             =   240
      Width           =   5655
   End
   Begin VB.Label Label10 
      Caption         =   "Министерство образования и науки Российской Федерации"
      Height          =   255
      Left            =   1080
      TabIndex        =   10
      Top             =   0
      Width           =   5175
   End
   Begin VB.Label Label9 
      Caption         =   "Кафедра Информатики"
      Height          =   255
      Left            =   5280
      TabIndex        =   9
      Top             =   1560
      Width           =   1815
   End
   Begin VB.Label Label8 
      Caption         =   "Курсовая работа"
      Height          =   255
      Left            =   3000
      TabIndex        =   8
      Top             =   2040
      Width           =   1335
   End
   Begin VB.Label Label7 
      Caption         =   "Тархов С.В."
      Height          =   255
      Left            =   6000
      TabIndex        =   6
      Top             =   4440
      Width           =   1095
   End
   Begin VB.Label Label6 
      Caption         =   "Проверил:"
      Height          =   255
      Left            =   6000
      TabIndex        =   5
      Top             =   4200
      Width           =   1095
   End
   Begin VB.Label Label5 
      Caption         =   "Альхамов Р.Р. группа ИБ-103"
      Height          =   495
      Left            =   6000
      TabIndex        =   4
      Top             =   3600
      Width           =   1095
   End
   Begin VB.Label Label4 
      Caption         =   "Выполнил:"
      Height          =   255
      Left            =   6000
      TabIndex        =   3
      Top             =   3360
      Width           =   1095
   End
   Begin VB.Label Label3 
      Caption         =   "Решение систем линейных уравнений "
      Height          =   375
      Left            =   2160
      TabIndex        =   2
      Top             =   2400
      Width           =   3000
   End
   Begin VB.Label Label2 
      Caption         =   "УФА-2013"
      Height          =   255
      Left            =   3120
      TabIndex        =   1
      Top             =   4920
      Width           =   855
   End
   Begin VB.Label Label1 
      Caption         =   "Уфимский Государственный Авиационный Технический Университет"
      Height          =   375
      Left            =   960
      TabIndex        =   0
      Top             =   720
      Width           =   5415
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Form2.Show
Form1.Hide
End Sub
