#DEBUG = -g -pg
DEBUG = -g

DEFINES = -DTOOLLIB -DRAD_DEBUG -DRAD_PC -DRAD_LINUX

CHUNKCPPDIR = ../chunks16/src

CHUNKS = \
	tlAnimatedObjectChunk.sc \
	tlAnimationChunk.sc \
	tlBillboardObjectChunk.sc \
	tlBBoxChunk.sc \
	tlBSphereChunk.sc \
	tlCameraAnimChunk16.sc \
	tlCameraChunk16.sc \
	tlChannelChunk.sc \
	tlCollisionObjectChunk.sc \
	tlCompositeDrawableChunk16.sc \
	tlEntityChannelChunk16.sc \
	tlExportInfoChunk16.sc \
	tlExpressionAnimChunk16.sc \
	tlExpressionChunk.sc \
	tlFlexibleJointChunk.sc \
	tlFlexibleObjectChunk.sc \
	tlFontChunk.sc \
	tlFrameControllerChunk.sc \
	tlFrameControllerChunk16.sc  \
	tlGameAttrChunk.sc \
	tlHistoryChunk16.sc \
	tlImageChunk.sc \
	tlLightAnimChunk16.sc \
	tlLightChunk.sc \
	tlLightGroupChunk16.sc \
	tlLocatorChunk.sc \
	tlMeshChunk.sc \
	tlMultiControllerChunk16.sc \
	tlOpticEffectChunk.sc \
	tlParticleSystemChunk.sc \
        tlPhotonMapChunk.sc \
	tlPhysicsObjectChunk.sc \
	tlPoseAnimChunk16.sc \
	tlPrimGroupChunk.sc \
	tlScenegraphChunk.sc \
	tlScenegraphTransformAnimChunk16.sc \
	tlScroobyProjectChunk.sc \
	tlShaderChunk.sc \
	tlShadowSkinChunk.sc \
	tlSkeletonChunk16.sc \
	tlSkinChunk.sc \
        tlSmartPropChunk.sc \
	tlSpriteChunk.sc \
	tlTextureAnimChunk16.sc \
	tlTextureChunk.sc \
	tlVertexOffsetExpressionChunk16.sc \
	tlVisibilityAnimChunk16.sc 

SOURCES = \
	dospath.cpp \
	getopt.c \
	getopt1.c \
	glob.cpp \
	greyscale.cpp \
	hash.cpp \
	lzr.cpp \
	lzrf.cpp \
	porc.cpp \
	tlAdjEdgeList.cpp \
	tlAdjFaceList.cpp \
	tlAnimatedObject.cpp \
	tlAnimation.cpp \
	tlBillboardObject.cpp \
	tlBillboardObjectAnim.cpp \
	tlBox.cpp \
	tlBuffer.cpp \
	tlByteStream.cpp \
	tlCamera.cpp \
	tlCameraAnim.cpp \
	tlChannel.cpp \
	tlChunk16.cpp \
	tlCollisionObject.cpp \
	tlColour.cpp \
	tlCompositeDrawable.cpp \
	tlCompressedByteStream.cpp \
	tlDataChunk.cpp \
	tlEdge.cpp \
	tlEntity.cpp \
	tlEntityTable.cpp \
	tlEventAnimation.cpp \
	tlExportInfo.cpp \
	tlExpression.cpp \
	tlExpressionAnim.cpp \
	tlExpressionOffsets.cpp \
	tlFile.cpp \
	tlFileByteStream.cpp \
	tlFlexibleJoint.cpp \
	tlFlexibleObject.cpp \
	tlFont.cpp \
	tlFourCC.cpp \
	tlFrameController.cpp \
	tlGCComponentQuantizer.cpp \
	tlGCPrimBuffer.cpp \
	tlGameAttr.cpp \
	tlHashTable.cpp \
	tlHeightField.cpp \
	tlHistory.cpp \
	tlImage.cpp \
	tlImageQuantizer.cpp \
	tlIndexedSkinVertex.cpp \
	tlIndexedVertex.cpp \
	tlInventory.cpp \
	tlLight.cpp \
	tlLightAnim.cpp \
	tlLightGroup.cpp \
	tlLoadManager.cpp \
	tlLocator.cpp \
	tlMatrix.cpp \
	tlMemByteStream.cpp \
	tlMultiController.cpp \
	tlOffsetList.cpp \
	tlOffsetSkinVertex.cpp \
	tlOpticEffect.cpp \
	tlPS2PrimBuffer.cpp \
	tlParticleSystem.cpp \
	tlPhotonMap.cpp \
	tlPhysicsObject.cpp \
	tlPlane.cpp \
	tlPoint.cpp \
	tlPose.cpp \
	tlPoseAnim.cpp \
	tlPrimGroup.cpp \
	tlPrimGroupMesh.cpp \
	tlQuat.cpp \
	tlRay.cpp \
	tlScenegraph.cpp \
	tlScenegraphTransformAnim.cpp \
	tlShader.cpp \
	tlSimpleShader.cpp \
	tlSkeleton.cpp \
	tlSkin.cpp \
	tlSkinVertex.cpp \
	tlSphere.cpp \
	tlSprite.cpp \
	tlString.cpp \
	tlStringTable.cpp \
	tlTable.cpp \
	tlTextDataParser.cpp \
	tlTexture.cpp \
	tlTextureAnim.cpp \
	tlTranAnimKeys.cpp \
	tlTriMesh.cpp \
	tlTriMeshIntersect.cpp \
	tlTriangle.cpp \
	tlTriangleFactory.cpp \
	tlTriangleIntersect.cpp \
	tlTriangleIntersectFactory.cpp \
	tlTsEdge.cpp \
	tlTsTriangle.cpp \
	tlTsTriangleToTriStripConverter.cpp \
	tlTsVertexCache.cpp \
	tlTsVertexConnectivity.cpp \
	tlUV.cpp \
	tlVertex.cpp \
	tlVisAnim.cpp \
	tlXBOXPrimBuffer.cpp \
	tlversion.cpp

CHUNKOBJ = $(patsubst %.sc,$(CHUNKCPPDIR)/%.o,$(CHUNKS))


# replace .c or .cpp with .o
OBJECTS = $(patsubst %.c,%.o,$(SOURCES:.cpp=.o)) $(CHUNKOBJ)

VPATH = ../../pddi/ps2
LZOLIBDIR = ../../lib/lzo

CPPDEPEND = -MM 
CPPFLAGS += -I../.. -I../inc -I../chunks16/inc -I../../constants -I../../lib/s3tc/Include -I../../lib/freetype/include/freetype -I../../lib/freetype/include -I../../../radmath -I$(LZOLIBDIR) $(DEBUG) -Wall -Woverloaded-virtual $(DEFINES)
RANLIB = ranlib

TARGETS = ../lib/libtoollib.a

all:: $(TARGETS)

../lib/libtoollib.a : $(OBJECTS) 
	@echo Generating compile fingerprint...
	@perl ../compile_info.pl Debug > tlCompileVersion.cpp
	@$(COMPILE.cc) tlCompileVersion.cpp -o tlCompileVersion.o
	@echo Building Library...
	@ar crs libtoollib.a $(OBJECTS) tlCompileVersion.o
	@mv libtoollib.a ../lib/libtoollib.a


.PHONY : clean
clean:
	rm -f $(OBJECTS)
	rm -f $(OBJECTS:.o=.d)

install: ../lib/libtoollib.a

# Rules for infering how to make specific types of files
%.o: %.cpp
	@echo Compiling $<
	@$(COMPILE.cc) $< $(OUTPUT_OPTION)

%.d: %.cpp
	@echo Updating dependencies for $<
	-@ $(CXX) $(CPPDEPEND) $(CPPFLAGS) $< | sed "s#^\(.*\.o\)[ :]*#$(@:.d=.o) $@ : #" > $@

%.d: %.c
	@echo Updating dependencies for $<
	-@ $(CC) $(CPPDEPEND) $(CPPFLAGS) $< | sed "s#^\(.*\.o\)[ :]*#$(@:.d=.o) $@ : #" > $@

ifndef CLEANING
-include $(OBJECTS:.o=.d)
endif
