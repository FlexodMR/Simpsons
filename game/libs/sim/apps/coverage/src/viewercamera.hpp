#include <p3d/pointcamera.hpp>
#include <radmath/radmath.hpp>

class ViewerCamera : public tPointCamera
{
public:
    ViewerCamera();
    ~ViewerCamera();

    void RotateX(float f);
    void RotateY(float f);
    void Zoom(float f);
    void MoveX(float f);
    void MoveY(float f);
    void Reset(void);
    void Watch(rmt::Sphere* sphere);
    void SetDefault( float x = 20, float y = 20, float z = -200 );
    void SetDefault( RadicalMathLibrary::Vector v );

private:
    void Update(void);
    rmt::Vector m_defaultPos;
};
