.class public Lcom/qualcomm/ims/vt/CameraController;
.super Ljava/lang/Object;
.source "CameraController.java"

# interfaces
.implements Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;
.implements Lorg/codeaurora/ims/QImsSessionBase$Listener;
.implements Lcom/qualcomm/ims/vt/Camera$Listener;
.implements Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mIsRecordingStarted:Z

.field private static sInstance:Lcom/qualcomm/ims/vt/CameraController;


# instance fields
.field private mCamera:Lcom/qualcomm/ims/vt/Camera;

.field private mCameraConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

.field private mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

.field private mContext:Landroid/content/Context;

.field private mIsRecordingEnabled:Z

.field private mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

.field private mPreviewSurface:Landroid/view/Surface;

.field private mRecorderFrameRate:I

.field private mRecordingSurface:Landroid/view/Surface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const-string v0, "CameraController"

    sput-object v0, Lcom/qualcomm/ims/vt/CameraController;->TAG:Ljava/lang/String;

    .line 41
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qualcomm/ims/vt/CameraController;->mIsRecordingStarted:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/qualcomm/ims/vt/ImsMedia;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "media"    # Lcom/qualcomm/ims/vt/ImsMedia;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mIsRecordingEnabled:Z

    .line 45
    new-instance v0, Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    const/16 v1, 0x14

    const/4 v2, 0x2

    const/16 v3, 0xf0

    const/16 v4, 0x140

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;-><init>(IIII)V

    iput-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    .line 48
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;->getFps()I

    move-result v0

    iput v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mRecorderFrameRate:I

    .line 53
    iput-object p1, p0, Lcom/qualcomm/ims/vt/CameraController;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/qualcomm/ims/vt/CameraController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    .line 55
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {v0, p0}, Lcom/qualcomm/ims/vt/ImsMedia;->addCameraListener(Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;)V

    .line 56
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {v0, p0}, Lcom/qualcomm/ims/vt/ImsMedia;->addMediaStateListener(Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;)V

    .line 57
    invoke-static {p1}, Lcom/qualcomm/ims/vt/CameraManager;->init(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method private checkMediaId(Ljava/lang/String;I)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "mediaId"    # I

    .line 550
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getMediaId()I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mediaId mismatch with mCameraOwner"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 553
    :cond_0
    return-void
.end method

.method private closeCamera()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/Camera;->close()V

    .line 107
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    .line 108
    return-void
.end method

.method private doClose(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 2
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doClose: Camera="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/CameraController;->getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 329
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/CameraController;->removeOwner(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 331
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-nez v0, :cond_0

    .line 332
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraController;->closeCamera()V

    .line 333
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mPreviewSurface:Landroid/view/Surface;

    goto :goto_0

    .line 335
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doClose: Not closing camera="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " another session still requires it, session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 337
    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/CameraController;->getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 335
    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 339
    :goto_0
    return-void
.end method

.method private doOpen(Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 5
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doOpen mCamera ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cameraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 75
    invoke-direct {p0, p2}, Lcom/qualcomm/ims/vt/CameraController;->getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 74
    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraController;->releaseCurrentOwner()V

    .line 78
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/Camera;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraController;->closeCamera()V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 83
    .local v0, "reOpen":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 84
    invoke-static {p1, p0}, Lcom/qualcomm/ims/vt/CameraManager;->open(Ljava/lang/String;Lcom/qualcomm/ims/vt/Camera$Listener;)Lcom/qualcomm/ims/vt/Camera;

    move-result-object v3

    iput-object v3, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    .line 87
    :cond_2
    invoke-direct {p0, p2}, Lcom/qualcomm/ims/vt/CameraController;->setOwner(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 89
    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    if-eqz v3, :cond_3

    .line 90
    iget-object v3, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    iget-object v4, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    invoke-virtual {v3, v4}, Lcom/qualcomm/ims/vt/Camera;->reconfigure(Lcom/qualcomm/ims/vt/Camera$ConfigIms;)V

    .line 91
    iget-object v3, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    iget v4, p0, Lcom/qualcomm/ims/vt/CameraController;->mRecorderFrameRate:I

    invoke-virtual {v3, v4}, Lcom/qualcomm/ims/vt/Camera;->setRecorderFrameRate(I)V

    .line 94
    :cond_3
    iget-object v3, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v3}, Lcom/qualcomm/ims/vt/Camera;->getSensorOrientation()I

    move-result v3

    .line 95
    .local v3, "mountAngle":I
    iget-object v4, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v4}, Lcom/qualcomm/ims/vt/Camera;->isFacingFront()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 96
    goto :goto_1

    :cond_4
    move v1, v2

    .line 97
    .local v1, "cameraFacing":I
    :goto_1
    iget-object v2, p0, Lcom/qualcomm/ims/vt/CameraController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {v2, v1, v3}, Lcom/qualcomm/ims/vt/ImsMedia;->setCameraInfo(II)V

    .line 98
    return-void
.end method

.method public static getInstance()Lcom/qualcomm/ims/vt/CameraController;
    .locals 2

    .line 137
    sget-object v0, Lcom/qualcomm/ims/vt/CameraController;->sInstance:Lcom/qualcomm/ims/vt/CameraController;

    if-eqz v0, :cond_0

    .line 138
    sget-object v0, Lcom/qualcomm/ims/vt/CameraController;->sInstance:Lcom/qualcomm/ims/vt/CameraController;

    return-object v0

    .line 140
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CameraController: Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getPreviewSize()Landroid/util/Size;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/Camera;->getSensorOrientation()I

    move-result v0

    .line 244
    .local v0, "mountAngle":I
    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v1}, Lcom/qualcomm/ims/vt/Camera;->getPreviewSize()Landroid/util/Size;

    move-result-object v1

    .line 245
    .local v1, "previewSize":Landroid/util/Size;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPreviewSize mountAngle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " previewSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v2

    .line 247
    .local v2, "width":I
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    .line 248
    .local v3, "height":I
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v5

    if-ge v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 249
    .local v4, "isPortrait":Z
    :goto_0
    if-nez v4, :cond_1

    rem-int/lit16 v5, v0, 0xb4

    if-eqz v5, :cond_1

    .line 252
    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v3, v2}, Landroid/util/Size;-><init>(II)V

    move-object v1, v5

    goto :goto_1

    .line 253
    :cond_1
    if-eqz v4, :cond_2

    rem-int/lit16 v5, v0, 0xb4

    if-nez v5, :cond_2

    .line 256
    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v2, v3}, Landroid/util/Size;-><init>(II)V

    move-object v1, v5

    goto :goto_1

    .line 257
    :cond_2
    if-eqz v4, :cond_3

    .line 259
    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v3, v2}, Landroid/util/Size;-><init>(II)V

    move-object v1, v5

    goto :goto_1

    .line 260
    :cond_3
    if-nez v4, :cond_4

    .line 262
    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, v2, v3}, Landroid/util/Size;-><init>(II)V

    move-object v1, v5

    .line 264
    :cond_4
    :goto_1
    return-object v1
.end method

.method private getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;
    .locals 1
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 492
    if-nez p1, :cond_0

    .line 493
    const/4 v0, 0x0

    return-object v0

    .line 495
    :cond_0
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->toSimpleString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;Lcom/qualcomm/ims/vt/ImsMedia;)Lcom/qualcomm/ims/vt/CameraController;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "media"    # Lcom/qualcomm/ims/vt/ImsMedia;

    .line 116
    sget-object v0, Lcom/qualcomm/ims/vt/CameraController;->sInstance:Lcom/qualcomm/ims/vt/CameraController;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/qualcomm/ims/vt/CameraController;

    invoke-direct {v0, p0, p1}, Lcom/qualcomm/ims/vt/CameraController;-><init>(Landroid/content/Context;Lcom/qualcomm/ims/vt/ImsMedia;)V

    sput-object v0, Lcom/qualcomm/ims/vt/CameraController;->sInstance:Lcom/qualcomm/ims/vt/CameraController;

    .line 121
    sget-object v0, Lcom/qualcomm/ims/vt/CameraController;->sInstance:Lcom/qualcomm/ims/vt/CameraController;

    return-object v0

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CameraController: Multiple initialization"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private releaseCurrentOwner()V
    .locals 2

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseCurrentOwner: Session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/CameraController;->getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->removeListener(Lorg/codeaurora/ims/QImsSessionBase$Listener;)V

    .line 322
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 324
    :cond_0
    return-void
.end method

.method private removeOwner(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 2
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeOwner: Session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/CameraController;->getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/CameraController;->isOwner(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraController;->releaseCurrentOwner()V

    goto :goto_0

    .line 308
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removeOwner: The session is not the correct owner. cameraOwner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 309
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/CameraController;->getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 308
    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    :goto_0
    return-void
.end method

.method private sendCameraCapabilities()V
    .locals 4

    .line 475
    invoke-virtual {p0}, Lcom/qualcomm/ims/vt/CameraController;->getCameraCapabilities()Landroid/telecom/VideoProfile$CameraCapabilities;

    move-result-object v0

    .line 476
    .local v0, "cc":Landroid/telecom/VideoProfile$CameraCapabilities;
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-nez v1, :cond_0

    goto :goto_0

    .line 481
    :cond_0
    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getImsVideoCallProviderImpl()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v1

    .line 482
    .local v1, "provider":Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    if-nez v1, :cond_1

    .line 483
    const-string v2, "sendCameraCapabilities: ImsVideoCallProvider is not available (null)."

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 484
    return-void

    .line 487
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendCameraCapabilities: New capabilities= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 488
    invoke-virtual {v1, v0}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->changeCameraCapabilities(Landroid/telecom/VideoProfile$CameraCapabilities;)V

    .line 489
    return-void

    .line 477
    .end local v1    # "provider":Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    :cond_2
    :goto_0
    const-string v1, "sendCameraCapabilities: Camera capabilities or camera owner is null"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 478
    return-void
.end method

.method private sendCameraStatus(I)V
    .locals 1
    .param p1, "error"    # I

    .line 515
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/ims/vt/CameraController;->sendCameraStatus(Lorg/codeaurora/ims/ImsCallSessionImpl;I)V

    .line 518
    :cond_0
    return-void
.end method

.method private sendCameraStatus(Lorg/codeaurora/ims/ImsCallSessionImpl;I)V
    .locals 3
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;
    .param p2, "error"    # I

    .line 499
    if-nez p1, :cond_0

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendCameraStatus: session is null. CameraStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 501
    return-void

    .line 504
    :cond_0
    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getImsVideoCallProviderImpl()Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;

    move-result-object v0

    .line 505
    .local v0, "provider":Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;
    if-nez v0, :cond_1

    .line 506
    const-string v1, "sendCameraStatus: ImsVideoCallProvider is not available (null)."

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 507
    return-void

    .line 510
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendCameraStatus: Notifying Session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/codeaurora/ims/ImsCallSessionImpl;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 511
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qualcomm/ims/vt/ImsVideoCallProviderImpl;->sendCameraStatus(Z)V

    .line 512
    return-void
.end method

.method private setOwner(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 2
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOwner: Session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/CameraController;->getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 293
    invoke-virtual {p0, p1}, Lcom/qualcomm/ims/vt/CameraController;->isOwner(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraController;->releaseCurrentOwner()V

    .line 295
    iput-object p1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 296
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {v0, p0}, Lorg/codeaurora/ims/ImsCallSessionImpl;->addListener(Lorg/codeaurora/ims/QImsSessionBase$Listener;)V

    goto :goto_0

    .line 298
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOwner: The session is already registered as camera owner, session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    :goto_0
    return-void
.end method

.method private updateCameraSession()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 346
    const-string v0, "updateCameraSession"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/Camera;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/Camera;->isPreviewStarted()Z

    move-result v0

    .line 353
    .local v0, "isPreviewStarted":Z
    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v1}, Lcom/qualcomm/ims/vt/Camera;->isRecordingStarted()Z

    move-result v1

    .line 354
    .local v1, "isRecordingStarted":Z
    iget-object v2, p0, Lcom/qualcomm/ims/vt/CameraController;->mPreviewSurface:Landroid/view/Surface;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    .line 355
    .local v2, "canStartPreview":Z
    :goto_0
    iget-boolean v5, p0, Lcom/qualcomm/ims/vt/CameraController;->mIsRecordingEnabled:Z

    if-eqz v5, :cond_2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    .line 358
    .local v3, "canStartRecording":Z
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCameraSession mPreviewSurface="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/ims/vt/CameraController;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mIsRecordingEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/qualcomm/ims/vt/CameraController;->mIsRecordingEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mRecordingSurface="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/qualcomm/ims/vt/CameraController;->mRecordingSurface:Landroid/view/Surface;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCameraSession canStartRecording="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isRecordingStarted="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 364
    if-eqz v3, :cond_3

    if-nez v1, :cond_3

    .line 365
    iget-object v4, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    iget-object v5, p0, Lcom/qualcomm/ims/vt/CameraController;->mPreviewSurface:Landroid/view/Surface;

    iget-object v6, p0, Lcom/qualcomm/ims/vt/CameraController;->mRecordingSurface:Landroid/view/Surface;

    invoke-virtual {v4, v5, v6}, Lcom/qualcomm/ims/vt/Camera;->startRecording(Landroid/view/Surface;Landroid/view/Surface;)V

    goto :goto_2

    .line 366
    :cond_3
    if-eqz v2, :cond_4

    if-nez v0, :cond_4

    .line 367
    iget-object v4, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    iget-object v5, p0, Lcom/qualcomm/ims/vt/CameraController;->mPreviewSurface:Landroid/view/Surface;

    invoke-virtual {v4, v5}, Lcom/qualcomm/ims/vt/Camera;->startPreview(Landroid/view/Surface;)V

    goto :goto_2

    .line 368
    :cond_4
    if-nez v2, :cond_5

    if-eqz v0, :cond_5

    .line 369
    iget-object v4, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v4}, Lcom/qualcomm/ims/vt/Camera;->stopPreview()V

    .line 371
    :cond_5
    :goto_2
    return-void

    .line 348
    .end local v0    # "isPreviewStarted":Z
    .end local v1    # "isRecordingStarted":Z
    .end local v2    # "canStartPreview":Z
    .end local v3    # "canStartRecording":Z
    :cond_6
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateCameraSession: Camera is not in correct state, camera="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 349
    return-void
.end method


# virtual methods
.method public close(Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 1
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 171
    const-string v0, "close"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    invoke-direct {p0, p1}, Lcom/qualcomm/ims/vt/CameraController;->doClose(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 173
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 125
    const-string v0, "dispose()"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {v0, p0}, Lcom/qualcomm/ims/vt/ImsMedia;->removeCameraListener(Lcom/qualcomm/ims/vt/ImsMedia$CameraListener;)V

    .line 127
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mMedia:Lcom/qualcomm/ims/vt/ImsMedia;

    invoke-virtual {v0, p0}, Lcom/qualcomm/ims/vt/ImsMedia;->removeMediaStateListener(Lcom/qualcomm/ims/vt/ImsMedia$MediaStateListener;)V

    .line 128
    const/4 v0, 0x0

    sput-object v0, Lcom/qualcomm/ims/vt/CameraController;->sInstance:Lcom/qualcomm/ims/vt/CameraController;

    .line 129
    return-void
.end method

.method getCameraCapabilities()Landroid/telecom/VideoProfile$CameraCapabilities;
    .locals 8

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCameraCapabilities mCamera="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 271
    :try_start_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraController;->getPreviewSize()Landroid/util/Size;

    move-result-object v0

    .line 272
    .local v0, "size":Landroid/util/Size;
    iget-object v2, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v2}, Lcom/qualcomm/ims/vt/Camera;->isZoomSupported()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 273
    .local v2, "isZoomSupported":Ljava/lang/Boolean;
    iget-object v3, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v3}, Lcom/qualcomm/ims/vt/Camera;->getMaxZoom()F

    move-result v3

    .line 274
    .local v3, "maxZoom":F
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCameraCapabilities: PreviewSize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isZoomSupported="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " maxZoom="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 276
    new-instance v4, Landroid/telecom/VideoProfile$CameraCapabilities;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v6

    .line 277
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-direct {v4, v5, v6, v7, v3}, Landroid/telecom/VideoProfile$CameraCapabilities;-><init>(IIZF)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    return-object v4

    .line 278
    .end local v0    # "size":Landroid/util/Size;
    .end local v2    # "isZoomSupported":Ljava/lang/Boolean;
    .end local v3    # "maxZoom":F
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/qualcomm/ims/vt/CameraController;->sendCameraStatus(I)V

    .line 280
    return-object v1

    .line 283
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :cond_0
    return-object v1
.end method

.method public getPreviewSurface()Landroid/view/Surface;
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mPreviewSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public getRecordingSurface()Landroid/view/Surface;
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mRecordingSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public isOwner(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z
    .locals 1
    .param p1, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 315
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCallModifyInitiated(Lorg/codeaurora/ims/QImsSessionBase;Lorg/codeaurora/ims/CallModify;)V
    .locals 0
    .param p1, "session"    # Lorg/codeaurora/ims/QImsSessionBase;
    .param p2, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .line 543
    return-void
.end method

.method public onCallTypeChanging(Lorg/codeaurora/ims/QImsSessionBase;I)V
    .locals 0
    .param p1, "session"    # Lorg/codeaurora/ims/QImsSessionBase;
    .param p2, "newCallType"    # I

    .line 547
    return-void
.end method

.method public onCameraConfigChanged(IIIILandroid/view/Surface;I)V
    .locals 3
    .param p1, "mediaId"    # I
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "fps"    # I
    .param p5, "surface"    # Landroid/view/Surface;
    .param p6, "orientationMode"    # I

    .line 427
    const-string v0, "onCameraConfigChanged"

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/ims/vt/CameraController;->checkMediaId(Ljava/lang/String;I)V

    .line 428
    new-instance v0, Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    invoke-direct {v0, p2, p3, p4, p6}, Lcom/qualcomm/ims/vt/Camera$ConfigIms;-><init>(IIII)V

    iput-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    .line 429
    iput p4, p0, Lcom/qualcomm/ims/vt/CameraController;->mRecorderFrameRate:I

    .line 430
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mRecordingSurface:Landroid/view/Surface;

    .line 431
    .local v0, "prevRecordingSurface":Landroid/view/Surface;
    iput-object p5, p0, Lcom/qualcomm/ims/vt/CameraController;->mRecordingSurface:Landroid/view/Surface;

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraConfigChanged, cameraConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 434
    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v1}, Lcom/qualcomm/ims/vt/Camera;->isOpen()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 440
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    iget-object v2, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    invoke-virtual {v1, v2}, Lcom/qualcomm/ims/vt/Camera;->canReconfigureWithActiveSession(Lcom/qualcomm/ims/vt/Camera$ConfigIms;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    .line 441
    invoke-virtual {v1}, Lcom/qualcomm/ims/vt/Camera;->isPreviewStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 442
    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v1}, Lcom/qualcomm/ims/vt/Camera;->stopPreview()V

    goto :goto_0

    .line 443
    :cond_1
    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v1}, Lcom/qualcomm/ims/vt/Camera;->isRecordingStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mRecordingSurface:Landroid/view/Surface;

    .line 444
    invoke-static {v1, v0}, Lcom/qualcomm/ims/vt/ImsMedia;->haveSameParent(Landroid/view/Surface;Landroid/view/Surface;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 445
    const-string v1, "onCameraConfigChanged, recording surface changed. Stop recording"

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 446
    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v1}, Lcom/qualcomm/ims/vt/Camera;->stopRecording()V

    .line 448
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    iget-object v2, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraConfigIms:Lcom/qualcomm/ims/vt/Camera$ConfigIms;

    invoke-virtual {v1, v2}, Lcom/qualcomm/ims/vt/Camera;->reconfigure(Lcom/qualcomm/ims/vt/Camera$ConfigIms;)V

    .line 449
    iget v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mRecorderFrameRate:I

    invoke-virtual {p0, p1, v1}, Lcom/qualcomm/ims/vt/CameraController;->onUpdateRecorderFrameRate(II)V

    .line 450
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraController;->updateCameraSession()V

    .line 451
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraController;->sendCameraCapabilities()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    goto :goto_1

    .line 452
    :catch_0
    move-exception v1

    .line 453
    .local v1, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/qualcomm/ims/vt/CameraController;->sendCameraStatus(I)V

    .line 455
    .end local v1    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_1
    return-void

    .line 435
    :cond_3
    :goto_2
    const-string v1, "onCameraConfigChanged: Camera is not open deferring configuration..."

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 436
    return-void
.end method

.method public onClosed(Lorg/codeaurora/ims/QImsSessionBase;)V
    .locals 3
    .param p1, "session"    # Lorg/codeaurora/ims/QImsSessionBase;

    .line 532
    move-object v0, p1

    check-cast v0, Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 533
    .local v0, "callSession":Lorg/codeaurora/ims/ImsCallSessionImpl;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClosed: Session="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/qualcomm/ims/vt/CameraController;->getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 534
    invoke-virtual {p0, v0}, Lcom/qualcomm/ims/vt/CameraController;->close(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 535
    return-void
.end method

.method public onDisconnected(Lorg/codeaurora/ims/QImsSessionBase;)V
    .locals 0
    .param p1, "session"    # Lorg/codeaurora/ims/QImsSessionBase;

    .line 528
    return-void
.end method

.method public onError(Lcom/qualcomm/ims/vt/Camera;I)V
    .locals 2
    .param p1, "camera"    # Lcom/qualcomm/ims/vt/Camera;
    .param p2, "error"    # I

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CameraFailed: cameraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/qualcomm/ims/vt/Camera;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 523
    invoke-direct {p0, p2}, Lcom/qualcomm/ims/vt/CameraController;->sendCameraStatus(I)V

    .line 524
    return-void
.end method

.method public onMediaDeinitialized()V
    .locals 1

    .line 393
    const-string v0, "onMediaDeinitialized. closing Camera"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    invoke-virtual {p0, v0}, Lcom/qualcomm/ims/vt/CameraController;->close(Lorg/codeaurora/ims/ImsCallSessionImpl;)V

    .line 400
    :cond_0
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraController;->closeCamera()V

    .line 401
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mIsRecordingEnabled:Z

    .line 402
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mRecordingSurface:Landroid/view/Surface;

    .line 403
    iput-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mPreviewSurface:Landroid/view/Surface;

    .line 404
    return-void
.end method

.method public onMediaInitialized()V
    .locals 0

    .line 409
    return-void
.end method

.method public onRecordingDisabled(I)V
    .locals 1
    .param p1, "mediaId"    # I

    .line 386
    const-string v0, "onRecordingDisabled"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 387
    invoke-direct {p0, v0, p1}, Lcom/qualcomm/ims/vt/CameraController;->checkMediaId(Ljava/lang/String;I)V

    .line 388
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mIsRecordingEnabled:Z

    .line 389
    return-void
.end method

.method public onRecordingEnabled(I)V
    .locals 2
    .param p1, "mediaId"    # I

    .line 375
    const-string v0, "onRecordingEnabled"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 376
    invoke-direct {p0, v0, p1}, Lcom/qualcomm/ims/vt/CameraController;->checkMediaId(Ljava/lang/String;I)V

    .line 378
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mIsRecordingEnabled:Z

    .line 379
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraController;->updateCameraSession()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    goto :goto_0

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/CameraController;->sendCameraStatus(I)V

    .line 383
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    return-void
.end method

.method public onUnsolCallModify(Lorg/codeaurora/ims/QImsSessionBase;Lorg/codeaurora/ims/CallModify;)V
    .locals 0
    .param p1, "session"    # Lorg/codeaurora/ims/QImsSessionBase;
    .param p2, "callModify"    # Lorg/codeaurora/ims/CallModify;

    .line 539
    return-void
.end method

.method public onUpdateRecorderFrameRate(II)V
    .locals 2
    .param p1, "mediaId"    # I
    .param p2, "rate"    # I

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdateRecorderFrameRate, rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 460
    const-string v0, "onUpdateRecorderFrameRate"

    invoke-direct {p0, v0, p1}, Lcom/qualcomm/ims/vt/CameraController;->checkMediaId(Ljava/lang/String;I)V

    .line 461
    iput p2, p0, Lcom/qualcomm/ims/vt/CameraController;->mRecorderFrameRate:I

    .line 462
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/Camera;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 468
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v0, p2}, Lcom/qualcomm/ims/vt/Camera;->setRecorderFrameRate(I)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    goto :goto_0

    .line 469
    :catch_0
    move-exception v0

    .line 470
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/CameraController;->sendCameraStatus(I)V

    .line 472
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    return-void

    .line 463
    :cond_1
    :goto_1
    const-string v0, "onUpdateRecorderFrameRate: Camera is not open deferring..."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    return-void
.end method

.method public open(Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 3
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "open: cameraId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/qualcomm/ims/vt/CameraController;->getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    if-eqz p1, :cond_0

    .line 159
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/qualcomm/ims/vt/CameraController;->doOpen(Ljava/lang/String;Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "open: Failed to open, cameraId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v1

    invoke-direct {p0, p2, v1}, Lcom/qualcomm/ims/vt/CameraController;->sendCameraStatus(Lorg/codeaurora/ims/ImsCallSessionImpl;I)V

    .line 164
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    return-void

    .line 154
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "open: Invalid camera id, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 155
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CameraController: Invalid camera id."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPreviewSurface(Landroid/view/Surface;Lorg/codeaurora/ims/ImsCallSessionImpl;)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "session"    # Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreviewSurface, surface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Session="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 182
    invoke-direct {p0, p2}, Lcom/qualcomm/ims/vt/CameraController;->getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0, p2}, Lcom/qualcomm/ims/vt/CameraController;->isOwner(Lorg/codeaurora/ims/ImsCallSessionImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreviewSurface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/qualcomm/ims/vt/CameraController;->getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not a camera owner. Camera owner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCameraOwner:Lorg/codeaurora/ims/ImsCallSessionImpl;

    .line 186
    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/CameraController;->getSessionInfo(Lorg/codeaurora/ims/ImsCallSessionImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    return-void

    .line 190
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/qualcomm/ims/vt/ImsMedia;->isSurfaceValid(Landroid/view/Surface;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 191
    const-string v0, "setPreviewSurface:  Invalid surface"

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    return-void

    .line 202
    :cond_1
    if-eqz p1, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mPreviewSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mPreviewSurface:Landroid/view/Surface;

    .line 203
    invoke-static {v0, p1}, Lcom/qualcomm/ims/vt/ImsMedia;->haveSameParent(Landroid/view/Surface;Landroid/view/Surface;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    .line 205
    invoke-virtual {v0, p1}, Lcom/qualcomm/ims/vt/Camera;->isRestartNeededOnPreviewSurfaceSizeChanged(Landroid/view/Surface;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mRecordingSurface:Landroid/view/Surface;

    .line 206
    invoke-virtual {v0, v1}, Lcom/qualcomm/ims/vt/Camera;->isRestartNeededOnRecordingSurfaceSizeChanged(Landroid/view/Surface;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 208
    :cond_3
    const-string v0, "setPreviewSurface: Restarting camera preview..."

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mPreviewSurface:Landroid/view/Surface;

    .line 210
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraController;->updateCameraSession()V

    .line 212
    :cond_4
    iput-object p1, p0, Lcom/qualcomm/ims/vt/CameraController;->mPreviewSurface:Landroid/view/Surface;

    .line 213
    invoke-direct {p0}, Lcom/qualcomm/ims/vt/CameraController;->updateCameraSession()V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/qualcomm/ims/vt/CameraController;->sendCameraStatus(I)V

    .line 217
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    return-void
.end method

.method public setZoom(F)V
    .locals 5
    .param p1, "value"    # F

    .line 220
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/Camera;->isOpen()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 231
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v0}, Lcom/qualcomm/ims/vt/Camera;->getMaxZoom()F

    move-result v0

    .line 232
    .local v0, "maxZoom":F
    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v1}, Lcom/qualcomm/ims/vt/Camera;->getMinZoom()F

    move-result v1

    .line 233
    .local v1, "minZoom":F
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setZoom: maxZoom="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " minZoom="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    iget-object v2, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    sub-float v3, v0, v1

    mul-float/2addr v3, p1

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/qualcomm/ims/vt/Camera;->setZoom(F)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 239
    .end local v0    # "maxZoom":F
    .end local v1    # "minZoom":F
    goto :goto_0

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to change zoom, value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/qualcomm/ims/utils/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 240
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    return-void

    .line 221
    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setZoom: Camera is not in correct state, camera="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qualcomm/ims/vt/CameraController;->mCamera:Lcom/qualcomm/ims/vt/Camera;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/qualcomm/ims/utils/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    return-void
.end method
