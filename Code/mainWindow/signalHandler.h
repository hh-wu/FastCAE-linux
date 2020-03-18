#ifndef _SIGNALHANDLER_H_
#define _SIGNALHANDLER_H_

#include <QObject>
#include <QStringList>
#include "mainWindowAPI.h"

class QDialog;
class QTreeWidgetItem;
class vtkDataSet;

namespace Post
{
	class PostWindowBase;
}

namespace GUI
{
	class MainWindow;
	class SolveProcessManager;

	class MAINWINDOWAPI SignalHandler : public QObject
	{
		Q_OBJECT
	public:
		SignalHandler(MainWindow* mainwindow);
		~SignalHandler();

	signals:
		void importMeshPySig(QStringList);
		void exportMeshPySig(QString);
		void open3DGraphWindowPySig();
		void open2DPlotWindowPySig();
		bool openProjectFileSig(QString fileName);
		void saveToProjectFileSig(QString filename);
		void solveProjectSig(int projectIndex, int solverIndex);
		

	public:
		bool importMesh(const QStringList &filenames);
		bool importGeometry(const QStringList &filenames);
		bool exportGeometry(QString f);
		QString getMD5();
		/*�������� */
		void on_actionNew();
		///�������
		void clearData();

	public slots:
		/*��� */
		void on_actionSolve();
		/*�л�ΪӢ�� */
		void on_actionEnglish();
		/*�л�Ϊ���� */
		void on_actionChinese();
		/*����ģ�����¼� */
		void handleTreeMouseEvent(int eventtype, QTreeWidgetItem*item, int proID);
		///���
		void solveProjectPy(int projectIndex, int solverIndex);
		void solveProject(int projectIndex, int solverIndex);
		///����������
		void generateSurfaceMesh();
		///����������
		void generateSolidMesh();
		///��������
		void genMesh();
		//�����������������
		void appendGeneratedMesh(QString name, vtkDataSet* dataset);
		//��������
		void exportMeshByID(QString filename, int kenerlID = -1);
		void exportMeshPy(QString filename);
		///ˢ��Action״̬
		void updateActionsStates();
		//������2D��������
		void open2DPlotWindow();
		void open2DPlotWindowPy();//�ύpy����
		//������3D��������
		void open3DGraphWindow();
		void open3DGraphWindowPy();
		//�رպ�������
		void closePostWindow(Post::PostWindowBase* p);
		//����ͼƬ
		void saveImange();
		bool openProjectFile(QString fileName);
		void saveToProjectFile(QString filename);
		//�����������
		void meshChecking();
		//��������
		
		void undo();
		void redo();
		void createBox();
		void createCylinder();
		void CreateSphere();
		void CreateCone();
		//void CreateCylindricalComplex();
		//void CreateBoxComplex();
		void CreatePoint();
		void CreateEdge();
		void CreateFace();
		void CreateFilet();
		void CreateVariableFillet();
		void CreateChamfer();
		void CreateBoolCut();
		void CreateBoolFause();
		void CreateBoolCommon();
		void MirrorFeature();
		void CreateExtrusion();
		void MoveFeature();
		void RotateFeature();
		void CreateRevol();
		void CreateLoft();
		void CreateSweep();
		void CreateDatumplane();
		void DrawGraphicsLine();
		void DrawGraphicsRectangle();
		void DrawGraphicsCircle();
		void DrawGraphicsArc();
		void DrawGraphicsPolyline();
		void DrawGraphSpline();
		void showDialog(QDialog* d);
		void MakeMatrix();
		//void showDemo();

	private:
		void handleSingleClickEvent(QTreeWidgetItem*item, int proID);
		void openPreWinPy();

	private:
		MainWindow* _mainWindow{};
		int _proID{ -1 };
		SolveProcessManager* _solveProcessManager{};
//		QString _currentFilePath{};

	};
}


#endif