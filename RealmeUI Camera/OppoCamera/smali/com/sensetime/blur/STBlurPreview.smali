.class public Lcom/sensetime/blur/STBlurPreview;
.super Ljava/lang/Object;
.source "STBlurPreview.java"

# interfaces
.implements Lcom/sensetime/utils/ShakeDetectorUtils$OnShakeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensetime/blur/STBlurPreview$Callback;,
        Lcom/sensetime/blur/STBlurPreview$ProcessThread;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field public static final ST_BLUR_PARAM_TYPE_LEVEL:I = 0x1001

.field public static final ST_BLUR_PARAM_TYPE_MASK_EROSION_VALUE:I = 0x1005

.field public static final ST_BLUR_PARAM_TYPE_MASK_MIN_AREA_SIZE:I = 0x1004

.field public static final ST_BLUR_PARAM_TYPE_RECT_HEIGHT_SCALE:I = 0x1003

.field public static final ST_BLUR_PARAM_TYPE_RECT_WIDTH_SCALE:I = 0x1002

.field public static final ST_BUFFER_ERROR:I = -0x4

.field public static final ST_INTERNAL_ERROR:I = -0x6

.field public static final ST_OK:I = 0x0

.field public static final ST_PARAM_ERROR:I = -0x1

.field public static final ST_PROGRAM_ERROR:I = -0x3

.field public static final ST_SHADER_ERROR:I = -0x2

.field public static final ST_TEXTURE_ERROR:I = -0x5

.field private static final TAG:Ljava/lang/String; = "STBlurPreview"


# instance fields
.field private PROCESS_LIFE_CYCLE_TIME:J

.field private RESET_MASK_CYCLE_TIME:J

.field debugSegCount:J

.field debugSegSumTime:J

.field private mContext:Landroid/content/Context;

.field private mFrameNum:I

.field private mFrontCamera:Z

.field private mInitialized:Z

.field private mLastProcessTime:J

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mProcessThread:Lcom/sensetime/blur/STBlurPreview$ProcessThread;

.field private mResetMask:Z

.field private mResetMaskTime:J

.field private mSegment:Lcom/sensetime/faceapi/FigureSegment;

.field private mSegmentBuffer:[B

.field private mSegmentBufferHeight:I

.field private mSegmentBufferWidth:I

.field private mSegmentModel:Ljava/lang/String;

.field private mSegmentOption:I

.field private mSegmentOutBuffer:Ljava/nio/ByteBuffer;

.field private mSegmentOutBufferInfo:[I

.field private final mSyncObject:Ljava/lang/Object;

.field private mTmpFaceRects:[Landroid/graphics/Rect;

.field private mTmpYaws:[F

.field private mTrack:Lcom/sensetime/faceapi/FaceTrack;

.field private mUseSegment:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    .line 82
    invoke-direct {p0, p1, v0}, Lcom/sensetime/blur/STBlurPreview;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 6

    .line 90
    sget-object v4, Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;->RESIZE_320W:Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;

    sget-object v5, Lcom/sensetime/faceapi/model/FaceConfig$TrackThreadCount;->TWO_THREAD:Lcom/sensetime/faceapi/model/FaceConfig$TrackThreadCount;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/sensetime/blur/STBlurPreview;-><init>(Landroid/content/Context;ZLjava/lang/String;Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;Lcom/sensetime/faceapi/model/FaceConfig$TrackThreadCount;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 6

    .line 93
    sget-object v4, Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;->RESIZE_320W:Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;

    sget-object v5, Lcom/sensetime/faceapi/model/FaceConfig$TrackThreadCount;->TWO_THREAD:Lcom/sensetime/faceapi/model/FaceConfig$TrackThreadCount;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sensetime/blur/STBlurPreview;-><init>(Landroid/content/Context;ZLjava/lang/String;Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;Lcom/sensetime/faceapi/model/FaceConfig$TrackThreadCount;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;Lcom/sensetime/faceapi/model/FaceConfig$TrackThreadCount;)V
    .locals 9

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 48
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sensetime/blur/STBlurPreview;->mSegmentOutBufferInfo:[I

    const/16 v0, 0x1c

    .line 49
    iput v0, p0, Lcom/sensetime/blur/STBlurPreview;->mSegmentOption:I

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview;->mFrontCamera:Z

    .line 58
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sensetime/blur/STBlurPreview;->mSyncObject:Ljava/lang/Object;

    const-wide/16 v1, 0xbb8

    .line 66
    iput-wide v1, p0, Lcom/sensetime/blur/STBlurPreview;->PROCESS_LIFE_CYCLE_TIME:J

    const/4 v1, 0x0

    .line 68
    iput-boolean v1, p0, Lcom/sensetime/blur/STBlurPreview;->mResetMask:Z

    const-wide/16 v1, 0x12c

    .line 70
    iput-wide v1, p0, Lcom/sensetime/blur/STBlurPreview;->RESET_MASK_CYCLE_TIME:J

    const-wide/16 v1, 0x0

    .line 527
    iput-wide v1, p0, Lcom/sensetime/blur/STBlurPreview;->debugSegSumTime:J

    .line 528
    iput-wide v1, p0, Lcom/sensetime/blur/STBlurPreview;->debugSegCount:J

    .line 105
    iget-boolean v1, p0, Lcom/sensetime/blur/STBlurPreview;->mInitialized:Z

    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/sensetime/blur/STBlurPreview;->destroy()I

    .line 109
    :cond_0
    iput-boolean p2, p0, Lcom/sensetime/blur/STBlurPreview;->mUseSegment:Z

    .line 110
    new-instance v1, Ljava/lang/Thread;

    new-instance v8, Lcom/sensetime/blur/STBlurPreview$1;

    move-object v2, v8

    move-object v3, p0

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/sensetime/blur/STBlurPreview$1;-><init>(Lcom/sensetime/blur/STBlurPreview;ZLjava/lang/String;Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;Lcom/sensetime/faceapi/model/FaceConfig$TrackThreadCount;)V

    invoke-direct {v1, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 119
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 121
    invoke-static {p1}, Lcom/sensetime/utils/ShakeDetectorUtils;->getInstance(Landroid/content/Context;)Lcom/sensetime/utils/ShakeDetectorUtils;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/sensetime/utils/ShakeDetectorUtils;->registerOnShakeListener(Lcom/sensetime/utils/ShakeDetectorUtils$OnShakeListener;)Lcom/sensetime/utils/ShakeDetectorUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sensetime/utils/ShakeDetectorUtils;->start()V

    .line 122
    invoke-static {p1}, Lcom/sensetime/faceapi/utils/AccelerometerManager;->start(Landroid/content/Context;)V

    .line 123
    iput-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview;->mInitialized:Z

    .line 124
    iput-object p1, p0, Lcom/sensetime/blur/STBlurPreview;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$002(Lcom/sensetime/blur/STBlurPreview;Lcom/sensetime/faceapi/FigureSegment;)Lcom/sensetime/faceapi/FigureSegment;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/sensetime/blur/STBlurPreview;->mSegment:Lcom/sensetime/faceapi/FigureSegment;

    return-object p1
.end method

.method static synthetic access$102(Lcom/sensetime/blur/STBlurPreview;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/sensetime/blur/STBlurPreview;->mSegmentModel:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/sensetime/blur/STBlurPreview;Lcom/sensetime/faceapi/FaceTrack;)Lcom/sensetime/faceapi/FaceTrack;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/sensetime/blur/STBlurPreview;->mTrack:Lcom/sensetime/faceapi/FaceTrack;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sensetime/blur/STBlurPreview;[BIIZLcom/sensetime/blur/STBlurPreview$Callback;)V
    .locals 0

    .line 21
    invoke-direct/range {p0 .. p5}, Lcom/sensetime/blur/STBlurPreview;->doOnPreviewCallback([BIIZLcom/sensetime/blur/STBlurPreview$Callback;)V

    return-void
.end method

.method private doOnPreviewCallback([BIIZLcom/sensetime/blur/STBlurPreview$Callback;)V
    .locals 2

    .line 510
    sget-boolean v0, Lcom/sensetime/blur/STBlurPreview;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doOnPreviewCallback data.length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STBlurPreview"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_0
    iput-boolean p4, p0, Lcom/sensetime/blur/STBlurPreview;->mFrontCamera:Z

    .line 514
    iput p2, p0, Lcom/sensetime/blur/STBlurPreview;->mPreviewWidth:I

    .line 515
    iput p3, p0, Lcom/sensetime/blur/STBlurPreview;->mPreviewHeight:I

    .line 516
    iget-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview;->mUseSegment:Z

    if-eqz v0, :cond_1

    .line 517
    iget-object v0, p0, Lcom/sensetime/blur/STBlurPreview;->mSegment:Lcom/sensetime/faceapi/FigureSegment;

    if-eqz v0, :cond_2

    .line 518
    invoke-direct/range {p0 .. p5}, Lcom/sensetime/blur/STBlurPreview;->onSegment([BIIZLcom/sensetime/blur/STBlurPreview$Callback;)V

    goto :goto_0

    .line 521
    :cond_1
    iget-object v0, p0, Lcom/sensetime/blur/STBlurPreview;->mTrack:Lcom/sensetime/faceapi/FaceTrack;

    if-eqz v0, :cond_2

    .line 522
    invoke-direct/range {p0 .. p5}, Lcom/sensetime/blur/STBlurPreview;->onTrack([BIIZLcom/sensetime/blur/STBlurPreview$Callback;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private getMaskTextureByFace(Z)I
    .locals 11

    .line 340
    iget-object v0, p0, Lcom/sensetime/blur/STBlurPreview;->mSyncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 341
    :try_start_0
    iget-object v1, p0, Lcom/sensetime/blur/STBlurPreview;->mTmpFaceRects:[Landroid/graphics/Rect;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sensetime/blur/STBlurPreview;->mTmpFaceRects:[Landroid/graphics/Rect;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 342
    iget-object v1, p0, Lcom/sensetime/blur/STBlurPreview;->mTmpFaceRects:[Landroid/graphics/Rect;

    array-length v1, v1

    .line 343
    new-array v3, v1, [Landroid/graphics/Rect;

    .line 344
    new-array v4, v1, [F

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_0

    .line 346
    iget-object v6, p0, Lcom/sensetime/blur/STBlurPreview;->mTmpYaws:[F

    aget v6, v6, v5

    aput v6, v4, v5

    .line 347
    new-instance v6, Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/sensetime/blur/STBlurPreview;->mTmpFaceRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v5

    invoke-direct {v6, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    move-object v6, v4

    goto :goto_1

    :cond_1
    move-object v3, v2

    move-object v6, v3

    .line 350
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    move-object v4, v2

    goto :goto_2

    :cond_2
    move-object v4, v3

    :goto_2
    const/4 v5, 0x0

    .line 354
    iget v7, p0, Lcom/sensetime/blur/STBlurPreview;->mPreviewWidth:I

    iget v8, p0, Lcom/sensetime/blur/STBlurPreview;->mPreviewHeight:I

    invoke-static {}, Lcom/sensetime/faceapi/utils/AccelerometerManager;->getDegree()I

    move-result p1

    add-int/lit16 p1, p1, 0x10e

    rem-int/lit16 v9, p1, 0x168

    iget-boolean v10, p0, Lcom/sensetime/blur/STBlurPreview;->mFrontCamera:Z

    invoke-static/range {v4 .. v10}, Lcom/sensetime/blur/BlurFilterLibrary;->getMaskTextureByFace([Landroid/graphics/Rect;Z[FIIIZ)I

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    .line 350
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private getMaskTextureBySegment(Z)I
    .locals 10

    .line 308
    iget-object v0, p0, Lcom/sensetime/blur/STBlurPreview;->mSyncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 309
    :try_start_0
    iget-object v1, p0, Lcom/sensetime/blur/STBlurPreview;->mSegmentBuffer:[B

    .line 310
    iget v2, p0, Lcom/sensetime/blur/STBlurPreview;->mSegmentBufferWidth:I

    .line 311
    iget v3, p0, Lcom/sensetime/blur/STBlurPreview;->mSegmentBufferHeight:I

    .line 312
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    iget-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview;->mResetMask:Z

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    move v0, v5

    .line 315
    :goto_0
    array-length v6, v1

    if-ge v0, v6, :cond_0

    .line 316
    aput-byte v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/sensetime/blur/STBlurPreview;->mResetMaskTime:J

    sub-long/2addr v6, v8

    iget-wide v8, p0, Lcom/sensetime/blur/STBlurPreview;->RESET_MASK_CYCLE_TIME:J

    cmp-long v0, v6, v8

    if-lez v0, :cond_1

    .line 319
    iput-boolean v5, p0, Lcom/sensetime/blur/STBlurPreview;->mResetMask:Z

    :cond_1
    if-nez p1, :cond_4

    if-eqz v1, :cond_4

    const/4 p1, 0x1

    .line 324
    new-array v0, p1, [I

    .line 325
    invoke-static {v1, v2, v3, p1, v0}, Lcom/sensetime/blur/BlurFilterLibrary;->processMaskBuffer([BIIZ[I)I

    move-result p1

    if-eqz p1, :cond_2

    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processMask error result code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "STBlurPreview"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_2
    sget-boolean p1, Lcom/sensetime/blur/STBlurPreview;->DEBUG:Z

    if-eqz p1, :cond_3

    .line 330
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMaskTextureBySegment out after process outTexture : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, v0, v5

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "STBlurPreview"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_3
    aget v4, v0, v5

    :cond_4
    return v4

    :catchall_0
    move-exception p1

    .line 312
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .line 641
    invoke-static {}, Lcom/sensetime/blur/BlurFilterLibrary;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onSegment([BIIZLcom/sensetime/blur/STBlurPreview$Callback;)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v0, p2

    move/from16 v6, p3

    move-object/from16 v11, p5

    .line 530
    iget-object v2, v1, Lcom/sensetime/blur/STBlurPreview;->mSegmentOutBuffer:Ljava/nio/ByteBuffer;

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/sensetime/blur/STBlurPreview;->mSegmentOutBufferInfo:[I

    aget v3, v2, v13

    mul-int/2addr v3, v6

    aget v2, v2, v12

    mul-int/2addr v2, v0

    if-eq v3, v2, :cond_1

    .line 531
    :cond_0
    iget-object v2, v1, Lcom/sensetime/blur/STBlurPreview;->mSegment:Lcom/sensetime/faceapi/FigureSegment;

    const/16 v3, 0xf0

    iget-object v4, v1, Lcom/sensetime/blur/STBlurPreview;->mSegmentOutBufferInfo:[I

    invoke-virtual {v2, v0, v6, v3, v4}, Lcom/sensetime/faceapi/FigureSegment;->createOutputBuffer(III[I)I

    .line 532
    iget-object v2, v1, Lcom/sensetime/blur/STBlurPreview;->mSegmentOutBufferInfo:[I

    aget v3, v2, v13

    aget v2, v2, v12

    mul-int/2addr v3, v2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, v1, Lcom/sensetime/blur/STBlurPreview;->mSegmentOutBuffer:Ljava/nio/ByteBuffer;

    .line 534
    :cond_1
    iget-object v2, v1, Lcom/sensetime/blur/STBlurPreview;->mSegmentOutBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 535
    invoke-static/range {p4 .. p4}, Lcom/sensetime/faceapi/utils/AccelerometerManager;->getFaceOrientation(Z)Lcom/sensetime/faceapi/model/FaceOrientation;

    move-result-object v8

    .line 536
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 537
    iget-object v2, v1, Lcom/sensetime/blur/STBlurPreview;->mSegment:Lcom/sensetime/faceapi/FigureSegment;

    sget-object v4, Lcom/sensetime/faceapi/model/CvPixelFormat;->NV21:Lcom/sensetime/faceapi/model/CvPixelFormat;

    iget-object v3, v1, Lcom/sensetime/blur/STBlurPreview;->mSegmentOutBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    iget v10, v1, Lcom/sensetime/blur/STBlurPreview;->mSegmentOption:I

    move-object/from16 v3, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p2

    invoke-virtual/range {v2 .. v10}, Lcom/sensetime/faceapi/FigureSegment;->segment([BLcom/sensetime/faceapi/model/CvPixelFormat;IIILcom/sensetime/faceapi/model/FaceOrientation;[BI)I

    .line 538
    iget-wide v2, v1, Lcom/sensetime/blur/STBlurPreview;->debugSegSumTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v14

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/sensetime/blur/STBlurPreview;->debugSegSumTime:J

    .line 539
    iget-wide v2, v1, Lcom/sensetime/blur/STBlurPreview;->debugSegCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/sensetime/blur/STBlurPreview;->debugSegCount:J

    .line 540
    sget-boolean v0, Lcom/sensetime/blur/STBlurPreview;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 541
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "segment time = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lcom/sensetime/blur/STBlurPreview;->debugSegSumTime:J

    iget-wide v4, v1, Lcom/sensetime/blur/STBlurPreview;->debugSegCount:J

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "STBlurPreview"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_2
    iget-object v2, v1, Lcom/sensetime/blur/STBlurPreview;->mSyncObject:Ljava/lang/Object;

    monitor-enter v2

    .line 545
    :try_start_0
    iget-object v0, v1, Lcom/sensetime/blur/STBlurPreview;->mSegmentOutBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, v1, Lcom/sensetime/blur/STBlurPreview;->mSegmentBuffer:[B

    .line 546
    iget-object v0, v1, Lcom/sensetime/blur/STBlurPreview;->mSegmentOutBufferInfo:[I

    aget v0, v0, v13

    iput v0, v1, Lcom/sensetime/blur/STBlurPreview;->mSegmentBufferWidth:I

    .line 547
    iget-object v0, v1, Lcom/sensetime/blur/STBlurPreview;->mSegmentOutBufferInfo:[I

    aget v0, v0, v12

    iput v0, v1, Lcom/sensetime/blur/STBlurPreview;->mSegmentBufferHeight:I

    .line 548
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v11, :cond_3

    .line 551
    iget-boolean v0, v1, Lcom/sensetime/blur/STBlurPreview;->mUseSegment:Z

    const/4 v2, 0x0

    invoke-interface {v11, v0, v2, v2}, Lcom/sensetime/blur/STBlurPreview$Callback;->onResult(Z[B[Lcom/sensetime/faceapi/model/FaceInfo;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 548
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private onTrack([BIIZLcom/sensetime/blur/STBlurPreview$Callback;)V
    .locals 7

    .line 563
    invoke-static {p4}, Lcom/sensetime/faceapi/utils/AccelerometerManager;->getFaceOrientation(Z)Lcom/sensetime/faceapi/model/FaceOrientation;

    move-result-object v6

    .line 564
    iget-object v0, p0, Lcom/sensetime/blur/STBlurPreview;->mTrack:Lcom/sensetime/faceapi/FaceTrack;

    sget-object v2, Lcom/sensetime/faceapi/model/CvPixelFormat;->NV21:Lcom/sensetime/faceapi/model/CvPixelFormat;

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/sensetime/faceapi/FaceTrack;->track([BLcom/sensetime/faceapi/model/CvPixelFormat;IILcom/sensetime/faceapi/model/FaceOrientation;)[Lcom/sensetime/faceapi/model/FaceInfo;

    move-result-object p1

    .line 565
    sget-boolean v0, Lcom/sensetime/blur/STBlurPreview;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTrack dir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/sensetime/faceapi/model/FaceOrientation;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", face="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STBlurPreview"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/sensetime/blur/STBlurPreview;->onFaceUpdate([Lcom/sensetime/faceapi/model/FaceInfo;IIZ)V

    if-eqz p5, :cond_2

    const/16 v0, 0x5a

    .line 570
    invoke-static {p1, p2, p3, p4, v0}, Lcom/sensetime/faceapi/utils/FaceRotationUtil;->rotateFaceInfos([Lcom/sensetime/faceapi/model/FaceInfo;IIZI)V

    .line 572
    iget-boolean p1, p0, Lcom/sensetime/blur/STBlurPreview;->mUseSegment:Z

    const/4 p2, 0x0

    invoke-interface {p5, p1, p2, p2}, Lcom/sensetime/blur/STBlurPreview$Callback;->onResult(Z[B[Lcom/sensetime/faceapi/model/FaceInfo;)V

    :cond_2
    return-void
.end method

.method public static setDebug(Z)I
    .locals 0

    .line 624
    sput-boolean p0, Lcom/sensetime/blur/STBlurPreview;->DEBUG:Z

    .line 625
    invoke-static {p0}, Lcom/sensetime/blur/BlurFilterLibrary;->setDebug(Z)I

    move-result p0

    return p0
.end method


# virtual methods
.method public destroy()I
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/sensetime/blur/STBlurPreview;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sensetime/utils/ShakeDetectorUtils;->getInstance(Landroid/content/Context;)Lcom/sensetime/utils/ShakeDetectorUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sensetime/utils/ShakeDetectorUtils;->unregisterOnShakeListener(Lcom/sensetime/utils/ShakeDetectorUtils$OnShakeListener;)Lcom/sensetime/utils/ShakeDetectorUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sensetime/utils/ShakeDetectorUtils;->stop()V

    .line 132
    invoke-static {}, Lcom/sensetime/faceapi/utils/AccelerometerManager;->stop()V

    .line 134
    sget-boolean v0, Lcom/sensetime/blur/STBlurPreview;->DEBUG:Z

    const-string v1, "STBlurPreview"

    if-eqz v0, :cond_0

    const-string v0, "destroy"

    .line 135
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/sensetime/blur/STBlurPreview;->mProcessThread:Lcom/sensetime/blur/STBlurPreview$ProcessThread;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 138
    invoke-virtual {v0}, Lcom/sensetime/blur/STBlurPreview$ProcessThread;->release()V

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/sensetime/blur/STBlurPreview;->mProcessThread:Lcom/sensetime/blur/STBlurPreview$ProcessThread;

    invoke-virtual {v0}, Lcom/sensetime/blur/STBlurPreview$ProcessThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 144
    :goto_0
    sget-boolean v0, Lcom/sensetime/blur/STBlurPreview;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "destroy process thread join"

    .line 145
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_1
    iput-object v2, p0, Lcom/sensetime/blur/STBlurPreview;->mProcessThread:Lcom/sensetime/blur/STBlurPreview$ProcessThread;

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/sensetime/blur/STBlurPreview;->mTrack:Lcom/sensetime/faceapi/FaceTrack;

    if-eqz v0, :cond_3

    .line 150
    invoke-virtual {v0}, Lcom/sensetime/faceapi/FaceTrack;->release()V

    .line 151
    iput-object v2, p0, Lcom/sensetime/blur/STBlurPreview;->mTrack:Lcom/sensetime/faceapi/FaceTrack;

    .line 153
    :cond_3
    iget-object v0, p0, Lcom/sensetime/blur/STBlurPreview;->mSegment:Lcom/sensetime/faceapi/FigureSegment;

    if-eqz v0, :cond_4

    .line 154
    invoke-virtual {v0}, Lcom/sensetime/faceapi/FigureSegment;->release()V

    .line 155
    iput-object v2, p0, Lcom/sensetime/blur/STBlurPreview;->mSegment:Lcom/sensetime/faceapi/FigureSegment;

    :cond_4
    const/4 v0, 0x0

    .line 158
    iput-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview;->mInitialized:Z

    .line 160
    invoke-virtual {p0}, Lcom/sensetime/blur/STBlurPreview;->destroyRender()I

    move-result v0

    return v0
.end method

.method public destroyRender()I
    .locals 1

    .line 205
    invoke-static {}, Lcom/sensetime/blur/BlurFilterLibrary;->destroy()I

    move-result v0

    return v0
.end method

.method public getTimeLog()Ljava/lang/String;
    .locals 5

    .line 644
    iget-wide v0, p0, Lcom/sensetime/blur/STBlurPreview;->debugSegCount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 647
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "segment time = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/sensetime/blur/STBlurPreview;->debugSegSumTime:J

    iget-wide v3, p0, Lcom/sensetime/blur/STBlurPreview;->debugSegCount:J

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initRender(IIZ)I
    .locals 4

    const/4 v0, 0x0

    .line 170
    iput v0, p0, Lcom/sensetime/blur/STBlurPreview;->mFrameNum:I

    .line 171
    invoke-static {p1, p2}, Lcom/sensetime/blur/BlurFilterLibrary;->init(II)I

    move-result p1

    .line 173
    iget-object p2, p0, Lcom/sensetime/blur/STBlurPreview;->mSegmentModel:Ljava/lang/String;

    const v0, 0x3e19999a    # 0.15f

    const v1, 0x3c23d70a    # 0.01f

    const/16 v2, 0x1005

    const/16 v3, 0x1004

    if-nez p2, :cond_1

    const p2, 0x3e99999a    # 0.3f

    .line 174
    invoke-virtual {p0, v2, p2}, Lcom/sensetime/blur/STBlurPreview;->setParam(IF)I

    if-eqz p3, :cond_0

    .line 177
    invoke-virtual {p0, v3, v0}, Lcom/sensetime/blur/STBlurPreview;->setParam(IF)I

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {p0, v3, v1}, Lcom/sensetime/blur/STBlurPreview;->setParam(IF)I

    goto :goto_0

    :cond_1
    const p2, 0x3ec7ae14    # 0.39f

    .line 182
    invoke-virtual {p0, v2, p2}, Lcom/sensetime/blur/STBlurPreview;->setParam(IF)I

    if-eqz p3, :cond_2

    .line 185
    invoke-virtual {p0, v3, v0}, Lcom/sensetime/blur/STBlurPreview;->setParam(IF)I

    goto :goto_0

    .line 187
    :cond_2
    invoke-virtual {p0, v3, v1}, Lcom/sensetime/blur/STBlurPreview;->setParam(IF)I

    :goto_0
    if-eqz p3, :cond_3

    const/16 p2, 0x1c

    .line 192
    iput p2, p0, Lcom/sensetime/blur/STBlurPreview;->mSegmentOption:I

    goto :goto_1

    :cond_3
    const/16 p2, 0x18

    .line 194
    iput p2, p0, Lcom/sensetime/blur/STBlurPreview;->mSegmentOption:I

    :goto_1
    return p1
.end method

.method public onFaceUpdate([Lcom/sensetime/faceapi/model/FaceInfo;IIZ)V
    .locals 3

    const/4 v0, 0x0

    .line 472
    iput-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview;->mUseSegment:Z

    .line 473
    iput-boolean p4, p0, Lcom/sensetime/blur/STBlurPreview;->mFrontCamera:Z

    .line 474
    iput p2, p0, Lcom/sensetime/blur/STBlurPreview;->mPreviewWidth:I

    .line 475
    iput p3, p0, Lcom/sensetime/blur/STBlurPreview;->mPreviewHeight:I

    .line 476
    iget-object p2, p0, Lcom/sensetime/blur/STBlurPreview;->mSyncObject:Ljava/lang/Object;

    monitor-enter p2

    if-eqz p1, :cond_0

    .line 477
    :try_start_0
    array-length p3, p1

    if-lez p3, :cond_0

    .line 478
    array-length p3, p1

    .line 479
    new-array p4, p3, [Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/sensetime/blur/STBlurPreview;->mTmpFaceRects:[Landroid/graphics/Rect;

    .line 480
    new-array p4, p3, [F

    iput-object p4, p0, Lcom/sensetime/blur/STBlurPreview;->mTmpYaws:[F

    :goto_0
    if-ge v0, p3, :cond_1

    .line 482
    iget-object p4, p0, Lcom/sensetime/blur/STBlurPreview;->mTmpYaws:[F

    aget-object v1, p1, v0

    iget v1, v1, Lcom/sensetime/faceapi/model/FaceInfo;->yaw:F

    aput v1, p4, v0

    .line 483
    iget-object p4, p0, Lcom/sensetime/blur/STBlurPreview;->mTmpFaceRects:[Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    aget-object v2, p1, v0

    iget-object v2, v2, Lcom/sensetime/faceapi/model/FaceInfo;->faceRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    aput-object v1, p4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 486
    iput-object p1, p0, Lcom/sensetime/blur/STBlurPreview;->mTmpFaceRects:[Landroid/graphics/Rect;

    .line 487
    iput-object p1, p0, Lcom/sensetime/blur/STBlurPreview;->mTmpYaws:[F

    .line 489
    :cond_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sensetime/blur/STBlurPreview;->mLastProcessTime:J

    return-void

    :catchall_0
    move-exception p1

    .line 489
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onPreviewCallback([BIIZ)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 364
    invoke-virtual/range {v0 .. v5}, Lcom/sensetime/blur/STBlurPreview;->onPreviewCallback([BIIZLcom/sensetime/blur/STBlurPreview$Callback;)V

    return-void
.end method

.method public onPreviewCallback([BIIZLcom/sensetime/blur/STBlurPreview$Callback;)V
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v7, p5

    .line 375
    invoke-virtual/range {v0 .. v7}, Lcom/sensetime/blur/STBlurPreview;->onPreviewCallback([BIIZZILcom/sensetime/blur/STBlurPreview$Callback;)V

    return-void
.end method

.method public onPreviewCallback([BIIZZILcom/sensetime/blur/STBlurPreview$Callback;)V
    .locals 6

    const-string v0, "STBlurPreview"

    const/4 v1, 0x1

    if-le p6, v1, :cond_1

    .line 388
    iget v1, p0, Lcom/sensetime/blur/STBlurPreview;->mFrameNum:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sensetime/blur/STBlurPreview;->mFrameNum:I

    rem-int/2addr v1, p6

    if-eqz v1, :cond_1

    .line 389
    sget-boolean p1, Lcom/sensetime/blur/STBlurPreview;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "onPreviewCallback drop this frame"

    .line 390
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 394
    :cond_1
    sget-boolean p6, Lcom/sensetime/blur/STBlurPreview;->DEBUG:Z

    if-eqz p6, :cond_2

    const-string p6, "onPreviewCallback do"

    .line 395
    invoke-static {v0, p6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p5, :cond_4

    .line 398
    iget-object p5, p0, Lcom/sensetime/blur/STBlurPreview;->mProcessThread:Lcom/sensetime/blur/STBlurPreview$ProcessThread;

    if-nez p5, :cond_3

    .line 399
    new-instance p5, Lcom/sensetime/blur/STBlurPreview$ProcessThread;

    invoke-direct {p5, p0}, Lcom/sensetime/blur/STBlurPreview$ProcessThread;-><init>(Lcom/sensetime/blur/STBlurPreview;)V

    iput-object p5, p0, Lcom/sensetime/blur/STBlurPreview;->mProcessThread:Lcom/sensetime/blur/STBlurPreview$ProcessThread;

    .line 400
    iget-object p5, p0, Lcom/sensetime/blur/STBlurPreview;->mProcessThread:Lcom/sensetime/blur/STBlurPreview$ProcessThread;

    invoke-virtual {p5}, Lcom/sensetime/blur/STBlurPreview$ProcessThread;->start()V

    .line 402
    :cond_3
    iget-object v0, p0, Lcom/sensetime/blur/STBlurPreview;->mProcessThread:Lcom/sensetime/blur/STBlurPreview$ProcessThread;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/sensetime/blur/STBlurPreview$ProcessThread;->updateBuffer([BIIZLcom/sensetime/blur/STBlurPreview$Callback;)V

    goto :goto_0

    :cond_4
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p7

    .line 404
    invoke-direct/range {v0 .. v5}, Lcom/sensetime/blur/STBlurPreview;->doOnPreviewCallback([BIIZLcom/sensetime/blur/STBlurPreview$Callback;)V

    .line 407
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sensetime/blur/STBlurPreview;->mLastProcessTime:J

    return-void
.end method

.method public onSegmentUpdate([BIIII)V
    .locals 1

    const/4 v0, 0x1

    .line 499
    iput-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview;->mUseSegment:Z

    .line 500
    iget-object v0, p0, Lcom/sensetime/blur/STBlurPreview;->mSyncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 501
    :try_start_0
    iput-object p1, p0, Lcom/sensetime/blur/STBlurPreview;->mSegmentBuffer:[B

    .line 502
    iput p2, p0, Lcom/sensetime/blur/STBlurPreview;->mSegmentBufferWidth:I

    .line 503
    iput p3, p0, Lcom/sensetime/blur/STBlurPreview;->mSegmentBufferHeight:I

    .line 504
    iput p4, p0, Lcom/sensetime/blur/STBlurPreview;->mPreviewWidth:I

    .line 505
    iput p5, p0, Lcom/sensetime/blur/STBlurPreview;->mPreviewHeight:I

    .line 506
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sensetime/blur/STBlurPreview;->mLastProcessTime:J

    return-void

    :catchall_0
    move-exception p1

    .line 506
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onShake(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 558
    invoke-virtual {p0}, Lcom/sensetime/blur/STBlurPreview;->resetMask()V

    :cond_0
    return-void
.end method

.method public processOESTexture(I[IZ)I
    .locals 4

    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sensetime/blur/STBlurPreview;->mLastProcessTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/sensetime/blur/STBlurPreview;->PROCESS_LIFE_CYCLE_TIME:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 242
    iget-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview;->mUseSegment:Z

    if-eqz v0, :cond_0

    .line 243
    invoke-direct {p0, p3}, Lcom/sensetime/blur/STBlurPreview;->getMaskTextureBySegment(Z)I

    move-result p3

    goto :goto_0

    .line 245
    :cond_0
    invoke-direct {p0, p3}, Lcom/sensetime/blur/STBlurPreview;->getMaskTextureByFace(Z)I

    move-result p3

    goto :goto_0

    .line 248
    :cond_1
    sget-boolean p3, Lcom/sensetime/blur/STBlurPreview;->DEBUG:Z

    if-eqz p3, :cond_2

    const-string p3, "STBlurPreview"

    const-string v0, "processOESTexture mask beyond the life cycle!"

    .line 249
    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p3, -0x1

    .line 252
    :goto_0
    iget-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview;->mFrontCamera:Z

    invoke-static {p1, p3, v0, p2}, Lcom/sensetime/blur/BlurFilterLibrary;->processOESTextureByMask(IIZ[I)I

    move-result p1

    return p1
.end method

.method public processOESTextureGradual(I[F[IZ)I
    .locals 6

    .line 288
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sensetime/blur/STBlurPreview;->mLastProcessTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/sensetime/blur/STBlurPreview;->PROCESS_LIFE_CYCLE_TIME:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 289
    iget-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview;->mUseSegment:Z

    if-eqz v0, :cond_0

    .line 290
    invoke-direct {p0, p4}, Lcom/sensetime/blur/STBlurPreview;->getMaskTextureBySegment(Z)I

    move-result p4

    goto :goto_0

    .line 292
    :cond_0
    invoke-direct {p0, p4}, Lcom/sensetime/blur/STBlurPreview;->getMaskTextureByFace(Z)I

    move-result p4

    goto :goto_0

    .line 295
    :cond_1
    sget-boolean p4, Lcom/sensetime/blur/STBlurPreview;->DEBUG:Z

    if-eqz p4, :cond_2

    const-string p4, "STBlurPreview"

    const-string v0, "processOESTexture mask beyond the life cycle!"

    .line 296
    invoke-static {p4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p4, -0x1

    :goto_0
    move v1, p4

    .line 299
    iget-boolean v2, p0, Lcom/sensetime/blur/STBlurPreview;->mFrontCamera:Z

    invoke-static {}, Lcom/sensetime/faceapi/utils/AccelerometerManager;->getDegree()I

    move-result v3

    move v0, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/sensetime/blur/BlurFilterLibrary;->processOESTexureByMaskGradual(IIZI[F[I)I

    move-result p1

    return p1
.end method

.method public processTexture(I[IZ)I
    .locals 4

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sensetime/blur/STBlurPreview;->mLastProcessTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/sensetime/blur/STBlurPreview;->PROCESS_LIFE_CYCLE_TIME:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 219
    iget-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview;->mUseSegment:Z

    if-eqz v0, :cond_0

    .line 220
    invoke-direct {p0, p3}, Lcom/sensetime/blur/STBlurPreview;->getMaskTextureBySegment(Z)I

    move-result p3

    goto :goto_0

    .line 222
    :cond_0
    invoke-direct {p0, p3}, Lcom/sensetime/blur/STBlurPreview;->getMaskTextureByFace(Z)I

    move-result p3

    goto :goto_0

    .line 225
    :cond_1
    sget-boolean p3, Lcom/sensetime/blur/STBlurPreview;->DEBUG:Z

    if-eqz p3, :cond_2

    const-string p3, "STBlurPreview"

    const-string v0, "processTexture mask beyond the life cycle!"

    .line 226
    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p3, -0x1

    .line 229
    :goto_0
    iget-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview;->mFrontCamera:Z

    invoke-static {p1, p3, v0, p2}, Lcom/sensetime/blur/BlurFilterLibrary;->processTextureByMask(IIZ[I)I

    move-result p1

    return p1
.end method

.method public processTextureGradual(I[F[IZ)I
    .locals 6

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sensetime/blur/STBlurPreview;->mLastProcessTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/sensetime/blur/STBlurPreview;->PROCESS_LIFE_CYCLE_TIME:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 265
    iget-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview;->mUseSegment:Z

    if-eqz v0, :cond_0

    .line 266
    invoke-direct {p0, p4}, Lcom/sensetime/blur/STBlurPreview;->getMaskTextureBySegment(Z)I

    move-result p4

    goto :goto_0

    .line 268
    :cond_0
    invoke-direct {p0, p4}, Lcom/sensetime/blur/STBlurPreview;->getMaskTextureByFace(Z)I

    move-result p4

    goto :goto_0

    .line 271
    :cond_1
    sget-boolean p4, Lcom/sensetime/blur/STBlurPreview;->DEBUG:Z

    if-eqz p4, :cond_2

    const-string p4, "STBlurPreview"

    const-string v0, "processOESTexture mask beyond the life cycle!"

    .line 272
    invoke-static {p4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p4, -0x1

    :goto_0
    move v1, p4

    .line 275
    iget-boolean v2, p0, Lcom/sensetime/blur/STBlurPreview;->mFrontCamera:Z

    invoke-static {}, Lcom/sensetime/faceapi/utils/AccelerometerManager;->getDegree()I

    move-result v3

    move v0, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/sensetime/blur/BlurFilterLibrary;->processTexureByMaskGradual(IIZI[F[I)I

    move-result p1

    return p1
.end method

.method public resetMask()V
    .locals 2

    const/4 v0, 0x1

    .line 577
    iput-boolean v0, p0, Lcom/sensetime/blur/STBlurPreview;->mResetMask:Z

    .line 578
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sensetime/blur/STBlurPreview;->mResetMaskTime:J

    return-void
.end method

.method public rotateGrdualTexture(IZZ)I
    .locals 0

    .line 598
    invoke-static {p1, p2, p3}, Lcom/sensetime/blur/BlurFilterLibrary;->rotateGradualTexture(IZZ)I

    move-result p1

    return p1
.end method

.method public rotateMaskTexture(IZZ)I
    .locals 0

    .line 588
    invoke-static {p1, p2, p3}, Lcom/sensetime/blur/BlurFilterLibrary;->rotateMaskTexture(IZZ)I

    move-result p1

    return p1
.end method

.method public setDebugMask(Z)I
    .locals 0

    .line 634
    invoke-static {p1}, Lcom/sensetime/blur/BlurFilterLibrary;->setDebugMask(Z)I

    move-result p1

    return p1
.end method

.method public setParam(IF)I
    .locals 0

    .line 607
    invoke-static {p1, p2}, Lcom/sensetime/blur/BlurFilterLibrary;->setParam(IF)I

    move-result p1

    return p1
.end method

.method public setSegmentOption(I)V
    .locals 0

    .line 615
    iput p1, p0, Lcom/sensetime/blur/STBlurPreview;->mSegmentOption:I

    return-void
.end method
