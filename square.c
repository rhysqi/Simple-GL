#include "GL/gl.h"
#include <GL/freeglut.h>

// 2D rectangle in 3D coordinate + color
void square(){
	glColor3f(1, 0, 0);
	glVertex3f(-0.6, -0.75, 0.5);
	glColor3f(0, 1, 0);
	glVertex3f(0.6, -0.75, 0);
	glColor3f(0, 0, 1);
	glVertex3f(0.6, 0.75, 0);
	glColor3f(1, 1, 1);
	glVertex3f(-0.6, 0.75, 0);
}

void display() {

  	// Set every pixel in the frame buffer to the current clear color.
  	glClear(GL_COLOR_BUFFER_BIT);

	// GL Start render
  	glBegin(GL_POLYGON);
	square();
  	glEnd();

  	glFlush();
}

int main(int argc, char** argv) {

	// initialization
	glutInit(&argc, argv);
	glutInitDisplayMode(GLUT_SINGLE | GLUT_RGB);

	// Window name, size, and position
	glutInitWindowPosition(80, 80);
	glutInitWindowSize(400, 300);
	glutCreateWindow("Simple GL"); 

	// Callback display function
	glutDisplayFunc(display);

	// GL loop for runtime service
	glutMainLoop();
}
