.class public Lcom/oppo/camera/d/c;
.super Ljava/lang/Object;
.source "CameraMediaCodec.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/d/c$a;,
        Lcom/oppo/camera/d/c$b;
    }
.end annotation


# instance fields
.field private A:Landroid/media/AudioRecord;

.field private B:Lcom/oppo/camera/d/d;

.field private C:Lcom/oppo/camera/d/c$a;

.field private D:Lcom/oppo/camera/gl/q;

.field private E:Landroid/os/Handler;

.field private F:Landroid/os/Handler;

.field private G:Ljava/lang/Thread;

.field private H:Landroid/os/ConditionVariable;

.field private I:Lcom/oppo/camera/d/c$b;

.field private J:Ljava/util/concurrent/CountDownLatch;

.field private K:F

.field private L:F

.field private M:J

.field private N:Z

.field private O:Z

.field private P:Z

.field private final a:Ljava/lang/Object;

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/lang/Object;

.field private final d:Ljava/lang/Object;

.field private e:Z

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:J

.field private l:J

.field private m:J

.field private n:J

.field private o:J

.field private p:J

.field private q:Landroid/media/MediaMuxer;

.field private r:I

.field private s:Ljava/lang/String;

.field private t:Ljava/io/FileDescriptor;

.field private u:Landroid/media/MediaCodec;

.field private v:Landroid/media/MediaCodec;

.field private w:Landroid/view/Surface;

.field private x:Landroid/media/MediaFormat;

.field private y:Landroid/media/MediaFormat;

.field private z:[Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/d/c;->a:Ljava/lang/Object;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/d/c;->b:Ljava/lang/Object;

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/d/c;->c:Ljava/lang/Object;

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/d/c;->d:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/oppo/camera/d/c;->e:Z

    const/4 v1, -0x1

    .line 50
    iput v1, p0, Lcom/oppo/camera/d/c;->f:I

    .line 51
    iput v1, p0, Lcom/oppo/camera/d/c;->g:I

    const/4 v1, 0x0

    .line 52
    iput v1, p0, Lcom/oppo/camera/d/c;->h:I

    .line 53
    iput v1, p0, Lcom/oppo/camera/d/c;->i:I

    const/16 v2, 0xc

    .line 54
    iput v2, p0, Lcom/oppo/camera/d/c;->j:I

    const-wide/16 v2, 0x0

    .line 55
    iput-wide v2, p0, Lcom/oppo/camera/d/c;->k:J

    .line 56
    iput-wide v2, p0, Lcom/oppo/camera/d/c;->l:J

    .line 57
    iput-wide v2, p0, Lcom/oppo/camera/d/c;->m:J

    const-wide/16 v4, -0x1

    .line 58
    iput-wide v4, p0, Lcom/oppo/camera/d/c;->n:J

    .line 59
    iput-wide v4, p0, Lcom/oppo/camera/d/c;->o:J

    .line 60
    iput-wide v4, p0, Lcom/oppo/camera/d/c;->p:J

    const/4 v4, 0x0

    .line 61
    iput-object v4, p0, Lcom/oppo/camera/d/c;->q:Landroid/media/MediaMuxer;

    const/4 v5, 0x3

    .line 62
    iput v5, p0, Lcom/oppo/camera/d/c;->r:I

    .line 63
    iput-object v4, p0, Lcom/oppo/camera/d/c;->s:Ljava/lang/String;

    .line 64
    iput-object v4, p0, Lcom/oppo/camera/d/c;->t:Ljava/io/FileDescriptor;

    .line 65
    iput-object v4, p0, Lcom/oppo/camera/d/c;->u:Landroid/media/MediaCodec;

    .line 66
    iput-object v4, p0, Lcom/oppo/camera/d/c;->v:Landroid/media/MediaCodec;

    .line 67
    iput-object v4, p0, Lcom/oppo/camera/d/c;->w:Landroid/view/Surface;

    .line 68
    iput-object v4, p0, Lcom/oppo/camera/d/c;->x:Landroid/media/MediaFormat;

    .line 69
    iput-object v4, p0, Lcom/oppo/camera/d/c;->y:Landroid/media/MediaFormat;

    .line 70
    iput-object v4, p0, Lcom/oppo/camera/d/c;->z:[Ljava/nio/ByteBuffer;

    .line 71
    iput-object v4, p0, Lcom/oppo/camera/d/c;->A:Landroid/media/AudioRecord;

    .line 72
    iput-object v4, p0, Lcom/oppo/camera/d/c;->B:Lcom/oppo/camera/d/d;

    .line 73
    iput-object v4, p0, Lcom/oppo/camera/d/c;->C:Lcom/oppo/camera/d/c$a;

    .line 74
    iput-object v4, p0, Lcom/oppo/camera/d/c;->D:Lcom/oppo/camera/gl/q;

    .line 75
    iput-object v4, p0, Lcom/oppo/camera/d/c;->E:Landroid/os/Handler;

    .line 76
    iput-object v4, p0, Lcom/oppo/camera/d/c;->F:Landroid/os/Handler;

    .line 77
    iput-object v4, p0, Lcom/oppo/camera/d/c;->G:Ljava/lang/Thread;

    .line 78
    new-instance v5, Landroid/os/ConditionVariable;

    invoke-direct {v5}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v5, p0, Lcom/oppo/camera/d/c;->H:Landroid/os/ConditionVariable;

    .line 79
    new-instance v5, Lcom/oppo/camera/d/c$b;

    invoke-direct {v5, p0, v4}, Lcom/oppo/camera/d/c$b;-><init>(Lcom/oppo/camera/d/c;Lcom/oppo/camera/d/c$1;)V

    iput-object v5, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    .line 80
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v4, p0, Lcom/oppo/camera/d/c;->J:Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x0

    .line 81
    iput v4, p0, Lcom/oppo/camera/d/c;->K:F

    .line 82
    iput v4, p0, Lcom/oppo/camera/d/c;->L:F

    .line 83
    iput-wide v2, p0, Lcom/oppo/camera/d/c;->M:J

    .line 84
    iput-boolean v0, p0, Lcom/oppo/camera/d/c;->N:Z

    .line 85
    iput-boolean v1, p0, Lcom/oppo/camera/d/c;->O:Z

    .line 86
    iput-boolean v1, p0, Lcom/oppo/camera/d/c;->P:Z

    .line 104
    new-instance v0, Lcom/oppo/camera/d/c$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/d/c$a;-><init>(Lcom/oppo/camera/d/c;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oppo/camera/d/c;->C:Lcom/oppo/camera/d/c$a;

    return-void
.end method

.method private A()Z
    .locals 4

    const-string v0, "CameraMediaCodec"

    const-string v1, "startAudioInput"

    .line 893
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    iget-object v1, p0, Lcom/oppo/camera/d/c;->A:Landroid/media/AudioRecord;

    if-nez v1, :cond_0

    .line 898
    invoke-direct {p0}, Lcom/oppo/camera/d/c;->z()V

    .line 901
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/d/c;->A:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->startRecording()V

    .line 903
    iget-object v1, p0, Lcom/oppo/camera/d/c;->A:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const-string v1, "startAudioInput, mAudioRecord may be conflict or have some other exception"

    .line 904
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 909
    :goto_0
    invoke-direct {p0}, Lcom/oppo/camera/d/c;->y()I

    move-result v1

    new-array v1, v1, [B

    .line 911
    new-instance v2, Lcom/oppo/camera/d/c$6;

    const-string v3, "audio input thread"

    invoke-direct {v2, p0, v3, v1}, Lcom/oppo/camera/d/c$6;-><init>(Lcom/oppo/camera/d/c;Ljava/lang/String;[B)V

    iput-object v2, p0, Lcom/oppo/camera/d/c;->G:Ljava/lang/Thread;

    .line 942
    iget-object v1, p0, Lcom/oppo/camera/d/c;->G:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return v0
.end method

.method static synthetic a(Lcom/oppo/camera/d/c;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcom/oppo/camera/d/c;->f:I

    return p1
.end method

.method static synthetic a(Lcom/oppo/camera/d/c;J)J
    .locals 0

    .line 28
    iput-wide p1, p0, Lcom/oppo/camera/d/c;->n:J

    return-wide p1
.end method

.method private declared-synchronized a(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "CameraMediaCodec"

    const-string v1, "writeSampleData"

    .line 865
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    iget-object v0, p0, Lcom/oppo/camera/d/c;->q:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/oppo/camera/d/c;->q:Landroid/media/MediaMuxer;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 870
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/oppo/camera/d/c;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/oppo/camera/d/c;->r()V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/d/c;ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/camera/d/c;->a(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/d/c;[BII)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/camera/d/c;->a([BII)V

    return-void
.end method

.method private a([BII)V
    .locals 10

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addAudioFrame, mAudioCodec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/d/c;->v:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mRecorderState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/d/c;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraMediaCodec"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    iget-object v0, p0, Lcom/oppo/camera/d/c;->v:Landroid/media/MediaCodec;

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    :cond_0
    if-gez v0, :cond_1

    .line 572
    iget-object v0, p0, Lcom/oppo/camera/d/c;->v:Landroid/media/MediaCodec;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    .line 574
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAudioFrame, outputBufferIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-gez v0, :cond_0

    .line 576
    iget v2, p0, Lcom/oppo/camera/d/c;->r:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 577
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addAudioFrame break, mRecorderState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oppo/camera/d/c;->r:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move v4, v0

    if-eqz p1, :cond_2

    if-ltz v4, :cond_2

    .line 584
    iget-object v0, p0, Lcom/oppo/camera/d/c;->z:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v4

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 585
    iget-object v0, p0, Lcom/oppo/camera/d/c;->z:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v4

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 586
    iget-object v3, p0, Lcom/oppo/camera/d/c;->v:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    const/4 v9, 0x0

    move v6, p3

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/d/c;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/oppo/camera/d/c;->O:Z

    return p1
.end method

.method static synthetic b(Lcom/oppo/camera/d/c;J)J
    .locals 0

    .line 28
    iput-wide p1, p0, Lcom/oppo/camera/d/c;->M:J

    return-wide p1
.end method

.method static synthetic b(Lcom/oppo/camera/d/c;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oppo/camera/d/c;->J:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method static synthetic c(Lcom/oppo/camera/d/c;J)J
    .locals 0

    .line 28
    iput-wide p1, p0, Lcom/oppo/camera/d/c;->o:J

    return-wide p1
.end method

.method static synthetic c(Lcom/oppo/camera/d/c;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/oppo/camera/d/c;->q()V

    return-void
.end method

.method static synthetic d(Lcom/oppo/camera/d/c;J)J
    .locals 0

    .line 28
    iput-wide p1, p0, Lcom/oppo/camera/d/c;->p:J

    return-wide p1
.end method

.method static synthetic d(Lcom/oppo/camera/d/c;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/oppo/camera/d/c;->t()V

    return-void
.end method

.method static synthetic e(Lcom/oppo/camera/d/c;J)J
    .locals 0

    .line 28
    iput-wide p1, p0, Lcom/oppo/camera/d/c;->k:J

    return-wide p1
.end method

.method static synthetic e(Lcom/oppo/camera/d/c;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/oppo/camera/d/c;->s()V

    return-void
.end method

.method static synthetic f(Lcom/oppo/camera/d/c;)J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/oppo/camera/d/c;->m:J

    return-wide v0
.end method

.method private f()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/oppo/camera/d/c;->E:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "video codec thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 111
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oppo/camera/d/c;->E:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/oppo/camera/d/c;)J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/oppo/camera/d/c;->n:J

    return-wide v0
.end method

.method private g()V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/oppo/camera/d/c;->E:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/oppo/camera/d/c;->E:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/oppo/camera/d/c;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/oppo/camera/d/c;->f:I

    return p0
.end method

.method private h()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/oppo/camera/d/c;->F:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "audio codec thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 126
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oppo/camera/d/c;->F:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method static synthetic i(Lcom/oppo/camera/d/c;)Ljava/lang/Object;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oppo/camera/d/c;->c:Ljava/lang/Object;

    return-object p0
.end method

.method private i()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/oppo/camera/d/c;->F:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lcom/oppo/camera/d/c;->F:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/oppo/camera/d/c;)J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/oppo/camera/d/c;->M:J

    return-wide v0
.end method

.method private j()Landroid/media/MediaFormat;
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/oppo/camera/d/c;->x:Landroid/media/MediaFormat;

    if-nez v0, :cond_0

    .line 162
    invoke-direct {p0}, Lcom/oppo/camera/d/c;->k()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iget v1, v1, Lcom/oppo/camera/d/c$b;->l:I

    iget-object v2, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iget v2, v2, Lcom/oppo/camera/d/c$b;->j:I

    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/d/c;->x:Landroid/media/MediaFormat;

    .line 164
    iget-object v0, p0, Lcom/oppo/camera/d/c;->x:Landroid/media/MediaFormat;

    iget-object v1, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iget v1, v1, Lcom/oppo/camera/d/c$b;->h:I

    const-string v2, "bitrate"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 165
    iget-object v0, p0, Lcom/oppo/camera/d/c;->x:Landroid/media/MediaFormat;

    iget-object v1, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iget v1, v1, Lcom/oppo/camera/d/c$b;->k:I

    const-string v2, "frame-rate"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 166
    iget-object v0, p0, Lcom/oppo/camera/d/c;->x:Landroid/media/MediaFormat;

    const v1, 0x7f000789

    const-string v2, "color-format"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 167
    iget-object v0, p0, Lcom/oppo/camera/d/c;->x:Landroid/media/MediaFormat;

    const/4 v1, 0x1

    const-string v2, "i-frame-interval"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/c;->x:Landroid/media/MediaFormat;

    return-object v0
.end method

.method static synthetic k(Lcom/oppo/camera/d/c;)J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/oppo/camera/d/c;->o:J

    return-wide v0
.end method

.method private k()Ljava/lang/String;
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/oppo/camera/d/c$b;->i:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const-string v0, "video/hevc"

    return-object v0

    :cond_0
    const-string v0, "video/avc"

    return-object v0
.end method

.method private l()Landroid/media/MediaFormat;
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/oppo/camera/d/c;->y:Landroid/media/MediaFormat;

    if-nez v0, :cond_2

    .line 183
    invoke-direct {p0}, Lcom/oppo/camera/d/c;->m()I

    move-result v0

    iget-object v1, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iget v1, v1, Lcom/oppo/camera/d/c$b;->b:I

    if-nez v1, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/oppo/camera/d/c;->n()I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iget v1, v1, Lcom/oppo/camera/d/c$b;->b:I

    :goto_0
    const-string v2, "audio/mp4a-latm"

    .line 183
    invoke-static {v2, v0, v1}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/d/c;->y:Landroid/media/MediaFormat;

    .line 185
    iget-object v0, p0, Lcom/oppo/camera/d/c;->y:Landroid/media/MediaFormat;

    iget-object v1, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iget v1, v1, Lcom/oppo/camera/d/c$b;->a:I

    if-nez v1, :cond_1

    const v1, 0x1f400

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iget v1, v1, Lcom/oppo/camera/d/c$b;->a:I

    :goto_1
    const-string v2, "bitrate"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 187
    iget-object v0, p0, Lcom/oppo/camera/d/c;->y:Landroid/media/MediaFormat;

    const/4 v1, 0x2

    const-string v2, "aac-profile"

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/d/c;->y:Landroid/media/MediaFormat;

    return-object v0
.end method

.method static synthetic l(Lcom/oppo/camera/d/c;)Lcom/oppo/camera/d/c$a;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oppo/camera/d/c;->C:Lcom/oppo/camera/d/c$a;

    return-object p0
.end method

.method private m()I
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/oppo/camera/d/c$b;->d:I

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iget v0, v0, Lcom/oppo/camera/d/c$b;->d:I

    goto :goto_0

    :cond_0
    const v0, 0xbb80

    :goto_0
    return v0
.end method

.method static synthetic m(Lcom/oppo/camera/d/c;)J
    .locals 2

    .line 28
    iget-wide v0, p0, Lcom/oppo/camera/d/c;->p:J

    return-wide v0
.end method

.method private n()I
    .locals 5

    .line 206
    iget v0, p0, Lcom/oppo/camera/d/c;->j:I

    const/4 v1, -0x2

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_1

    if-eq v0, v2, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_0

    const/16 v4, 0xc

    if-eq v0, v4, :cond_0

    const/16 v4, 0x10

    if-eq v0, v4, :cond_1

    const/16 v3, 0x30

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 232
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getChannelCount, channelCount: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CameraMediaCodec"

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method static synthetic n(Lcom/oppo/camera/d/c;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/oppo/camera/d/c;->r:I

    return p0
.end method

.method static synthetic o(Lcom/oppo/camera/d/c;)Ljava/lang/Object;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oppo/camera/d/c;->a:Ljava/lang/Object;

    return-object p0
.end method

.method private o()V
    .locals 2

    const-string v0, "CameraMediaCodec"

    const-string v1, "stopAudioInput"

    .line 355
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Lcom/oppo/camera/d/c;->A:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 358
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 359
    iget-object v0, p0, Lcom/oppo/camera/d/c;->A:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    :cond_0
    return-void
.end method

.method static synthetic p(Lcom/oppo/camera/d/c;)Landroid/media/MediaMuxer;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oppo/camera/d/c;->q:Landroid/media/MediaMuxer;

    return-object p0
.end method

.method private p()V
    .locals 10

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopAudioEncode, mAudioCodec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/d/c;->v:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mbAudioCodecOutputDataCome: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/d/c;->P:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraMediaCodec"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-boolean v0, p0, Lcom/oppo/camera/d/c;->P:Z

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/oppo/camera/d/c;->v:Landroid/media/MediaCodec;

    if-eqz v0, :cond_1

    const-wide/16 v1, -0x1

    .line 369
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v4

    .line 370
    iget-object v3, p0, Lcom/oppo/camera/d/c;->v:Landroid/media/MediaCodec;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    invoke-virtual/range {v3 .. v9}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    goto :goto_0

    .line 373
    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/d/c;->u()V

    :cond_1
    :goto_0
    return-void
.end method

.method private q()V
    .locals 5

    const-string v0, "CameraMediaCodec"

    const-string v1, "initAudioCodec"

    .line 411
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v1, "audio/mp4a-latm"

    .line 414
    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/d/c;->v:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "initAudioCodec, createEncoderByType fail"

    .line 416
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/d/c;->v:Landroid/media/MediaCodec;

    invoke-direct {p0}, Lcom/oppo/camera/d/c;->l()Landroid/media/MediaFormat;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v4, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 420
    iget-object v1, p0, Lcom/oppo/camera/d/c;->v:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 421
    iget-object v1, p0, Lcom/oppo/camera/d/c;->v:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/d/c;->z:[Ljava/nio/ByteBuffer;

    .line 423
    iget-object v1, p0, Lcom/oppo/camera/d/c;->F:Landroid/os/Handler;

    new-instance v2, Lcom/oppo/camera/d/c$3;

    invoke-direct {v2, p0}, Lcom/oppo/camera/d/c$3;-><init>(Lcom/oppo/camera/d/c;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initAudioCodec, mInputByteBuffer.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/d/c;->z:[Ljava/nio/ByteBuffer;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic q(Lcom/oppo/camera/d/c;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/oppo/camera/d/c;->w()V

    return-void
.end method

.method static synthetic r(Lcom/oppo/camera/d/c;)I
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/oppo/camera/d/c;->y()I

    move-result p0

    return p0
.end method

.method private r()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    const-string v0, "CameraMediaCodec"

    const-string v1, "initVideoCodec"

    .line 437
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    :try_start_0
    invoke-direct {p0}, Lcom/oppo/camera/d/c;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/d/c;->u:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "initVideoCodec, createEncoderByType fail"

    .line 442
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/d/c;->u:Landroid/media/MediaCodec;

    new-instance v1, Lcom/oppo/camera/d/c$4;

    invoke-direct {v1, p0}, Lcom/oppo/camera/d/c$4;-><init>(Lcom/oppo/camera/d/c;)V

    iget-object v2, p0, Lcom/oppo/camera/d/c;->E:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->setCallback(Landroid/media/MediaCodec$Callback;Landroid/os/Handler;)V

    .line 537
    iget-object v0, p0, Lcom/oppo/camera/d/c;->u:Landroid/media/MediaCodec;

    invoke-direct {p0}, Lcom/oppo/camera/d/c;->j()Landroid/media/MediaFormat;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 538
    iget-object v0, p0, Lcom/oppo/camera/d/c;->u:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/d/c;->w:Landroid/view/Surface;

    .line 539
    iget-object v0, p0, Lcom/oppo/camera/d/c;->D:Lcom/oppo/camera/gl/q;

    iget-object v1, p0, Lcom/oppo/camera/d/c;->w:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/gl/q;->setOutput(Landroid/view/Surface;)V

    .line 540
    iget-object v0, p0, Lcom/oppo/camera/d/c;->u:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    return-void
.end method

.method static synthetic s(Lcom/oppo/camera/d/c;)Landroid/media/AudioRecord;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oppo/camera/d/c;->A:Landroid/media/AudioRecord;

    return-object p0
.end method

.method private s()V
    .locals 3

    const-string v0, "CameraMediaCodec"

    const-string v1, "releaseVideoCodec"

    .line 544
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 547
    :try_start_0
    iget-object v2, p0, Lcom/oppo/camera/d/c;->u:Landroid/media/MediaCodec;

    if-eqz v2, :cond_0

    .line 548
    iget-object v2, p0, Lcom/oppo/camera/d/c;->u:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->stop()V

    .line 549
    iget-object v2, p0, Lcom/oppo/camera/d/c;->u:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 554
    :cond_0
    iput v1, p0, Lcom/oppo/camera/d/c;->f:I

    .line 555
    invoke-direct {p0}, Lcom/oppo/camera/d/c;->x()V

    .line 557
    iget-object v1, p0, Lcom/oppo/camera/d/c;->w:Landroid/view/Surface;

    if-eqz v1, :cond_1

    .line 558
    :goto_0
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 552
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 554
    iput v1, p0, Lcom/oppo/camera/d/c;->f:I

    .line 555
    invoke-direct {p0}, Lcom/oppo/camera/d/c;->x()V

    .line 557
    iget-object v1, p0, Lcom/oppo/camera/d/c;->w:Landroid/view/Surface;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v1, "releaseVideoCodec, end"

    .line 562
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 554
    :goto_2
    iput v1, p0, Lcom/oppo/camera/d/c;->f:I

    .line 555
    invoke-direct {p0}, Lcom/oppo/camera/d/c;->x()V

    .line 557
    iget-object v1, p0, Lcom/oppo/camera/d/c;->w:Landroid/view/Surface;

    if-eqz v1, :cond_2

    .line 558
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    :cond_2
    throw v0
.end method

.method static synthetic t(Lcom/oppo/camera/d/c;)Ljava/lang/Object;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oppo/camera/d/c;->b:Ljava/lang/Object;

    return-object p0
.end method

.method private t()V
    .locals 15

    const-string v0, "CameraMediaCodec"

    const-string v1, "audioEncoder, start"

    .line 592
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lcom/oppo/camera/d/c;->v:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 598
    :goto_0
    :try_start_0
    new-instance v1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 599
    iget-object v2, p0, Lcom/oppo/camera/d/c;->v:Landroid/media/MediaCodec;

    const-wide/16 v3, -0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v2

    const/4 v5, -0x3

    if-ne v2, v5, :cond_0

    .line 602
    iget-object v0, p0, Lcom/oppo/camera/d/c;->v:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v5, -0x2

    if-ne v2, v5, :cond_2

    .line 604
    iget-object v1, p0, Lcom/oppo/camera/d/c;->a:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 605
    :try_start_1
    iget v2, p0, Lcom/oppo/camera/d/c;->g:I

    if-gez v2, :cond_1

    const-string v2, "CameraMediaCodec"

    const-string v3, "audioEncoder, addTrack mAudioTrack"

    .line 606
    invoke-static {v2, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    iget-object v2, p0, Lcom/oppo/camera/d/c;->q:Landroid/media/MediaMuxer;

    iget-object v3, p0, Lcom/oppo/camera/d/c;->v:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v2

    iput v2, p0, Lcom/oppo/camera/d/c;->g:I

    .line 609
    invoke-direct {p0}, Lcom/oppo/camera/d/c;->w()V

    .line 611
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :cond_2
    const/4 v5, -0x1

    if-ne v2, v5, :cond_3

    const-string v1, "CameraMediaCodec"

    const-string v2, "audioEncoder, Audio INFO_TRY_AGAIN_LATER"

    .line 613
    invoke-static {v1, v2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 615
    :cond_3
    iget v6, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_4

    const-string v0, "CameraMediaCodec"

    .line 616
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audioEncoder, Audio "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 619
    :cond_4
    iget v6, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_a

    iget v6, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    const/4 v8, 0x1

    if-ne v6, v8, :cond_5

    goto/16 :goto_2

    .line 626
    :cond_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/oppo/camera/d/c;->m:J

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    iput-wide v9, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 628
    iget-wide v9, p0, Lcom/oppo/camera/d/c;->n:J

    const-wide/16 v11, 0x0

    cmp-long v6, v9, v11

    if-gez v6, :cond_6

    .line 629
    iget-wide v9, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iput-wide v9, p0, Lcom/oppo/camera/d/c;->n:J

    :cond_6
    const-string v6, "CameraMediaCodec"

    .line 632
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "audioEncoder, audio bufferInfo.presentationTimeUs: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v13, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v9, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    iget v6, p0, Lcom/oppo/camera/d/c;->g:I

    aget-object v9, v0, v2

    invoke-direct {p0, v6, v9, v1}, Lcom/oppo/camera/d/c;->a(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 637
    iget-object v6, p0, Lcom/oppo/camera/d/c;->c:Ljava/lang/Object;

    monitor-enter v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 638
    :try_start_3
    iget-wide v9, p0, Lcom/oppo/camera/d/c;->M:J

    iget v13, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    int-to-long v13, v13

    add-long/2addr v9, v13

    iput-wide v9, p0, Lcom/oppo/camera/d/c;->M:J

    .line 639
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 641
    :try_start_4
    iget-object v6, p0, Lcom/oppo/camera/d/c;->v:Landroid/media/MediaCodec;

    const/4 v9, 0x0

    invoke-virtual {v6, v2, v9}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 643
    iget-wide v9, p0, Lcom/oppo/camera/d/c;->o:J

    cmp-long v2, v9, v11

    if-lez v2, :cond_7

    iget-wide v1, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v9, p0, Lcom/oppo/camera/d/c;->n:J

    sub-long/2addr v1, v9

    iget-wide v9, p0, Lcom/oppo/camera/d/c;->o:J

    cmp-long v1, v1, v9

    if-ltz v1, :cond_7

    const-string v1, "CameraMediaCodec"

    const-string v2, "audioEncoder, reach to max duration time"

    .line 644
    invoke-static {v1, v2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    iget-object v1, p0, Lcom/oppo/camera/d/c;->C:Lcom/oppo/camera/d/c$a;

    const/16 v2, 0x320

    invoke-virtual {v1, v8, v2, v5}, Lcom/oppo/camera/d/c$a;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 648
    iget-object v2, p0, Lcom/oppo/camera/d/c;->C:Lcom/oppo/camera/d/c$a;

    invoke-virtual {v2, v1}, Lcom/oppo/camera/d/c$a;->sendMessage(Landroid/os/Message;)Z

    .line 649
    iput-wide v3, p0, Lcom/oppo/camera/d/c;->o:J

    goto :goto_1

    .line 650
    :cond_7
    iget-wide v1, p0, Lcom/oppo/camera/d/c;->p:J

    cmp-long v1, v1, v11

    if-lez v1, :cond_8

    iget-wide v1, p0, Lcom/oppo/camera/d/c;->M:J

    iget-wide v9, p0, Lcom/oppo/camera/d/c;->p:J

    cmp-long v1, v1, v9

    if-ltz v1, :cond_8

    const-string v1, "CameraMediaCodec"

    const-string v2, "audioEncoder, reach to max file size"

    .line 651
    invoke-static {v1, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    iget-object v1, p0, Lcom/oppo/camera/d/c;->C:Lcom/oppo/camera/d/c$a;

    const/16 v2, 0x321

    invoke-virtual {v1, v8, v2, v5}, Lcom/oppo/camera/d/c$a;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 655
    iget-object v2, p0, Lcom/oppo/camera/d/c;->C:Lcom/oppo/camera/d/c$a;

    invoke-virtual {v2, v1}, Lcom/oppo/camera/d/c$a;->sendMessage(Landroid/os/Message;)Z

    .line 656
    iput-wide v3, p0, Lcom/oppo/camera/d/c;->p:J

    .line 659
    :cond_8
    :goto_1
    iget v1, p0, Lcom/oppo/camera/d/c;->r:I

    if-ne v1, v7, :cond_9

    .line 660
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/oppo/camera/d/c;->k:J

    .line 663
    :cond_9
    iput-boolean v8, p0, Lcom/oppo/camera/d/c;->P:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    .line 639
    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0

    :cond_a
    :goto_2
    const-string v2, "CameraMediaCodec"

    .line 621
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "audioEncoder, Audio "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 667
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "CameraMediaCodec"

    const-string v1, "audioEncoder, audio codec exception"

    .line 669
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 671
    :goto_3
    invoke-direct {p0}, Lcom/oppo/camera/d/c;->u()V

    const-string v0, "CameraMediaCodec"

    const-string v1, "audioEncoder, release audio codec"

    .line 674
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 671
    :goto_4
    invoke-direct {p0}, Lcom/oppo/camera/d/c;->u()V

    throw v0
.end method

.method static synthetic u(Lcom/oppo/camera/d/c;)Lcom/oppo/camera/d/d;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/oppo/camera/d/c;->B:Lcom/oppo/camera/d/d;

    return-object p0
.end method

.method private u()V
    .locals 6

    const-string v0, "CameraMediaCodec"

    const-string v1, "releaseAudioCodec"

    .line 678
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    iget-object v0, p0, Lcom/oppo/camera/d/c;->d:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 682
    :try_start_0
    iget-object v2, p0, Lcom/oppo/camera/d/c;->G:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oppo/camera/d/c;->G:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "CameraMediaCodec"

    const-string v3, "releaseAudioCodec, audio input thread not end and we wait it here"

    .line 683
    invoke-static {v2, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    iget-object v2, p0, Lcom/oppo/camera/d/c;->G:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    :cond_0
    :goto_0
    :try_start_1
    iput-object v1, p0, Lcom/oppo/camera/d/c;->G:Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_5

    :catch_0
    move-exception v2

    .line 688
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    const/4 v2, -0x1

    :try_start_3
    const-string v3, "CameraMediaCodec"

    .line 694
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "releaseAudioCodec, mAudioCodec: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oppo/camera/d/c;->v:Landroid/media/MediaCodec;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    iget-object v3, p0, Lcom/oppo/camera/d/c;->v:Landroid/media/MediaCodec;

    if-eqz v3, :cond_1

    .line 697
    iget-object v3, p0, Lcom/oppo/camera/d/c;->v:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->stop()V

    .line 698
    iget-object v3, p0, Lcom/oppo/camera/d/c;->v:Landroid/media/MediaCodec;

    invoke-virtual {v3}, Landroid/media/MediaCodec;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 705
    :cond_1
    :try_start_4
    iput v2, p0, Lcom/oppo/camera/d/c;->g:I

    .line 706
    iput-object v1, p0, Lcom/oppo/camera/d/c;->v:Landroid/media/MediaCodec;

    .line 707
    :goto_2
    invoke-direct {p0}, Lcom/oppo/camera/d/c;->x()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_1
    move-exception v3

    goto :goto_4

    :catch_1
    move-exception v3

    .line 701
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const-string v3, "CameraMediaCodec"

    const-string v4, "releaseAudioCodec, stop fail"

    .line 703
    invoke-static {v3, v4}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 705
    :try_start_6
    iput v2, p0, Lcom/oppo/camera/d/c;->g:I

    .line 706
    iput-object v1, p0, Lcom/oppo/camera/d/c;->v:Landroid/media/MediaCodec;

    goto :goto_2

    .line 709
    :goto_3
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const-string v0, "CameraMediaCodec"

    const-string v1, "releaseAudioCodec, end"

    .line 711
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 705
    :goto_4
    :try_start_7
    iput v2, p0, Lcom/oppo/camera/d/c;->g:I

    .line 706
    iput-object v1, p0, Lcom/oppo/camera/d/c;->v:Landroid/media/MediaCodec;

    .line 707
    invoke-direct {p0}, Lcom/oppo/camera/d/c;->x()V

    throw v3

    .line 690
    :goto_5
    iput-object v1, p0, Lcom/oppo/camera/d/c;->G:Ljava/lang/Thread;

    throw v2

    :catchall_2
    move-exception v1

    .line 709
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v1
.end method

.method private v()V
    .locals 2

    .line 715
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopVideoEncode, mbVideoCodecOutputDataCome: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/d/c;->O:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraMediaCodec"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    iget-object v0, p0, Lcom/oppo/camera/d/c;->D:Lcom/oppo/camera/gl/q;

    if-eqz v0, :cond_0

    .line 718
    invoke-virtual {v0}, Lcom/oppo/camera/gl/q;->g()V

    .line 721
    :cond_0
    iget-boolean v0, p0, Lcom/oppo/camera/d/c;->O:Z

    if-eqz v0, :cond_1

    .line 722
    iget-object v0, p0, Lcom/oppo/camera/d/c;->u:Landroid/media/MediaCodec;

    if-eqz v0, :cond_2

    .line 723
    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    goto :goto_0

    .line 726
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/c;->E:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 727
    new-instance v1, Lcom/oppo/camera/d/c$5;

    invoke-direct {v1, p0}, Lcom/oppo/camera/d/c$5;-><init>(Lcom/oppo/camera/d/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private w()V
    .locals 2

    const-string v0, "CameraMediaCodec"

    const-string v1, "startMediaMuxer"

    .line 790
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    iget-boolean v0, p0, Lcom/oppo/camera/d/c;->e:Z

    if-eqz v0, :cond_3

    .line 793
    iget v0, p0, Lcom/oppo/camera/d/c;->f:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/d/c;->g:I

    if-ltz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/oppo/camera/d/c;->q:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    .line 796
    iget-object v0, p0, Lcom/oppo/camera/d/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 797
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/d/c;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 798
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 800
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 802
    :try_start_1
    iget v1, p0, Lcom/oppo/camera/d/c;->f:I

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/oppo/camera/d/c;->g:I

    if-gez v1, :cond_2

    .line 803
    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/d/c;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 806
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 808
    :cond_2
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 811
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/d/c;->q:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V

    :goto_2
    return-void
.end method

.method private x()V
    .locals 4

    .line 816
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopMediaMuxer, mbScopeEnableAudio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/d/c;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAudioTrack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/d/c;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mVideoTrack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/d/c;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraMediaCodec"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 819
    iget-boolean v0, p0, Lcom/oppo/camera/d/c;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 820
    iget-object v0, p0, Lcom/oppo/camera/d/c;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 821
    :try_start_0
    iget v2, p0, Lcom/oppo/camera/d/c;->g:I

    if-gez v2, :cond_1

    iget v2, p0, Lcom/oppo/camera/d/c;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-gez v2, :cond_1

    .line 823
    :try_start_1
    iget-object v2, p0, Lcom/oppo/camera/d/c;->q:Landroid/media/MediaMuxer;

    if-eqz v2, :cond_0

    .line 824
    iget-object v2, p0, Lcom/oppo/camera/d/c;->q:Landroid/media/MediaMuxer;

    invoke-virtual {v2}, Landroid/media/MediaMuxer;->stop()V

    .line 825
    iget-object v2, p0, Lcom/oppo/camera/d/c;->q:Landroid/media/MediaMuxer;

    invoke-virtual {v2}, Landroid/media/MediaMuxer;->release()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 830
    :cond_0
    :try_start_2
    iput-object v1, p0, Lcom/oppo/camera/d/c;->q:Landroid/media/MediaMuxer;

    .line 831
    iget-object v1, p0, Lcom/oppo/camera/d/c;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 833
    invoke-direct {p0}, Lcom/oppo/camera/d/c;->g()V

    .line 834
    invoke-direct {p0}, Lcom/oppo/camera/d/c;->i()V

    .line 835
    iget-object v1, p0, Lcom/oppo/camera/d/c;->H:Landroid/os/ConditionVariable;

    :goto_0
    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    :try_start_3
    const-string v2, "CameraMediaCodec"

    const-string v3, "stopMediaMuxer, failed to stop the muxer"

    .line 828
    invoke-static {v2, v3}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 830
    :try_start_4
    iput-object v1, p0, Lcom/oppo/camera/d/c;->q:Landroid/media/MediaMuxer;

    .line 831
    iget-object v1, p0, Lcom/oppo/camera/d/c;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 833
    invoke-direct {p0}, Lcom/oppo/camera/d/c;->g()V

    .line 834
    invoke-direct {p0}, Lcom/oppo/camera/d/c;->i()V

    .line 835
    iget-object v1, p0, Lcom/oppo/camera/d/c;->H:Landroid/os/ConditionVariable;

    goto :goto_0

    .line 830
    :goto_1
    iput-object v1, p0, Lcom/oppo/camera/d/c;->q:Landroid/media/MediaMuxer;

    .line 831
    iget-object v1, p0, Lcom/oppo/camera/d/c;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 833
    invoke-direct {p0}, Lcom/oppo/camera/d/c;->g()V

    .line 834
    invoke-direct {p0}, Lcom/oppo/camera/d/c;->i()V

    .line 835
    iget-object v1, p0, Lcom/oppo/camera/d/c;->H:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 839
    :cond_1
    :try_start_5
    iget v1, p0, Lcom/oppo/camera/d/c;->g:I

    if-gez v1, :cond_2

    iget v1, p0, Lcom/oppo/camera/d/c;->f:I

    if-ltz v1, :cond_3

    .line 840
    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/d/c;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 843
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 846
    :cond_3
    :goto_2
    monitor-exit v0

    goto :goto_4

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1

    .line 849
    :cond_4
    :try_start_7
    iget-object v0, p0, Lcom/oppo/camera/d/c;->q:Landroid/media/MediaMuxer;

    if-eqz v0, :cond_5

    .line 850
    iget-object v0, p0, Lcom/oppo/camera/d/c;->q:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V

    .line 851
    iget-object v0, p0, Lcom/oppo/camera/d/c;->q:Landroid/media/MediaMuxer;

    invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 856
    :cond_5
    :goto_3
    iput-object v1, p0, Lcom/oppo/camera/d/c;->q:Landroid/media/MediaMuxer;

    .line 857
    invoke-direct {p0}, Lcom/oppo/camera/d/c;->g()V

    .line 858
    invoke-direct {p0}, Lcom/oppo/camera/d/c;->i()V

    .line 859
    iget-object v0, p0, Lcom/oppo/camera/d/c;->H:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_2
    :try_start_8
    const-string v0, "CameraMediaCodec"

    const-string v2, "stopMediaMuxer, failed to stop the muxer"

    .line 854
    invoke-static {v0, v2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_3

    :goto_4
    return-void

    .line 856
    :goto_5
    iput-object v1, p0, Lcom/oppo/camera/d/c;->q:Landroid/media/MediaMuxer;

    .line 857
    invoke-direct {p0}, Lcom/oppo/camera/d/c;->g()V

    .line 858
    invoke-direct {p0}, Lcom/oppo/camera/d/c;->i()V

    .line 859
    iget-object v1, p0, Lcom/oppo/camera/d/c;->H:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    throw v0
.end method

.method private y()I
    .locals 3

    .line 873
    iget v0, p0, Lcom/oppo/camera/d/c;->i:I

    if-nez v0, :cond_0

    .line 874
    invoke-direct {p0}, Lcom/oppo/camera/d/c;->m()I

    move-result v0

    const/16 v1, 0xc

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/d/c;->i:I

    .line 877
    iget-object v0, p0, Lcom/oppo/camera/d/c;->z:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v2, p0, Lcom/oppo/camera/d/c;->i:I

    if-ge v0, v2, :cond_0

    .line 878
    iget-object v0, p0, Lcom/oppo/camera/d/c;->z:[Ljava/nio/ByteBuffer;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/d/c;->i:I

    .line 882
    :cond_0
    iget v0, p0, Lcom/oppo/camera/d/c;->i:I

    return v0
.end method

.method private z()V
    .locals 7

    .line 886
    iget-object v0, p0, Lcom/oppo/camera/d/c;->A:Landroid/media/AudioRecord;

    if-nez v0, :cond_0

    .line 887
    new-instance v0, Landroid/media/AudioRecord;

    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/oppo/camera/d/c;->m()I

    move-result v3

    const/16 v4, 0xc

    const/4 v5, 0x2

    .line 888
    invoke-direct {p0}, Lcom/oppo/camera/d/c;->y()I

    move-result v6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v0, p0, Lcom/oppo/camera/d/c;->A:Landroid/media/AudioRecord;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "CameraMediaCodec"

    const-string v1, "prepare"

    .line 251
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-direct {p0}, Lcom/oppo/camera/d/c;->f()V

    .line 254
    invoke-direct {p0}, Lcom/oppo/camera/d/c;->h()V

    .line 256
    iget-object v0, p0, Lcom/oppo/camera/d/c;->q:Landroid/media/MediaMuxer;

    if-nez v0, :cond_1

    .line 258
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/d/c;->t:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    .line 259
    new-instance v0, Landroid/media/MediaMuxer;

    iget-object v1, p0, Lcom/oppo/camera/d/c;->t:Ljava/io/FileDescriptor;

    iget-object v2, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iget v2, v2, Lcom/oppo/camera/d/c$b;->f:I

    invoke-direct {v0, v1, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/io/FileDescriptor;I)V

    iput-object v0, p0, Lcom/oppo/camera/d/c;->q:Landroid/media/MediaMuxer;

    goto :goto_0

    .line 261
    :cond_0
    new-instance v0, Landroid/media/MediaMuxer;

    iget-object v1, p0, Lcom/oppo/camera/d/c;->s:Ljava/lang/String;

    iget-object v2, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iget v2, v2, Lcom/oppo/camera/d/c$b;->f:I

    invoke-direct {v0, v1, v2}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/oppo/camera/d/c;->q:Landroid/media/MediaMuxer;

    .line 264
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/d/c;->q:Landroid/media/MediaMuxer;

    iget v1, p0, Lcom/oppo/camera/d/c;->h:I

    invoke-virtual {v0, v1}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    .line 265
    iget-object v0, p0, Lcom/oppo/camera/d/c;->q:Landroid/media/MediaMuxer;

    iget v1, p0, Lcom/oppo/camera/d/c;->K:F

    iget v2, p0, Lcom/oppo/camera/d/c;->L:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaMuxer;->setLocation(FF)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 267
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public a(FF)V
    .locals 0

    .line 750
    iput p1, p0, Lcom/oppo/camera/d/c;->K:F

    .line 751
    iput p2, p0, Lcom/oppo/camera/d/c;->L:F

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 273
    iput p1, p0, Lcom/oppo/camera/d/c;->h:I

    return-void
.end method

.method public a(II)V
    .locals 1

    .line 759
    iget-object v0, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iput p2, v0, Lcom/oppo/camera/d/c$b;->l:I

    .line 760
    iput p1, v0, Lcom/oppo/camera/d/c$b;->j:I

    return-void
.end method

.method public a(J)V
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    .line 238
    iput-wide p1, p0, Lcom/oppo/camera/d/c;->o:J

    return-void
.end method

.method public a(Landroid/media/CamcorderProfile;)V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    iput v1, v0, Lcom/oppo/camera/d/c$b;->k:I

    .line 143
    iget-object v0, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iget v1, p1, Landroid/media/CamcorderProfile;->videoBitRate:I

    iput v1, v0, Lcom/oppo/camera/d/c$b;->h:I

    .line 144
    iget-object v0, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iget v1, p1, Landroid/media/CamcorderProfile;->videoCodec:I

    iput v1, v0, Lcom/oppo/camera/d/c$b;->i:I

    .line 145
    iget-object v0, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iget v1, p1, Landroid/media/CamcorderProfile;->audioBitRate:I

    iput v1, v0, Lcom/oppo/camera/d/c$b;->a:I

    .line 146
    iget-object v0, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iget v1, p1, Landroid/media/CamcorderProfile;->audioChannels:I

    iput v1, v0, Lcom/oppo/camera/d/c$b;->b:I

    .line 147
    iget-object v0, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iget v1, p1, Landroid/media/CamcorderProfile;->audioCodec:I

    iput v1, v0, Lcom/oppo/camera/d/c$b;->c:I

    .line 148
    iget-object v0, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iget v1, p1, Landroid/media/CamcorderProfile;->audioSampleRate:I

    iput v1, v0, Lcom/oppo/camera/d/c$b;->d:I

    .line 149
    iget-object v0, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iget v1, p1, Landroid/media/CamcorderProfile;->duration:I

    iput v1, v0, Lcom/oppo/camera/d/c$b;->e:I

    .line 150
    iget-object v0, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iget v1, p1, Landroid/media/CamcorderProfile;->fileFormat:I

    iput v1, v0, Lcom/oppo/camera/d/c$b;->f:I

    .line 151
    iget-object v0, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iget v1, p1, Landroid/media/CamcorderProfile;->quality:I

    iput v1, v0, Lcom/oppo/camera/d/c$b;->g:I

    .line 152
    iget-object v0, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iput v1, v0, Lcom/oppo/camera/d/c$b;->j:I

    .line 153
    iget-object v0, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iget p1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput p1, v0, Lcom/oppo/camera/d/c$b;->l:I

    return-void
.end method

.method public a(Lcom/oppo/camera/d/d;)V
    .locals 0

    .line 947
    iput-object p1, p0, Lcom/oppo/camera/d/c;->B:Lcom/oppo/camera/d/d;

    return-void
.end method

.method public a(Lcom/oppo/camera/gl/q;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/oppo/camera/d/c;->D:Lcom/oppo/camera/gl/q;

    return-void
.end method

.method public a(Ljava/io/FileDescriptor;)V
    .locals 0

    .line 755
    iput-object p1, p0, Lcom/oppo/camera/d/c;->t:Ljava/io/FileDescriptor;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/oppo/camera/d/c;->s:Ljava/lang/String;

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 738
    iget-object v0, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iput p1, v0, Lcom/oppo/camera/d/c$b;->h:I

    return-void
.end method

.method public b(J)V
    .locals 0

    long-to-float p1, p1

    const p2, 0x3f666666    # 0.9f

    mul-float/2addr p1, p2

    float-to-long p1, p1

    .line 243
    iput-wide p1, p0, Lcom/oppo/camera/d/c;->p:J

    return-void
.end method

.method public b()Z
    .locals 3

    const-string v0, "CameraMediaCodec"

    const-string v1, "start"

    .line 277
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/oppo/camera/d/c;->E:Landroid/os/Handler;

    new-instance v2, Lcom/oppo/camera/d/c$1;

    invoke-direct {v2, p0}, Lcom/oppo/camera/d/c$1;-><init>(Lcom/oppo/camera/d/c;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 292
    iget-object v1, p0, Lcom/oppo/camera/d/c;->F:Landroid/os/Handler;

    new-instance v2, Lcom/oppo/camera/d/c$2;

    invoke-direct {v2, p0}, Lcom/oppo/camera/d/c$2;-><init>(Lcom/oppo/camera/d/c;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 306
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/d/c;->J:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 308
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const/4 v1, 0x0

    .line 311
    iput-boolean v1, p0, Lcom/oppo/camera/d/c;->O:Z

    .line 312
    iput-boolean v1, p0, Lcom/oppo/camera/d/c;->P:Z

    const/4 v1, 0x1

    .line 313
    iput v1, p0, Lcom/oppo/camera/d/c;->r:I

    .line 314
    invoke-direct {p0}, Lcom/oppo/camera/d/c;->A()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oppo/camera/d/c;->N:Z

    .line 316
    iget-object v1, p0, Lcom/oppo/camera/d/c;->D:Lcom/oppo/camera/gl/q;

    if-eqz v1, :cond_0

    .line 317
    invoke-virtual {v1}, Lcom/oppo/camera/gl/q;->i()V

    goto :goto_1

    :cond_0
    const-string v1, "start, mGLSurfaceView is null"

    .line 319
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :goto_1
    iget-boolean v0, p0, Lcom/oppo/camera/d/c;->N:Z

    return v0
.end method

.method public c(I)V
    .locals 1

    .line 742
    iget-object v0, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iput p1, v0, Lcom/oppo/camera/d/c$b;->k:I

    return-void
.end method

.method public c()Z
    .locals 2

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop, mRecorderState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/d/c;->r:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraMediaCodec"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget v0, p0, Lcom/oppo/camera/d/c;->r:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/c;->H:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 333
    iput v1, p0, Lcom/oppo/camera/d/c;->r:I

    .line 335
    iget-object v0, p0, Lcom/oppo/camera/d/c;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 336
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/d/c;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 337
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    iget-object v0, p0, Lcom/oppo/camera/d/c;->D:Lcom/oppo/camera/gl/q;

    if-eqz v0, :cond_1

    .line 340
    invoke-virtual {v0}, Lcom/oppo/camera/gl/q;->i()V

    goto :goto_0

    :cond_1
    const-string v0, "CameraMediaCodec"

    const-string v1, "stop, mGLSurfaceView is null"

    .line 342
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-wide/16 v0, 0x0

    .line 345
    iput-wide v0, p0, Lcom/oppo/camera/d/c;->l:J

    .line 346
    iput-wide v0, p0, Lcom/oppo/camera/d/c;->k:J

    .line 347
    invoke-direct {p0}, Lcom/oppo/camera/d/c;->v()V

    .line 348
    invoke-direct {p0}, Lcom/oppo/camera/d/c;->o()V

    .line 349
    invoke-direct {p0}, Lcom/oppo/camera/d/c;->p()V

    .line 350
    iget-object v0, p0, Lcom/oppo/camera/d/c;->H:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 351
    iget-boolean v0, p0, Lcom/oppo/camera/d/c;->N:Z

    return v0

    :catchall_0
    move-exception v1

    .line 337
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public d()V
    .locals 3

    const-string v0, "CameraMediaCodec"

    const-string v1, "pause"

    .line 378
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/oppo/camera/d/c;->k:J

    const/4 v1, 0x2

    .line 381
    iput v1, p0, Lcom/oppo/camera/d/c;->r:I

    const-wide/16 v1, 0x0

    .line 382
    iput-wide v1, p0, Lcom/oppo/camera/d/c;->l:J

    .line 384
    iget-object v1, p0, Lcom/oppo/camera/d/c;->D:Lcom/oppo/camera/gl/q;

    if-eqz v1, :cond_0

    .line 385
    invoke-virtual {v1}, Lcom/oppo/camera/gl/q;->h()V

    goto :goto_0

    :cond_0
    const-string v1, "pause, mGLSurfaceView is null"

    .line 387
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public d(I)V
    .locals 1

    .line 746
    iget-object v0, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iput p1, v0, Lcom/oppo/camera/d/c$b;->f:I

    return-void
.end method

.method public e()V
    .locals 6

    .line 392
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/camera/d/c;->l:J

    .line 393
    iget-wide v0, p0, Lcom/oppo/camera/d/c;->m:J

    iget-wide v2, p0, Lcom/oppo/camera/d/c;->l:J

    iget-wide v4, p0, Lcom/oppo/camera/d/c;->k:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oppo/camera/d/c;->m:J

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resume, mPausedTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oppo/camera/d/c;->m:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraMediaCodec"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 397
    iput v0, p0, Lcom/oppo/camera/d/c;->r:I

    .line 399
    iget-object v0, p0, Lcom/oppo/camera/d/c;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 400
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/d/c;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 401
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    iget-object v0, p0, Lcom/oppo/camera/d/c;->D:Lcom/oppo/camera/gl/q;

    if-eqz v0, :cond_0

    .line 404
    invoke-virtual {v0}, Lcom/oppo/camera/gl/q;->i()V

    goto :goto_0

    :cond_0
    const-string v0, "CameraMediaCodec"

    const-string v1, "resume, mGLSurfaceView is null"

    .line 406
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 401
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public e(I)V
    .locals 1

    .line 764
    iget-object v0, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iput p1, v0, Lcom/oppo/camera/d/c$b;->i:I

    return-void
.end method

.method public f(I)V
    .locals 1

    .line 768
    iget-object v0, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iput p1, v0, Lcom/oppo/camera/d/c$b;->a:I

    return-void
.end method

.method public g(I)V
    .locals 1

    .line 772
    iget-object v0, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iput p1, v0, Lcom/oppo/camera/d/c$b;->b:I

    return-void
.end method

.method public h(I)V
    .locals 1

    .line 776
    iget-object v0, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iput p1, v0, Lcom/oppo/camera/d/c$b;->d:I

    return-void
.end method

.method public i(I)V
    .locals 1

    .line 780
    iget-object v0, p0, Lcom/oppo/camera/d/c;->I:Lcom/oppo/camera/d/c$b;

    iput p1, v0, Lcom/oppo/camera/d/c$b;->c:I

    return-void
.end method
