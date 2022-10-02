CHUNKS = \
	tlAnimatedObjectChunk.sc \
	tlAnimationChunk.sc \
	tlBBoxChunk.sc \
	tlBSphereChunk.sc \
	tlBillboardObjectChunk.sc \
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
	tlSpriteChunk.sc \
	tlTextureAnimChunk16.sc \
	tlTextureChunk.sc \
	tlVertexOffsetExpressionChunk16.sc \
	tlVisibilityAnimChunk16.sc 

CHUNKSDIR = ../../Schema16
JEEVESDIR = ../Jeeves
#JEEVESDEBUG = -d

HPPFILES = $(patsubst %,../inc/%,$(CHUNKS:.sc=.hpp))
CPPFILES = $(CHUNKS:.sc=.cpp)

all:  hppfiles cppfiles

hppfiles: $(HPPFILES)
cppfiles: $(CPPFILES)


$(HPPFILES) : ../inc/%.hpp : $(CHUNKSDIR)/%.sc $(JEEVESDIR)/chunk_hpp.tpl $(JEEVESDIR)/Chunk_Schema.pm
	@echo Jeeves $(notdir $@)
	@perl $(JEEVESDIR)/jeeves -I $(JEEVESDIR) $(JEEVESDEBUG) -S $(CHUNKSDIR) -t $(JEEVESDIR)/chunk_hpp.tpl -s Chunk_Schema $< -o $@

$(CPPFILES) : %.cpp : $(CHUNKSDIR)/%.sc $(JEEVESDIR)/chunk_cpp.tpl $(JEEVESDIR)/Chunk_Schema.pm
	@echo Jeeves $(notdir $@)
	@perl $(JEEVESDIR)/jeeves -I $(JEEVESDIR) $(JEEVESDEBUG) -S $(CHUNKSDIR) -t $(JEEVESDIR)/chunk_cpp.tpl -s Chunk_Schema $< -o $@

DEBUG = -g

.PHONY : clean
clean:
	rm -f $(HPPFILES)
	rm -f $(CPPFILES)

install: all
