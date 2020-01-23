# Download reference files

# These are downloaded from the Internet Archive mirror as referenced in
# the Second Life Wiki
FIXED_DIR:=slAvatars_OBJ_Fixed
FIXED_URL:=http://web.archive.org/web/20120711023730/http://abbloch.com/slAvatars_OBJ_Fixed

all: avatar_mesh skeleton $(FIXED_DIR)

avatar_mesh: avatar_mesh.zip
	unzip avatar_mesh.zip

avatar_mesh.zip:
	wget -N http://static-secondlife-com.s3.amazonaws.com/downloads/avatar/avatar_mesh.zip

skeleton: SecondLifeAvatarSkeleton.zip
	unzip SecondLifeAvatarSkeleton.zip

SecondLifeAvatarSkeleton.zip:
	wget -N http://lecs-opensource.secondlife.com/fittedmesh/SecondLifeAvatarSkeleton.zip

$(FIXED_DIR):
	mkdir -p $(FIXED_DIR)
	(cd $(FIXED_DIR); \
	  wget -N \
	    $(FIXED_URL)/avatarSLFemale.mtl \
	    $(FIXED_URL)/avatarSLFemale.obj \
	    $(FIXED_URL)/avatarSLMale.mtl \
	    $(FIXED_URL)/avatarSLMale.obj \
	    $(FIXED_URL)/changelog.txt \
	    $(FIXED_URL)/LICENSE.txt; \
	)

