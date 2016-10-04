VERSION 5.00
Begin VB.Form Form2 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Решение систем линейных уравнений"
   ClientHeight    =   6045
   ClientLeft      =   150
   ClientTop       =   750
   ClientWidth     =   9315
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6045
   ScaleWidth      =   9315
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox Picture3 
      Height          =   4575
      Left            =   3840
      ScaleHeight     =   4515
      ScaleWidth      =   5115
      TabIndex        =   7
      Top             =   1320
      Width           =   5175
   End
   Begin VB.PictureBox Picture2 
      Height          =   1455
      Left            =   120
      ScaleHeight     =   1395
      ScaleWidth      =   1875
      TabIndex        =   5
      Top             =   4440
      Width           =   1935
   End
   Begin VB.PictureBox Picture1 
      Height          =   2775
      Left            =   120
      ScaleHeight     =   2715
      ScaleWidth      =   3435
      TabIndex        =   3
      Top             =   1200
      Width           =   3495
   End
   Begin VB.Frame Frame1 
      Caption         =   "Введите N(количество неизвестных)"
      Height          =   855
      Left            =   120
      TabIndex        =   0
      Top             =   240
      Width           =   4695
      Begin VB.CommandButton Command2 
         Caption         =   "Ввод коэффициентов, вычисление и график"
         Height          =   495
         Left            =   1800
         TabIndex        =   4
         Top             =   240
         Width           =   2535
      End
      Begin VB.TextBox Text1 
         Height          =   285
         Left            =   480
         TabIndex        =   2
         Top             =   360
         Width           =   735
      End
      Begin VB.Label Label1 
         Caption         =   "N"
         Height          =   255
         Left            =   120
         TabIndex        =   1
         Top             =   360
         Width           =   255
      End
   End
   Begin VB.Label Label4 
      Caption         =   "X1"
      Height          =   495
      Left            =   9120
      TabIndex        =   9
      Top             =   3360
      Width           =   255
   End
   Begin VB.Label Label3 
      Caption         =   "X2"
      Height          =   255
      Left            =   6480
      TabIndex        =   8
      Top             =   1080
      Width           =   255
   End
   Begin VB.Label Label2 
      Caption         =   "Результаты:"
      Height          =   255
      Left            =   120
      TabIndex        =   6
      Top             =   4080
      Width           =   1215
   End
   Begin VB.Menu f 
      Caption         =   "Файл"
      Index           =   1
      Begin VB.Menu fdhg 
         Caption         =   "Начало"
      End
      Begin VB.Menu sd 
         Caption         =   "Выход"
      End
   End
   Begin VB.Menu ads 
      Caption         =   "Информация"
      Begin VB.Menu ryk 
         Caption         =   "Руководство пользователя"
      End
      Begin VB.Menu fgd 
         Caption         =   "Описание метода Холецкого"
      End
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Sub Eq_Sol(a() As Double, b() As Double, x() As Double, n As Integer)
Dim L(10, 10) As Double
Dim R(10, 10) As Double
Dim Y(10) As Double
Dim i As Integer, j As Integer, k As Integer
For i = 1 To n
 L(i, 1) = a(i, 1)
 R(1, i) = a(1, i) / a(1, 1)
Next i
Y(1) = b(1) / a(1, 1)
For i = 2 To n
 R(i, i) = 1
 j = 2
 Do
 L(i, j) = a(i, j)
 R(i, j) = 0
 For k = 1 To j - 1
 L(i, j) = L(i, j) - L(i, k) * R(k, j)
 Next
 j = j + 1
 Loop Until j > i
 R(i, i) = 1
 Do
 L(i, j) = 0
 R(i, j) = a(i, j)
 Y(i) = b(i)
 For k = 1 To i - 1
 R(i, j) = R(i, j) - L(i, k) * R(k, j)
 Y(i) = Y(i) - L(i, k) * Y(k)
 Next
 R(i, j) = R(i, j) / L(i, i)
 Y(i) = Y(i) / L(i, i)
 j = j + 1
 Loop Until j > n
Next
x(n) = Y(n)
For i = n - 1 To 1 Step -1
 x(i) = Y(i)
 For k = i + 1 To n
 x(i) = x(i) - R(i, k) * x(k)
  Next
 Next
 For i = 1 To n
 Picture2.Print "x"; i; "="; x(i)
  Next i
End Sub

Private Sub Command2_Click()
Dim a(10, 10) As Double
Dim b(10) As Double
Dim x(10) As Double
Dim n As Integer
Dim nc As Integer
n = Val(Text1)
For i = 1 To n
    For j = 1 To n
    a(i, j) = InputBox("Введите значение коэффициентов", "Ввод данных")
    If j <> n + 1 Then
    Picture1.Print a(i, j); "X"; j;
    Else
    Picture1.Print a(i, j);
    End If
    If j < n Then
    Picture1.Print "+";
    Else
    If j = n Then
    Picture1.Print "=";
    End If
    End If
    Next
    b(i) = InputBox("Введите значение коэффициентов", "Ввод данных")
    Picture1.Print b(i);
    Picture1.Print
    Next
    Call Eq_Sol(a(), b(), x(), n)
    If n = 2 Then
    If x(1) > x(2) Then
    k = x(1)
    Else
    k = x(2)
    End If
    Picture3.Scale (-k - 50, k + 50)-(k + 50, -k - 50)
    Picture3.Line (-k - 50, 0)-(k + 50, 0)
    Picture3.Line (0, -k - 50)-(0, k + 50)
    nc = (2 * k + 100) / 12
    Picture3.PSet (0, 0)
    Picture3.Print 0
    For i = 0 To k + 47 Step nc + 1
    Picture3.PSet (i, 0)
    Picture3.Print i
    Picture3.Line (i, -0.25)-(i, 0.25)
    Picture3.PSet (0, i)
    Picture3.Print i
    Picture3.Line (0.25, i)-(-0.25, i)
    Picture3.PSet (-i, 0)
    Picture3.Print -i
    Picture3.Line (-i, -0.25)-(-i, 0.25)
    Picture3.PSet (0, -i)
    Picture3.Print -i
    Picture3.Line (0.25, -i)-(-0.25, -i)
    Next
    For i = 1 To 2
    For j = -k - 50 To k + 50 Step 0.01
    e = Round((b(i) - a(i, 1) * j) / a(i, 2), 4)
    Picture3.PSet (j, e)
    Next
    Next
    Else
    Picture3.Print "График строится только для двух переменных"
    End If
    End Sub
   
Private Sub fa_Click()
Form3.Show
Form2.Hide
End Sub

Private Sub fdhg_Click()
Form1.Show
Form2.Hide
End Sub

Private Sub fgd_Click()
Form5.Show
Form2.Hide
End Sub

Private Sub ryk_Click()
Form4.Show
Form2.Hide
End Sub

Private Sub sd_Click()
End
End Sub

