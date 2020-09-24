.class public abstract Lcom/oppo/camera/d/a;
.super Ljava/lang/Object;
.source "BaseMode.java"

# interfaces
.implements Lcom/oppo/camera/c;
.implements Lcom/oppo/camera/e/f$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/d/a$a;
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field protected A:Z

.field protected B:Z

.field protected C:Z

.field protected D:Z

.field protected E:Z

.field protected F:Z

.field protected G:Z

.field protected H:Ljava/lang/String;

.field protected I:Ljava/lang/String;

.field protected J:Lcom/oppo/camera/a/a;

.field protected K:Lcom/oppo/camera/e/f;

.field protected L:Lcom/oppo/camera/d/b;

.field protected M:Lcom/oppo/camera/ui/c;

.field protected N:Landroid/app/Activity;

.field protected O:Landroid/content/SharedPreferences;

.field protected P:Lcom/oppo/camera/ui/preview/a/i;

.field protected Q:Landroid/view/ViewGroup;

.field protected R:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected S:Ljava/lang/String;

.field protected T:I

.field protected U:F

.field protected V:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final W:Ljava/lang/Object;

.field private final X:Ljava/lang/Object;

.field private final Y:Ljava/lang/Object;

.field private final Z:Ljava/lang/Object;

.field private aA:Landroid/os/Handler;

.field private aB:Lcom/oppo/camera/jni/APSClient$BufferCallback;

.field private final aa:Ljava/lang/Object;

.field private final ab:Ljava/lang/Object;

.field private ac:Z

.field private ad:Z

.field private ae:Z

.field private af:I

.field private ag:I

.field private ah:Lcom/oppo/camera/Ipa/e$a;

.field private ai:I

.field private aj:I

.field private ak:I

.field private al:I

.field private am:[I

.field private an:[I

.field private ao:[I

.field private ap:I

.field private aq:J

.field private ar:J

.field private as:I

.field private at:I

.field private au:I

.field private av:I

.field private aw:Ljava/lang/Object;

.field private ax:Landroid/hardware/camera2/TotalCaptureResult;

.field private ay:Z

.field private az:Z

.field public b:Z

.field protected g:I

.field protected h:I

.field protected i:I

.field protected j:I

.field protected k:I

.field protected l:I

.field protected m:I

.field protected n:I

.field protected o:I

.field protected p:Z

.field protected q:Z

.field protected r:Z

.field protected s:Z

.field protected t:Z

.field protected u:Z

.field protected v:Z

.field protected w:Z

.field protected x:Z

.field protected y:Z

.field protected z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "pref_camera_photo_ratio_key"

    const-string v1, "pref_camera_flashmode_key"

    .line 87
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oppo/camera/d/a;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V
    .locals 5

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->b:Z

    .line 114
    iput v0, p0, Lcom/oppo/camera/d/a;->g:I

    .line 116
    iput v0, p0, Lcom/oppo/camera/d/a;->i:I

    .line 117
    iput v0, p0, Lcom/oppo/camera/d/a;->j:I

    .line 118
    iput v0, p0, Lcom/oppo/camera/d/a;->k:I

    .line 119
    iput v0, p0, Lcom/oppo/camera/d/a;->l:I

    const/4 v1, 0x1

    .line 120
    iput v1, p0, Lcom/oppo/camera/d/a;->m:I

    .line 121
    iput v0, p0, Lcom/oppo/camera/d/a;->n:I

    .line 123
    iput v0, p0, Lcom/oppo/camera/d/a;->o:I

    .line 124
    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->p:Z

    .line 126
    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->r:Z

    .line 127
    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->s:Z

    .line 128
    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->t:Z

    .line 129
    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->u:Z

    .line 130
    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->v:Z

    .line 131
    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->w:Z

    .line 132
    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->x:Z

    .line 133
    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->y:Z

    .line 134
    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->z:Z

    .line 135
    iput-boolean v1, p0, Lcom/oppo/camera/d/a;->A:Z

    .line 136
    iput-boolean v1, p0, Lcom/oppo/camera/d/a;->B:Z

    .line 138
    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->D:Z

    .line 139
    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->E:Z

    .line 140
    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->F:Z

    .line 141
    iput-boolean v1, p0, Lcom/oppo/camera/d/a;->G:Z

    const-string v2, "off"

    .line 143
    iput-object v2, p0, Lcom/oppo/camera/d/a;->H:Ljava/lang/String;

    .line 144
    iput-object v2, p0, Lcom/oppo/camera/d/a;->I:Ljava/lang/String;

    const/4 v2, 0x0

    .line 146
    iput-object v2, p0, Lcom/oppo/camera/d/a;->J:Lcom/oppo/camera/a/a;

    .line 147
    iput-object v2, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    .line 148
    iput-object v2, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    .line 149
    iput-object v2, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    .line 150
    iput-object v2, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    .line 151
    iput-object v2, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    .line 152
    iput-object v2, p0, Lcom/oppo/camera/d/a;->P:Lcom/oppo/camera/ui/preview/a/i;

    .line 153
    iput-object v2, p0, Lcom/oppo/camera/d/a;->Q:Landroid/view/ViewGroup;

    .line 154
    iput-object v2, p0, Lcom/oppo/camera/d/a;->R:Ljava/util/List;

    const-string v3, "beauty"

    .line 155
    iput-object v3, p0, Lcom/oppo/camera/d/a;->S:Ljava/lang/String;

    .line 156
    iput v0, p0, Lcom/oppo/camera/d/a;->T:I

    const/4 v3, 0x0

    .line 157
    iput v3, p0, Lcom/oppo/camera/d/a;->U:F

    .line 163
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/oppo/camera/d/a;->V:Ljava/util/HashMap;

    .line 195
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/oppo/camera/d/a;->W:Ljava/lang/Object;

    .line 196
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/oppo/camera/d/a;->X:Ljava/lang/Object;

    .line 197
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/oppo/camera/d/a;->Y:Ljava/lang/Object;

    .line 198
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/oppo/camera/d/a;->Z:Ljava/lang/Object;

    .line 199
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/oppo/camera/d/a;->aa:Ljava/lang/Object;

    .line 200
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/oppo/camera/d/a;->ab:Ljava/lang/Object;

    .line 201
    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->ac:Z

    .line 202
    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->ad:Z

    .line 203
    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->ae:Z

    .line 204
    iput v0, p0, Lcom/oppo/camera/d/a;->af:I

    .line 205
    iput v0, p0, Lcom/oppo/camera/d/a;->ag:I

    .line 207
    iput-object v2, p0, Lcom/oppo/camera/d/a;->ah:Lcom/oppo/camera/Ipa/e$a;

    const-string v3, "thumbnail_index"

    const-string v4, "1"

    .line 213
    invoke-static {v3, v4}, Lcom/oppo/camera/debug/DebugUtil;->getDebugProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/oppo/camera/d/a;->ai:I

    .line 216
    iput v0, p0, Lcom/oppo/camera/d/a;->aj:I

    .line 217
    iput v1, p0, Lcom/oppo/camera/d/a;->ak:I

    const/4 v3, -0x1

    .line 218
    iput v3, p0, Lcom/oppo/camera/d/a;->al:I

    .line 219
    iput-object v2, p0, Lcom/oppo/camera/d/a;->am:[I

    .line 220
    iput-object v2, p0, Lcom/oppo/camera/d/a;->an:[I

    .line 221
    iput-object v2, p0, Lcom/oppo/camera/d/a;->ao:[I

    .line 222
    iput v1, p0, Lcom/oppo/camera/d/a;->ap:I

    const-wide/16 v3, 0x0

    .line 223
    iput-wide v3, p0, Lcom/oppo/camera/d/a;->aq:J

    .line 224
    iput-wide v3, p0, Lcom/oppo/camera/d/a;->ar:J

    .line 225
    iput v0, p0, Lcom/oppo/camera/d/a;->as:I

    .line 226
    iput v1, p0, Lcom/oppo/camera/d/a;->at:I

    .line 227
    iput v0, p0, Lcom/oppo/camera/d/a;->au:I

    .line 230
    iput v1, p0, Lcom/oppo/camera/d/a;->av:I

    .line 231
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/d/a;->aw:Ljava/lang/Object;

    .line 232
    iput-object v2, p0, Lcom/oppo/camera/d/a;->ax:Landroid/hardware/camera2/TotalCaptureResult;

    .line 233
    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->ay:Z

    .line 234
    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->az:Z

    .line 236
    new-instance v0, Lcom/oppo/camera/d/a$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/d/a$1;-><init>(Lcom/oppo/camera/d/a;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oppo/camera/d/a;->aA:Landroid/os/Handler;

    .line 4160
    new-instance v0, Lcom/oppo/camera/d/a$5;

    invoke-direct {v0, p0}, Lcom/oppo/camera/d/a$5;-><init>(Lcom/oppo/camera/d/a;)V

    iput-object v0, p0, Lcom/oppo/camera/d/a;->aB:Lcom/oppo/camera/jni/APSClient$BufferCallback;

    .line 325
    iput-object p1, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    .line 326
    iput-object p2, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    .line 327
    iput-object p3, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    .line 328
    iget-object p1, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->j()Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    .line 329
    iput-object p4, p0, Lcom/oppo/camera/d/a;->P:Lcom/oppo/camera/ui/preview/a/i;

    const-string p1, "2"

    .line 330
    invoke-static {p1}, Lcom/oppo/camera/debug/DebugUtil;->checkDualCameraType(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oppo/camera/d/a;->D:Z

    .line 331
    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cB()V

    return-void
.end method

.method private a(Lcom/oppo/camera/e/h;Landroid/hardware/camera2/CameraCharacteristics$Key;)Landroid/util/Size;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oppo/camera/e/h;",
            "Landroid/hardware/camera2/CameraCharacteristics$Key<",
            "[I>;)",
            "Landroid/util/Size;"
        }
    .end annotation

    .line 2239
    invoke-virtual {p1, p2}, Lcom/oppo/camera/e/h;->c(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/util/List;

    move-result-object p1

    .line 2240
    iget-object p2, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    const v1, 0x7f0f0114

    .line 2241
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_camera_photo_ratio_key"

    .line 2240
    invoke-interface {p2, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "standard"

    .line 2243
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "standard_high"

    .line 2244
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "full"

    .line 2246
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2247
    invoke-static {}, Lcom/oppo/camera/o/d;->P()D

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/oppo/camera/o/d;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "square"

    .line 2248
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 2249
    invoke-static {p1, v0, v1}, Lcom/oppo/camera/o/d;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1

    :cond_3
    :goto_0
    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    .line 2245
    invoke-static {p1, v0, v1}, Lcom/oppo/camera/o/d;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/camera/d/a;Lcom/oppo/camera/Ipa/e$a;)Lcom/oppo/camera/Ipa/e$a;
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/oppo/camera/d/a;->ah:Lcom/oppo/camera/Ipa/e$a;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/camera/d/a;I)Ljava/lang/String;
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/oppo/camera/d/a;->x(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/oppo/camera/d/a;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cD()V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/d/a;Lcom/oppo/camera/ui/preview/a/g;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/oppo/camera/d/a;->b(Lcom/oppo/camera/ui/preview/a/g;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/d/a;[BIIIZ)V
    .locals 0

    .line 86
    invoke-direct/range {p0 .. p5}, Lcom/oppo/camera/d/a;->b([BIIIZ)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/d/a;[I)[I
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/oppo/camera/d/a;->ao:[I

    return-object p1
.end method

.method static synthetic b(Lcom/oppo/camera/d/a;)Landroid/os/Handler;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/oppo/camera/d/a;->aA:Landroid/os/Handler;

    return-object p0
.end method

.method private b(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 9

    if-eqz p1, :cond_8

    .line 457
    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->q:Z

    if-eqz v0, :cond_0

    goto/16 :goto_6

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->n()Lcom/oppo/camera/e/c;

    move-result-object v0

    const-string v1, "com.oppo.capture.request.number"

    .line 462
    invoke-virtual {v0, v1}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v1

    const-string v2, "com.oppo.aps.algo.flag"

    .line 463
    invoke-virtual {v0, v2}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v2

    const-string v3, "com.oppo.aps.reprocess.algo.flag"

    .line 464
    invoke-virtual {v0, v3}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v3

    const-string v4, "com.oppo.configure.request.format"

    .line 465
    invoke-virtual {v0, v4}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v4

    const-string v5, "com.oppo.capture.request.need.preview.stream"

    .line 467
    invoke-virtual {v0, v5}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v5

    const-string v6, "com.oppo.metadata.index.reprocess"

    .line 469
    invoke-virtual {v0, v6}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v6

    const-string v7, "com.qti.chi.override.isQuadCFASnapshot"

    .line 470
    invoke-virtual {v0, v7}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v0

    const/4 v7, 0x0

    if-eqz v1, :cond_1

    .line 473
    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 474
    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    check-cast v8, [I

    array-length v8, v8

    if-lez v8, :cond_1

    .line 475
    iget-object v8, p0, Lcom/oppo/camera/d/a;->X:Ljava/lang/Object;

    monitor-enter v8

    .line 476
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    aget v1, v1, v7

    iput v1, p0, Lcom/oppo/camera/d/a;->ak:I

    .line 477
    monitor-exit v8

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    .line 481
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 482
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    array-length v1, v1

    if-lez v1, :cond_3

    .line 483
    iget-object v1, p0, Lcom/oppo/camera/d/a;->Y:Ljava/lang/Object;

    monitor-enter v1

    .line 484
    :try_start_1
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    check-cast v2, [I

    iput-object v2, p0, Lcom/oppo/camera/d/a;->am:[I

    .line 485
    iget-object v2, p0, Lcom/oppo/camera/d/a;->am:[I

    iput-object v2, p0, Lcom/oppo/camera/d/a;->ao:[I

    .line 487
    iget-boolean v2, p0, Lcom/oppo/camera/d/a;->az:Z

    if-nez v2, :cond_2

    const-string v2, "BaseMode"

    const-string v8, "updateCaptureParameters, ApsAlgoFlags updated"

    .line 488
    invoke-static {v2, v8}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 490
    iput-boolean v2, p0, Lcom/oppo/camera/d/a;->az:Z

    .line 492
    :cond_2
    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    .line 496
    invoke-virtual {p1, v3}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 497
    invoke-virtual {p1, v3}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    array-length v1, v1

    if-lez v1, :cond_4

    .line 498
    iget-object v1, p0, Lcom/oppo/camera/d/a;->Y:Ljava/lang/Object;

    monitor-enter v1

    .line 499
    :try_start_2
    invoke-virtual {p1, v3}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    check-cast v2, [I

    iput-object v2, p0, Lcom/oppo/camera/d/a;->an:[I

    .line 500
    monitor-exit v1

    goto :goto_2

    :catchall_2
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p1

    :cond_4
    :goto_2
    if-eqz v4, :cond_5

    .line 504
    invoke-virtual {p1, v4}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 505
    invoke-virtual {p1, v4}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    array-length v1, v1

    if-lez v1, :cond_5

    .line 506
    iget-object v1, p0, Lcom/oppo/camera/d/a;->Z:Ljava/lang/Object;

    monitor-enter v1

    .line 507
    :try_start_3
    invoke-virtual {p1, v4}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    check-cast v2, [I

    aget v2, v2, v7

    iput v2, p0, Lcom/oppo/camera/d/a;->al:I

    .line 508
    monitor-exit v1

    goto :goto_3

    :catchall_3
    move-exception p1

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p1

    :cond_5
    :goto_3
    if-eqz v5, :cond_6

    .line 512
    invoke-virtual {p1, v5}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 513
    invoke-virtual {p1, v5}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    array-length v1, v1

    if-lez v1, :cond_6

    .line 514
    iget-object v1, p0, Lcom/oppo/camera/d/a;->aa:Ljava/lang/Object;

    monitor-enter v1

    .line 515
    :try_start_4
    invoke-virtual {p1, v5}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    check-cast v2, [I

    aget v2, v2, v7

    iput v2, p0, Lcom/oppo/camera/d/a;->ap:I

    .line 516
    monitor-exit v1

    goto :goto_4

    :catchall_4
    move-exception p1

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw p1

    :cond_6
    :goto_4
    if-eqz v6, :cond_7

    .line 520
    invoke-virtual {p1, v6}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 521
    invoke-virtual {p1, v6}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    array-length v1, v1

    if-lez v1, :cond_7

    .line 522
    iget-object v1, p0, Lcom/oppo/camera/d/a;->aw:Ljava/lang/Object;

    monitor-enter v1

    .line 523
    :try_start_5
    invoke-virtual {p1, v6}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    check-cast v2, [I

    aget v2, v2, v7

    iput v2, p0, Lcom/oppo/camera/d/a;->av:I

    .line 524
    monitor-exit v1

    goto :goto_5

    :catchall_5
    move-exception p1

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw p1

    :cond_7
    :goto_5
    if-eqz v0, :cond_8

    .line 528
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 529
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    array-length v1, v1

    if-lez v1, :cond_8

    .line 530
    iget-object v1, p0, Lcom/oppo/camera/d/a;->ab:Ljava/lang/Object;

    monitor-enter v1

    .line 531
    :try_start_6
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    check-cast p1, [B

    aget-byte p1, p1, v7

    iput p1, p0, Lcom/oppo/camera/d/a;->au:I

    .line 532
    monitor-exit v1

    goto :goto_6

    :catchall_6
    move-exception p1

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw p1

    :cond_8
    :goto_6
    return-void
.end method

.method static synthetic b(Lcom/oppo/camera/d/a;I)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/oppo/camera/d/a;->y(I)V

    return-void
.end method

.method private b(Lcom/oppo/camera/ui/preview/a/g;)V
    .locals 7

    .line 2601
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aO()Ljava/lang/String;

    move-result-object v1

    const-string v0, "filter"

    .line 2603
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2604
    iget-object v0, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bc()I

    move-result v2

    iget v3, p0, Lcom/oppo/camera/d/a;->j:I

    .line 2605
    invoke-static {v3}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v3

    iget v4, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-virtual {p0, v4}, Lcom/oppo/camera/d/a;->e(I)[Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/oppo/camera/d/a;->j:I

    .line 2606
    invoke-static {v5}, Lcom/oppo/camera/e/a;->a(I)Lcom/oppo/camera/e/h;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/oppo/camera/d/a;->c(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v6

    move-object v5, p1

    .line 2604
    invoke-static/range {v0 .. v6}, Lcom/oppo/camera/ui/preview/a/d;->a(Landroid/content/Context;Ljava/lang/String;IZ[Ljava/lang/String;Lcom/oppo/camera/ui/preview/a/g;Landroid/util/Size;)V

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;Z)V
    .locals 3

    .line 3019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateHDRMode, value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", update: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3021
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_4

    const-string v0, "off"

    .line 3022
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3023
    iget-object p1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {p1, v2}, Lcom/oppo/camera/e/f;->l(I)V

    .line 3024
    iget-object p1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {p1, v2}, Lcom/oppo/camera/e/f;->k(I)V

    goto :goto_0

    :cond_0
    const-string v1, "auto"

    .line 3025
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3026
    iget-object p1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/oppo/camera/e/f;->l(I)V

    .line 3027
    iget-object p1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {p1, v2}, Lcom/oppo/camera/e/f;->k(I)V

    goto :goto_0

    :cond_1
    const-string v1, "on"

    .line 3028
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3029
    iget-object p1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lcom/oppo/camera/e/f;->l(I)V

    .line 3030
    iget-object p1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    const/16 v1, 0x12

    invoke-interface {p1, v1}, Lcom/oppo/camera/e/f;->k(I)V

    .line 3031
    iget-object p1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {p1, v0}, Lcom/oppo/camera/e/f;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "close"

    .line 3032
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3033
    iget-object p1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {p1, v2}, Lcom/oppo/camera/e/f;->l(I)V

    .line 3034
    iget-object p1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {p1, v2}, Lcom/oppo/camera/e/f;->k(I)V

    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    .line 3038
    iget-object p1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    :cond_4
    return-void
.end method

.method private b([BIIIZ)V
    .locals 10

    .line 4033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doOnPictureCallback, mbPaused: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/d/a;->s:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4035
    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->s:Z

    if-eqz v0, :cond_0

    return-void

    .line 4039
    :cond_0
    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->p:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 4040
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->l(Z)V

    .line 4041
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    .line 4044
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->k()I

    move-result v0

    if-eqz v0, :cond_3

    const/16 v2, 0xb4

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    move v5, p2

    move v6, p3

    goto :goto_1

    :cond_3
    :goto_0
    move v6, p2

    move v5, p3

    .line 4053
    :goto_1
    invoke-static {p4}, Lcom/oppo/camera/o/d;->a(I)Ljava/lang/String;

    move-result-object v7

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    move v8, v1

    move-object v3, p0

    move-object v4, p1

    move v9, p5

    invoke-virtual/range {v3 .. v9}, Lcom/oppo/camera/d/a;->a([BIILjava/lang/String;ZZ)V

    return-void
.end method

.method private final b(Lcom/oppo/camera/e/d;)Z
    .locals 6

    const-string v0, "captureX beforeSnapping"

    .line 1457
    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 1459
    iput-boolean v1, p0, Lcom/oppo/camera/d/a;->q:Z

    .line 1460
    iput-boolean v1, p0, Lcom/oppo/camera/d/a;->r:Z

    const/4 v2, 0x0

    .line 1461
    iput-boolean v2, p0, Lcom/oppo/camera/d/a;->B:Z

    .line 1462
    iget-object v3, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v3}, Lcom/oppo/camera/d/b;->b()Z

    move-result v3

    .line 1464
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "beforeSnapping, ret: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mbAutoHDR: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/oppo/camera/d/a;->v:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BaseMode"

    invoke-static {v5, v4}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_0

    return v2

    .line 1470
    :cond_0
    invoke-direct {p0, p1}, Lcom/oppo/camera/d/a;->c(Lcom/oppo/camera/e/d;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oppo/camera/d/a;->G:Z

    .line 1472
    iget-boolean p1, p0, Lcom/oppo/camera/d/a;->G:Z

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->Y()Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_2

    .line 1478
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/d/a;->J:Lcom/oppo/camera/a/a;

    if-eqz p1, :cond_3

    .line 1479
    invoke-virtual {p1}, Lcom/oppo/camera/a/a;->c()Z

    move-result p1

    .line 1481
    iget-boolean v3, p0, Lcom/oppo/camera/d/a;->az:Z

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->q()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez p1, :cond_3

    .line 1482
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "beforeSnapping, needAps, mbAlgoFlagsUpdated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/d/a;->az:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isApsConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 1489
    :cond_3
    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cC()I

    move-result p1

    if-ne p1, v1, :cond_4

    const-string p1, "beforeSnapping, capturePreview not done!"

    .line 1490
    invoke-static {v5, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 1495
    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->k()I

    move-result p1

    iput p1, p0, Lcom/oppo/camera/d/a;->h:I

    .line 1496
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->R()V

    .line 1498
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->n()Z

    move-result p1

    .line 1500
    iget-object v3, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    new-instance v4, Lcom/oppo/camera/d/a$3;

    invoke-direct {v4, p0}, Lcom/oppo/camera/d/a$3;-><init>(Lcom/oppo/camera/d/a;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1508
    iput-boolean v2, p0, Lcom/oppo/camera/d/a;->az:Z

    .line 1509
    iput-boolean v2, p0, Lcom/oppo/camera/d/a;->ac:Z

    .line 1510
    iget v3, p0, Lcom/oppo/camera/d/a;->j:I

    iget v4, p0, Lcom/oppo/camera/d/a;->h:I

    invoke-static {v3, v4}, Lcom/oppo/camera/e/a;->b(II)I

    move-result v3

    iput v3, p0, Lcom/oppo/camera/d/a;->i:I

    .line 1512
    iget-object v3, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    iget v4, p0, Lcom/oppo/camera/d/a;->i:I

    invoke-interface {v3, v4}, Lcom/oppo/camera/e/f;->a(I)V

    .line 1514
    iget-boolean v3, p0, Lcom/oppo/camera/d/a;->p:Z

    if-eqz v3, :cond_5

    .line 1515
    iget-object v3, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    const/16 v4, 0x4b

    invoke-interface {v3, v4}, Lcom/oppo/camera/e/f;->b(I)V

    goto :goto_0

    .line 1517
    :cond_5
    iget-object v3, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    const/16 v4, 0x5f

    invoke-interface {v3, v4}, Lcom/oppo/camera/e/f;->b(I)V

    .line 1520
    :goto_0
    iget-object v3, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    iget-object v4, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v4}, Lcom/oppo/camera/d/b;->o()Landroid/location/Location;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/oppo/camera/e/f;->a(Landroid/location/Location;)V

    const-string v3, "pref_camera_blur_mode_key"

    .line 1522
    invoke-virtual {p0, v3}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1523
    iget-object v2, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v2, v1}, Lcom/oppo/camera/e/f;->j(Z)V

    .line 1524
    iget-object v1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    const/16 v2, 0x64

    invoke-interface {v1, v2}, Lcom/oppo/camera/e/f;->p(I)V

    goto :goto_1

    .line 1526
    :cond_6
    iget-object v1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v1, v2}, Lcom/oppo/camera/e/f;->j(Z)V

    .line 1527
    iget-object v1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v1, v2}, Lcom/oppo/camera/e/f;->p(I)V

    .line 1530
    :goto_1
    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return p1

    :cond_7
    :goto_2
    const-string p1, "beforeSnapping, memory is not enough!"

    .line 1473
    invoke-static {v5, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method static synthetic b(Lcom/oppo/camera/d/a;[I)[I
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/oppo/camera/d/a;->am:[I

    return-object p1
.end method

.method static synthetic c(Lcom/oppo/camera/d/a;I)I
    .locals 0

    .line 86
    iput p1, p0, Lcom/oppo/camera/d/a;->at:I

    return p1
.end method

.method static synthetic c(Lcom/oppo/camera/d/a;)Ljava/lang/Object;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/oppo/camera/d/a;->W:Ljava/lang/Object;

    return-object p0
.end method

.method private c(Lcom/oppo/camera/e/d;)Z
    .locals 10

    .line 1536
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->b(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1540
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    mul-int/2addr v2, v0

    const/high16 v0, 0x100000

    div-int v0, v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1545
    :goto_0
    iget v2, p1, Lcom/oppo/camera/e/d;->i:I

    const/16 v3, 0x20

    if-eq v2, v3, :cond_3

    const/16 v3, 0x23

    if-eq v2, v3, :cond_2

    const/16 v3, 0x100

    if-eq v2, v3, :cond_1

    move v0, v1

    goto :goto_2

    .line 1551
    :cond_1
    iget v2, p1, Lcom/oppo/camera/e/d;->h:I

    goto :goto_1

    :cond_2
    int-to-float v0, v0

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 1547
    iget v2, p1, Lcom/oppo/camera/e/d;->h:I

    goto :goto_1

    :cond_3
    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 1555
    iget v2, p1, Lcom/oppo/camera/e/d;->h:I

    :goto_1
    mul-int/2addr v0, v2

    .line 1562
    :goto_2
    iget-object v2, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    invoke-static {v2}, Lcom/oppo/camera/o/d;->e(Landroid/content/Context;)J

    move-result-wide v2

    .line 1563
    iget-object v4, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    invoke-static {v4}, Lcom/oppo/camera/o/d;->d(Landroid/content/Context;)J

    move-result-wide v4

    .line 1565
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "requestNum: "

    .line 1566
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Lcom/oppo/camera/e/d;->h:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", format: "

    .line 1567
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/oppo/camera/e/d;->i:I

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", needMemory: "

    .line 1568
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", availableMemory: "

    .line 1569
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/32 v7, 0x100000

    div-long/2addr v2, v7

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "MB"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", totalMemory: "

    .line 1570
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long/2addr v4, v7

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1572
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkMemoryState: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v4, "BaseMode"

    invoke-static {v4, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v4, v0

    cmp-long p1, v4, v2

    if-ltz p1, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x1

    return p1
.end method

.method private cB()V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/oppo/camera/d/a;->J:Lcom/oppo/camera/a/a;

    if-nez v0, :cond_0

    .line 336
    invoke-static {}, Lcom/oppo/camera/a/a;->a()Lcom/oppo/camera/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/d/a;->J:Lcom/oppo/camera/a/a;

    :cond_0
    return-void
.end method

.method private cC()I
    .locals 2

    .line 610
    iget-object v0, p0, Lcom/oppo/camera/d/a;->W:Ljava/lang/Object;

    monitor-enter v0

    .line 611
    :try_start_0
    iget v1, p0, Lcom/oppo/camera/d/a;->ag:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 612
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private cD()V
    .locals 5

    const-string v0, "BaseMode"

    const-string v1, "doAfterStartPreview"

    .line 1423
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->s:Z

    if-nez v0, :cond_4

    .line 1426
    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    if-eqz v0, :cond_4

    .line 1427
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bu()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bw()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1428
    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1, v1}, Lcom/oppo/camera/ui/c;->a(ZZZ)V

    .line 1431
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_4

    const-string v0, "key_high_picture_size"

    .line 1432
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1433
    iget-object v2, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    const v4, 0x7f0f0114

    .line 1434
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_camera_photo_ratio_key"

    .line 1433
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "standard_high"

    .line 1436
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1437
    iget-object v2, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1441
    :cond_1
    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cM()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1442
    invoke-direct {p0, v1}, Lcom/oppo/camera/d/a;->r(Z)V

    goto :goto_0

    .line 1443
    :cond_2
    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cL()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1444
    iget v0, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oppo/camera/d/a;->q(Z)V

    .line 1447
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/d/a;->aA:Landroid/os/Handler;

    if-eqz v0, :cond_4

    const/4 v1, 0x2

    .line 1448
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1449
    iget-object v0, p0, Lcom/oppo/camera/d/a;->aA:Landroid/os/Handler;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    return-void
.end method

.method private cE()Ljava/lang/String;
    .locals 3

    .line 2131
    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    const v1, 0x7f0f00c6

    if-eqz v0, :cond_0

    .line 2132
    iget-object v2, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    .line 2133
    invoke-virtual {v2, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_flashmode_key"

    .line 2132
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2136
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private cF()Ljava/lang/String;
    .locals 3

    .line 2149
    iget-object v0, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    const v1, 0x7f0f00cb

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2150
    iget-object v1, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    const-string v2, "pref_camera_videoflashmode_key"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private cG()Z
    .locals 2

    .line 2155
    iget-object v0, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.mms"

    .line 2157
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.android.contacts"

    .line 2158
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.nearme.note"

    .line 2159
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.coloros.note"

    .line 2160
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private cH()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2553
    iget-object v0, p0, Lcom/oppo/camera/d/a;->R:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2554
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aP()V

    .line 2557
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/a;->R:Ljava/util/List;

    return-object v0
.end method

.method private cI()I
    .locals 2

    .line 2790
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aW()I

    move-result v0

    const-string v1, "key_beauty3d"

    .line 2792
    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method private cJ()Z
    .locals 8

    .line 2861
    iget v0, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2862
    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    const v2, 0x7f0f0196

    .line 2863
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_torch_mode_key"

    .line 2862
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 2865
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    const v2, 0x7f0f00c6

    .line 2866
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_flashmode_key"

    .line 2865
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2869
    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    iget v2, p0, Lcom/oppo/camera/d/a;->j:I

    const-string v3, "pref_camera_hdr_mode_key"

    .line 2870
    invoke-static {v3, v2}, Lcom/oppo/camera/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 2869
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2871
    iget-object v2, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "off"

    .line 2873
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    const-string v7, "on"

    if-nez v5, :cond_1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2874
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2875
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2876
    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v3}, Lcom/oppo/camera/ui/c;->d(Ljava/lang/String;)V

    return v6

    :cond_1
    const-string v5, "torch"

    .line 2880
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "auto"

    .line 2881
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2882
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2883
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2884
    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v3}, Lcom/oppo/camera/ui/c;->d(Ljava/lang/String;)V

    return v6

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private cK()Z
    .locals 8

    const-string v0, "func_torch_soft_light"

    .line 2892
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2896
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    const v3, 0x7f0f00c6

    .line 2897
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_torch_mode_key"

    .line 2896
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2898
    iget-object v2, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    iget v3, p0, Lcom/oppo/camera/d/a;->j:I

    const-string v4, "pref_camera_hdr_mode_key"

    .line 2899
    invoke-static {v4, v3}, Lcom/oppo/camera/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 2898
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2900
    iget-object v3, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v5, "off"

    .line 2902
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "on"

    if-nez v6, :cond_1

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2903
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2904
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2905
    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v4}, Lcom/oppo/camera/ui/c;->d(Ljava/lang/String;)V

    return v1

    .line 2909
    :cond_1
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "auto"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2910
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2911
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2912
    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v4}, Lcom/oppo/camera/ui/c;->d(Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private cL()Z
    .locals 3

    .line 3328
    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    const-string v0, "pref_camera_hdr_mode_key"

    .line 3329
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    iget v2, p0, Lcom/oppo/camera/d/a;->j:I

    .line 3331
    invoke-static {v0, v2}, Lcom/oppo/camera/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 3330
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private cM()Z
    .locals 3

    .line 3339
    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/oppo/camera/d/a;->j:I

    const-string v2, "pref_camera_hdr_mode_key"

    .line 3341
    invoke-static {v2, v1}, Lcom/oppo/camera/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 3340
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3342
    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private cN()Z
    .locals 3

    .line 3355
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "BaseMode"

    const-string v2, "is3HDR, mOneCamera is null"

    .line 3356
    invoke-static {v0, v2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 3359
    :cond_0
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3360
    iget v0, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    .line 3361
    invoke-interface {v0}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e/h;->H()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3362
    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cL()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cM()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    .line 3364
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e/h;->G()Z

    move-result v0

    return v0
.end method

.method static synthetic d(Lcom/oppo/camera/d/a;I)I
    .locals 0

    .line 86
    iput p1, p0, Lcom/oppo/camera/d/a;->ak:I

    return p1
.end method

.method static synthetic d(Lcom/oppo/camera/d/a;)Landroid/hardware/camera2/TotalCaptureResult;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/oppo/camera/d/a;->ax:Landroid/hardware/camera2/TotalCaptureResult;

    return-object p0
.end method

.method private d(Lcom/oppo/camera/e/d;)V
    .locals 4

    const-string v0, "BaseMode"

    const-string v1, "capturePreviewData"

    .line 1604
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1606
    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cC()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1607
    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    new-instance v2, Lcom/oppo/camera/d/a$4;

    invoke-direct {v2, p0, p1}, Lcom/oppo/camera/d/a$4;-><init>(Lcom/oppo/camera/d/a;Lcom/oppo/camera/e/d;)V

    .line 1694
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aa()Z

    move-result p1

    sget-object v3, Lcom/oppo/camera/gl/t$a;->g:Ljava/lang/String;

    .line 1607
    invoke-interface {v0, v2, v1, p1, v3}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/gl/t$a;ZZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/oppo/camera/d/a;)Ljava/lang/Object;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/oppo/camera/d/a;->Y:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic f(Lcom/oppo/camera/d/a;)[I
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/oppo/camera/d/a;->an:[I

    return-object p0
.end method

.method static synthetic g(Lcom/oppo/camera/d/a;)[I
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/oppo/camera/d/a;->am:[I

    return-object p0
.end method

.method static synthetic h(Lcom/oppo/camera/d/a;)Ljava/lang/Object;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/oppo/camera/d/a;->X:Ljava/lang/Object;

    return-object p0
.end method

.method private l(Ljava/lang/String;)V
    .locals 12

    .line 3705
    iget-object v0, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->e()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 3706
    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/d/a;->b(Ljava/lang/String;Z)V

    const-string v1, "on"

    .line 3707
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/oppo/camera/d/a;->r(Z)V

    .line 3709
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3710
    iget-object p1, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    if-eqz p1, :cond_5

    .line 3711
    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cN()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3712
    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const/4 v1, -0x1

    const v2, 0x7f0702cb

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    goto :goto_1

    .line 3715
    :cond_0
    iget-object v6, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const/4 v7, -0x1

    const v8, 0x7f0702ca

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface/range {v6 .. v11}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    goto :goto_1

    .line 3720
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bx()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bA()Z

    move-result v1

    if-nez v1, :cond_4

    .line 3722
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->by()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bz()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-boolean v1, p0, Lcom/oppo/camera/d/a;->x:Z

    if-eqz v1, :cond_3

    move v1, v0

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    if-nez v1, :cond_4

    .line 3725
    iget-object v1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v1, v2, v0, v0}, Lcom/oppo/camera/ui/c;->a(ZZZ)V

    :cond_4
    const-string v0, "auto"

    .line 3729
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3730
    iget p1, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/oppo/camera/d/a;->q(Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method private n(Z)V
    .locals 2

    .line 2920
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHDRMenuVisibility(), flag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mCameraUIInterface: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2922
    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "pref_camera_hdr_mode_key"

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 2927
    invoke-interface {v0, v1, p1}, Lcom/oppo/camera/ui/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2928
    iget-object p1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v1}, Lcom/oppo/camera/ui/c;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 2930
    :cond_1
    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->c(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private o(Z)V
    .locals 2

    .line 2935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFalterMenuVisibility, flag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2937
    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "pref_filter_menu"

    .line 2942
    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/c;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private p(Z)V
    .locals 2

    .line 2947
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPiMenuVisibility, flag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2949
    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "pref_camera_pi_mode_key"

    .line 2954
    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/c;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private q(Z)V
    .locals 5

    .line 2959
    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    const-string v1, "BaseMode"

    if-nez v0, :cond_0

    const-string p1, "updateFlashMenuIfHDRIsAuto null  == mPreferences"

    .line 2960
    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "off"

    if-eqz p1, :cond_1

    const-string p1, "pref_camera_torch_mode_key"

    move-object v2, v0

    goto :goto_0

    :cond_1
    const-string p1, "pref_camera_flashmode_key"

    const-string v2, "auto"

    .line 2972
    :goto_0
    iget-object v3, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    invoke-interface {v3, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2973
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateFlashMenuIfHDRIsAuto flashMode  ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "on"

    .line 2975
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "torch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2976
    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2977
    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2978
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2980
    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    if-eqz v0, :cond_3

    .line 2981
    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/c;->d(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private r(Z)V
    .locals 2

    .line 2987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateMenuWithHDRChange(), enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2989
    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 2994
    iget-object p1, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2996
    iget v0, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    const-string v1, "off"

    if-eqz v0, :cond_1

    const-string v0, "pref_camera_torch_mode_key"

    .line 2997
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2998
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2999
    iget-object p1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v0}, Lcom/oppo/camera/ui/c;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "pref_camera_flashmode_key"

    .line 3001
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3002
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3003
    iget-object p1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v0}, Lcom/oppo/camera/ui/c;->d(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private x(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    const-string p1, "MSG_PRE_UPDATE_THUMBNAIL"

    goto :goto_0

    :pswitch_1
    const-string p1, "MSG_CREATE_EFFECT_TEXTURE"

    goto :goto_0

    :pswitch_2
    const-string p1, "MSG_UPDATE_EFFECT_MENUNAME"

    goto :goto_0

    :pswitch_3
    const-string p1, "MSG_AFTER_START_PREVIEW"

    goto :goto_0

    :pswitch_4
    const-string p1, "MSG_DIS_SCREEN_HINT_ICON"

    goto :goto_0

    :pswitch_5
    const-string p1, "MSG_AFTER_TAKEPICTURE"

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

.method private y(I)V
    .locals 4

    .line 602
    iget-object v0, p0, Lcom/oppo/camera/d/a;->W:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "BaseMode"

    .line 603
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCapturePreviewDataState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oppo/camera/d/a;->ag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    iput p1, p0, Lcom/oppo/camera/d/a;->ag:I

    .line 606
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public A()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public B()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public C()V
    .locals 3

    .line 860
    new-instance v0, Lcom/oppo/camera/ui/control/c;

    const/16 v1, 0xa

    const-string v2, "button_color_inside_none"

    invoke-direct {v0, v1, v2}, Lcom/oppo/camera/ui/control/c;-><init>(ILjava/lang/String;)V

    const/4 v1, 0x0

    .line 862
    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/control/c;->b(I)V

    .line 863
    iget-object v1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v1, v0}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;)V

    return-void
.end method

.method public D()Ljava/lang/String;
    .locals 1

    const-string v0, "full"

    return-object v0
.end method

.method public E()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public F()Z
    .locals 2

    const-string v0, "pref_filter_process_key"

    .line 932
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 933
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bc()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public G()Z
    .locals 1

    .line 940
    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->C:Z

    return v0
.end method

.method public H()V
    .locals 6

    .line 944
    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const v1, 0x7f0f0190

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    return-void
.end method

.method public I()V
    .locals 2

    .line 949
    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 950
    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->z()V

    .line 953
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/a;->P:Lcom/oppo/camera/ui/preview/a/i;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/preview/a/i;->d(I)V

    return-void
.end method

.method public J()V
    .locals 0

    return-void
.end method

.method public K()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final L()V
    .locals 4

    const/4 v0, 0x1

    .line 990
    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->s:Z

    const/4 v1, 0x0

    .line 991
    iput-boolean v1, p0, Lcom/oppo/camera/d/a;->b:Z

    .line 992
    iput-boolean v1, p0, Lcom/oppo/camera/d/a;->q:Z

    .line 993
    iput-boolean v1, p0, Lcom/oppo/camera/d/a;->r:Z

    .line 994
    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->B:Z

    .line 996
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pause, mbInCapturing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/d/a;->q:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BaseMode"

    invoke-static {v3, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    iget-object v2, p0, Lcom/oppo/camera/d/a;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v2, v1}, Lcom/oppo/camera/ui/preview/a/i;->d(I)V

    .line 999
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->h()V

    .line 1000
    invoke-direct {p0, v1}, Lcom/oppo/camera/d/a;->y(I)V

    .line 1002
    iget-object v2, p0, Lcom/oppo/camera/d/a;->aA:Landroid/os/Handler;

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    .line 1003
    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1006
    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cM()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1007
    invoke-direct {p0, v1}, Lcom/oppo/camera/d/a;->r(Z)V

    .line 1010
    :cond_1
    iget-object v2, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v2, v0, v0, v0}, Lcom/oppo/camera/ui/c;->a(ZZZ)V

    .line 1011
    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/a;->f(Z)V

    .line 1012
    iput-boolean v1, p0, Lcom/oppo/camera/d/a;->v:Z

    .line 1013
    iput-boolean v1, p0, Lcom/oppo/camera/d/a;->w:Z

    .line 1014
    iput-boolean v1, p0, Lcom/oppo/camera/d/a;->y:Z

    .line 1015
    iput-boolean v1, p0, Lcom/oppo/camera/d/a;->E:Z

    .line 1016
    iput-boolean v1, p0, Lcom/oppo/camera/d/a;->az:Z

    .line 1017
    iput v1, p0, Lcom/oppo/camera/d/a;->l:I

    .line 1018
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bp()V

    return-void
.end method

.method public final M()V
    .locals 0

    .line 1022
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->i()V

    .line 1023
    invoke-static {}, Lcom/oppo/camera/ui/preview/a/d;->a()V

    return-void
.end method

.method public final N()V
    .locals 1

    .line 1027
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->j()V

    const/4 v0, 0x0

    .line 1029
    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->t:Z

    .line 1030
    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->u:Z

    const/4 v0, 0x0

    .line 1031
    iput-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    .line 1032
    iput-object v0, p0, Lcom/oppo/camera/d/a;->P:Lcom/oppo/camera/ui/preview/a/i;

    .line 1033
    iput-object v0, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    .line 1034
    iput-object v0, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    return-void
.end method

.method public final O()V
    .locals 1

    .line 1039
    iget-object v0, p0, Lcom/oppo/camera/d/a;->J:Lcom/oppo/camera/a/a;

    if-eqz v0, :cond_0

    .line 1040
    invoke-virtual {v0}, Lcom/oppo/camera/a/a;->f()V

    :cond_0
    return-void
.end method

.method public P()Z
    .locals 1

    const/4 v0, 0x1

    .line 1202
    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->ac:Z

    const/4 v0, 0x0

    return v0
.end method

.method public Q()V
    .locals 4

    .line 1207
    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    .line 1208
    invoke-interface {v1}, Lcom/oppo/camera/d/b;->h()Z

    move-result v1

    invoke-static {v1}, Lcom/oppo/camera/o/d;->a(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_mode_key"

    .line 1207
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setForceMode, capMode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", modeName: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "BaseMode"

    invoke-static {v3, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1213
    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1214
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1215
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method public R()V
    .locals 4

    .line 1224
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->a()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-static {v0, v1}, Lcom/oppo/camera/f/a;->a(Ljava/lang/String;I)I

    move-result v0

    .line 1226
    iget v1, p0, Lcom/oppo/camera/d/a;->j:I

    iget v2, p0, Lcom/oppo/camera/d/a;->h:I

    invoke-static {v1, v2}, Lcom/oppo/camera/e/a;->b(II)I

    move-result v1

    if-lez v1, :cond_0

    const-string v2, "pref_support_ipa_process"

    .line 1228
    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    or-int/lit8 v0, v0, 0x20

    .line 1232
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aW()I

    move-result v2

    if-lez v2, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    const-string v2, "pref_camera_blur_mode_key"

    .line 1236
    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    or-int/lit8 v0, v0, 0x10

    :cond_2
    const-string v2, "pref_filter_process_key"

    .line 1240
    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bc()I

    move-result v2

    if-lez v2, :cond_3

    or-int/lit16 v0, v0, 0x400

    .line 1244
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setExif, exif: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", jpegOrientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseMode"

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    iget-object v1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    if-eqz v1, :cond_4

    .line 1247
    invoke-interface {v1, v0}, Lcom/oppo/camera/e/f;->m(I)V

    :cond_4
    return-void
.end method

.method public final S()V
    .locals 4

    const-string v0, "BaseMode"

    const-string v1, "initCameraMode"

    .line 1262
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1264
    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->t:Z

    .line 1265
    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->u:Z

    .line 1267
    iget-object v1, p0, Lcom/oppo/camera/d/a;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v1}, Lcom/oppo/camera/ui/preview/a/i;->j()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 1268
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bc()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/a;->n(I)V

    const-string v1, "func_filter_vignette"

    .line 1270
    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1271
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bd()Ljava/lang/String;

    move-result-object v1

    const-string v3, "oppo_video_filter_olympus"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1272
    iget-object v1, p0, Lcom/oppo/camera/d/a;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v1, v2}, Lcom/oppo/camera/ui/preview/a/i;->b(Z)V

    goto :goto_0

    .line 1274
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/d/a;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v1, v0}, Lcom/oppo/camera/ui/preview/a/i;->b(Z)V

    .line 1278
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->C:Z

    .line 1279
    iget-object v0, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->k()I

    move-result v0

    iput v0, p0, Lcom/oppo/camera/d/a;->g:I

    .line 1280
    iput-boolean v2, p0, Lcom/oppo/camera/d/a;->u:Z

    .line 1281
    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->b()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/d/a;->Q:Landroid/view/ViewGroup;

    .line 1282
    iget-object v0, p0, Lcom/oppo/camera/d/a;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/a/i;->b()V

    .line 1283
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->k()V

    .line 1284
    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->f()V

    .line 1285
    sget-object v0, Lcom/oppo/camera/d/a;->a:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->b([Ljava/lang/String;)V

    .line 1286
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aP()V

    .line 1288
    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cM()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1289
    invoke-direct {p0, v2}, Lcom/oppo/camera/d/a;->r(Z)V

    goto :goto_1

    .line 1290
    :cond_2
    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cL()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1291
    iget v0, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oppo/camera/d/a;->q(Z)V

    .line 1294
    :cond_3
    :goto_1
    iput-boolean v2, p0, Lcom/oppo/camera/d/a;->t:Z

    return-void
.end method

.method public final T()V
    .locals 5

    const-string v0, "BaseMode"

    const-string v1, "deInitCameraMode"

    .line 1298
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    iget-object v0, p0, Lcom/oppo/camera/d/a;->aA:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1301
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 1304
    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->u:Z

    .line 1305
    iput v0, p0, Lcom/oppo/camera/d/a;->l:I

    .line 1307
    sget-object v1, Lcom/oppo/camera/d/a;->a:[Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/a;->a([Ljava/lang/String;)V

    .line 1309
    invoke-direct {p0, v0}, Lcom/oppo/camera/d/a;->n(Z)V

    .line 1311
    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cM()Z

    move-result v1

    const/4 v2, 0x1

    const-string v3, "off"

    if-eqz v1, :cond_1

    .line 1312
    invoke-direct {p0, v0}, Lcom/oppo/camera/d/a;->r(Z)V

    .line 1313
    invoke-direct {p0, v3, v2}, Lcom/oppo/camera/d/a;->b(Ljava/lang/String;Z)V

    .line 1316
    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    if-eqz v1, :cond_4

    .line 1317
    invoke-interface {v1}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/camera/e/h;->G()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1318
    iget-object v1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v1, v0}, Lcom/oppo/camera/e/f;->n(Z)V

    goto :goto_0

    .line 1319
    :cond_2
    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cL()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1320
    iget-object v1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v1, v0}, Lcom/oppo/camera/e/f;->l(I)V

    .line 1323
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v1, v0}, Lcom/oppo/camera/e/f;->j(Z)V

    .line 1324
    iget-object v1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v1, v0}, Lcom/oppo/camera/e/f;->p(I)V

    .line 1325
    iget-object v1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-static {}, Lcom/oppo/camera/a;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/oppo/camera/e/f;->a([Landroid/hardware/camera2/params/MeteringRectangle;)V

    .line 1328
    :cond_4
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->f(Z)V

    .line 1329
    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->v:Z

    .line 1330
    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->w:Z

    .line 1331
    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->y:Z

    .line 1333
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->l()V

    .line 1335
    iget-object v1, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_5

    .line 1336
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "pref_subsetting_key"

    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1339
    :cond_5
    iget-object v1, p0, Lcom/oppo/camera/d/a;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-interface {v1, v2}, Lcom/oppo/camera/ui/preview/a/i;->d(I)V

    .line 1340
    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->t:Z

    .line 1341
    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->az:Z

    .line 1342
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bp()V

    return-void
.end method

.method public final U()V
    .locals 2

    .line 1346
    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->t:Z

    if-eqz v0, :cond_0

    .line 1347
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->X()V

    :cond_0
    const-string v0, "oppo.debug.bgs.enable"

    const-string v1, "false"

    .line 1350
    invoke-static {v0, v1}, Lcom/oppo/camera/debug/DebugUtil;->debugPropertyEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->ae:Z

    return-void
.end method

.method public final V()V
    .locals 4

    .line 1354
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1355
    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->o(I)V

    .line 1356
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-static {}, Lcom/oppo/camera/a;->b()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/oppo/camera/e/f;->c(I)V

    .line 1357
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->l(Z)V

    .line 1360
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bc()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->n(I)V

    .line 1361
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bm()V

    .line 1363
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_4

    .line 1364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beforePreview, flashMode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->av()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BaseMode"

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->av()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/oppo/camera/e/f;->a(Ljava/lang/String;)V

    .line 1367
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->E()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/oppo/camera/e/f;->d(I)V

    .line 1369
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e/h;->F()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1370
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    const-string v2, "func_request_fast_launch"

    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/oppo/camera/e/f;->m(Z)V

    .line 1373
    :cond_1
    iget v0, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cL()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cM()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1374
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    sget-object v2, Lcom/oppo/camera/a$a;->FrameAverage:Lcom/oppo/camera/a$a;

    invoke-virtual {v2}, Lcom/oppo/camera/a$a;->ordinal()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/oppo/camera/e/f;->i(I)V

    goto :goto_0

    .line 1376
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    sget-object v2, Lcom/oppo/camera/a$a;->CenterWeighted:Lcom/oppo/camera/a$a;

    invoke-virtual {v2}, Lcom/oppo/camera/a$a;->ordinal()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/oppo/camera/e/f;->i(I)V

    .line 1380
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->m()V

    .line 1382
    iget-object v0, p0, Lcom/oppo/camera/d/a;->P:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v0, :cond_5

    .line 1383
    invoke-interface {v0}, Lcom/oppo/camera/ui/preview/a/i;->j()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/oppo/camera/ui/preview/a/i;->c(I)V

    :cond_5
    const-string v0, "pref_camera_hdr_mode_key"

    .line 1386
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1387
    iget-object v2, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    iget v3, p0, Lcom/oppo/camera/d/a;->j:I

    .line 1388
    invoke-static {v0, v3}, Lcom/oppo/camera/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1387
    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1389
    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/d/a;->b(Ljava/lang/String;Z)V

    .line 1392
    :cond_6
    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/a;->f(Z)V

    .line 1393
    iput-boolean v1, p0, Lcom/oppo/camera/d/a;->v:Z

    .line 1394
    iput-boolean v1, p0, Lcom/oppo/camera/d/a;->w:Z

    .line 1395
    iput-boolean v1, p0, Lcom/oppo/camera/d/a;->y:Z

    .line 1397
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->W()V

    return-void
.end method

.method protected W()V
    .locals 2

    .line 1401
    iget v0, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_1

    .line 1402
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->az()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1403
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->c(Z)V

    goto :goto_0

    .line 1405
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->c(Z)V

    .line 1408
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    :cond_1
    return-void
.end method

.method public X()V
    .locals 2

    const/4 v0, 0x1

    .line 1413
    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->B:Z

    .line 1414
    iget-object v0, p0, Lcom/oppo/camera/d/a;->aA:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1415
    iget-object v0, p0, Lcom/oppo/camera/d/a;->aA:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1417
    iget-object v0, p0, Lcom/oppo/camera/d/a;->J:Lcom/oppo/camera/a/a;

    if-eqz v0, :cond_0

    .line 1418
    invoke-virtual {v0}, Lcom/oppo/camera/a/a;->b()V

    :cond_0
    return-void
.end method

.method public Y()Z
    .locals 1

    .line 1582
    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->G:Z

    return v0
.end method

.method public Z()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(I)I
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->a()Lcom/oppo/camera/entry/b;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/oppo/camera/entry/b;->a(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public a(Lcom/oppo/camera/e/h;)Landroid/util/Size;
    .locals 5

    .line 2168
    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cG()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2172
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    const v3, 0x7f0f0114

    .line 2173
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_photo_ratio_key"

    .line 2172
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x100

    .line 2175
    invoke-virtual {p1, v2}, Lcom/oppo/camera/e/h;->a(I)Ljava/util/List;

    move-result-object p1

    .line 2179
    sget-object v2, Lcom/oppo/camera/config/ConfigDataBase;->KEY_CAPTURE_THIRD_PICTURE_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v2}, Lcom/oppo/camera/config/CameraConfig;->getConfigIntValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)I

    move-result v2

    .line 2181
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDecreasedSizeForThirdApp, configThirdPictureSize: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BaseMode"

    invoke-static {v4, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2184
    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Ljava/lang/String;)I

    move-result v0

    .line 2183
    invoke-static {p1, v2, v0}, Lcom/oppo/camera/o/d;->a(Ljava/util/List;II)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "x"

    .line 2187
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2188
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 2189
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, v1, p1}, Landroid/util/Size;-><init>(II)V

    return-object v0

    :cond_1
    return-object v1
.end method

.method public a(Ljava/lang/String;Lcom/oppo/camera/e/h;)Landroid/util/Size;
    .locals 3

    const-string v0, "func_sat_camera"

    .line 2205
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "type_still_capture_yuv_sub"

    const-string v2, "type_still_capture_yuv_main"

    if-eqz v0, :cond_2

    .line 2206
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2207
    invoke-virtual {p0, p2}, Lcom/oppo/camera/d/a;->b(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object p1

    return-object p1

    .line 2208
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2209
    sget-object p1, Lcom/oppo/camera/e/c;->q:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, p2, p1}, Lcom/oppo/camera/d/a;->a(Lcom/oppo/camera/e/h;Landroid/hardware/camera2/CameraCharacteristics$Key;)Landroid/util/Size;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "type_still_capture_yuv_third"

    .line 2210
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2211
    sget-object p1, Lcom/oppo/camera/e/c;->r:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-direct {p0, p2, p1}, Lcom/oppo/camera/d/a;->a(Lcom/oppo/camera/e/h;Landroid/hardware/camera2/CameraCharacteristics$Key;)Landroid/util/Size;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v0, "pref_dual_camera"

    .line 2213
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2214
    sget-object v0, Lcom/oppo/camera/e/c;->k:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p2, v0}, Lcom/oppo/camera/e/h;->a(Landroid/hardware/camera2/CameraCharacteristics$Key;)[I

    move-result-object p2

    .line 2216
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_3

    .line 2217
    array-length p1, p2

    if-lt p1, v2, :cond_4

    const/4 p1, 0x0

    .line 2218
    aget p1, p2, p1

    const/4 v0, 0x1

    .line 2219
    aget p2, p2, v0

    .line 2221
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    .line 2223
    :cond_3
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2224
    array-length p1, p2

    const/4 v0, 0x4

    if-lt p1, v0, :cond_4

    .line 2225
    aget p1, p2, v2

    const/4 v0, 0x3

    .line 2226
    aget p2, p2, v0

    .line 2228
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    return-object v0

    :cond_4
    const/4 p1, 0x0

    return-object p1

    .line 2232
    :cond_5
    invoke-virtual {p0, p2}, Lcom/oppo/camera/d/a;->b(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/oppo/camera/e/d;)Lcom/oppo/camera/e/d;
    .locals 3

    if-nez p1, :cond_0

    return-object p1

    .line 570
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oppo/camera/e/d;->p:Ljava/lang/String;

    .line 571
    iget v0, p0, Lcom/oppo/camera/d/a;->j:I

    iput v0, p1, Lcom/oppo/camera/e/d;->q:I

    const-string v0, "pref_camera_hdr_mode_key"

    .line 573
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 574
    iget-object v1, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    iget v2, p0, Lcom/oppo/camera/d/a;->j:I

    .line 575
    invoke-static {v0, v2}, Lcom/oppo/camera/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 574
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oppo/camera/e/d;->r:Ljava/lang/String;

    .line 576
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bw()Z

    move-result v0

    iput-boolean v0, p1, Lcom/oppo/camera/e/d;->s:Z

    .line 579
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->b(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Landroid/util/Size;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oppo/camera/e/d;->t:Ljava/lang/String;

    .line 580
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aA()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oppo/camera/e/d;->u:Ljava/lang/String;

    .line 581
    iget-object v0, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->Q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oppo/camera/e/d;->v:Ljava/lang/String;

    .line 583
    iget v0, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 584
    iget-object v0, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->O()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oppo/camera/e/d;->w:Ljava/lang/String;

    .line 587
    :cond_2
    iget v0, p0, Lcom/oppo/camera/d/a;->o:I

    iput v0, p1, Lcom/oppo/camera/e/d;->x:I

    .line 588
    iget-object v0, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->P()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oppo/camera/e/d;->y:Ljava/lang/String;

    .line 589
    iget v0, p0, Lcom/oppo/camera/d/a;->g:I

    iput v0, p1, Lcom/oppo/camera/e/d;->z:I

    return-object p1
.end method

.method public final a(Lcom/oppo/camera/statistics/model/DcsMsgData;)Lcom/oppo/camera/statistics/model/DcsMsgData;
    .locals 3

    const-string v0, "BaseMode"

    const-string v1, "getCaptureMsgCommonData"

    .line 3128
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3130
    iget v1, p0, Lcom/oppo/camera/d/a;->o:I

    iput v1, p1, Lcom/oppo/camera/statistics/model/DcsMsgData;->mScreenBrightness:I

    .line 3132
    instance-of v1, p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;

    if-eqz v1, :cond_0

    .line 3133
    move-object v1, p1

    check-cast v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;

    iget-object v2, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    .line 3134
    invoke-interface {v2}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/a;->b(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v2

    .line 3133
    invoke-static {v2}, Lcom/oppo/camera/o/d;->a(Landroid/util/Size;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mPicSizeType:Ljava/lang/String;

    .line 3135
    iget v2, p0, Lcom/oppo/camera/d/a;->T:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mCCT:Ljava/lang/String;

    .line 3136
    iget v2, p0, Lcom/oppo/camera/d/a;->U:F

    iput v2, v1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mLux:F

    :cond_0
    const-string v1, "getCaptureMsgCommonData X"

    .line 3139
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3141
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/a;->b(Lcom/oppo/camera/statistics/model/DcsMsgData;)Lcom/oppo/camera/statistics/model/DcsMsgData;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/oppo/camera/statistics/model/DcsMsgData;Lcom/oppo/camera/v$a;)Lcom/oppo/camera/statistics/model/DcsMsgData;
    .locals 0

    .line 3161
    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/d/a;->b(Lcom/oppo/camera/statistics/model/DcsMsgData;Lcom/oppo/camera/v$a;)Lcom/oppo/camera/statistics/model/DcsMsgData;

    move-result-object p1

    return-object p1
.end method

.method public abstract a()Ljava/lang/String;
.end method

.method public a(Ljava/lang/String;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1980
    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/d/a;->b(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a(IIZ)V
    .locals 2

    .line 2653
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bO()[I

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "BaseMode"

    const-string p2, "onFaceBeautyItemValueChange, return"

    .line 2656
    invoke-static {p1, p2}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2661
    :cond_0
    aput p2, v0, p1

    .line 2662
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->a([I)V

    .line 2664
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2665
    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    :cond_1
    if-eqz p3, :cond_2

    .line 2669
    iget-object p3, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bL()[Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 2670
    iget-object p3, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    invoke-interface {p3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p3

    .line 2671
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bL()[Ljava/lang/String;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-interface {p3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2672
    invoke-interface {p3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    return-void
.end method

.method public a(IZ)V
    .locals 12

    .line 3744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeModeAllViewWhenAnimation, animType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isShow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "on"

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x5

    if-ne v3, p1, :cond_1

    if-eqz p2, :cond_0

    .line 3748
    iput-boolean v1, p0, Lcom/oppo/camera/d/a;->b:Z

    .line 3749
    iput-boolean v1, p0, Lcom/oppo/camera/d/a;->C:Z

    .line 3751
    iget-object p1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    if-eqz p1, :cond_8

    iget p1, p0, Lcom/oppo/camera/d/a;->j:I

    .line 3752
    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-nez p1, :cond_8

    .line 3753
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->av()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 3754
    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const/4 v1, -0x1

    const v2, 0x7f0702c6

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    goto/16 :goto_0

    .line 3757
    :cond_0
    iput-boolean v2, p0, Lcom/oppo/camera/d/a;->C:Z

    .line 3759
    iget-object p1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    if-eqz p1, :cond_8

    .line 3760
    invoke-interface {p1, v2, v2, v1}, Lcom/oppo/camera/ui/c;->a(ZZZ)V

    goto/16 :goto_0

    :cond_1
    const/4 v3, 0x6

    if-ne v3, p1, :cond_2

    .line 3764
    iget-object p1, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    const-string p2, "pref_camera_hdr_mode_key"

    const-string v0, "off"

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3765
    invoke-direct {p0, p1}, Lcom/oppo/camera/d/a;->l(Ljava/lang/String;)V

    .line 3766
    iget-object p1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, p2}, Lcom/oppo/camera/ui/c;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-ne v3, p1, :cond_3

    if-eqz p2, :cond_8

    .line 3769
    iget-object p1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, p2}, Lcom/oppo/camera/ui/c;->g(Z)V

    goto :goto_0

    :cond_3
    const/16 v3, 0xa

    if-ne v3, p1, :cond_8

    .line 3772
    iget-object p1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    if-nez p1, :cond_4

    return-void

    :cond_4
    if-eqz p2, :cond_5

    .line 3776
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->av()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 3777
    iget-object v3, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const/4 v4, -0x1

    const v5, 0x7f0702c6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    goto :goto_0

    .line 3778
    :cond_5
    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cM()Z

    move-result p1

    if-eqz p1, :cond_7

    if-eqz p2, :cond_7

    .line 3779
    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cN()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 3780
    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const/4 v1, -0x1

    const v2, 0x7f0702cb

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    goto :goto_0

    .line 3783
    :cond_6
    iget-object v6, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const/4 v7, -0x1

    const v8, 0x7f0702ca

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface/range {v6 .. v11}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    goto :goto_0

    .line 3786
    :cond_7
    iget-object p1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v2, v2, v1}, Lcom/oppo/camera/ui/c;->a(ZZZ)V

    :cond_8
    :goto_0
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "pref_camera_flashmode_key"

    .line 3571
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    const-string v6, "torch"

    const-string v7, "auto"

    const-string v8, "on"

    const-string v9, "off"

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v4, :cond_a

    .line 3572
    iget-object v4, v0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    const v12, 0x7f0f00c6

    .line 3573
    invoke-virtual {v4, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3572
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3575
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onSharedPreferenceChanged, flashMode: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", mbAutoFlash: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v0, Lcom/oppo/camera/d/a;->x:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v13, "BaseMode"

    invoke-static {v13, v12}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3577
    sget-boolean v12, Lcom/oppo/camera/Camera;->a:Z

    if-nez v12, :cond_7

    sget-boolean v12, Lcom/oppo/camera/Camera;->b:Z

    if-eqz v12, :cond_0

    goto :goto_1

    .line 3597
    :cond_0
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3598
    iget-object v12, v0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const/4 v13, -0x1

    const v14, 0x7f0702c6

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-interface/range {v12 .. v17}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    goto :goto_0

    .line 3599
    :cond_1
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3600
    iget-boolean v3, v0, Lcom/oppo/camera/d/a;->x:Z

    if-eqz v3, :cond_2

    .line 3601
    iget-object v12, v0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const/4 v13, -0x1

    const v14, 0x7f0702c6

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-interface/range {v12 .. v17}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    goto :goto_0

    .line 3604
    :cond_2
    iget-object v3, v0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v3, v10, v11, v11}, Lcom/oppo/camera/ui/c;->a(ZZZ)V

    goto :goto_0

    .line 3606
    :cond_3
    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3607
    iget-object v12, v0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const/4 v13, -0x1

    const v14, 0x7f0703de

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-interface/range {v12 .. v17}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    goto :goto_0

    .line 3609
    :cond_4
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3610
    invoke-virtual {v0, v10}, Lcom/oppo/camera/d/a;->f(Z)V

    .line 3613
    :cond_5
    iget-object v3, v0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v3, v10, v11, v11}, Lcom/oppo/camera/ui/c;->a(ZZZ)V

    .line 3616
    :goto_0
    iget-object v3, v0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    if-eqz v3, :cond_6

    .line 3617
    invoke-interface {v3, v4}, Lcom/oppo/camera/e/f;->a(Ljava/lang/String;)V

    .line 3618
    iget-object v3, v0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v3, v5}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    .line 3621
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/d/a;->cJ()Z

    goto :goto_3

    .line 3578
    :cond_7
    :goto_1
    iput-boolean v11, v0, Lcom/oppo/camera/d/a;->ad:Z

    .line 3579
    invoke-virtual {v0, v10}, Lcom/oppo/camera/d/a;->f(Z)V

    .line 3580
    iget-boolean v12, v0, Lcom/oppo/camera/d/a;->v:Z

    iget-boolean v13, v0, Lcom/oppo/camera/d/a;->x:Z

    invoke-virtual {v0, v12, v13}, Lcom/oppo/camera/d/a;->c(ZZ)V

    .line 3582
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 3583
    sget-boolean v4, Lcom/oppo/camera/Camera;->b:Z

    if-eqz v4, :cond_8

    .line 3584
    iget-object v12, v0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const v13, 0x7f0f00e1

    const/4 v14, -0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-interface/range {v12 .. v17}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    goto :goto_2

    .line 3586
    :cond_8
    sget-boolean v4, Lcom/oppo/camera/Camera;->a:Z

    if-eqz v4, :cond_9

    .line 3587
    iget-object v12, v0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const v13, 0x7f0f00f3

    const/4 v14, -0x1

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-interface/range {v12 .. v17}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    .line 3591
    :cond_9
    :goto_2
    iget-object v4, v0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 3592
    invoke-interface {v4, v3, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3593
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3594
    iget-object v4, v0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v4, v3}, Lcom/oppo/camera/ui/c;->d(Ljava/lang/String;)V

    :cond_a
    :goto_3
    const-string v3, "pref_camera_torch_mode_key"

    .line 3625
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    const-string v4, "func_torch_soft_light"

    .line 3626
    invoke-virtual {v0, v4}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e

    sget-boolean v12, Lcom/oppo/camera/Camera;->a:Z

    if-nez v12, :cond_b

    sget-boolean v12, Lcom/oppo/camera/Camera;->b:Z

    if-eqz v12, :cond_e

    .line 3628
    :cond_b
    iput-boolean v11, v0, Lcom/oppo/camera/d/a;->ad:Z

    .line 3629
    invoke-virtual {v0, v10}, Lcom/oppo/camera/d/a;->f(Z)V

    .line 3630
    iget-boolean v4, v0, Lcom/oppo/camera/d/a;->v:Z

    iget-boolean v5, v0, Lcom/oppo/camera/d/a;->x:Z

    invoke-virtual {v0, v4, v5}, Lcom/oppo/camera/d/a;->c(ZZ)V

    .line 3631
    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3633
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 3634
    sget-boolean v1, Lcom/oppo/camera/Camera;->b:Z

    if-eqz v1, :cond_c

    .line 3635
    iget-object v11, v0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const v12, 0x7f0f00e1

    const/4 v13, -0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-interface/range {v11 .. v16}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    goto :goto_4

    .line 3637
    :cond_c
    sget-boolean v1, Lcom/oppo/camera/Camera;->a:Z

    if-eqz v1, :cond_d

    .line 3638
    iget-object v11, v0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const v12, 0x7f0f00f3

    const/4 v13, -0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-interface/range {v11 .. v16}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    .line 3642
    :cond_d
    :goto_4
    iget-object v1, v0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 3643
    invoke-interface {v1, v3, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3644
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 3645
    iget-object v1, v0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v1, v3}, Lcom/oppo/camera/ui/c;->d(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 3648
    :cond_e
    invoke-interface {v1, v2, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3650
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 3651
    invoke-virtual {v0, v4}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    const v3, 0x7f0703de

    goto :goto_5

    :cond_f
    const v3, 0x7f0702c6

    :goto_5
    move v13, v3

    .line 3653
    iget-object v11, v0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const/4 v12, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    invoke-interface/range {v11 .. v16}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    goto :goto_6

    .line 3654
    :cond_10
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 3655
    iget-boolean v3, v0, Lcom/oppo/camera/d/a;->x:Z

    if-eqz v3, :cond_11

    .line 3656
    iget-object v12, v0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const/4 v13, -0x1

    const v14, 0x7f0702c6

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    invoke-interface/range {v12 .. v17}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    goto :goto_6

    .line 3659
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/d/a;->cM()Z

    move-result v3

    if-nez v3, :cond_13

    .line 3660
    iget-object v3, v0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v3, v10, v11, v11}, Lcom/oppo/camera/ui/c;->a(ZZZ)V

    goto :goto_6

    .line 3664
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/d/a;->cM()Z

    move-result v3

    if-nez v3, :cond_13

    .line 3665
    iget-object v3, v0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v3, v10, v11, v11}, Lcom/oppo/camera/ui/c;->a(ZZZ)V

    .line 3669
    :cond_13
    :goto_6
    invoke-virtual {v0, v4}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 3670
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/d/a;->cK()Z

    goto :goto_7

    .line 3672
    :cond_14
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/d/a;->cJ()Z

    .line 3675
    :goto_7
    iget-object v3, v0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    if-eqz v3, :cond_16

    .line 3676
    invoke-virtual {v0, v4}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    move-object v1, v6

    .line 3680
    :cond_15
    iget-object v3, v0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v3, v1}, Lcom/oppo/camera/e/f;->a(Ljava/lang/String;)V

    .line 3681
    iget-object v1, v0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v1, v5}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    :cond_16
    :goto_8
    const-string v1, "pref_camera_vivid_effect_key"

    .line 3686
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 3687
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/d/a;->bk()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 3688
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/d/a;->F()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 3689
    invoke-virtual {v0, v10}, Lcom/oppo/camera/d/a;->l(I)V

    .line 3691
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/d/a;->aO()Ljava/lang/String;

    move-result-object v1

    const-string v3, "filter"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 3692
    iget-object v1, v0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    iget-object v3, v0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    const v4, 0x7f0f00c1

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v10}, Lcom/oppo/camera/ui/c;->a(Ljava/lang/String;I)V

    :cond_17
    const-string v1, "pref_none_sat_ultra_wide_angle_key"

    .line 3699
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 3700
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/d/a;->bg()V

    :cond_18
    return-void
.end method

.method public a(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v9, p3

    const-string v11, "captureX onCaptureStarted"

    .line 631
    invoke-static {v11}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    .line 633
    iget v1, v0, Lcom/oppo/camera/d/a;->aj:I

    const/4 v8, 0x1

    const/4 v12, 0x0

    if-nez v1, :cond_0

    move v1, v8

    goto :goto_0

    :cond_0
    move v1, v12

    .line 634
    :goto_0
    iget v2, v0, Lcom/oppo/camera/d/a;->aj:I

    add-int/2addr v2, v8

    iput v2, v0, Lcom/oppo/camera/d/a;->aj:I

    .line 636
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/oppo/camera/e/d;

    if-eqz v13, :cond_1

    .line 637
    iget-boolean v2, v13, Lcom/oppo/camera/e/d;->d:Z

    move v14, v2

    goto :goto_1

    :cond_1
    move v14, v12

    .line 639
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCaptureStarted, burstShot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", timestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", mReprocessMetadataIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/oppo/camera/d/a;->av:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v15, "BaseMode"

    invoke-static {v15, v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    .line 643
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/camera2/CaptureRequest;->hashCode()I

    move-result v2

    iput v2, v0, Lcom/oppo/camera/d/a;->k:I

    .line 646
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/d/a;->aa()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 647
    iget-object v2, v0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    new-instance v3, Lcom/oppo/camera/d/a$2;

    invoke-direct {v3, v0, v1}, Lcom/oppo/camera/d/a$2;-><init>(Lcom/oppo/camera/d/a;Z)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 656
    :cond_3
    iget v1, v0, Lcom/oppo/camera/d/a;->ai:I

    iget v2, v0, Lcom/oppo/camera/d/a;->aj:I

    if-ne v1, v2, :cond_4

    move/from16 v16, v8

    goto :goto_2

    :cond_4
    move/from16 v16, v12

    :goto_2
    if-eqz v16, :cond_6

    const-string v1, "pref_support_capture_preview"

    .line 658
    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 659
    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/d/a;->aa()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 660
    iget-object v1, v0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v1}, Lcom/oppo/camera/ui/c;->c()Lcom/oppo/camera/ui/preview/e;

    move-result-object v1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/oppo/camera/ui/preview/e;->a(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJ)V

    .line 663
    :cond_5
    iput-wide v9, v0, Lcom/oppo/camera/d/a;->aq:J

    .line 666
    :cond_6
    iget-object v1, v0, Lcom/oppo/camera/d/a;->J:Lcom/oppo/camera/a/a;

    if-eqz v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/d/a;->q()Z

    move-result v1

    if-eqz v1, :cond_9

    if-nez v14, :cond_9

    if-nez v16, :cond_8

    .line 667
    sget-object v1, Lcom/oppo/camera/e/d$a;->CAPTURE_REPROCESS:Lcom/oppo/camera/e/d$a;

    invoke-virtual {v13}, Lcom/oppo/camera/e/d;->a()Lcom/oppo/camera/e/d$a;

    move-result-object v2

    if-ne v1, v2, :cond_7

    goto :goto_3

    :cond_7
    move v8, v12

    .line 668
    :cond_8
    :goto_3
    iget-object v1, v0, Lcom/oppo/camera/d/a;->J:Lcom/oppo/camera/a/a;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    invoke-virtual/range {v1 .. v8}, Lcom/oppo/camera/a/a;->a(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;JJZ)V

    .line 675
    :cond_9
    iget v1, v0, Lcom/oppo/camera/d/a;->av:I

    iget v2, v0, Lcom/oppo/camera/d/a;->aj:I

    if-ne v1, v2, :cond_a

    .line 676
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureStarted, we save the use reprocess\'s metadata\'s timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    iput-wide v9, v0, Lcom/oppo/camera/d/a;->ar:J

    .line 681
    :cond_a
    invoke-virtual {v13}, Lcom/oppo/camera/e/d;->a()Lcom/oppo/camera/e/d$a;

    move-result-object v1

    sget-object v2, Lcom/oppo/camera/e/d$a;->CAPTURE_REPROCESS:Lcom/oppo/camera/e/d$a;

    if-ne v1, v2, :cond_b

    .line 682
    iget-object v1, v0, Lcom/oppo/camera/d/a;->ah:Lcom/oppo/camera/Ipa/e$a;

    if-eqz v1, :cond_b

    .line 683
    iput-wide v9, v1, Lcom/oppo/camera/Ipa/e$a;->n:J

    .line 684
    iget-object v2, v0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v2, v1}, Lcom/oppo/camera/d/b;->a(Lcom/oppo/camera/Ipa/e$a;)Landroid/net/Uri;

    const/4 v1, 0x0

    .line 685
    iput-object v1, v0, Lcom/oppo/camera/d/a;->ah:Lcom/oppo/camera/Ipa/e$a;

    .line 689
    :cond_b
    invoke-static {v11}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/hardware/camera2/CaptureRequest;)V
    .locals 6

    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCaptureFailed, request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 746
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/e/d;

    if-eqz p1, :cond_0

    .line 747
    iget-boolean p1, p1, Lcom/oppo/camera/e/d;->d:Z

    move v0, p1

    .line 750
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/d/a;->J:Lcom/oppo/camera/a/a;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->q()Z

    move-result p1

    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    .line 751
    new-instance p1, Lcom/oppo/camera/a/a$a;

    invoke-direct {p1}, Lcom/oppo/camera/a/a$a;-><init>()V

    .line 752
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->s()I

    move-result v0

    iput v0, p1, Lcom/oppo/camera/a/a$a;->c:I

    .line 753
    iget v0, p0, Lcom/oppo/camera/d/a;->j:I

    iput v0, p1, Lcom/oppo/camera/a/a$a;->a:I

    .line 755
    iget-object v0, p0, Lcom/oppo/camera/d/a;->J:Lcom/oppo/camera/a/a;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/a/a;->a(Lcom/oppo/camera/a/a$a;)V

    goto :goto_0

    .line 757
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    if-eqz p1, :cond_2

    .line 758
    iget-wide v1, p0, Lcom/oppo/camera/d/a;->aq:J

    invoke-interface {p1, v1, v2}, Lcom/oppo/camera/d/b;->a(J)V

    if-eqz v0, :cond_2

    .line 761
    iget-object p1, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->L()V

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 765
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->ab()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/camera/d/a;->a([BIIIZ)V

    :goto_0
    return-void
.end method

.method public a(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 5

    const-string p1, "BaseMode"

    const-string v0, "onProgress"

    .line 771
    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pref_support_fast_capture"

    .line 773
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 774
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    .line 775
    invoke-interface {v0}, Lcom/oppo/camera/e/f;->n()Lcom/oppo/camera/e/c;

    move-result-object v0

    const-string v1, "com.mediatek.control.capture.next.ready"

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 778
    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 782
    array-length v2, p2

    if-lez v2, :cond_1

    .line 783
    array-length v2, p2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, p2, v3

    if-ne v4, v1, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_3

    .line 792
    iget-boolean p2, p0, Lcom/oppo/camera/d/a;->s:Z

    if-eqz p2, :cond_2

    return-void

    .line 796
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgress, earlyNotify: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    iput-boolean v1, p0, Lcom/oppo/camera/d/a;->A:Z

    :cond_3
    return-void
.end method

.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 9

    const-string v0, "func_torch_soft_light"

    .line 1045
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_5

    .line 1046
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1047
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v5}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v0, :cond_5

    .line 1049
    iget-boolean v6, p0, Lcom/oppo/camera/d/a;->p:Z

    if-nez v6, :cond_5

    .line 1050
    iget-boolean v6, p0, Lcom/oppo/camera/d/a;->x:Z

    .line 1052
    iget-object v7, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v7}, Lcom/oppo/camera/d/b;->p()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1053
    invoke-virtual {p0, v4}, Lcom/oppo/camera/d/a;->f(Z)V

    goto :goto_0

    .line 1054
    :cond_0
    iget-boolean v7, p0, Lcom/oppo/camera/d/a;->q:Z

    if-nez v7, :cond_2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v2, :cond_2

    .line 1055
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v1, :cond_1

    .line 1056
    invoke-virtual {p0, v3}, Lcom/oppo/camera/d/a;->f(Z)V

    goto :goto_0

    .line 1057
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 1058
    invoke-virtual {p0, v4}, Lcom/oppo/camera/d/a;->f(Z)V

    .line 1062
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->x:Z

    if-eq v0, v6, :cond_5

    .line 1063
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bx()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bA()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->C:Z

    if-eqz v0, :cond_3

    goto :goto_1

    .line 1067
    :cond_3
    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->v:Z

    iget-boolean v5, p0, Lcom/oppo/camera/d/a;->x:Z

    invoke-virtual {p0, v0, v5}, Lcom/oppo/camera/d/a;->c(ZZ)V

    goto :goto_2

    :cond_4
    :goto_1
    return-void

    .line 1072
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->n()Lcom/oppo/camera/e/c;

    move-result-object v0

    const-string v5, "com.oppo.picture.exif.flag"

    .line 1073
    invoke-virtual {v0, v5}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v5

    const-string v6, "com.oppo.scene.state"

    .line 1074
    invoke-virtual {v0, v6}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v6

    if-eqz v5, :cond_6

    .line 1077
    invoke-virtual {p1, v5}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {p1, v5}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [I

    check-cast v7, [I

    array-length v7, v7

    if-lez v7, :cond_6

    .line 1078
    invoke-virtual {p1, v5}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    check-cast v5, [I

    aget v5, v5, v4

    .line 1080
    iget v7, p0, Lcom/oppo/camera/d/a;->af:I

    if-eq v7, v5, :cond_6

    .line 1081
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPreviewCaptureResult, pictureExifFlag: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/oppo/camera/d/a;->af:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " > "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "BaseMode"

    invoke-static {v8, v7}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    iput v5, p0, Lcom/oppo/camera/d/a;->af:I

    .line 1088
    :cond_6
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v5}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 1089
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v5}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/hardware/camera2/params/Face;

    array-length v5, v5

    iput v5, p0, Lcom/oppo/camera/d/a;->n:I

    .line 1095
    :cond_7
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v5, "org.codeaurora.qcamera3.manualWB.color_temperature"

    .line 1096
    invoke-virtual {v0, v5}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v5

    const-string v7, "com.oppo.rawhdr.isp.luxindex"

    .line 1097
    invoke-virtual {v0, v7}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v7

    goto :goto_3

    :cond_8
    const-string v5, "com.oppo.manualWB.color_temperature"

    .line 1099
    invoke-virtual {v0, v5}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v5

    const-string v7, "com.mediatek.3afeature.aeLuxIndex"

    .line 1100
    invoke-virtual {v0, v7}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v7

    .line 1103
    :goto_3
    iput v4, p0, Lcom/oppo/camera/d/a;->T:I

    if-eqz v5, :cond_9

    .line 1107
    :try_start_0
    invoke-virtual {p1, v5}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    check-cast v5, [I

    aget v5, v5, v4

    iput v5, p0, Lcom/oppo/camera/d/a;->T:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v5

    .line 1109
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_4
    const/4 v5, 0x0

    .line 1113
    iput v5, p0, Lcom/oppo/camera/d/a;->U:F

    if-eqz v7, :cond_a

    .line 1117
    :try_start_1
    invoke-virtual {p1, v7}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [F

    check-cast v5, [F

    aget v5, v5, v4

    iput v5, p0, Lcom/oppo/camera/d/a;->U:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v5

    .line 1119
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 1124
    :cond_a
    :goto_5
    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cL()Z

    move-result v5

    if-eqz v5, :cond_d

    if-eqz v6, :cond_d

    iget-boolean v5, p0, Lcom/oppo/camera/d/a;->p:Z

    if-nez v5, :cond_d

    .line 1125
    invoke-virtual {p1, v6}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-virtual {p1, v6}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    check-cast v5, [I

    array-length v5, v5

    if-lez v5, :cond_e

    .line 1126
    invoke-virtual {p1, v6}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    check-cast v5, [I

    aget v5, v5, v4

    .line 1127
    iget-boolean v6, p0, Lcom/oppo/camera/d/a;->v:Z

    if-nez v5, :cond_b

    .line 1130
    iput-boolean v3, p0, Lcom/oppo/camera/d/a;->v:Z

    .line 1131
    iput-boolean v4, p0, Lcom/oppo/camera/d/a;->y:Z

    .line 1133
    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cM()Z

    move-result v2

    if-nez v2, :cond_e

    iget-boolean v2, p0, Lcom/oppo/camera/d/a;->C:Z

    if-nez v2, :cond_e

    iget-boolean v2, p0, Lcom/oppo/camera/d/a;->v:Z

    if-eq v6, v2, :cond_e

    .line 1134
    iget-boolean v5, p0, Lcom/oppo/camera/d/a;->x:Z

    invoke-virtual {p0, v2, v5}, Lcom/oppo/camera/d/a;->c(ZZ)V

    goto :goto_6

    :cond_b
    if-ne v2, v5, :cond_c

    .line 1137
    iput-boolean v4, p0, Lcom/oppo/camera/d/a;->v:Z

    .line 1138
    iput-boolean v4, p0, Lcom/oppo/camera/d/a;->y:Z

    .line 1140
    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cM()Z

    move-result v2

    if-nez v2, :cond_e

    iget-boolean v2, p0, Lcom/oppo/camera/d/a;->C:Z

    if-nez v2, :cond_e

    iget-boolean v2, p0, Lcom/oppo/camera/d/a;->v:Z

    if-eq v6, v2, :cond_e

    .line 1141
    iget-boolean v5, p0, Lcom/oppo/camera/d/a;->x:Z

    invoke-virtual {p0, v2, v5}, Lcom/oppo/camera/d/a;->c(ZZ)V

    goto :goto_6

    :cond_c
    if-ne v3, v5, :cond_e

    .line 1144
    iput-boolean v3, p0, Lcom/oppo/camera/d/a;->y:Z

    .line 1145
    iput-boolean v4, p0, Lcom/oppo/camera/d/a;->v:Z

    .line 1147
    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cM()Z

    move-result v2

    if-nez v2, :cond_e

    iget-boolean v2, p0, Lcom/oppo/camera/d/a;->C:Z

    if-nez v2, :cond_e

    iget-boolean v2, p0, Lcom/oppo/camera/d/a;->v:Z

    if-eq v6, v2, :cond_e

    .line 1148
    iget-boolean v5, p0, Lcom/oppo/camera/d/a;->x:Z

    invoke-virtual {p0, v2, v5}, Lcom/oppo/camera/d/a;->c(ZZ)V

    goto :goto_6

    .line 1153
    :cond_d
    iput-boolean v4, p0, Lcom/oppo/camera/d/a;->v:Z

    :cond_e
    :goto_6
    const-string v2, "scene.binning"

    .line 1156
    invoke-virtual {v0, v2}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 1159
    invoke-virtual {p1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    const/16 v5, 0x67

    .line 1161
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_f

    .line 1162
    iput-boolean v3, p0, Lcom/oppo/camera/d/a;->w:Z

    goto :goto_7

    :cond_f
    const/16 v5, 0x68

    .line 1163
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v5, v2, :cond_10

    .line 1164
    iput-boolean v4, p0, Lcom/oppo/camera/d/a;->w:Z

    :cond_10
    :goto_7
    const-string v2, "capture.state"

    .line 1168
    invoke-virtual {v0, v2}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1171
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/16 v2, 0x3ea

    .line 1173
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v2, v4, :cond_11

    const/16 v2, 0x3eb

    .line 1174
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v2, v0, :cond_15

    .line 1175
    :cond_11
    iput-boolean v3, p0, Lcom/oppo/camera/d/a;->z:Z

    .line 1177
    iget v0, p0, Lcom/oppo/camera/d/a;->l:I

    if-lez v0, :cond_12

    sub-int/2addr v0, v3

    .line 1178
    iput v0, p0, Lcom/oppo/camera/d/a;->l:I

    .line 1181
    :cond_12
    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->h()I

    move-result v0

    if-ne v0, v1, :cond_14

    const-string v0, "pref_camera_hdr_mode_key"

    .line 1182
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "pref_auto_night_scence_key"

    .line 1183
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1184
    :cond_13
    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->g()Lcom/oppo/camera/ui/control/c;

    move-result-object v1

    const-string v2, "pref_burst_shot_key"

    .line 1185
    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v2

    .line 1184
    invoke-interface {v0, v1, v2}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;Z)V

    .line 1188
    :cond_14
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->am()V

    .line 1192
    :cond_15
    invoke-direct {p0, p1}, Lcom/oppo/camera/d/a;->b(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 1195
    iget-object v0, p0, Lcom/oppo/camera/d/a;->J:Lcom/oppo/camera/a/a;

    if-eqz v0, :cond_16

    iget-boolean v1, p0, Lcom/oppo/camera/d/a;->s:Z

    if-nez v1, :cond_16

    invoke-virtual {v0}, Lcom/oppo/camera/a/a;->c()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1196
    iget-object v1, p0, Lcom/oppo/camera/d/a;->J:Lcom/oppo/camera/a/a;

    iget-object v3, p0, Lcom/oppo/camera/d/a;->aB:Lcom/oppo/camera/jni/APSClient$BufferCallback;

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->a()Ljava/lang/String;

    move-result-object v4

    iget v0, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/oppo/camera/d/a;->V:Ljava/util/HashMap;

    .line 1197
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, [Ljava/lang/String;

    iget v0, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->a(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->cw()I

    move-result v8

    move-object v2, p1

    .line 1196
    invoke-virtual/range {v1 .. v8}, Lcom/oppo/camera/a/a;->a(Landroid/hardware/camera2/TotalCaptureResult;Lcom/oppo/camera/jni/APSClient$BufferCallback;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)V

    :cond_16
    return-void
.end method

.method public a(Landroid/hardware/camera2/TotalCaptureResult;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 8

    const-string v0, "captureX onCaptureCompleted"

    .line 694
    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    .line 696
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 697
    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oppo/camera/e/d;

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 698
    iget-boolean p2, p2, Lcom/oppo/camera/e/d;->d:Z

    goto :goto_0

    :cond_0
    move p2, v2

    .line 700
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCaptureCompleted, timeStamp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", burstShot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BaseMode"

    invoke-static {v4, v3}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_6

    .line 703
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->q()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/oppo/camera/d/a;->J:Lcom/oppo/camera/a/a;

    if-eqz p2, :cond_6

    const-string p2, "func_sat_camera"

    .line 704
    invoke-virtual {p0, p2}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 706
    iget-object p2, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    const-string v3, "com.oppo.aps.sat.snapshot.sensors.mask"

    invoke-interface {p2, v3, p1}, Lcom/oppo/camera/e/f;->a(Ljava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;)[I

    move-result-object p2

    const/4 v3, 0x1

    if-eqz p2, :cond_3

    .line 708
    array-length v5, p2

    const/4 v6, 0x3

    if-lt v5, v6, :cond_3

    .line 709
    array-length v5, p2

    move v6, v2

    :goto_1
    if-ge v2, v5, :cond_2

    aget v7, p2, v2

    if-ne v7, v3, :cond_1

    add-int/lit8 v6, v6, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v2, v6

    :cond_3
    if-lez v2, :cond_4

    .line 717
    iput v2, p0, Lcom/oppo/camera/d/a;->m:I

    goto :goto_2

    .line 719
    :cond_4
    iput v3, p0, Lcom/oppo/camera/d/a;->m:I

    .line 723
    :cond_5
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCaptureCompleted, mDefaultCaptureNumber: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oppo/camera/d/a;->ak:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mSensorNumber: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oppo/camera/d/a;->m:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    iget-object p2, p0, Lcom/oppo/camera/d/a;->J:Lcom/oppo/camera/a/a;

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->s()I

    move-result v2

    invoke-virtual {p2, p1, v2}, Lcom/oppo/camera/a/a;->a(Landroid/hardware/camera2/TotalCaptureResult;I)V

    :cond_6
    if-eqz v1, :cond_7

    .line 730
    iget-wide v2, p0, Lcom/oppo/camera/d/a;->ar:J

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long p2, v2, v5

    if-nez p2, :cond_7

    const-string p2, "onCaptureCompleted, will save capture result for reprocess"

    .line 731
    invoke-static {v4, p2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    iput-object p1, p0, Lcom/oppo/camera/d/a;->ax:Landroid/hardware/camera2/TotalCaptureResult;

    .line 736
    :cond_7
    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/media/Image;)V
    .locals 1

    .line 3996
    iget-boolean p1, p0, Lcom/oppo/camera/d/a;->s:Z

    const-string v0, "BaseMode"

    if-eqz p1, :cond_0

    const-string p1, "onPostViewReceived, is paused, so return."

    .line 3997
    invoke-static {v0, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "onPostViewReceived"

    .line 4002
    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/media/ImageReader;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 3966
    invoke-virtual {p0, p1, v0, p2}, Lcom/oppo/camera/d/a;->a(Landroid/media/ImageReader;IZ)Z

    return-void
.end method

.method protected a(Lcom/oppo/camera/e/d;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oppo/camera/e/d;",
            "Landroid/hardware/camera2/CaptureRequest$Builder;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    .line 4098
    sget-object p3, Lcom/oppo/camera/e/d$a;->PREVIEW:Lcom/oppo/camera/e/d$a;

    invoke-virtual {p1}, Lcom/oppo/camera/e/d;->a()Lcom/oppo/camera/e/d$a;

    move-result-object p1

    if-eq p3, p1, :cond_0

    .line 4099
    iget-object p1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {p1}, Lcom/oppo/camera/e/f;->n()Lcom/oppo/camera/e/c;

    move-result-object p1

    const-string p3, "com.oppo.request.aps.algo.flag"

    .line 4102
    invoke-virtual {p1, p3}, Lcom/oppo/camera/e/c;->a(Ljava/lang/String;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object p1

    .line 4104
    iget-boolean p3, p0, Lcom/oppo/camera/d/a;->ay:Z

    if-nez p3, :cond_0

    if-eqz p1, :cond_0

    .line 4105
    iget-object p3, p0, Lcom/oppo/camera/d/a;->Y:Ljava/lang/Object;

    monitor-enter p3

    .line 4106
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/d/a;->am:[I

    invoke-virtual {p2, p1, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 4107
    monitor-exit p3

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Lcom/oppo/camera/e/f;)V
    .locals 1

    .line 1252
    iput-object p1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    .line 1254
    iget-object p1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    if-eqz p1, :cond_0

    const-string p1, "key_support_zsl"

    .line 1255
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1256
    iget-object p1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->at()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/oppo/camera/e/f;->h(Z)V

    :cond_0
    return-void
.end method

.method public a(Lcom/oppo/camera/ui/preview/a/g;)V
    .locals 2

    const-string v0, "pref_filter_process_key"

    .line 2591
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2592
    iget-object v0, p0, Lcom/oppo/camera/d/a;->aA:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2593
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2594
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2595
    iput v1, v0, Landroid/os/Message;->what:I

    .line 2596
    iget-object p1, p0, Lcom/oppo/camera/d/a;->aA:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    .line 3936
    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string p1, "BaseMode"

    const-string p2, "updateBubbleValue, mPreference null"

    .line 3937
    invoke-static {p1, p2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3942
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3943
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 3944
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected abstract a(Z)V
.end method

.method protected a(ZZ)V
    .locals 0

    const-string p1, "BaseMode"

    const-string p2, "CameraTest Shutter clickable Restart"

    .line 1600
    invoke-static {p1, p2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a([BIIIZ)V
    .locals 4

    .line 4011
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPictureCallback, data size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", imageFormat: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isBurstShot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4014
    iget-object v0, p0, Lcom/oppo/camera/d/a;->aA:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-nez p5, :cond_1

    .line 4017
    iget-object v1, p0, Lcom/oppo/camera/d/a;->aA:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 4020
    :cond_1
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 4021
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "picture_data"

    .line 4022
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string p1, "picture_width"

    .line 4023
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "picture_height"

    .line 4024
    invoke-virtual {v2, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "picture_format"

    .line 4025
    invoke-virtual {v2, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "is_burst_shot"

    .line 4026
    invoke-virtual {v2, p1, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4027
    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 4028
    iput v0, v1, Landroid/os/Message;->what:I

    .line 4029
    iget-object p1, p0, Lcom/oppo/camera/d/a;->aA:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final a([BIILjava/lang/String;ZZ)V
    .locals 2

    .line 1763
    iget-object v0, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0, p1}, Lcom/oppo/camera/d/b;->a([B)V

    .line 1764
    invoke-virtual {p0, p1, p6}, Lcom/oppo/camera/d/a;->b([BZ)V

    if-eqz p5, :cond_3

    .line 1767
    iget-boolean p5, p0, Lcom/oppo/camera/d/a;->s:Z

    if-eqz p5, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_2

    if-nez p3, :cond_2

    .line 1771
    iget-object p5, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    if-eqz p5, :cond_2

    .line 1772
    invoke-interface {p5}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/oppo/camera/d/a;->b(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object p2

    .line 1774
    iget p3, p0, Lcom/oppo/camera/d/a;->j:I

    iget-object p5, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p5}, Lcom/oppo/camera/d/b;->k()I

    move-result p5

    invoke-static {p3, p5}, Lcom/oppo/camera/e/a;->b(II)I

    move-result p3

    rem-int/lit16 p3, p3, 0xb4

    if-nez p3, :cond_1

    .line 1776
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p3

    .line 1777
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    goto :goto_0

    .line 1779
    :cond_1
    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p3

    .line 1780
    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result p2

    goto :goto_0

    :cond_2
    move v1, p3

    move p3, p2

    move p2, v1

    .line 1784
    :goto_0
    new-instance p5, Lcom/oppo/camera/v$a;

    invoke-direct {p5}, Lcom/oppo/camera/v$a;-><init>()V

    .line 1785
    iput p3, p5, Lcom/oppo/camera/v$a;->o:I

    .line 1786
    iput p2, p5, Lcom/oppo/camera/v$a;->p:I

    .line 1787
    iput-object p1, p5, Lcom/oppo/camera/v$a;->d:[B

    .line 1788
    iput-object p4, p5, Lcom/oppo/camera/v$a;->i:Ljava/lang/String;

    .line 1789
    invoke-static {p1}, Lcom/oppo/camera/o/d;->b([B)I

    move-result p2

    iput p2, p5, Lcom/oppo/camera/v$a;->r:I

    const/4 p2, 0x0

    .line 1790
    iput-object p2, p5, Lcom/oppo/camera/v$a;->h:Ljava/lang/String;

    .line 1791
    iget-object p2, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p2, p5}, Lcom/oppo/camera/d/b;->a(Lcom/oppo/camera/v$a;)V

    .line 1794
    :cond_3
    iget-object p2, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p2, p1}, Lcom/oppo/camera/d/b;->b([B)V

    .line 1795
    invoke-virtual {p0, p1, p6}, Lcom/oppo/camera/d/a;->a([BZ)V

    .line 1797
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->q()Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_4

    .line 1798
    iput-boolean p2, p0, Lcom/oppo/camera/d/a;->q:Z

    .line 1801
    :cond_4
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->ae()Z

    move-result p1

    const/4 p3, 0x1

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/oppo/camera/d/a;->q:Z

    if-nez p1, :cond_5

    .line 1802
    iput-boolean p3, p0, Lcom/oppo/camera/d/a;->B:Z

    .line 1805
    :cond_5
    iput-boolean p3, p0, Lcom/oppo/camera/d/a;->b:Z

    .line 1806
    iput-boolean p2, p0, Lcom/oppo/camera/d/a;->ay:Z

    .line 1807
    iget p1, p0, Lcom/oppo/camera/d/a;->at:I

    iput p1, p0, Lcom/oppo/camera/d/a;->ak:I

    .line 1809
    iget-object p1, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->g()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1810
    iget-object p1, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1, p3}, Lcom/oppo/camera/d/b;->c(Z)V

    .line 1813
    :cond_6
    sget-boolean p1, Lcom/oppo/camera/Camera;->a:Z

    if-nez p1, :cond_7

    sget-boolean p1, Lcom/oppo/camera/Camera;->b:Z

    if-eqz p1, :cond_8

    :cond_7
    iget-boolean p1, p0, Lcom/oppo/camera/d/a;->ad:Z

    if-eqz p1, :cond_8

    if-nez p6, :cond_8

    .line 1816
    iput-boolean p2, p0, Lcom/oppo/camera/d/a;->ad:Z

    .line 1817
    iget-object p1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const-string p2, "pref_camera_flashmode_key"

    invoke-interface {p1, p2}, Lcom/oppo/camera/ui/c;->d(Ljava/lang/String;)V

    .line 1818
    iget-object p1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const-string p2, "pref_camera_videoflashmode_key"

    invoke-interface {p1, p2}, Lcom/oppo/camera/ui/c;->d(Ljava/lang/String;)V

    .line 1821
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "pictureTakenCallback, mbInCapturing: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/oppo/camera/d/a;->q:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mbNeedReloadFlashMenu: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/oppo/camera/d/a;->ad:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseMode"

    invoke-static {p2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected abstract a([BZ)V
.end method

.method protected a([I)V
    .locals 1

    .line 3549
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3550
    invoke-static {p1}, Lcom/oppo/camera/o/d;->a([I)[I

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/oppo/camera/e/f;->a([I)V

    :cond_0
    return-void
.end method

.method public final a([Ljava/lang/String;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 2021
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 2022
    aget-object v2, p1, v1

    iget v3, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-virtual {p0, v2, v3}, Lcom/oppo/camera/d/a;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2024
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    .line 2025
    aget-object v3, p1, v1

    iget v4, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-virtual {p0, v3, v4}, Lcom/oppo/camera/d/a;->b(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    move v4, v0

    .line 2028
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 2029
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2031
    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 2032
    iget-object v6, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    aget-object v7, p1, v1

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    aput-object v5, v8, v0

    invoke-interface {v6, v7, v8}, Lcom/oppo/camera/ui/c;->a(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public a(ILandroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroid/media/ImageReader;IZ)Z
    .locals 6

    .line 3970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onImageReceived, isNeedAPSProcess: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 3972
    iget-object p3, p0, Lcom/oppo/camera/d/a;->J:Lcom/oppo/camera/a/a;

    if-eqz p3, :cond_0

    .line 3973
    new-instance p3, Lcom/oppo/camera/a/a$a;

    invoke-direct {p3}, Lcom/oppo/camera/a/a$a;-><init>()V

    .line 3974
    iput-object p1, p3, Lcom/oppo/camera/a/a$a;->j:Landroid/media/ImageReader;

    .line 3975
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->s()I

    move-result p1

    iput p1, p3, Lcom/oppo/camera/a/a$a;->c:I

    .line 3976
    iget p1, p0, Lcom/oppo/camera/d/a;->j:I

    iput p1, p3, Lcom/oppo/camera/a/a$a;->a:I

    .line 3977
    iput p2, p3, Lcom/oppo/camera/a/a$a;->k:I

    .line 3979
    iget-object p1, p0, Lcom/oppo/camera/d/a;->Y:Ljava/lang/Object;

    monitor-enter p1

    .line 3980
    :try_start_0
    iget-object p2, p0, Lcom/oppo/camera/d/a;->am:[I

    iput-object p2, p3, Lcom/oppo/camera/a/a$a;->b:[I

    .line 3981
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3983
    iget-object p1, p0, Lcom/oppo/camera/d/a;->J:Lcom/oppo/camera/a/a;

    invoke-virtual {p1, p3}, Lcom/oppo/camera/a/a;->b(Lcom/oppo/camera/a/a$a;)V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    .line 3981
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    :cond_0
    const-string p1, "func_post_thumbnail"

    .line 3987
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 3988
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->ab()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/oppo/camera/d/a;->a([BIIIZ)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_camera_photo_ratio_key"

    .line 817
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_timer_shutter_key"

    .line 818
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_high_resolution_key"

    .line 819
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_setting_key"

    .line 820
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public aA()Ljava/lang/String;
    .locals 1

    .line 2361
    iget-object v0, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->S()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aB()Z
    .locals 1

    .line 2365
    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->q:Z

    return v0
.end method

.method public aC()Lcom/oppo/camera/d/a$a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected aD()V
    .locals 2

    .line 2373
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bm()V

    .line 2375
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2376
    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->l(Z)V

    .line 2377
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    :cond_0
    return-void
.end method

.method public aE()V
    .locals 6

    const-string v0, "pref_camera_flashmode_key"

    .line 2382
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "off"

    if-eqz v1, :cond_1

    .line 2383
    invoke-virtual {p0, v3}, Lcom/oppo/camera/d/a;->f(Z)V

    .line 2384
    iget-object v1, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/d/a;->I:Ljava/lang/String;

    .line 2386
    iget-object v1, p0, Lcom/oppo/camera/d/a;->I:Ljava/lang/String;

    const-string v5, "on"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/d/a;->I:Ljava/lang/String;

    const-string v5, "auto"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2387
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v1, v3, v2, v2}, Lcom/oppo/camera/ui/c;->a(ZZZ)V

    .line 2388
    iget-object v1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v1, v0, v4}, Lcom/oppo/camera/ui/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2390
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_1

    .line 2391
    invoke-interface {v0, v4}, Lcom/oppo/camera/e/f;->a(Ljava/lang/String;)V

    .line 2392
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    :cond_1
    const-string v0, "pref_camera_hdr_mode_key"

    .line 2397
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2398
    iput-boolean v3, p0, Lcom/oppo/camera/d/a;->v:Z

    .line 2399
    iget-object v1, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    iget v5, p0, Lcom/oppo/camera/d/a;->j:I

    .line 2400
    invoke-static {v0, v5}, Lcom/oppo/camera/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 2399
    invoke-interface {v1, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/d/a;->H:Ljava/lang/String;

    .line 2402
    iget-object v1, p0, Lcom/oppo/camera/d/a;->H:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2403
    iget-object v1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v1, v3, v2, v2}, Lcom/oppo/camera/ui/c;->a(ZZZ)V

    .line 2404
    iget-object v1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v1, v0, v4}, Lcom/oppo/camera/ui/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2405
    invoke-direct {p0, v4, v3}, Lcom/oppo/camera/d/a;->b(Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method protected aF()V
    .locals 3

    .line 2411
    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "on"

    const-string v2, "pref_camera_vivid_effect_key"

    .line 2412
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2413
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2415
    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v2, v1}, Lcom/oppo/camera/ui/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected aG()V
    .locals 5

    .line 2419
    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "off"

    const-string v2, "pref_camera_vivid_effect_key"

    .line 2420
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2421
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2423
    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4, v3}, Lcom/oppo/camera/ui/c;->a(ZZZ)V

    .line 2424
    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v2, v1}, Lcom/oppo/camera/ui/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public aH()V
    .locals 4

    const-string v0, "pref_camera_flashmode_key"

    .line 2428
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "off"

    if-eqz v1, :cond_1

    .line 2429
    iget-object v1, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/d/a;->I:Ljava/lang/String;

    .line 2431
    iget-object v1, p0, Lcom/oppo/camera/d/a;->I:Ljava/lang/String;

    const-string v3, "on"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/d/a;->I:Ljava/lang/String;

    const-string v3, "auto"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2432
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    iget-object v3, p0, Lcom/oppo/camera/d/a;->I:Ljava/lang/String;

    invoke-interface {v1, v0, v3}, Lcom/oppo/camera/ui/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2434
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_1

    .line 2435
    iget-object v1, p0, Lcom/oppo/camera/d/a;->I:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->a(Ljava/lang/String;)V

    .line 2436
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    :cond_1
    const-string v0, "pref_camera_hdr_mode_key"

    .line 2441
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2442
    iget-object v1, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    iget v3, p0, Lcom/oppo/camera/d/a;->j:I

    .line 2443
    invoke-static {v0, v3}, Lcom/oppo/camera/config/CameraConfig;->getOptionKeyDefaultValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 2442
    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/d/a;->H:Ljava/lang/String;

    .line 2445
    iget-object v1, p0, Lcom/oppo/camera/d/a;->H:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2446
    iget-object v1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    iget-object v2, p0, Lcom/oppo/camera/d/a;->H:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/oppo/camera/ui/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2447
    iget-object v0, p0, Lcom/oppo/camera/d/a;->H:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/d/a;->b(Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method public final aI()V
    .locals 2

    .line 2453
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aD()V

    const/4 v0, 0x0

    .line 2454
    iput v0, p0, Lcom/oppo/camera/d/a;->l:I

    .line 2456
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aH()V

    .line 2457
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->ah()V

    .line 2459
    iget-boolean v1, p0, Lcom/oppo/camera/d/a;->E:Z

    if-eqz v1, :cond_0

    .line 2460
    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->E:Z

    .line 2461
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aF()V

    .line 2464
    :cond_0
    sget-boolean v1, Lcom/oppo/camera/Camera;->a:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/oppo/camera/Camera;->b:Z

    if-eqz v1, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/oppo/camera/d/a;->ad:Z

    if-eqz v1, :cond_2

    .line 2466
    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->ad:Z

    .line 2467
    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const-string v1, "pref_camera_flashmode_key"

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->d(Ljava/lang/String;)V

    .line 2468
    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const-string v1, "pref_camera_videoflashmode_key"

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->d(Ljava/lang/String;)V

    .line 2471
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    .line 2472
    invoke-interface {v0, v1}, Lcom/oppo/camera/d/b;->c(Z)V

    :cond_3
    return-void
.end method

.method public aJ()V
    .locals 2

    const-string v0, "BaseMode"

    const-string v1, "onUpdateCameraSettingMenu"

    .line 2477
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pref_filter_menu"

    .line 2479
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2480
    iget-object v1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v1, v0}, Lcom/oppo/camera/ui/c;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "pref_portrait_new_style_menu"

    .line 2481
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2482
    iget-object v1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v1, v0}, Lcom/oppo/camera/ui/c;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "pref_video_filter_menu"

    .line 2483
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2484
    iget-object v1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v1, v0}, Lcom/oppo/camera/ui/c;->f(Ljava/lang/String;)V

    .line 2487
    :cond_2
    :goto_0
    sget-object v0, Lcom/oppo/camera/d/a;->a:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->b([Ljava/lang/String;)V

    const-string v0, "pref_camera_hdr_mode_key"

    .line 2489
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/oppo/camera/d/a;->n(Z)V

    return-void
.end method

.method public aK()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public aL()V
    .locals 0

    return-void
.end method

.method public aM()V
    .locals 0

    return-void
.end method

.method public aN()V
    .locals 2

    const-string v0, "BaseMode"

    const-string v1, "onEffectSurfaceCreated"

    .line 2505
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2507
    iget-object v0, p0, Lcom/oppo/camera/d/a;->aA:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2508
    iget-object v0, p0, Lcom/oppo/camera/d/a;->aA:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method protected aO()Ljava/lang/String;
    .locals 1

    .line 2518
    iget-object v0, p0, Lcom/oppo/camera/d/a;->S:Ljava/lang/String;

    return-object v0
.end method

.method protected aP()V
    .locals 5

    const-string v0, "BaseMode"

    const-string v1, "updateEffectMenuNames"

    .line 2522
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pref_filter_process_key"

    .line 2524
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2525
    iget-object v1, p0, Lcom/oppo/camera/d/a;->R:Ljava/util/List;

    if-nez v1, :cond_0

    .line 2526
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/d/a;->R:Ljava/util/List;

    .line 2529
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/d/a;->R:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const-string v1, "func_face_beauty_process"

    .line 2531
    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "beauty"

    if-eqz v1, :cond_1

    .line 2532
    iget-object v1, p0, Lcom/oppo/camera/d/a;->R:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2535
    :cond_1
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "filter"

    if-eqz v0, :cond_2

    .line 2536
    iget-object v0, p0, Lcom/oppo/camera/d/a;->R:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2539
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aO()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    .line 2542
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2543
    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cI()I

    move-result v3

    goto :goto_0

    .line 2544
    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2545
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bc()I

    move-result v3

    .line 2548
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/oppo/camera/d/a;->R:Ljava/util/List;

    invoke-interface {v1, v2, v4, v0, v3}, Lcom/oppo/camera/d/b;->a(ZLjava/util/List;Ljava/lang/String;I)V

    :cond_5
    return-void
.end method

.method public aQ()Z
    .locals 5

    .line 2561
    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cH()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2565
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "filter"

    .line 2566
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2567
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bc()I

    move-result v2

    goto :goto_0

    :cond_1
    const-string v0, "BaseMode"

    const-string v2, "hasEffectSelected, not Support filter effect."

    .line 2571
    invoke-static {v0, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    :cond_2
    if-eqz v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public aR()Ljava/lang/String;
    .locals 3

    .line 2579
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aO()Ljava/lang/String;

    move-result-object v0

    const-string v1, "filter"

    .line 2581
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2582
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bc()I

    move-result v0

    .line 2584
    iget-object v1, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    iget v2, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/a;->d(I)[I

    move-result-object v2

    aget v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public aS()I
    .locals 1

    const-string v0, "func_face_beauty_custom"

    .line 2611
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "func_face_beauty_common"

    .line 2613
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public aT()V
    .locals 5

    .line 2621
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bL()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    const-string v2, "resetFaceBeautyValues"

    .line 2623
    invoke-static {v1, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2625
    iget-object v1, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 2626
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const/4 v2, 0x0

    .line 2628
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 2629
    aget-object v3, v0, v2

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bN()[I

    move-result-object v4

    aget v4, v4, v2

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2632
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2635
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bO()[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->a([I)V

    .line 2637
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 2638
    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    :cond_2
    return-void
.end method

.method public aU()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public aV()I
    .locals 1

    const/16 v0, 0x66

    return v0
.end method

.method public aW()I
    .locals 4

    const-string v0, "func_face_beauty_process"

    .line 2686
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2692
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aX()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 2693
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aX()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aZ()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2696
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFaceBeautyCurrIndex, index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BaseMode"

    invoke-static {v3, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz v0, :cond_2

    return v1

    :cond_2
    const/16 v0, 0x66

    return v0
.end method

.method protected aX()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected aY()Z
    .locals 3

    .line 2710
    invoke-static {}, Lcom/oppo/camera/o/d;->y()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "ro.oppo.regionmark"

    const-string v2, ""

    .line 2711
    invoke-static {v0, v2}, Lcom/color/compat/os/SystemPropertiesNative;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "EUEX"

    .line 2712
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "RU"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected aZ()I
    .locals 2

    .line 2719
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aY()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "func_face_beauty_common"

    .line 2723
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string v0, "func_face_beauty_custom"

    .line 2724
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0x66

    return v0

    :cond_3
    return v1
.end method

.method public a_(Z)V
    .locals 2

    .line 867
    new-instance p1, Lcom/oppo/camera/ui/control/c;

    const/16 v0, 0xb

    const-string v1, "button_color_inside_none"

    invoke-direct {p1, v0, v1}, Lcom/oppo/camera/ui/control/c;-><init>(ILjava/lang/String;)V

    const/4 v0, 0x0

    .line 869
    invoke-virtual {p1, v0}, Lcom/oppo/camera/ui/control/c;->b(I)V

    .line 870
    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;)V

    return-void
.end method

.method public aa()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public ab()I
    .locals 1

    const/16 v0, 0x100

    return v0
.end method

.method public ac()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ad()I
    .locals 1

    const/16 v0, 0x100

    return v0
.end method

.method protected ae()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final af()Z
    .locals 2

    const-string v0, "BaseMode"

    const-string v1, "burstShotCapture"

    .line 1830
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1832
    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->p:Z

    .line 1833
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aE()V

    .line 1834
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->ag()V

    .line 1836
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bk()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1837
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aG()V

    .line 1839
    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->E:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1841
    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->E:Z

    .line 1844
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->ai()Z

    move-result v0

    return v0
.end method

.method protected ag()V
    .locals 0

    return-void
.end method

.method protected ah()V
    .locals 0

    return-void
.end method

.method protected ai()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected aj()V
    .locals 0

    return-void
.end method

.method protected ak()V
    .locals 0

    return-void
.end method

.method public final al()Z
    .locals 6

    const-string v0, "BaseMode"

    const-string v1, "capture"

    .line 1870
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1872
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->t()Lcom/oppo/camera/e/d;

    move-result-object v0

    .line 1874
    invoke-direct {p0, v0}, Lcom/oppo/camera/d/a;->b(Lcom/oppo/camera/e/d;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 1875
    iput-boolean v3, p0, Lcom/oppo/camera/d/a;->q:Z

    .line 1876
    iput-boolean v3, p0, Lcom/oppo/camera/d/a;->r:Z

    .line 1877
    iput-boolean v2, p0, Lcom/oppo/camera/d/a;->B:Z

    const-string v0, "captureX beforeSnapping"

    .line 1880
    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return v3

    .line 1885
    :cond_0
    iput-boolean v3, p0, Lcom/oppo/camera/d/a;->z:Z

    .line 1888
    iput v3, p0, Lcom/oppo/camera/d/a;->aj:I

    .line 1889
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->co()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oppo/camera/d/a;->ay:Z

    .line 1891
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1892
    iget-boolean v1, p0, Lcom/oppo/camera/d/a;->p:Z

    if-eqz v1, :cond_1

    .line 1893
    iget-object v1, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-static {}, Lcom/oppo/camera/o/d;->s()I

    move-result v4

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->x()Lcom/oppo/camera/e/f$a;

    move-result-object v5

    invoke-interface {v1, v4, v0, v5}, Lcom/oppo/camera/d/b;->a(ILcom/oppo/camera/e/d;Lcom/oppo/camera/e/f$a;)V

    goto :goto_0

    .line 1895
    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->p()I

    move-result v4

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->x()Lcom/oppo/camera/e/f$a;

    move-result-object v5

    invoke-interface {v1, v4, v0, v5}, Lcom/oppo/camera/d/b;->a(ILcom/oppo/camera/e/d;Lcom/oppo/camera/e/f$a;)V

    :goto_0
    const-string v1, "pref_support_capture_preview"

    .line 1898
    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1899
    invoke-direct {p0, v2}, Lcom/oppo/camera/d/a;->y(I)V

    .line 1900
    invoke-direct {p0, v0}, Lcom/oppo/camera/d/a;->d(Lcom/oppo/camera/e/d;)V

    goto :goto_1

    .line 1902
    :cond_2
    invoke-direct {p0, v3}, Lcom/oppo/camera/d/a;->y(I)V

    .line 1905
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->ba()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1906
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0, v2}, Lcom/oppo/camera/e/f;->l(Z)V

    .line 1907
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    goto :goto_2

    .line 1910
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->t()V

    .line 1913
    :cond_4
    :goto_2
    iput v3, p0, Lcom/oppo/camera/d/a;->k:I

    .line 1914
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->Z()Z

    return v2
.end method

.method protected am()V
    .locals 0

    return-void
.end method

.method public an()V
    .locals 0

    return-void
.end method

.method public ao()V
    .locals 0

    return-void
.end method

.method public ap()V
    .locals 0

    return-void
.end method

.method protected aq()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final ar()V
    .locals 1

    const/4 v0, 0x0

    .line 1947
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->a(Landroid/hardware/camera2/CaptureRequest;)V

    return-void
.end method

.method public as()Z
    .locals 2

    .line 1959
    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->B:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cC()I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public at()Z
    .locals 1

    .line 2081
    iget v0, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public au()I
    .locals 5

    .line 2091
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v0

    const/4 v1, 0x4

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 2092
    new-array v2, v0, [[I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v4}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oppo/camera/e/h;->x()[I

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2094
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 2095
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    .line 2097
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    .line 2103
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDefaultAFMode, focusMode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BaseMode"

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public av()Ljava/lang/String;
    .locals 2

    const-string v0, "pref_camera_videoflashmode_key"

    .line 2109
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2110
    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cF()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "pref_camera_torch_mode_key"

    .line 2113
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "func_torch_soft_light"

    if-nez v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "pref_camera_flashmode_key"

    .line 2123
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2124
    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cE()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string v0, "off"

    return-object v0

    .line 2114
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aw()Ljava/lang/String;

    move-result-object v0

    .line 2116
    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "torch"

    :cond_4
    return-object v0
.end method

.method protected aw()Ljava/lang/String;
    .locals 3

    .line 2140
    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    const v1, 0x7f0f0196

    if-eqz v0, :cond_0

    .line 2141
    iget-object v2, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    .line 2142
    invoke-virtual {v2, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_torch_mode_key"

    .line 2141
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2145
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ax()Z
    .locals 3

    const-string v0, "key_high_picture_size"

    .line 2196
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2197
    iget-object v1, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    return v2
.end method

.method public ay()Ljava/lang/String;
    .locals 4

    .line 2330
    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    const-string v1, "off"

    if-eqz v0, :cond_1

    const-string v0, "pref_time_lapse_key"

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2334
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    const v3, 0x7f0f015c

    .line 2335
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_timer_shutter_key"

    .line 2334
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2338
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_1
    :goto_0
    return-object v1
.end method

.method public az()Ljava/lang/String;
    .locals 3

    .line 2349
    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 2350
    iget-object v1, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    const v2, 0x7f0f00f7

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_mirror_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2353
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2354
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bo()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public abstract b()I
.end method

.method public b(Lcom/oppo/camera/e/h;)Landroid/util/Size;
    .locals 5

    const-string v0, "key_high_picture_size"

    .line 2256
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    .line 2257
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2258
    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_HIGH_PICTURE_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getSizeConfigValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Landroid/util/Size;

    move-result-object p1

    return-object p1

    .line 2261
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    const v3, 0x7f0f0114

    .line 2262
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_photo_ratio_key"

    .line 2261
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x100

    .line 2264
    invoke-virtual {p1, v2}, Lcom/oppo/camera/e/h;->a(I)Ljava/util/List;

    move-result-object p1

    .line 2266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPictureSize, sizeList: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BaseMode"

    invoke-static {v3, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "standard"

    .line 2268
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-wide v3, 0x3ff5555555555555L    # 1.3333333333333333

    if-eqz v2, :cond_1

    .line 2269
    invoke-static {p1, v3, v4}, Lcom/oppo/camera/o/d;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v2, "full"

    .line 2270
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2271
    invoke-static {}, Lcom/oppo/camera/o/d;->P()D

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/oppo/camera/o/d;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v2, "square"

    .line 2272
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 2273
    invoke-static {p1, v0, v1}, Lcom/oppo/camera/o/d;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p1

    return-object p1

    :cond_3
    const-string v2, "16_9"

    .line 2274
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-wide v0, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    .line 2275
    invoke-static {p1, v0, v1}, Lcom/oppo/camera/o/d;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p1

    return-object p1

    :cond_4
    const-string v2, "standard_high"

    .line 2276
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2277
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2278
    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_HIGH_PICTURE_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getSizeConfigValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Landroid/util/Size;

    move-result-object p1

    return-object p1

    .line 2280
    :cond_5
    invoke-static {p1, v3, v4}, Lcom/oppo/camera/o/d;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p1

    return-object p1

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Lcom/oppo/camera/statistics/model/DcsMsgData;)Lcom/oppo/camera/statistics/model/DcsMsgData;
    .locals 0

    return-object p1
.end method

.method public b(Lcom/oppo/camera/statistics/model/DcsMsgData;Lcom/oppo/camera/v$a;)Lcom/oppo/camera/statistics/model/DcsMsgData;
    .locals 0

    return-object p1
.end method

.method public final b(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "pref_camera_flashmode_key"

    .line 1984
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-static {v1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v2

    .line 1988
    :cond_0
    invoke-static {p1, p2}, Lcom/oppo/camera/config/CameraConfig;->getSupportedList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p2

    if-nez p2, :cond_4

    .line 1991
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1994
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1995
    iget-object v0, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    :cond_1
    const-string v0, "pref_camera_photo_ratio_key"

    .line 1998
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1999
    iget-object v0, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    :cond_2
    const-string v0, "pref_camera_timer_shutter_key"

    .line 2002
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2003
    iget-object p1, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f020043

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    :cond_3
    if-eqz v2, :cond_4

    const/4 p1, 0x0

    .line 2007
    :goto_0
    array-length v0, v2

    if-ge p1, v0, :cond_4

    .line 2008
    aget-object v0, v2, p1

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    return-object p2
.end method

.method public b(I)V
    .locals 1

    const/4 v0, 0x0

    .line 957
    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->C:Z

    .line 958
    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->az:Z

    .line 959
    iput v0, p0, Lcom/oppo/camera/d/a;->l:I

    .line 960
    iput p1, p0, Lcom/oppo/camera/d/a;->j:I

    return-void
.end method

.method protected b(Landroid/media/Image;)V
    .locals 0

    return-void
.end method

.method public final b(ZZ)V
    .locals 3

    const-string v0, "BaseMode"

    if-nez p1, :cond_0

    .line 1703
    iget-boolean v1, p0, Lcom/oppo/camera/d/a;->s:Z

    if-nez v1, :cond_0

    .line 1704
    iget v1, p0, Lcom/oppo/camera/d/a;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/oppo/camera/d/a;->l:I

    .line 1706
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "shutterCallback, mPostCounter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oppo/camera/d/a;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1708
    iput-boolean v1, p0, Lcom/oppo/camera/d/a;->r:Z

    .line 1711
    :cond_0
    iget-boolean v1, p0, Lcom/oppo/camera/d/a;->s:Z

    if-eqz v1, :cond_1

    const-string p1, "shutterCallback, camera pause, so return"

    .line 1712
    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 1717
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bE()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1718
    iget-object v0, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->c()V

    .line 1721
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/d/a;->a(ZZ)V

    return-void
.end method

.method protected b([BZ)V
    .locals 0

    return-void
.end method

.method public final b([Ljava/lang/String;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 2045
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_5

    .line 2046
    aget-object v2, p1, v1

    iget v3, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-virtual {p0, v2, v3}, Lcom/oppo/camera/d/a;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2048
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_4

    .line 2049
    aget-object v3, p1, v1

    iget v4, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-virtual {p0, v3, v4}, Lcom/oppo/camera/d/a;->b(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_4

    move v4, v0

    .line 2052
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 2053
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2055
    invoke-interface {v2, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 2056
    aget-object v6, p1, v1

    const-string v7, "pref_camera_photo_ratio_key"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    iget-object v8, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    const v9, 0x7f0f0114

    .line 2058
    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2057
    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2059
    iget-object v6, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 2060
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2061
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2064
    :cond_1
    aget-object v6, p1, v1

    const-string v7, "pref_camera_flashmode_key"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    iget-object v8, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    const v9, 0x7f0f00c6

    .line 2066
    invoke-virtual {v8, v9}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2065
    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2067
    iget-object v6, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 2068
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2069
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2072
    :cond_2
    iget-object v6, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    aget-object v7, p1, v1

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    aput-object v5, v8, v0

    invoke-interface {v6, v7, v8}, Lcom/oppo/camera/ui/c;->b(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_subsetting_key"

    .line 832
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 833
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->B()Z

    move-result p1

    return p1

    :cond_0
    const-string v0, "pref_setting_key"

    .line 836
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 837
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->B()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_1
    const-string v0, "pref_filter_menu"

    .line 840
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "pref_camera_torch_mode_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "pref_camera_timer_shutter_key"

    .line 844
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    :cond_3
    return v0

    .line 841
    :cond_4
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected bA()Z
    .locals 3

    .line 3310
    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    .line 3312
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0196

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_torch_mode_key"

    .line 3311
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3313
    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected bB()Z
    .locals 2

    .line 3320
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->av()Ljava/lang/String;

    move-result-object v0

    const-string v1, "torch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bC()Z
    .locals 4

    const-string v0, "pref_camera_gesture_shutter_key"

    .line 3349
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    const v3, 0x7f0f00d0

    .line 3351
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3350
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bD()V
    .locals 13

    .line 3369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayScreenHintIconInSwitchOn, isOpenFrontTorch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bA()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isOpenFlash: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3370
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bx()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    .line 3369
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3372
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->cq()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "displayScreenHintIconInSwitchOn, beauty3DMode"

    .line 3373
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3378
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3382
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bA()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bu()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bw()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->C:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->p:Z

    if-nez v0, :cond_6

    .line 3385
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bw()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3386
    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cN()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3387
    iget-object v1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const/4 v2, -0x1

    const v3, 0x7f0702cb

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    goto :goto_0

    .line 3390
    :cond_3
    iget-object v7, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const/4 v8, -0x1

    const v9, 0x7f0702ca

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-interface/range {v7 .. v12}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    goto :goto_0

    .line 3393
    :cond_4
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->av()Ljava/lang/String;

    move-result-object v0

    const-string v1, "torch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3394
    iget-object v1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const/4 v2, -0x1

    const v3, 0x7f0703de

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    goto :goto_0

    .line 3396
    :cond_5
    iget-object v7, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const/4 v8, -0x1

    const v9, 0x7f0702c6

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-interface/range {v7 .. v12}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    goto :goto_0

    .line 3400
    :cond_6
    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2, v2}, Lcom/oppo/camera/ui/c;->a(ZZZ)V

    :goto_0
    return-void
.end method

.method protected bE()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bF()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bG()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bH()V
    .locals 0

    .line 3449
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aP()V

    return-void
.end method

.method public bI()Ljava/lang/String;
    .locals 2

    .line 3453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "oppo_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/d/a;->af:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bJ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected bK()V
    .locals 3

    const-string v0, "func_face_beauty_process"

    .line 3477
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3478
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aW()I

    move-result v0

    .line 3480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBeforePreview, index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseMode"

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3482
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->j(I)V

    .line 3483
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bO()[I

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/a;->a([I)V

    .line 3485
    iget-object v1, p0, Lcom/oppo/camera/d/a;->P:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v1, :cond_1

    .line 3486
    invoke-interface {v1, v0}, Lcom/oppo/camera/ui/preview/a/i;->g(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3489
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->j(I)V

    .line 3491
    iget-object v1, p0, Lcom/oppo/camera/d/a;->P:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v1, :cond_1

    .line 3492
    invoke-interface {v1, v0}, Lcom/oppo/camera/ui/preview/a/i;->g(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected bL()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bM()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method protected bN()[I
    .locals 1

    .line 3506
    sget-object v0, Lcom/oppo/camera/d/a;->e:[I

    return-object v0
.end method

.method protected bO()[I
    .locals 6

    .line 3510
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bL()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "BaseMode"

    const-string v1, "getCustomBeautyValues, customBeautyKeys null"

    .line 3513
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 3518
    :cond_0
    array-length v1, v0

    new-array v1, v1, [I

    const-string v2, "func_face_beauty_custom"

    .line 3520
    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 3521
    :goto_0
    array-length v2, v0

    if-ge v3, v2, :cond_6

    .line 3522
    iget-object v2, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_1

    .line 3523
    aget-object v4, v0, v3

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bN()[I

    move-result-object v5

    aget v5, v5, v3

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v3

    goto :goto_1

    .line 3525
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bN()[I

    move-result-object v2

    aget v2, v2, v3

    aput v2, v1, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "func_face_beauty_common"

    .line 3528
    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3529
    iget-object v2, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_4

    .line 3530
    aget-object v4, v0, v3

    iget v5, p0, Lcom/oppo/camera/d/a;->j:I

    .line 3531
    invoke-static {v5}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bM()I

    move-result v5

    goto :goto_2

    :cond_3
    move v5, v3

    .line 3530
    :goto_2
    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v3

    goto :goto_3

    .line 3533
    :cond_4
    aput v3, v1, v3

    :goto_3
    const/4 v2, 0x1

    .line 3536
    :goto_4
    array-length v4, v0

    if-ge v2, v4, :cond_6

    .line 3537
    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    move v2, v3

    .line 3540
    :goto_5
    array-length v4, v0

    if-ge v2, v4, :cond_6

    .line 3541
    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    return-object v1
.end method

.method public bP()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bQ()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bR()V
    .locals 0

    return-void
.end method

.method public bS()V
    .locals 0

    return-void
.end method

.method public bT()V
    .locals 0

    return-void
.end method

.method public bU()V
    .locals 0

    return-void
.end method

.method public bV()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bW()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bX()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bY()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bZ()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected ba()Z
    .locals 2

    const-string v0, "func_face_beauty_process"

    .line 2746
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2747
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aW()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public bb()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bc()I
    .locals 3

    .line 2800
    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2804
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->be()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2806
    iget v2, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/a;->e(I)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/oppo/camera/o/d;->a(III)I

    move-result v0

    return v0
.end method

.method public bd()Ljava/lang/String;
    .locals 1

    .line 2810
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bc()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->o(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected be()Ljava/lang/String;
    .locals 1

    const-string v0, "key_filter_index"

    return-object v0
.end method

.method public bf()Ljava/lang/String;
    .locals 1

    const-string v0, "pref_filter_menu"

    return-object v0
.end method

.method protected bg()V
    .locals 0

    return-void
.end method

.method public bh()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bi()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bj()Z
    .locals 5

    const-string v0, "pref_ai_scene_key"

    .line 3052
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3055
    iget-object v1, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    const-string v2, "on"

    if-eqz v1, :cond_0

    .line 3056
    iget-object v3, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    const v4, 0x7f0f0061

    .line 3057
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 3056
    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 3060
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bk()Z
    .locals 4

    const-string v0, "pref_camera_vivid_effect_key"

    .line 3067
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3070
    iget-object v1, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 3071
    iget-object v2, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    const v3, 0x7f0f01bb

    .line 3072
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3071
    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "off"

    :goto_0
    const-string v1, "on"

    .line 3075
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bl()V
    .locals 3

    .line 3082
    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 3083
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 3084
    iget-object v1, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    const v2, 0x7f0f01bb

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_vivid_effect_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3085
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 3086
    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v2}, Lcom/oppo/camera/ui/c;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected bm()V
    .locals 2

    .line 3106
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    if-nez v0, :cond_0

    const-string v0, "BaseMode"

    const-string v1, "updateAISceneMode failed"

    .line 3107
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3112
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bj()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3113
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->e(I)V

    goto :goto_0

    .line 3115
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->e(I)V

    :goto_0
    return-void
.end method

.method public bn()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bo()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bp()V
    .locals 0

    return-void
.end method

.method public bq()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public br()Z
    .locals 1

    .line 3173
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_0

    .line 3174
    invoke-interface {v0}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e/h;->I()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bs()Z
    .locals 1

    .line 3181
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_0

    .line 3182
    invoke-interface {v0}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e/h;->J()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bt()Z
    .locals 2

    .line 3189
    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cE()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3190
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->by()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->x:Z

    if-nez v0, :cond_3

    .line 3191
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bA()Z

    move-result v0

    const-string v1, "func_torch_soft_light"

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3192
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bz()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->x:Z

    if-eqz v0, :cond_2

    .line 3194
    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public bu()Z
    .locals 2

    .line 3202
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bx()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3206
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->by()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->x:Z

    if-eqz v0, :cond_1

    return v1

    .line 3210
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bA()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 3214
    :cond_2
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bz()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->x:Z

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public bv()Z
    .locals 2

    const-string v0, "pref_camera_torch_mode_key"

    .line 3247
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3248
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bA()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3252
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bz()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->x:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bw()Z
    .locals 2

    .line 3261
    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cM()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3265
    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cL()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->v:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected bx()Z
    .locals 3

    .line 3273
    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "BaseMode"

    const-string v2, "isOpenFlash mPreferences is equal null "

    .line 3274
    invoke-static {v0, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 3278
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->av()Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->av()Ljava/lang/String;

    move-result-object v0

    const-string v2, "torch"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/oppo/camera/d/a;->j:I

    .line 3279
    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method protected by()Z
    .locals 3

    .line 3287
    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "BaseMode"

    const-string v2, "isAutoFlash mPreferences is equal null "

    .line 3288
    invoke-static {v0, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 3292
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->av()Ljava/lang/String;

    move-result-object v0

    const-string v2, "auto"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method protected bz()Z
    .locals 3

    .line 3300
    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/d/a;->N:Landroid/app/Activity;

    .line 3302
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0196

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_torch_mode_key"

    .line 3301
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3303
    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c(Lcom/oppo/camera/e/h;)Landroid/util/Size;
    .locals 6

    .line 2288
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/a;->b(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object v0

    .line 2293
    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Landroid/util/Size;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "standard"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "square"

    const-wide v3, 0x3ff5555555555555L    # 1.3333333333333333

    if-nez v1, :cond_3

    .line 2294
    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Landroid/util/Size;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "standard_high"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2296
    :cond_0
    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Landroid/util/Size;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "full"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2297
    invoke-static {}, Lcom/oppo/camera/o/d;->P()D

    move-result-wide v3

    goto :goto_0

    .line 2298
    :cond_1
    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Landroid/util/Size;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    .line 2300
    :cond_2
    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Landroid/util/Size;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "16_9"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-wide v3, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    .line 2304
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/oppo/camera/e/h;->a()Ljava/util/List;

    move-result-object p1

    .line 2306
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPreviewSize, sizeList: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "BaseMode"

    invoke-static {v5, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2308
    invoke-static {p1, v3, v4}, Lcom/oppo/camera/o/d;->a(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p1

    .line 2310
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz p1, :cond_5

    .line 2312
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    rem-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_4

    .line 2313
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    rem-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_5

    .line 2314
    :cond_4
    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Landroid/util/Size;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2315
    new-instance p1, Landroid/util/Size;

    const/16 v0, 0x440

    invoke-direct {p1, v0, v0}, Landroid/util/Size;-><init>(II)V

    :cond_5
    return-object p1
.end method

.method public c(I)V
    .locals 0

    .line 1220
    iput p1, p0, Lcom/oppo/camera/d/a;->g:I

    return-void
.end method

.method public final c(Z)V
    .locals 2

    .line 972
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resume, isShortcutType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 974
    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->C:Z

    .line 975
    iput-boolean v0, p0, Lcom/oppo/camera/d/a;->s:Z

    .line 976
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->Q()V

    .line 977
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/a;->a(Z)V

    const-string p1, "pref_camera_hdr_mode_key"

    .line 979
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 980
    invoke-direct {p0, p1}, Lcom/oppo/camera/d/a;->n(Z)V

    goto :goto_0

    .line 982
    :cond_0
    invoke-direct {p0, v0}, Lcom/oppo/camera/d/a;->n(Z)V

    :goto_0
    const-string p1, "pref_filter_menu"

    .line 985
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/oppo/camera/d/a;->o(Z)V

    const-string p1, "pref_camera_pi_mode_key"

    .line 986
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/oppo/camera/d/a;->p(Z)V

    return-void
.end method

.method public c(ZZ)V
    .locals 12

    .line 3405
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->cq()I

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "BaseMode"

    const-string p2, "displayAllIcon, beauty3DMode"

    .line 3406
    invoke-static {p1, p2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3411
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_3

    .line 3416
    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cN()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3417
    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const/4 v1, -0x1

    const v2, 0x7f0702cb

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    goto :goto_1

    .line 3419
    :cond_2
    iget-object v6, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const/4 v7, -0x1

    const v8, 0x7f0702ca

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v6 .. v11}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_6

    .line 3422
    iget-boolean p2, p0, Lcom/oppo/camera/d/a;->p:Z

    if-nez p2, :cond_7

    .line 3423
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->by()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bz()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_0

    .line 3425
    :cond_4
    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cM()Z

    move-result p2

    if-nez p2, :cond_7

    .line 3426
    iget-object p2, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p2, p1, v0, v0}, Lcom/oppo/camera/ui/c;->a(ZZZ)V

    goto :goto_1

    .line 3424
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    const/4 v2, -0x1

    const v3, 0x7f0702c6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    goto :goto_1

    .line 3430
    :cond_6
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bx()Z

    move-result p2

    if-nez p2, :cond_7

    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cM()Z

    move-result p2

    if-nez p2, :cond_7

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bA()Z

    move-result p2

    if-nez p2, :cond_7

    .line 3431
    iget-object p2, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p2, p1, v0, v0}, Lcom/oppo/camera/ui/c;->a(ZZZ)V

    :cond_7
    :goto_1
    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_zoom_key"

    .line 852
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 853
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/oppo/camera/d/a;->p:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1

    .line 855
    :cond_2
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected cA()V
    .locals 0

    return-void
.end method

.method public ca()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public cb()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public cc()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public cd()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ce()V
    .locals 0

    return-void
.end method

.method public cf()V
    .locals 0

    return-void
.end method

.method public cg()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public ch()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ci()V
    .locals 0

    return-void
.end method

.method public cj()Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;
    .locals 2

    .line 3948
    new-instance v0, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;

    invoke-direct {v0}, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;-><init>()V

    .line 3950
    iget-object v1, p0, Lcom/oppo/camera/d/a;->P:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v1, :cond_0

    const-string v1, "pref_filter_process_key"

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/a;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3951
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bc()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/CameraStatisticsUtil$MakerNote;->O:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public ck()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public cl()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public cm()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public cn()V
    .locals 1

    .line 4089
    iget-object v0, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4090
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->F()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aW()I

    move-result v0

    if-eqz v0, :cond_1

    .line 4091
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->v()V

    :cond_1
    return-void
.end method

.method protected co()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected cp()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected cq()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected cr()V
    .locals 0

    return-void
.end method

.method protected cs()V
    .locals 0

    return-void
.end method

.method protected ct()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected cu()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final cv()Z
    .locals 1

    .line 4151
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_0

    .line 4152
    invoke-interface {v0}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    .line 4153
    invoke-interface {v0}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/e/h;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public cw()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected cx()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public cy()V
    .locals 0

    return-void
.end method

.method public cz()V
    .locals 0

    return-void
.end method

.method public d()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Lcom/oppo/camera/e/h;)Landroid/util/Size;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public d(ZZ)V
    .locals 0

    return-void
.end method

.method public d(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public d(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "pref_camera_tap_shutter_key"

    .line 874
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_d

    const-string v0, "pref_update_setting_background_bar_key"

    .line 875
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "pref_face_detection_key"

    .line 876
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "pref_time_lapse_key"

    .line 877
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "pref_continuous_focus_key"

    .line 878
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "pref_manual_exposure_key"

    .line 879
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "pref_support_switch_camera"

    .line 880
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "pref_support_thumbnail"

    .line 881
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "pref_camera_assistant_line_key"

    .line 882
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "pref_camera_slogan_key"

    .line 883
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "pref_subsetting_key"

    .line 884
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "key_support_zsl"

    .line 885
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "pref_support_rotate_hint_view"

    .line 886
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "pref_get_preview_on_switch_button_down"

    .line 887
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "func_request_fast_launch"

    .line 888
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v0, "pref_camera_gesture_shutter_key"

    .line 892
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 893
    iget p1, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->A()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    const-string v0, "pref_zoom_key"

    .line 896
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 897
    iget p1, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/oppo/camera/d/a;->p:Z

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->ax()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    return v1

    :cond_4
    :goto_1
    return v2

    :cond_5
    const-string v0, "pref_filter_menu"

    .line 904
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "pref_filter_process_key"

    .line 905
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_6
    const-string v0, "need_preview_stream"

    .line 908
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 909
    iget p1, p0, Lcom/oppo/camera/d/a;->ap:I

    if-ne p1, v1, :cond_7

    goto :goto_2

    :cond_7
    move v1, v2

    :goto_2
    return v1

    :cond_8
    const-string v0, "func_reset_auto_focus"

    .line 912
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 913
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aB()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->av()Ljava/lang/String;

    move-result-object p1

    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_3

    :cond_9
    move v1, v2

    :cond_a
    :goto_3
    return v1

    :cond_b
    const-string v0, "pref_mirror_key"

    .line 916
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 917
    iget p1, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    return p1

    :cond_c
    return v2

    :cond_d
    :goto_4
    return v1
.end method

.method public final d(Z)Z
    .locals 1

    .line 1938
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aq()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1939
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->am()V

    const/4 p1, 0x1

    return p1

    .line 1942
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->o()Z

    move-result p1

    return p1
.end method

.method protected d(I)[I
    .locals 0

    .line 1586
    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/oppo/camera/ui/preview/a/d;->c:[I

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/oppo/camera/ui/preview/a/d;->d:[I

    :goto_0
    return-object p1
.end method

.method public e(Lcom/oppo/camera/e/h;)Landroid/util/Size;
    .locals 0

    .line 2326
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/a;->c(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public e(Z)V
    .locals 0

    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 1

    .line 1967
    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->u:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/a;->f(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method protected e(I)[Ljava/lang/String;
    .locals 0

    .line 1591
    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/oppo/camera/ui/preview/a/d;->a:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/oppo/camera/ui/preview/a/d;->b:[Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method public f(I)V
    .locals 0

    .line 1951
    iput p1, p0, Lcom/oppo/camera/d/a;->j:I

    return-void
.end method

.method public f(Z)V
    .locals 1

    .line 3009
    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->x:Z

    if-eq v0, p1, :cond_0

    .line 3010
    iput-boolean p1, p0, Lcom/oppo/camera/d/a;->x:Z

    .line 3012
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_0

    .line 3013
    invoke-interface {v0, p1}, Lcom/oppo/camera/e/f;->b(Z)V

    :cond_0
    return-void
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public f(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_camera_flashmode_key"

    .line 1971
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/oppo/camera/d/a;->j:I

    .line 1972
    invoke-virtual {p0, v0, p1}, Lcom/oppo/camera/d/a;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public g(I)I
    .locals 2

    .line 2643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getFaceBeautyItemValue, index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2645
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bL()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2646
    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bL()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/a;->h(I)I

    move-result p1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 2649
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/a;->h(I)I

    move-result p1

    return p1
.end method

.method public g()Lcom/oppo/camera/ui/control/c;
    .locals 3

    .line 373
    new-instance v0, Lcom/oppo/camera/ui/control/c;

    const/4 v1, 0x1

    const-string v2, "button_color_inside_none"

    invoke-direct {v0, v1, v2}, Lcom/oppo/camera/ui/control/c;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 2

    .line 2512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEffectMenuChange, menuName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2514
    iput-object p1, p0, Lcom/oppo/camera/d/a;->S:Ljava/lang/String;

    return-void
.end method

.method public g(Z)V
    .locals 0

    return-void
.end method

.method protected h(I)I
    .locals 1

    const-string v0, "func_face_beauty_common"

    .line 2732
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 2733
    iget p1, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2734
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bM()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    const-string v0, "func_face_beauty_custom"

    .line 2738
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2739
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bN()[I

    move-result-object v0

    aget p1, v0, p1

    return p1

    :cond_2
    const p1, -0x186a0

    return p1
.end method

.method protected abstract h()V
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    .line 3737
    iget-object v0, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->e()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3738
    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/d/a;->b(Ljava/lang/String;Z)V

    .line 3739
    invoke-direct {p0, p1}, Lcom/oppo/camera/d/a;->l(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public h(Z)V
    .locals 0

    .line 3800
    iput-boolean p1, p0, Lcom/oppo/camera/d/a;->F:Z

    return-void
.end method

.method protected abstract i()V
.end method

.method public i(I)V
    .locals 2

    .line 2758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFaceBeautyItemChange, index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2760
    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aX()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2766
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2767
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aX()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2768
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2770
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/a;->j(I)V

    .line 2772
    iget-object v0, p0, Lcom/oppo/camera/d/a;->P:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v0, :cond_1

    .line 2773
    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/preview/a/i;->g(I)V

    :cond_1
    return-void

    .line 2761
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onFaceBeautyItemChange, mPreferences: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", key: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aX()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public i(Z)V
    .locals 0

    return-void
.end method

.method public i(Ljava/lang/String;)Z
    .locals 2

    .line 3912
    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p1, "BaseMode"

    const-string v0, "isBubbleOpen, mPreference null"

    .line 3913
    invoke-static {p1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v0, "key_bubble_short_video"

    .line 3918
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3919
    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .line 3921
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method protected abstract j()V
.end method

.method protected j(I)V
    .locals 1

    .line 2778
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_1

    const-string v0, "func_face_beauty_process"

    .line 2779
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2780
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0, p1}, Lcom/oppo/camera/e/f;->g(I)V

    goto :goto_0

    .line 2782
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/oppo/camera/e/f;->g(I)V

    .line 2785
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    :cond_1
    return-void
.end method

.method public j(Z)V
    .locals 0

    return-void
.end method

.method public j(Ljava/lang/String;)Z
    .locals 1

    .line 3926
    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string p1, "BaseMode"

    const-string v0, "containsBubbleKey, mPreference null"

    .line 3927
    invoke-static {p1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 3932
    :cond_0
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected abstract k()V
.end method

.method public k(I)V
    .locals 3

    .line 2818
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->aO()Ljava/lang/String;

    move-result-object v0

    .line 2820
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEffectItemChange, currMenuName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", effectIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseMode"

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "beauty"

    .line 2822
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2823
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/a;->i(I)V

    goto :goto_0

    :cond_0
    const-string v1, "filter"

    .line 2824
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2825
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/a;->l(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public k(Z)V
    .locals 0

    return-void
.end method

.method public k(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "type_still_capture"

    .line 4059
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "type_still_capture_raw"

    .line 4063
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "pref_support_raw_post_process"

    .line 4064
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected abstract l()V
.end method

.method protected l(I)V
    .locals 2

    .line 2830
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bk()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2831
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bl()V

    .line 2834
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/a;->n(I)V

    .line 2836
    iget-object v0, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->j()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2837
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->be()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 2838
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2840
    iget-object v0, p0, Lcom/oppo/camera/d/a;->M:Lcom/oppo/camera/ui/c;

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bf()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, v1, p1}, Lcom/oppo/camera/ui/c;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public l(Z)V
    .locals 0

    .line 3828
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bU()V

    return-void
.end method

.method protected abstract m()V
.end method

.method public m(I)V
    .locals 0

    return-void
.end method

.method public m(Z)V
    .locals 0

    return-void
.end method

.method protected n(I)V
    .locals 1

    .line 3091
    iget-object v0, p0, Lcom/oppo/camera/d/a;->P:Lcom/oppo/camera/ui/preview/a/i;

    if-eqz v0, :cond_1

    .line 3092
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bk()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 3093
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bl()V

    .line 3096
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/a;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/a;->o(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/preview/a/i;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 3098
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateFilterParam, mPreviewEffectProcess: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/d/a;->P:Lcom/oppo/camera/ui/preview/a/i;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", mPreferences: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/d/a;->O:Landroid/content/SharedPreferences;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseMode"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected abstract n()Z
.end method

.method protected o(I)Ljava/lang/String;
    .locals 1

    .line 3153
    iget v0, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->e(I)[Ljava/lang/String;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

.method protected abstract o()Z
.end method

.method public p()I
    .locals 4

    .line 420
    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->ae:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->ay:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/a;->X:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "BaseMode"

    .line 427
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDefaultCaptureNumber: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oppo/camera/d/a;->ak:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    iget v1, p0, Lcom/oppo/camera/d/a;->ak:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 430
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 421
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDefaultCaptureNumber, mbShouldDisableAps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/d/a;->ay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public p(I)I
    .locals 5

    .line 3222
    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->p:Z

    const/16 v1, 0x10

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bB()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 3226
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bx()Z

    move-result v0

    const/16 v2, 0x9

    if-eqz v0, :cond_1

    return v2

    .line 3230
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->by()Z

    move-result v0

    const/16 v3, 0x19

    const/16 v4, 0x18

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_0
    return v3

    .line 3235
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bA()Z

    move-result p1

    if-eqz p1, :cond_4

    return v2

    .line 3239
    :cond_4
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bz()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 3240
    iget-boolean p1, p0, Lcom/oppo/camera/d/a;->x:Z

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    move v3, v4

    :goto_1
    return v3

    :cond_6
    return v1
.end method

.method public q(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public q()Z
    .locals 5

    .line 434
    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->ae:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/oppo/camera/d/a;->ay:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/a;->Y:Ljava/lang/Object;

    monitor-enter v0

    .line 441
    :try_start_0
    iget-object v2, p0, Lcom/oppo/camera/d/a;->am:[I

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/oppo/camera/d/a;->am:[I

    aget v2, v2, v1

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    const-string v2, "BaseMode"

    .line 443
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNeedAPSProcess, value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mApsAlgoFlags: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oppo/camera/d/a;->am:[I

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 446
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 435
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNeedAPSProcess, mbShouldDisableAps: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oppo/camera/d/a;->ay:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BaseMode"

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public r()I
    .locals 2

    .line 450
    iget-object v0, p0, Lcom/oppo/camera/d/a;->Z:Ljava/lang/Object;

    monitor-enter v0

    .line 451
    :try_start_0
    iget v1, p0, Lcom/oppo/camera/d/a;->al:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 452
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public r(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public s()I
    .locals 1

    .line 537
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->p()I

    move-result v0

    return v0
.end method

.method public s(I)V
    .locals 0

    return-void
.end method

.method public t(I)Landroid/graphics/Bitmap;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public t()Lcom/oppo/camera/e/d;
    .locals 4

    .line 541
    new-instance v0, Lcom/oppo/camera/e/d;

    invoke-direct {v0}, Lcom/oppo/camera/e/d;-><init>()V

    .line 542
    sget-object v1, Lcom/oppo/camera/e/d$a;->CAPTURE:Lcom/oppo/camera/e/d$a;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/e/d;->a(Lcom/oppo/camera/e/d$a;)V

    .line 543
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->ax()Z

    move-result v1

    iput-boolean v1, v0, Lcom/oppo/camera/e/d;->a:Z

    .line 544
    iget v1, p0, Lcom/oppo/camera/d/a;->au:I

    iput v1, v0, Lcom/oppo/camera/e/d;->C:I

    .line 545
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->bd()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/e/d;->b:Ljava/lang/String;

    const-string v1, "func_filter_vignette"

    .line 546
    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/oppo/camera/e/d;->b:Ljava/lang/String;

    const-string v3, "oppo_video_filter_olympus"

    .line 547
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/oppo/camera/e/d;->c:Z

    .line 548
    iget-boolean v1, p0, Lcom/oppo/camera/d/a;->p:Z

    iput-boolean v1, v0, Lcom/oppo/camera/e/d;->d:Z

    .line 549
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->F()Z

    move-result v1

    iput-boolean v1, v0, Lcom/oppo/camera/e/d;->e:Z

    .line 550
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->ba()Z

    move-result v1

    iput-boolean v1, v0, Lcom/oppo/camera/e/d;->f:Z

    .line 551
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->u()Z

    move-result v1

    iput-boolean v1, v0, Lcom/oppo/camera/e/d;->g:Z

    .line 552
    iget-boolean v1, p0, Lcom/oppo/camera/d/a;->p:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/oppo/camera/o/d;->s()I

    move-result v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->s()I

    move-result v1

    :goto_1
    iput v1, v0, Lcom/oppo/camera/e/d;->h:I

    .line 553
    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->ad()I

    move-result v1

    iput v1, v0, Lcom/oppo/camera/e/d;->i:I

    .line 554
    iget-object v1, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->g()Z

    move-result v1

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/oppo/camera/e/d;->j:Z

    .line 555
    iget v1, p0, Lcom/oppo/camera/d/a;->j:I

    invoke-static {v1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->az()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/oppo/camera/d/a;->a_:Ljava/lang/String;

    :goto_2
    const-string v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/oppo/camera/e/d;->A:Z

    .line 557
    iget-boolean v1, v0, Lcom/oppo/camera/e/d;->j:Z

    if-eqz v1, :cond_3

    .line 558
    invoke-direct {p0}, Lcom/oppo/camera/d/a;->cG()Z

    move-result v1

    iput-boolean v1, v0, Lcom/oppo/camera/e/d;->k:Z

    .line 561
    :cond_3
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->a(Lcom/oppo/camera/e/d;)Lcom/oppo/camera/e/d;

    return-object v0
.end method

.method public u(I)V
    .locals 0

    .line 3962
    iput p1, p0, Lcom/oppo/camera/d/a;->o:I

    return-void
.end method

.method public u()Z
    .locals 1

    .line 594
    iget-object v0, p0, Lcom/oppo/camera/d/a;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->F()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/a;->ba()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public v()V
    .locals 1

    const/4 v0, 0x0

    .line 598
    invoke-direct {p0, v0}, Lcom/oppo/camera/d/a;->y(I)V

    return-void
.end method

.method protected v(I)V
    .locals 0

    return-void
.end method

.method protected w(I)I
    .locals 0

    .line 4141
    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_DEFAULT_TO_REAL_SWITCH_ANIM_TIME:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 4142
    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigIntValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)I

    move-result p1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_DEFAULT_TO_FRONT_SWITCH_ANIM_TIME:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 4143
    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigIntValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public w()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected x()Lcom/oppo/camera/e/f$a;
    .locals 2

    const-string v0, "pref_support_fast_capture"

    .line 620
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->k(Z)V

    goto :goto_0

    .line 623
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/a;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->k(Z)V

    :goto_0
    return-object p0
.end method

.method public y()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public z()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
