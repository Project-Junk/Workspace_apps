.class public Lcom/oppo/camera/a/a;
.super Ljava/lang/Object;
.source "ApsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/a/a$a;,
        Lcom/oppo/camera/a/a$b;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/oppo/camera/a/a;


# instance fields
.field private A:Z

.field private B:Lcom/oppo/camera/jni/APSClient$BufferCallback;

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/lang/Object;

.field private d:J

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:[Ljava/lang/String;

.field private j:[Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Z

.field private p:Lcom/oppo/camera/jni/APSClient;

.field private q:Lcom/oppo/camera/a/b;

.field private r:Lcom/oppo/camera/jni/APSClient$BufferCallback;

.field private s:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "*>;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private t:Lcom/oppo/camera/a/d;

.field private u:Lcom/oppo/camera/Ipa/ImageProcessService;

.field private v:Landroid/os/HandlerThread;

.field private w:Landroid/os/Handler;

.field private x:Lcom/oppo/camera/jni/NativeBufferProducer;

.field private y:Landroid/media/Image;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/a/a;->b:Ljava/lang/Object;

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/a/a;->c:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 58
    iput-wide v0, p0, Lcom/oppo/camera/a/a;->d:J

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/oppo/camera/a/a;->e:I

    .line 62
    iput v0, p0, Lcom/oppo/camera/a/a;->f:I

    .line 63
    iput v0, p0, Lcom/oppo/camera/a/a;->g:I

    .line 64
    iput v0, p0, Lcom/oppo/camera/a/a;->h:I

    const/4 v1, 0x0

    .line 65
    iput-object v1, p0, Lcom/oppo/camera/a/a;->i:[Ljava/lang/String;

    .line 66
    iput-object v1, p0, Lcom/oppo/camera/a/a;->j:[Ljava/lang/String;

    .line 67
    iput-object v1, p0, Lcom/oppo/camera/a/a;->k:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lcom/oppo/camera/a/a;->l:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/oppo/camera/a/a;->m:Ljava/lang/String;

    .line 70
    iput-boolean v0, p0, Lcom/oppo/camera/a/a;->n:Z

    .line 71
    iput-boolean v0, p0, Lcom/oppo/camera/a/a;->o:Z

    .line 73
    iput-object v1, p0, Lcom/oppo/camera/a/a;->p:Lcom/oppo/camera/jni/APSClient;

    .line 74
    iput-object v1, p0, Lcom/oppo/camera/a/a;->q:Lcom/oppo/camera/a/b;

    .line 75
    iput-object v1, p0, Lcom/oppo/camera/a/a;->r:Lcom/oppo/camera/jni/APSClient$BufferCallback;

    .line 76
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lcom/oppo/camera/a/a;->s:Ljava/util/concurrent/ConcurrentHashMap;

    .line 77
    iput-object v1, p0, Lcom/oppo/camera/a/a;->t:Lcom/oppo/camera/a/d;

    .line 78
    iput-object v1, p0, Lcom/oppo/camera/a/a;->u:Lcom/oppo/camera/Ipa/ImageProcessService;

    .line 79
    iput-object v1, p0, Lcom/oppo/camera/a/a;->v:Landroid/os/HandlerThread;

    .line 80
    iput-object v1, p0, Lcom/oppo/camera/a/a;->w:Landroid/os/Handler;

    .line 81
    new-instance v2, Lcom/oppo/camera/jni/NativeBufferProducer;

    invoke-direct {v2}, Lcom/oppo/camera/jni/NativeBufferProducer;-><init>()V

    iput-object v2, p0, Lcom/oppo/camera/a/a;->x:Lcom/oppo/camera/jni/NativeBufferProducer;

    .line 87
    iput-object v1, p0, Lcom/oppo/camera/a/a;->y:Landroid/media/Image;

    .line 88
    iput v0, p0, Lcom/oppo/camera/a/a;->z:I

    .line 90
    iput-boolean v0, p0, Lcom/oppo/camera/a/a;->A:Z

    .line 623
    new-instance v0, Lcom/oppo/camera/a/a$1;

    invoke-direct {v0, p0}, Lcom/oppo/camera/a/a$1;-><init>(Lcom/oppo/camera/a/a;)V

    iput-object v0, p0, Lcom/oppo/camera/a/a;->B:Lcom/oppo/camera/jni/APSClient$BufferCallback;

    .line 109
    new-instance v0, Lcom/oppo/camera/jni/APSClient;

    invoke-direct {v0}, Lcom/oppo/camera/jni/APSClient;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/a/a;->p:Lcom/oppo/camera/jni/APSClient;

    .line 110
    new-instance v0, Lcom/oppo/camera/a/d;

    invoke-direct {v0}, Lcom/oppo/camera/a/d;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/a/a;->t:Lcom/oppo/camera/a/d;

    .line 111
    invoke-direct {p0}, Lcom/oppo/camera/a/a;->g()V

    return-void
.end method

.method public static a()Lcom/oppo/camera/a/a;
    .locals 2

    .line 97
    sget-object v0, Lcom/oppo/camera/a/a;->a:Lcom/oppo/camera/a/a;

    if-nez v0, :cond_1

    .line 98
    const-class v0, Lcom/oppo/camera/a/a;

    monitor-enter v0

    .line 99
    :try_start_0
    sget-object v1, Lcom/oppo/camera/a/a;->a:Lcom/oppo/camera/a/a;

    if-nez v1, :cond_0

    .line 100
    new-instance v1, Lcom/oppo/camera/a/a;

    invoke-direct {v1}, Lcom/oppo/camera/a/a;-><init>()V

    sput-object v1, Lcom/oppo/camera/a/a;->a:Lcom/oppo/camera/a/a;

    .line 102
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 105
    :cond_1
    :goto_0
    sget-object v0, Lcom/oppo/camera/a/a;->a:Lcom/oppo/camera/a/a;

    return-object v0
.end method

.method static synthetic a(Lcom/oppo/camera/a/a;)Lcom/oppo/camera/jni/APSClient$BufferCallback;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/oppo/camera/a/a;->r:Lcom/oppo/camera/jni/APSClient$BufferCallback;

    return-object p0
.end method

.method private a(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    const-string p1, "MSG_CAPTURE_STARTED"

    goto :goto_0

    :pswitch_1
    const-string p1, "MSG_UNINIT"

    goto :goto_0

    :pswitch_2
    const-string p1, "MSG_DECREASE_PROCESS_IMAGE_NUMBER"

    goto :goto_0

    :pswitch_3
    const-string p1, "MSG_IMAGE_RECEIVED"

    goto :goto_0

    :pswitch_4
    const-string p1, "MSG_METADATA_ARRIVED"

    goto :goto_0

    :pswitch_5
    const-string p1, "MSG_INT_AND_UPDATE_APS"

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/oppo/camera/a/a;I)Ljava/lang/String;
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/oppo/camera/a/a;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/hardware/camera2/CaptureResult;J)V
    .locals 2

    const-string v0, "ApsController"

    const-string v1, "updateMetaData"

    .line 338
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/oppo/camera/a/a;->p:Lcom/oppo/camera/jni/APSClient;

    invoke-static {p1, v0}, Lcom/oppo/camera/a/c;->a(Landroid/hardware/camera2/CaptureResult;Lcom/oppo/camera/jni/APSClient;)[I

    move-result-object p1

    if-eqz p1, :cond_0

    .line 343
    iget-object v0, p0, Lcom/oppo/camera/a/a;->t:Lcom/oppo/camera/a/d;

    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-virtual {v0, p2, p3, v1}, Lcom/oppo/camera/a/d;->c(JI)V

    .line 344
    iget-object v0, p0, Lcom/oppo/camera/a/a;->t:Lcom/oppo/camera/a/d;

    const/4 v1, 0x1

    aget v1, p1, v1

    invoke-virtual {v0, p2, p3, v1}, Lcom/oppo/camera/a/d;->b(JI)V

    .line 345
    iget-object v0, p0, Lcom/oppo/camera/a/a;->t:Lcom/oppo/camera/a/d;

    const/4 v1, 0x2

    aget p1, p1, v1

    invoke-virtual {v0, p2, p3, p1}, Lcom/oppo/camera/a/d;->a(JI)V

    :cond_0
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 6

    if-nez p1, :cond_0

    const-string p1, "ApsController"

    const-string v0, "handlerCaptureStarted, bundle is null, return"

    .line 275
    invoke-static {p1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "update"

    .line 280
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "time_stamp"

    .line 281
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "frame_id"

    .line 282
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 284
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handlerCaptureStarted, usedForTagProcess: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", timestamp: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", frameNumber: "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v5, "ApsController"

    invoke-static {v5, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 288
    iget-object p1, p0, Lcom/oppo/camera/a/a;->c:Ljava/lang/Object;

    monitor-enter p1

    const/4 v0, 0x0

    .line 290
    :try_start_0
    iput v0, p0, Lcom/oppo/camera/a/a;->e:I

    .line 291
    iput-wide v1, p0, Lcom/oppo/camera/a/a;->d:J

    .line 292
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 295
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/a/a;->t:Lcom/oppo/camera/a/d;

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/oppo/camera/a/d;->a(JJ)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/a/a;Landroid/hardware/camera2/TotalCaptureResult;I)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/a/a;->b(Landroid/hardware/camera2/TotalCaptureResult;I)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/a/a;Landroid/os/Bundle;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/oppo/camera/a/a;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/a/a;Lcom/oppo/camera/a/a$a;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/oppo/camera/a/a;->c(Lcom/oppo/camera/a/a$a;)V

    return-void
.end method

.method private a(Lcom/oppo/camera/a/d$b;II)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const-string v3, "captureX addFrameAndProcessImage"

    .line 404
    invoke-static {v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    const-string v4, ", needMergeNumber: "

    const-string v8, "ApsController"

    if-eqz v1, :cond_1

    .line 408
    iget-object v9, v1, Lcom/oppo/camera/a/d$b;->a:Landroid/media/Image;

    if-eqz v9, :cond_1

    iget-boolean v9, v0, Lcom/oppo/camera/a/a;->o:Z

    if-eqz v9, :cond_1

    .line 409
    iget-object v9, v1, Lcom/oppo/camera/a/d$b;->a:Landroid/media/Image;

    .line 410
    invoke-virtual {v9}, Landroid/media/Image;->getFormat()I

    move-result v15

    .line 411
    iget v14, v1, Lcom/oppo/camera/a/d$b;->b:I

    .line 412
    invoke-virtual {v9}, Landroid/media/Image;->getWidth()I

    move-result v13

    .line 413
    invoke-virtual {v9}, Landroid/media/Image;->getHeight()I

    move-result v11

    .line 414
    invoke-static {v15}, Lcom/oppo/camera/a/c;->a(I)I

    move-result v10

    .line 415
    invoke-virtual {v9}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v5

    .line 416
    iget-object v12, v0, Lcom/oppo/camera/a/a;->t:Lcom/oppo/camera/a/d;

    invoke-virtual {v12, v5, v6}, Lcom/oppo/camera/a/d;->a(J)Lcom/oppo/camera/a/d$a;

    move-result-object v12

    move-object/from16 v25, v8

    .line 417
    iget-wide v7, v12, Lcom/oppo/camera/a/d$a;->a:J

    move-object/from16 v26, v3

    .line 418
    invoke-static {v10, v9, v15}, Lcom/oppo/camera/a/c;->a(ILandroid/media/Image;I)[Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 419
    invoke-static {v3}, Lcom/oppo/camera/a/c;->a([Ljava/nio/ByteBuffer;)[I

    move-result-object v1

    move/from16 v16, v14

    .line 420
    invoke-static {v10, v9}, Lcom/oppo/camera/a/c;->a(ILandroid/media/Image;)[I

    move-result-object v14

    .line 421
    invoke-static {v1, v14}, Lcom/oppo/camera/a/c;->a([I[I)[I

    move-result-object v17

    move-object/from16 v27, v9

    .line 423
    iget v9, v12, Lcom/oppo/camera/a/d$a;->b:I

    if-nez v9, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/a/a;->m()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 425
    iget-object v9, v0, Lcom/oppo/camera/a/a;->t:Lcom/oppo/camera/a/d;

    move/from16 v18, v11

    iget-wide v11, v0, Lcom/oppo/camera/a/a;->d:J

    invoke-virtual {v9, v11, v12}, Lcom/oppo/camera/a/d;->a(J)Lcom/oppo/camera/a/d$a;

    move-result-object v12

    .line 427
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addFrameAndProcessImage, camera is closing, use the first frame mCaptureTimeStamp: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v19, v13

    move-object/from16 v20, v14

    iget-wide v13, v0, Lcom/oppo/camera/a/a;->d:J

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, ", cameraId: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v12, Lcom/oppo/camera/a/d$a;->e:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v14, v25

    invoke-static {v14, v9}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move/from16 v18, v11

    move/from16 v19, v13

    move-object/from16 v20, v14

    move-object/from16 v14, v25

    .line 431
    :goto_0
    iget v9, v0, Lcom/oppo/camera/a/a;->e:I

    const/4 v11, 0x1

    add-int/2addr v9, v11

    iput v9, v0, Lcom/oppo/camera/a/a;->e:I

    .line 432
    iput v15, v0, Lcom/oppo/camera/a/a;->z:I

    .line 433
    iput v2, v0, Lcom/oppo/camera/a/a;->f:I

    .line 435
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addFrameAndProcessImage, the frameId: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mCallbackNumber: "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/oppo/camera/a/a;->e:I

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", imageTimestamp: "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", planNumber: "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", buffers: "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", bufferStride: "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-static/range {v20 .. v20}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", width: "

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v19

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", height: "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v18

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", format: "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mMetaBufferFd: "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v12, Lcom/oppo/camera/a/d$a;->c:I

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mMetaBufSize: "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v12, Lcom/oppo/camera/a/d$a;->b:I

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", role: "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, v16

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", logicCameraId: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p3

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 435
    invoke-static {v14, v9}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v10, v0, Lcom/oppo/camera/a/a;->p:Lcom/oppo/camera/jni/APSClient;

    iget v9, v12, Lcom/oppo/camera/a/d$a;->d:I

    iget v11, v12, Lcom/oppo/camera/a/d$a;->c:I

    iget v12, v12, Lcom/oppo/camera/a/d$a;->b:I

    move/from16 v19, v11

    move/from16 v21, v12

    move-wide v11, v7

    move-object v13, v3

    move v3, v6

    move-object v7, v14

    move-object/from16 v6, v20

    move-object v14, v1

    move v1, v15

    move-object v15, v6

    move-object/from16 v16, v17

    move/from16 v17, v1

    move/from16 v18, v9

    move/from16 v20, v21

    move/from16 v21, v3

    move/from16 v22, v4

    move/from16 v23, v5

    invoke-virtual/range {v10 .. v23}, Lcom/oppo/camera/jni/APSClient;->addFrameBuff(J[Ljava/nio/ByteBuffer;[I[I[IIIIIIII)I

    move-result v3

    .line 445
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addFrameAndProcessImage X, addFrameLength: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v27

    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v26, v3

    move-object v7, v8

    .line 447
    iget v1, v0, Lcom/oppo/camera/a/a;->e:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, v0, Lcom/oppo/camera/a/a;->e:I

    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addFrameAndProcessImage, Invalid case, mCallbackNumber: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/oppo/camera/a/a;->e:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mbInit: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/oppo/camera/a/a;->o:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object v1, v0, Lcom/oppo/camera/a/a;->t:Lcom/oppo/camera/a/d;

    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Lcom/oppo/camera/a/d;->a(Z)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 455
    :goto_1
    iget v4, v0, Lcom/oppo/camera/a/a;->e:I

    if-ne v2, v4, :cond_2

    move/from16 v24, v11

    goto :goto_2

    :cond_2
    const/16 v24, 0x0

    :goto_2
    if-eqz v24, :cond_3

    .line 458
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/oppo/camera/a/a;->a(Ljava/lang/String;)V

    :cond_3
    const/16 v2, 0x20

    if-ne v2, v1, :cond_4

    if-eqz v24, :cond_4

    const-string v1, "addFrameAndProcessImage, this is last RAW image, don\'t need close image"

    .line 466
    invoke-static {v7, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    iput-object v3, v0, Lcom/oppo/camera/a/a;->y:Landroid/media/Image;

    goto :goto_3

    :cond_4
    if-eqz v3, :cond_5

    .line 470
    invoke-virtual {v3}, Landroid/media/Image;->close()V

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 471
    iput-object v2, v1, Lcom/oppo/camera/a/d$b;->a:Landroid/media/Image;

    .line 474
    :cond_5
    :goto_3
    invoke-static/range {v26 .. v26}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 478
    iget-object v0, p0, Lcom/oppo/camera/a/a;->t:Lcom/oppo/camera/a/d;

    invoke-virtual {v0}, Lcom/oppo/camera/a/d;->a()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x20

    .line 483
    iget v1, p0, Lcom/oppo/camera/a/a;->z:I

    if-eq v0, v1, :cond_0

    .line 484
    iget-object v0, p0, Lcom/oppo/camera/a/a;->u:Lcom/oppo/camera/Ipa/ImageProcessService;

    iget-wide v1, p0, Lcom/oppo/camera/a/a;->d:J

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/Ipa/ImageProcessService;->a(J)V

    .line 487
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oppo/camera/a/a;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 489
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkConditionAndProcess, FrameInfo is Invalid, mCaptureTimeStamp: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/oppo/camera/a/a;->d:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ApsController"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object p1, p0, Lcom/oppo/camera/a/a;->u:Lcom/oppo/camera/Ipa/ImageProcessService;

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    .line 492
    iget-wide v1, p0, Lcom/oppo/camera/a/a;->d:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/oppo/camera/Ipa/ImageProcessService;->a(IJ)V

    .line 495
    :cond_2
    invoke-direct {p0}, Lcom/oppo/camera/a/a;->i()V

    .line 498
    iget-object p1, p0, Lcom/oppo/camera/a/a;->p:Lcom/oppo/camera/jni/APSClient;

    invoke-virtual {p1}, Lcom/oppo/camera/jni/APSClient;->clear()I

    :goto_0
    return-void
.end method

.method private a([I)V
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 578
    iput-object p1, p0, Lcom/oppo/camera/a/a;->j:[Ljava/lang/String;

    return-void

    .line 582
    :cond_0
    array-length v0, p1

    .line 583
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/oppo/camera/a/a;->j:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 586
    iget-object v2, p0, Lcom/oppo/camera/a/a;->j:[Ljava/lang/String;

    aget v3, p1, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    if-eqz p3, :cond_3

    if-nez p4, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/a/a;->m:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/a/a;->k:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/a/a;->l:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 176
    iget p1, p0, Lcom/oppo/camera/a/a;->h:I

    if-eq p5, p1, :cond_1

    return v2

    :cond_1
    return v0

    .line 183
    :cond_2
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "needUpdateAps, captureMode: "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", cameraId: "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", logicCameraId: "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", algos: "

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ApsController"

    .line 183
    invoke-static {p2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_3
    :goto_0
    return v0
.end method

.method static synthetic b(Lcom/oppo/camera/a/a;)Landroid/media/Image;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/oppo/camera/a/a;->y:Landroid/media/Image;

    return-object p0
.end method

.method private b(Landroid/hardware/camera2/TotalCaptureResult;I)V
    .locals 5

    const-string v0, "captureX handleMetadata"

    .line 303
    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    .line 309
    iput p2, p0, Lcom/oppo/camera/a/a;->f:I

    .line 311
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 312
    iget-object v2, p0, Lcom/oppo/camera/a/a;->t:Lcom/oppo/camera/a/d;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4, p1}, Lcom/oppo/camera/a/d;->a(JLandroid/hardware/camera2/TotalCaptureResult;)V

    .line 313
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3}, Lcom/oppo/camera/a/a;->a(Landroid/hardware/camera2/CaptureResult;J)V

    .line 316
    iget-object v2, p0, Lcom/oppo/camera/a/a;->t:Lcom/oppo/camera/a/d;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/oppo/camera/a/d;->a(J)Lcom/oppo/camera/a/d$a;

    move-result-object v2

    .line 317
    iget-object v2, v2, Lcom/oppo/camera/a/d$a;->g:Ljava/util/Vector;

    .line 319
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlerMetadata, result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", totalNumber: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", timeStamp: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", imageWrappers.size: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    if-eqz v2, :cond_0

    .line 320
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ApsController"

    .line 319
    invoke-static {v3, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    .line 323
    :goto_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 324
    invoke-virtual {v2, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/a/d$b;

    iget-object v3, p0, Lcom/oppo/camera/a/a;->l:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v1, p2, v3}, Lcom/oppo/camera/a/a;->a(Lcom/oppo/camera/a/d$b;II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 328
    :cond_1
    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/oppo/camera/a/a;Lcom/oppo/camera/a/a$a;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/oppo/camera/a/a;->d(Lcom/oppo/camera/a/a$a;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 7

    .line 503
    new-instance v0, Lcom/oppo/camera/a/b;

    invoke-direct {v0}, Lcom/oppo/camera/a/b;-><init>()V

    .line 504
    iget-object v1, p0, Lcom/oppo/camera/a/a;->k:Ljava/lang/String;

    const-string v2, "camera_id"

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "logic_camera_id"

    .line 505
    invoke-virtual {v0, v1, p1}, Lcom/oppo/camera/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    iget-wide v1, p0, Lcom/oppo/camera/a/a;->d:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "identity"

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-virtual {v0}, Lcom/oppo/camera/a/b;->a()[Ljava/lang/String;

    move-result-object v1

    .line 510
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processImage, parameters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mApsAlgoFlgs: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oppo/camera/a/a;->j:[Ljava/lang/String;

    .line 511
    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ApsController"

    .line 510
    invoke-static {v4, v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 513
    iget-object v5, p0, Lcom/oppo/camera/a/a;->k:Ljava/lang/String;

    .line 514
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 515
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-wide v5, p0, Lcom/oppo/camera/a/a;->d:J

    .line 516
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 517
    iget-object p1, p0, Lcom/oppo/camera/a/a;->p:Lcom/oppo/camera/jni/APSClient;

    iget-object v5, p0, Lcom/oppo/camera/a/a;->j:[Ljava/lang/String;

    invoke-virtual {p1, v1, v5}, Lcom/oppo/camera/jni/APSClient;->processImages([Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/a/a;->g:I

    goto :goto_0

    .line 519
    :cond_0
    iput v2, p0, Lcom/oppo/camera/a/a;->g:I

    .line 522
    :goto_0
    iget p1, p0, Lcom/oppo/camera/a/a;->g:I

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/a/a;->u:Lcom/oppo/camera/Ipa/ImageProcessService;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 523
    iget-wide v5, p0, Lcom/oppo/camera/a/a;->d:J

    invoke-virtual {p1, v1, v5, v6}, Lcom/oppo/camera/Ipa/ImageProcessService;->a(IJ)V

    .line 526
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/oppo/camera/a/b;->a()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", algoFlags: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/a/a;->j:[Ljava/lang/String;

    .line 527
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mInProcessImageNumber: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oppo/camera/a/a;->g:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 526
    invoke-static {v4, p1}, Lcom/oppo/camera/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    invoke-direct {p0}, Lcom/oppo/camera/a/a;->i()V

    return-void
.end method

.method static synthetic c(Lcom/oppo/camera/a/a;)Lcom/oppo/camera/Ipa/ImageProcessService;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/oppo/camera/a/a;->u:Lcom/oppo/camera/Ipa/ImageProcessService;

    return-object p0
.end method

.method private c(Lcom/oppo/camera/a/a$a;)V
    .locals 3

    .line 191
    iget-boolean v0, p0, Lcom/oppo/camera/a/a;->o:Z

    if-eqz v0, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/oppo/camera/a/a;->k()V

    :cond_0
    const/4 v0, 0x0

    .line 199
    iput v0, p0, Lcom/oppo/camera/a/a;->e:I

    .line 202
    iget-object v1, p0, Lcom/oppo/camera/a/a;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 203
    :try_start_0
    iput-boolean v0, p0, Lcom/oppo/camera/a/a;->n:Z

    .line 204
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    iget-object v0, p1, Lcom/oppo/camera/a/a$a;->h:Lcom/oppo/camera/jni/APSClient$BufferCallback;

    iput-object v0, p0, Lcom/oppo/camera/a/a;->r:Lcom/oppo/camera/jni/APSClient$BufferCallback;

    .line 208
    iget-object v0, p1, Lcom/oppo/camera/a/a$a;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/a/a;->m:Ljava/lang/String;

    .line 209
    iget-object v0, p1, Lcom/oppo/camera/a/a$a;->g:[Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/a/a;->i:[Ljava/lang/String;

    .line 210
    iget v0, p1, Lcom/oppo/camera/a/a$a;->d:I

    iput v0, p0, Lcom/oppo/camera/a/a;->h:I

    .line 211
    iget v0, p1, Lcom/oppo/camera/a/a$a;->a:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/a/a;->k:Ljava/lang/String;

    .line 212
    iget-object v0, p1, Lcom/oppo/camera/a/a$a;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/oppo/camera/a/a;->l:Ljava/lang/String;

    .line 215
    new-instance v0, Lcom/oppo/camera/a/b;

    invoke-direct {v0}, Lcom/oppo/camera/a/b;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/a/a;->q:Lcom/oppo/camera/a/b;

    .line 216
    iget-object v0, p0, Lcom/oppo/camera/a/a;->q:Lcom/oppo/camera/a/b;

    sget-object v1, Lcom/oppo/camera/a/c;->a:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/oppo/camera/a/a;->m:Ljava/lang/String;

    .line 217
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "capture_mode"

    .line 216
    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/oppo/camera/a/a;->q:Lcom/oppo/camera/a/b;

    iget-object v1, p0, Lcom/oppo/camera/a/a;->l:Ljava/lang/String;

    const-string v2, "logic_camera_id"

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/oppo/camera/a/a;->q:Lcom/oppo/camera/a/b;

    iget-object v1, p0, Lcom/oppo/camera/a/a;->k:Ljava/lang/String;

    const-string v2, "camera_id"

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object p1, p1, Lcom/oppo/camera/a/a$a;->i:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-static {p1}, Lcom/oppo/camera/a/c;->a(Landroid/hardware/camera2/CaptureResult;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/a/a;->s:Ljava/util/concurrent/ConcurrentHashMap;

    .line 222
    invoke-direct {p0}, Lcom/oppo/camera/a/a;->h()V

    const/4 p1, 0x1

    .line 223
    iput-boolean p1, p0, Lcom/oppo/camera/a/a;->o:Z

    return-void

    :catchall_0
    move-exception p1

    .line 204
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic d(Lcom/oppo/camera/a/a;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/oppo/camera/a/a;->h:I

    return p0
.end method

.method private d(Lcom/oppo/camera/a/a$a;)V
    .locals 10

    .line 355
    iget-object v0, p1, Lcom/oppo/camera/a/a$a;->j:Landroid/media/ImageReader;

    .line 356
    invoke-virtual {v0}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object v0

    .line 357
    invoke-virtual {v0}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v1

    .line 358
    iget v3, p1, Lcom/oppo/camera/a/a$a;->a:I

    .line 359
    iget v4, p1, Lcom/oppo/camera/a/a$a;->c:I

    .line 360
    iget-object v5, p1, Lcom/oppo/camera/a/a$a;->b:[I

    invoke-direct {p0, v5}, Lcom/oppo/camera/a/a;->a([I)V

    .line 362
    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Landroid/media/Image;)V

    .line 364
    new-instance v5, Lcom/oppo/camera/a/d$b;

    iget-object v6, p0, Lcom/oppo/camera/a/a;->t:Lcom/oppo/camera/a/d;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v5, v6}, Lcom/oppo/camera/a/d$b;-><init>(Lcom/oppo/camera/a/d;)V

    .line 365
    iput-object v0, v5, Lcom/oppo/camera/a/d$b;->a:Landroid/media/Image;

    .line 366
    iget p1, p1, Lcom/oppo/camera/a/a$a;->k:I

    iput p1, v5, Lcom/oppo/camera/a/d$b;->b:I

    .line 368
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handlerImageArrived, timeStamp: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", need merge number: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ApsController"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-direct {p0}, Lcom/oppo/camera/a/a;->m()Z

    move-result p1

    const-wide/16 v6, 0x0

    if-eqz p1, :cond_0

    iget-wide v8, p0, Lcom/oppo/camera/a/a;->d:J

    cmp-long p1, v8, v6

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/a/a;->t:Lcom/oppo/camera/a/d;

    .line 376
    invoke-virtual {p1, v1, v2}, Lcom/oppo/camera/a/d;->a(J)Lcom/oppo/camera/a/d$a;

    move-result-object p1

    iget p1, p1, Lcom/oppo/camera/a/d$a;->b:I

    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/oppo/camera/a/a;->m()Z

    move-result p1

    if-nez p1, :cond_4

    .line 377
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/a/a;->t:Lcom/oppo/camera/a/d;

    invoke-virtual {p1, v1, v2, v5}, Lcom/oppo/camera/a/d;->a(JLcom/oppo/camera/a/d$b;)V

    .line 378
    iget-object p1, p0, Lcom/oppo/camera/a/a;->t:Lcom/oppo/camera/a/d;

    invoke-virtual {p1, v1, v2, v3}, Lcom/oppo/camera/a/d;->d(JI)V

    const-string p1, "ApsController"

    const-string v0, "handlerImageArrived, metadata don\'t arrived, put into the cache"

    .line 380
    invoke-static {p1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget-wide v3, p0, Lcom/oppo/camera/a/a;->d:J

    cmp-long p1, v6, v3

    if-nez p1, :cond_3

    .line 388
    iget-object p1, p0, Lcom/oppo/camera/a/a;->c:Ljava/lang/Object;

    monitor-enter p1

    .line 389
    :try_start_0
    iget-wide v3, p0, Lcom/oppo/camera/a/a;->d:J

    cmp-long v0, v6, v3

    if-nez v0, :cond_2

    .line 390
    iput-wide v1, p0, Lcom/oppo/camera/a/a;->d:J

    const-string v0, "ApsController"

    const-string v1, "handlerImageArrived, data is before start notify"

    .line 392
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    :cond_2
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_0
    return-void

    .line 400
    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/a/a;->l:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, v5, v4, p1}, Lcom/oppo/camera/a/a;->a(Lcom/oppo/camera/a/d$b;II)V

    return-void
.end method

.method static synthetic e(Lcom/oppo/camera/a/a;)Lcom/oppo/camera/jni/NativeBufferProducer;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/oppo/camera/a/a;->x:Lcom/oppo/camera/jni/NativeBufferProducer;

    return-object p0
.end method

.method static synthetic f(Lcom/oppo/camera/a/a;)Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/oppo/camera/a/a;->w:Landroid/os/Handler;

    return-object p0
.end method

.method private g()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/oppo/camera/a/a;->v:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "apscontroller"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oppo/camera/a/a;->v:Landroid/os/HandlerThread;

    .line 117
    iget-object v0, p0, Lcom/oppo/camera/a/a;->v:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 118
    new-instance v0, Lcom/oppo/camera/a/a$b;

    iget-object v1, p0, Lcom/oppo/camera/a/a;->v:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/a/a$b;-><init>(Lcom/oppo/camera/a/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oppo/camera/a/a;->w:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/oppo/camera/a/a;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/oppo/camera/a/a;->l()V

    return-void
.end method

.method private h()V
    .locals 11

    .line 227
    iget-object v0, p0, Lcom/oppo/camera/a/a;->p:Lcom/oppo/camera/jni/APSClient;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/a/a;->s:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_2

    .line 228
    new-instance v0, Lcom/oppo/camera/a/b;

    invoke-direct {v0}, Lcom/oppo/camera/a/b;-><init>()V

    .line 230
    iget-object v1, p0, Lcom/oppo/camera/a/a;->s:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureResult$Key;

    .line 231
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/oppo/camera/a/a;->s:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v4, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/oppo/camera/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_0
    invoke-virtual {v0}, Lcom/oppo/camera/a/b;->a()[Ljava/lang/String;

    move-result-object v6

    .line 235
    iget-object v0, p0, Lcom/oppo/camera/a/a;->q:Lcom/oppo/camera/a/b;

    invoke-virtual {v0}, Lcom/oppo/camera/a/b;->a()[Ljava/lang/String;

    move-result-object v5

    .line 236
    iget-object v0, p0, Lcom/oppo/camera/a/a;->q:Lcom/oppo/camera/a/b;

    const-string v1, "camera_id"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/a/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lcom/oppo/camera/a/a;->p:Lcom/oppo/camera/jni/APSClient;

    invoke-static {v0, v1}, Lcom/oppo/camera/a/c;->a(Ljava/lang/String;Lcom/oppo/camera/jni/APSClient;)[I

    move-result-object v0

    const-string v1, "ApsController"

    if-nez v0, :cond_1

    const-string v0, "initApsParameters, getCameraCharacteristicsData fail, need check"

    .line 240
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v2, 0x0

    .line 245
    aget v7, v0, v2

    const/4 v2, 0x1

    .line 246
    aget v8, v0, v2

    const/4 v2, 0x2

    .line 247
    aget v9, v0, v2

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initApsParameters, parameters: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", algoFlags: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/a/a;->i:[Ljava/lang/String;

    .line 250
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", chararcteristicsAddr: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", chararcteristicsFd: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", chararcteristicsBuffSize: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/oppo/camera/a/a;->p:Lcom/oppo/camera/jni/APSClient;

    iget-object v1, p0, Lcom/oppo/camera/a/a;->B:Lcom/oppo/camera/jni/APSClient$BufferCallback;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/jni/APSClient;->setDataCallback(Lcom/oppo/camera/jni/APSClient$BufferCallback;)V

    .line 255
    iget-object v4, p0, Lcom/oppo/camera/a/a;->p:Lcom/oppo/camera/jni/APSClient;

    iget-object v10, p0, Lcom/oppo/camera/a/a;->i:[Ljava/lang/String;

    invoke-virtual/range {v4 .. v10}, Lcom/oppo/camera/jni/APSClient;->algoInit([Ljava/lang/String;[Ljava/lang/String;III[Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method static synthetic h(Lcom/oppo/camera/a/a;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/oppo/camera/a/a;->k()V

    return-void
.end method

.method private i()V
    .locals 2

    .line 533
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetProcessStateAndNotify, mBufferCallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/a/a;->r:Lcom/oppo/camera/jni/APSClient$BufferCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mApsCallbackAction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/a/a;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApsController"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    invoke-direct {p0}, Lcom/oppo/camera/a/a;->j()V

    .line 541
    iget-object v0, p0, Lcom/oppo/camera/a/a;->r:Lcom/oppo/camera/jni/APSClient$BufferCallback;

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    iget v1, p0, Lcom/oppo/camera/a/a;->g:I

    if-eq v0, v1, :cond_0

    const/16 v0, 0x20

    iget v1, p0, Lcom/oppo/camera/a/a;->z:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/oppo/camera/a/a;->h:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/a/a;->r:Lcom/oppo/camera/jni/APSClient$BufferCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/jni/APSClient$BufferCallback;->onDataCallback(Lcom/oppo/camera/jni/APSClient$APSResultInfo;)V

    .line 552
    :cond_1
    invoke-direct {p0}, Lcom/oppo/camera/a/a;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 553
    invoke-direct {p0}, Lcom/oppo/camera/a/a;->k()V

    :cond_2
    return-void
.end method

.method private j()V
    .locals 3

    .line 559
    iget-object v0, p0, Lcom/oppo/camera/a/a;->t:Lcom/oppo/camera/a/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/a/d;->a(Z)V

    .line 560
    iget-object v0, p0, Lcom/oppo/camera/a/a;->t:Lcom/oppo/camera/a/d;

    invoke-virtual {v0}, Lcom/oppo/camera/a/d;->b()V

    .line 563
    iput v1, p0, Lcom/oppo/camera/a/a;->e:I

    .line 564
    iput v1, p0, Lcom/oppo/camera/a/a;->f:I

    .line 571
    iget-object v0, p0, Lcom/oppo/camera/a/a;->c:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, 0x0

    .line 572
    :try_start_0
    iput-wide v1, p0, Lcom/oppo/camera/a/a;->d:J

    .line 573
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private k()V
    .locals 3

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doUninit, mbInit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/a/a;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApsController"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    iget-boolean v0, p0, Lcom/oppo/camera/a/a;->o:Z

    if-nez v0, :cond_0

    return-void

    .line 610
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doUninit, parameters: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/a/a;->q:Lcom/oppo/camera/a/b;

    invoke-virtual {v2}, Lcom/oppo/camera/a/b;->a()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mInitAlgos: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/a/a;->i:[Ljava/lang/String;

    .line 611
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 610
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    iget-object v0, p0, Lcom/oppo/camera/a/a;->p:Lcom/oppo/camera/jni/APSClient;

    iget-object v1, p0, Lcom/oppo/camera/a/a;->q:Lcom/oppo/camera/a/b;

    invoke-virtual {v1}, Lcom/oppo/camera/a/b;->a()[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/a/a;->i:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/jni/APSClient;->unint([Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 614
    iput-object v0, p0, Lcom/oppo/camera/a/a;->i:[Ljava/lang/String;

    .line 615
    iput-object v0, p0, Lcom/oppo/camera/a/a;->q:Lcom/oppo/camera/a/b;

    .line 618
    iput-object v0, p0, Lcom/oppo/camera/a/a;->k:Ljava/lang/String;

    .line 619
    iput-object v0, p0, Lcom/oppo/camera/a/a;->m:Ljava/lang/String;

    const/4 v0, 0x0

    .line 620
    iput-boolean v0, p0, Lcom/oppo/camera/a/a;->o:Z

    return-void
.end method

.method private l()V
    .locals 2

    .line 708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decreaseInProcessNum, mInProcessImageNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/a/a;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApsController"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    iget v0, p0, Lcom/oppo/camera/a/a;->g:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oppo/camera/a/a;->g:I

    return-void
.end method

.method private m()Z
    .locals 4

    .line 795
    iget-object v0, p0, Lcom/oppo/camera/a/a;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "ApsController"

    .line 796
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isClosingCamera, mbIsCameraClosing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/a/a;->n:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    iget-boolean v1, p0, Lcom/oppo/camera/a/a;->n:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 799
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJZ)V
    .locals 1

    .line 262
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 263
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "time_stamp"

    .line 264
    invoke-virtual {p2, v0, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p3, "frame_id"

    .line 265
    invoke-virtual {p2, p3, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p3, "update"

    .line 266
    invoke-virtual {p2, p3, p7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 267
    invoke-virtual {p1, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const/4 p2, 0x6

    .line 268
    iput p2, p1, Landroid/os/Message;->what:I

    .line 270
    iget-object p2, p0, Lcom/oppo/camera/a/a;->w:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Landroid/hardware/camera2/TotalCaptureResult;I)V
    .locals 3

    .line 299
    iget-object v0, p0, Lcom/oppo/camera/a/a;->w:Landroid/os/Handler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public a(Landroid/hardware/camera2/TotalCaptureResult;Lcom/oppo/camera/jni/APSClient$BufferCallback;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p6

    move-object v4, p5

    move v5, p7

    .line 152
    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    new-instance v0, Lcom/oppo/camera/a/a$a;

    invoke-direct {v0}, Lcom/oppo/camera/a/a$a;-><init>()V

    .line 154
    iput-object p2, v0, Lcom/oppo/camera/a/a$a;->h:Lcom/oppo/camera/jni/APSClient$BufferCallback;

    .line 155
    iput-object p3, v0, Lcom/oppo/camera/a/a$a;->f:Ljava/lang/String;

    .line 156
    iput-object p5, v0, Lcom/oppo/camera/a/a$a;->g:[Ljava/lang/String;

    .line 157
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, v0, Lcom/oppo/camera/a/a$a;->a:I

    .line 158
    iput-object p6, v0, Lcom/oppo/camera/a/a$a;->e:Ljava/lang/String;

    .line 159
    iput-object p1, v0, Lcom/oppo/camera/a/a$a;->i:Landroid/hardware/camera2/TotalCaptureResult;

    .line 160
    iput p7, v0, Lcom/oppo/camera/a/a$a;->d:I

    .line 162
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 163
    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 p2, 0x1

    .line 164
    iput p2, p1, Landroid/os/Message;->what:I

    .line 165
    iget-object p2, p0, Lcom/oppo/camera/a/a;->w:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/oppo/camera/Ipa/ImageProcessService;)V
    .locals 0

    .line 714
    iput-object p1, p0, Lcom/oppo/camera/a/a;->u:Lcom/oppo/camera/Ipa/ImageProcessService;

    return-void
.end method

.method public a(Lcom/oppo/camera/a/a$a;)V
    .locals 2

    const-string v0, "ApsController"

    const-string v1, "onCaptureFailed"

    .line 332
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget p1, p1, Lcom/oppo/camera/a/a$a;->c:I

    iget-object v0, p0, Lcom/oppo/camera/a/a;->l:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, v0}, Lcom/oppo/camera/a/a;->a(Lcom/oppo/camera/a/d$b;II)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/oppo/camera/a/a;->p:Lcom/oppo/camera/jni/APSClient;

    if-eqz v0, :cond_1

    .line 127
    invoke-virtual {v0}, Lcom/oppo/camera/jni/APSClient;->startConnect()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/oppo/camera/a/a;->A:Z

    .line 130
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAfterStartPreview, mbApsConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/a/a;->A:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApsController"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Lcom/oppo/camera/a/a$a;)V
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/oppo/camera/a/a;->w:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public declared-synchronized c()Z
    .locals 1

    monitor-enter p0

    .line 138
    :try_start_0
    iget-boolean v0, p0, Lcom/oppo/camera/a/a;->A:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized d()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "ApsController"

    const-string v1, "unInit"

    .line 594
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lcom/oppo/camera/a/a;->w:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()V
    .locals 5

    const-string v0, "ApsController"

    const-string v1, "waitHandlerThread"

    .line 718
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    iget-object v1, p0, Lcom/oppo/camera/a/a;->w:Landroid/os/Handler;

    check-cast v1, Lcom/oppo/camera/a/a$b;

    new-instance v2, Lcom/oppo/camera/a/a$2;

    invoke-direct {v2, p0}, Lcom/oppo/camera/a/a$2;-><init>(Lcom/oppo/camera/a/a;)V

    invoke-virtual {v1, v2}, Lcom/oppo/camera/a/a$b;->a(Ljava/lang/Runnable;)V

    .line 728
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/a/a;->v:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    .line 729
    iget-object v1, p0, Lcom/oppo/camera/a/a;->v:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V

    const/4 v1, 0x0

    .line 730
    iput-object v1, p0, Lcom/oppo/camera/a/a;->v:Landroid/os/HandlerThread;

    .line 733
    invoke-direct {p0}, Lcom/oppo/camera/a/a;->g()V

    .line 739
    iput-object v1, p0, Lcom/oppo/camera/a/a;->k:Ljava/lang/String;

    .line 745
    iget v1, p0, Lcom/oppo/camera/a/a;->e:I

    iget v2, p0, Lcom/oppo/camera/a/a;->f:I

    if-ge v1, v2, :cond_1

    .line 746
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waitHandlerThread, This time capture fail, the mCallbackNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oppo/camera/a/a;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", is not match request mDebugNeedMergeNum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oppo/camera/a/a;->f:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mCaptureTimeStamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/oppo/camera/a/a;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    iget-object v1, p0, Lcom/oppo/camera/a/a;->u:Lcom/oppo/camera/Ipa/ImageProcessService;

    if-eqz v1, :cond_0

    .line 750
    iget-object v1, p0, Lcom/oppo/camera/a/a;->u:Lcom/oppo/camera/Ipa/ImageProcessService;

    const/4 v2, 0x2

    iget-wide v3, p0, Lcom/oppo/camera/a/a;->d:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/oppo/camera/Ipa/ImageProcessService;->a(IJ)V

    .line 753
    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/a/a;->j()V

    .line 754
    invoke-direct {p0}, Lcom/oppo/camera/a/a;->k()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 758
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_1
    :goto_0
    const-string v1, "waitHandlerThread X"

    .line 761
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f()V
    .locals 5

    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "beforePause, mCaptureTimeStamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oppo/camera/a/a;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApsController"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    iget-object v0, p0, Lcom/oppo/camera/a/a;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 774
    :try_start_0
    iget-wide v1, p0, Lcom/oppo/camera/a/a;->d:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 777
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    .line 780
    iget-object v0, p0, Lcom/oppo/camera/a/a;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 781
    :try_start_1
    iput-boolean v3, p0, Lcom/oppo/camera/a/a;->n:Z

    .line 782
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 784
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/a/a;->d()V

    .line 787
    :goto_1
    iget-object v0, p0, Lcom/oppo/camera/a/a;->p:Lcom/oppo/camera/jni/APSClient;

    if-eqz v0, :cond_3

    .line 788
    invoke-virtual {v0}, Lcom/oppo/camera/jni/APSClient;->resetConnectStatus()I

    move-result v0

    if-nez v0, :cond_2

    move v2, v3

    :cond_2
    iput-boolean v2, p0, Lcom/oppo/camera/a/a;->A:Z

    .line 790
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "beforePause, mbApsConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/a/a;->A:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApsController"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void

    :catchall_1
    move-exception v1

    .line 777
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
