static float testa = 0, testda = 4.0f, maxa = 1.0f;
testa += dt* testda;
if (Fabs(testa) > maxa)
{
   testda *= -1.0f;
}

Matrix test;
test.Identity();
Vector testv(0, 1.0f, 0);
tPose::Joint* h = pose->GetJoint(trackerJoint);
test.FillRotation(testv, testa);
test.Mult(jointLocalMat);
h->objectMatrix = test;
