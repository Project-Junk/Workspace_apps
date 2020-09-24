.class public Lcom/oppo/camera/e/g;
.super Ljava/lang/Object;
.source "OneCameraImpl.java"

# interfaces
.implements Lcom/oppo/camera/e/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/e/g$a;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:I

.field private E:I

.field private F:I

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:Landroid/media/ImageWriter;

.field private N:Lcom/oppo/camera/e/d;

.field private O:Lcom/oppo/camera/e/d;

.field private P:Z

.field private Q:Z

.field private final R:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

.field private final S:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private T:Lcom/oppo/camera/h/a;

.field private final U:Lcom/oppo/camera/b/a;

.field private final V:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private a:Landroid/hardware/camera2/CameraManager;

.field private b:Landroid/hardware/camera2/CameraDevice;

.field private c:Lcom/oppo/camera/e/f$f;

.field private d:Landroid/hardware/camera2/CameraCaptureSession;

.field private e:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private f:Lcom/oppo/camera/e/h;

.field private g:Lcom/oppo/camera/e/f$e;

.field private h:Lcom/oppo/camera/e/f$a;

.field private i:Lcom/oppo/camera/e/f$c;

.field private j:Lcom/oppo/camera/e/c;

.field private k:Lcom/oppo/camera/n/a;

.field private l:Landroid/os/HandlerThread;

.field private m:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oppo/camera/e/g$a<",
            "*>;>;"
        }
    .end annotation
.end field

.field private o:Ljava/lang/Object;

.field private p:Ljava/util/concurrent/Semaphore;

.field private q:I

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:Z

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:I

.field private z:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/oppo/camera/e/g;->a:Landroid/hardware/camera2/CameraManager;

    .line 77
    iput-object v0, p0, Lcom/oppo/camera/e/g;->b:Landroid/hardware/camera2/CameraDevice;

    .line 78
    iput-object v0, p0, Lcom/oppo/camera/e/g;->c:Lcom/oppo/camera/e/f$f;

    .line 79
    iput-object v0, p0, Lcom/oppo/camera/e/g;->d:Landroid/hardware/camera2/CameraCaptureSession;

    .line 80
    iput-object v0, p0, Lcom/oppo/camera/e/g;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 81
    iput-object v0, p0, Lcom/oppo/camera/e/g;->f:Lcom/oppo/camera/e/h;

    .line 82
    iput-object v0, p0, Lcom/oppo/camera/e/g;->g:Lcom/oppo/camera/e/f$e;

    .line 83
    iput-object v0, p0, Lcom/oppo/camera/e/g;->h:Lcom/oppo/camera/e/f$a;

    .line 84
    iput-object v0, p0, Lcom/oppo/camera/e/g;->i:Lcom/oppo/camera/e/f$c;

    .line 85
    iput-object v0, p0, Lcom/oppo/camera/e/g;->j:Lcom/oppo/camera/e/c;

    .line 86
    iput-object v0, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    .line 87
    iput-object v0, p0, Lcom/oppo/camera/e/g;->l:Landroid/os/HandlerThread;

    .line 88
    iput-object v0, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    .line 89
    iput-object v0, p0, Lcom/oppo/camera/e/g;->n:Ljava/util/HashMap;

    .line 90
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/e/g;->o:Ljava/lang/Object;

    .line 91
    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v1, p0, Lcom/oppo/camera/e/g;->p:Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x5

    .line 93
    iput v1, p0, Lcom/oppo/camera/e/g;->q:I

    const/4 v1, 0x0

    .line 94
    iput-boolean v1, p0, Lcom/oppo/camera/e/g;->r:Z

    const-string v3, "session_type_custom"

    .line 95
    iput-object v3, p0, Lcom/oppo/camera/e/g;->s:Ljava/lang/String;

    .line 96
    iput-boolean v1, p0, Lcom/oppo/camera/e/g;->t:Z

    const-string v3, "off"

    .line 97
    iput-object v3, p0, Lcom/oppo/camera/e/g;->u:Ljava/lang/String;

    .line 98
    iput-boolean v1, p0, Lcom/oppo/camera/e/g;->v:Z

    .line 99
    iput-boolean v1, p0, Lcom/oppo/camera/e/g;->w:Z

    .line 100
    iput-boolean v1, p0, Lcom/oppo/camera/e/g;->x:Z

    .line 101
    iput v1, p0, Lcom/oppo/camera/e/g;->y:I

    .line 102
    iput-boolean v1, p0, Lcom/oppo/camera/e/g;->z:Z

    .line 103
    iput-boolean v1, p0, Lcom/oppo/camera/e/g;->A:Z

    .line 104
    iput-boolean v2, p0, Lcom/oppo/camera/e/g;->B:Z

    .line 105
    iput-boolean v2, p0, Lcom/oppo/camera/e/g;->C:Z

    const/16 v3, 0x8

    .line 107
    iput v3, p0, Lcom/oppo/camera/e/g;->D:I

    const v3, 0x8001

    .line 108
    iput v3, p0, Lcom/oppo/camera/e/g;->E:I

    .line 109
    iput v2, p0, Lcom/oppo/camera/e/g;->F:I

    const/4 v3, 0x4

    .line 110
    iput v3, p0, Lcom/oppo/camera/e/g;->G:I

    .line 111
    iput v2, p0, Lcom/oppo/camera/e/g;->H:I

    .line 112
    iput v1, p0, Lcom/oppo/camera/e/g;->I:I

    .line 113
    iput v2, p0, Lcom/oppo/camera/e/g;->J:I

    .line 114
    iput v2, p0, Lcom/oppo/camera/e/g;->K:I

    .line 115
    iput v1, p0, Lcom/oppo/camera/e/g;->L:I

    .line 116
    iput-object v0, p0, Lcom/oppo/camera/e/g;->M:Landroid/media/ImageWriter;

    .line 117
    iput-object v0, p0, Lcom/oppo/camera/e/g;->N:Lcom/oppo/camera/e/d;

    .line 118
    new-instance v0, Lcom/oppo/camera/e/d;

    invoke-direct {v0}, Lcom/oppo/camera/e/d;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/e/g;->O:Lcom/oppo/camera/e/d;

    .line 119
    iput-boolean v1, p0, Lcom/oppo/camera/e/g;->P:Z

    .line 120
    iput-boolean v1, p0, Lcom/oppo/camera/e/g;->Q:Z

    .line 383
    new-instance v0, Lcom/oppo/camera/e/g$21;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e/g$21;-><init>(Lcom/oppo/camera/e/g;)V

    iput-object v0, p0, Lcom/oppo/camera/e/g;->R:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    .line 438
    new-instance v0, Lcom/oppo/camera/e/g$22;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e/g$22;-><init>(Lcom/oppo/camera/e/g;)V

    iput-object v0, p0, Lcom/oppo/camera/e/g;->S:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 547
    new-instance v0, Lcom/oppo/camera/e/g$23;

    invoke-direct {v0, p0, p0}, Lcom/oppo/camera/e/g$23;-><init>(Lcom/oppo/camera/e/g;Lcom/oppo/camera/e/f;)V

    iput-object v0, p0, Lcom/oppo/camera/e/g;->T:Lcom/oppo/camera/h/a;

    .line 605
    new-instance v0, Lcom/oppo/camera/e/g$24;

    invoke-direct {v0, p0, p0}, Lcom/oppo/camera/e/g$24;-><init>(Lcom/oppo/camera/e/g;Lcom/oppo/camera/e/f;)V

    iput-object v0, p0, Lcom/oppo/camera/e/g;->U:Lcom/oppo/camera/b/a;

    .line 617
    new-instance v0, Lcom/oppo/camera/e/g$25;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e/g$25;-><init>(Lcom/oppo/camera/e/g;)V

    iput-object v0, p0, Lcom/oppo/camera/e/g;->V:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 123
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Camera Handler Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oppo/camera/e/g;->l:Landroid/os/HandlerThread;

    .line 124
    iget-object v0, p0, Lcom/oppo/camera/e/g;->l:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 125
    new-instance v0, Lcom/oppo/camera/n/a;

    iget-object v1, p0, Lcom/oppo/camera/e/g;->l:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oppo/camera/n/a;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/e/g;->n:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic A(Lcom/oppo/camera/e/g;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/oppo/camera/e/g;->J:I

    return p0
.end method

.method private A()Landroid/hardware/camera2/params/InputConfiguration;
    .locals 2

    const-string v0, "getInputConfiguration"

    .line 1869
    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    .line 1871
    iget-object v1, p0, Lcom/oppo/camera/e/g;->g:Lcom/oppo/camera/e/f$e;

    if-eqz v1, :cond_0

    .line 1872
    invoke-interface {v1}, Lcom/oppo/camera/e/f$e;->a()Landroid/hardware/camera2/params/InputConfiguration;

    move-result-object v1

    .line 1874
    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-object v1

    .line 1879
    :cond_0
    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private B()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    const-string v0, "builderOutputSurfaces"

    .line 1885
    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    .line 1887
    iget-object v1, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    if-nez v1, :cond_0

    .line 1888
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    .line 1891
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/e/g;->g:Lcom/oppo/camera/e/f$e;

    if-eqz v1, :cond_1

    .line 1892
    iget-object v2, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-interface {v1, v2}, Lcom/oppo/camera/e/f$e;->a(Ljava/util/LinkedHashMap;)V

    .line 1895
    :cond_1
    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    .line 1897
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method static synthetic B(Lcom/oppo/camera/e/g;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/oppo/camera/e/g;->v:Z

    return p0
.end method

.method static synthetic C(Lcom/oppo/camera/e/g;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/oppo/camera/e/g;->F:I

    return p0
.end method

.method private C()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 1901
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createPreviewBuilder, mDeviceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/e/g;->D:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "createPreviewBuilder"

    .line 1903
    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    .line 1905
    iget-object v2, p0, Lcom/oppo/camera/e/g;->b:Landroid/hardware/camera2/CameraDevice;

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    .line 1906
    iput-boolean v2, p0, Lcom/oppo/camera/e/g;->t:Z

    .line 1908
    iget-object v2, p0, Lcom/oppo/camera/e/g;->O:Lcom/oppo/camera/e/d;

    sget-object v3, Lcom/oppo/camera/e/d$a;->PREVIEW:Lcom/oppo/camera/e/d$a;

    invoke-virtual {v2, v3}, Lcom/oppo/camera/e/d;->a(Lcom/oppo/camera/e/d$a;)V

    .line 1909
    iget-object v2, p0, Lcom/oppo/camera/e/g;->b:Landroid/hardware/camera2/CameraDevice;

    iget v3, p0, Lcom/oppo/camera/e/g;->K:I

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    iput-object v2, p0, Lcom/oppo/camera/e/g;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 1910
    iget-object v2, p0, Lcom/oppo/camera/e/g;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v3, p0, Lcom/oppo/camera/e/g;->O:Lcom/oppo/camera/e/d;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 1912
    iget-object v2, p0, Lcom/oppo/camera/e/g;->j:Lcom/oppo/camera/e/c;

    invoke-virtual {v2}, Lcom/oppo/camera/e/c;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1913
    iget-object v2, p0, Lcom/oppo/camera/e/g;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v2

    .line 1914
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const-string v4, "createPreviewBuilder, getAvailableCaptureRequestKeys"

    .line 1916
    invoke-static {v1, v4}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "getAvailableCaptureRequestKeys"

    .line 1918
    invoke-static {v4}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    .line 1920
    iget-object v5, p0, Lcom/oppo/camera/e/g;->f:Lcom/oppo/camera/e/h;

    invoke-virtual {v5}, Lcom/oppo/camera/e/h;->i()Ljava/util/List;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1922
    invoke-static {v4}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    const-string v4, "createPreviewBuilder, getAvailableCaptureRequestKeys X"

    .line 1924
    invoke-static {v1, v4}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "createPreviewBuilder, CaptureRequest.getKeys"

    .line 1926
    invoke-static {v1, v4}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "CaptureRequest.getKeys"

    .line 1928
    invoke-static {v4}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    .line 1930
    iget-object v5, p0, Lcom/oppo/camera/e/g;->f:Lcom/oppo/camera/e/h;

    invoke-virtual {v5, v2}, Lcom/oppo/camera/e/h;->a(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1932
    invoke-static {v4}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    const-string v2, "createPreviewBuilder, CaptureRequest.getKeys X"

    .line 1934
    invoke-static {v1, v2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1936
    iget-object v2, p0, Lcom/oppo/camera/e/g;->j:Lcom/oppo/camera/e/c;

    invoke-virtual {v2, v3}, Lcom/oppo/camera/e/c;->a(Ljava/util/Set;)V

    .line 1939
    :cond_0
    iget-object v2, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    const-string v3, "type_preview"

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1940
    iget-object v2, p0, Lcom/oppo/camera/e/g;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v4, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1943
    :cond_1
    iget-boolean v2, p0, Lcom/oppo/camera/e/g;->r:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    iget v3, p0, Lcom/oppo/camera/e/g;->K:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    const-string v3, "type_video"

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1944
    iget-object v2, p0, Lcom/oppo/camera/e/g;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v4, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1947
    :cond_2
    iget-object v2, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    const-string v3, "type_depth_preview"

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1948
    iget-object v2, p0, Lcom/oppo/camera/e/g;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v4, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1951
    :cond_3
    iget-object v2, p0, Lcom/oppo/camera/e/g;->c:Lcom/oppo/camera/e/f$f;

    if-eqz v2, :cond_4

    .line 1952
    iget-object v3, p0, Lcom/oppo/camera/e/g;->O:Lcom/oppo/camera/e/d;

    iget-object v4, p0, Lcom/oppo/camera/e/g;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v5, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-interface {v2, v3, v4, v5}, Lcom/oppo/camera/e/f$f;->a(Lcom/oppo/camera/e/d;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/HashMap;)V

    .line 1956
    :cond_4
    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    const-string v0, "createPreviewBuilder X"

    .line 1958
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private D()Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 3

    const/4 v0, 0x0

    .line 2026
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/e/g;->b:Landroid/hardware/camera2/CameraDevice;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 2027
    iget-object v1, p0, Lcom/oppo/camera/e/g;->N:Lcom/oppo/camera/e/d;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 2028
    invoke-direct {p0, v0}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2030
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method static synthetic D(Lcom/oppo/camera/e/g;)Z
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/oppo/camera/e/g;->v()Z

    move-result p0

    return p0
.end method

.method private E()Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 10

    const-string v0, "type_still_capture_yuv_third"

    const-string v1, "type_still_capture_yuv_sub"

    const-string v2, "type_still_capture_yuv_main"

    const-string v3, "type_still_capture"

    .line 2037
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createCaptureBuilder, mbZsl: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/oppo/camera/e/g;->x:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OneCameraImpl"

    invoke-static {v5, v4}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2041
    iget-object v4, p0, Lcom/oppo/camera/e/g;->b:Landroid/hardware/camera2/CameraDevice;

    const/4 v5, 0x0

    if-eqz v4, :cond_9

    .line 2043
    :try_start_0
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v4

    const/4 v6, 0x2

    if-nez v4, :cond_0

    .line 2044
    iget-object v4, p0, Lcom/oppo/camera/e/g;->b:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v4, v6}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    :goto_0
    move-object v5, v4

    goto :goto_1

    .line 2045
    :cond_0
    iget-boolean v4, p0, Lcom/oppo/camera/e/g;->x:Z

    if-eqz v4, :cond_1

    invoke-direct {p0}, Lcom/oppo/camera/e/g;->w()Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/oppo/camera/e/g;->P:Z

    if-nez v4, :cond_1

    .line 2046
    iget-object v4, p0, Lcom/oppo/camera/e/g;->b:Landroid/hardware/camera2/CameraDevice;

    const/4 v6, 0x5

    invoke-virtual {v4, v6}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    goto :goto_0

    .line 2048
    :cond_1
    iget-object v4, p0, Lcom/oppo/camera/e/g;->b:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v4, v6}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    goto :goto_0

    .line 2051
    :goto_1
    iget-object v4, p0, Lcom/oppo/camera/e/g;->N:Lcom/oppo/camera/e/d;

    invoke-virtual {v5, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 2053
    iget-boolean v4, p0, Lcom/oppo/camera/e/g;->P:Z

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    .line 2054
    iget-object v4, p0, Lcom/oppo/camera/e/g;->j:Lcom/oppo/camera/e/c;

    const-string v7, "com.mediatek.cshotfeature.capture"

    .line 2055
    invoke-virtual {v4, v7}, Lcom/oppo/camera/e/c;->a(Ljava/lang/String;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v4

    .line 2056
    iget-object v7, p0, Lcom/oppo/camera/e/g;->j:Lcom/oppo/camera/e/c;

    const-string v8, "com.mediatek.control.capture.early.notification.trigger"

    .line 2057
    invoke-virtual {v7, v8}, Lcom/oppo/camera/e/c;->a(Ljava/lang/String;)Landroid/hardware/camera2/CaptureRequest$Key;

    move-result-object v7

    if-eqz v4, :cond_2

    if-eqz v7, :cond_2

    .line 2060
    new-array v8, v6, [I

    const/4 v9, 0x0

    aput v6, v8, v9

    invoke-virtual {v5, v4, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2061
    new-array v4, v6, [I

    aput v6, v4, v9

    invoke-virtual {v5, v7, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2065
    :cond_2
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v4

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/oppo/camera/e/g;->x:Z

    if-eqz v4, :cond_3

    .line 2066
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2069
    :cond_3
    invoke-direct {p0, v5}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2071
    iget-object v4, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 2072
    iget-object v4, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    invoke-virtual {v5, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 2075
    :cond_4
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/oppo/camera/e/g;->P:Z

    if-nez v3, :cond_5

    .line 2076
    iget-object v3, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    const-string v4, "type_preview"

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    invoke-virtual {v5, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 2079
    :cond_5
    iget-object v3, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 2080
    iget-object v3, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    invoke-virtual {v5, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 2083
    :cond_6
    iget-object v2, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 2084
    iget-object v2, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {v5, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 2087
    :cond_7
    iget-object v1, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 2088
    iget-object v1, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {v5, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 2091
    :cond_8
    iget-object v0, p0, Lcom/oppo/camera/e/g;->c:Lcom/oppo/camera/e/f$f;

    if-eqz v0, :cond_9

    .line 2092
    iget-object v0, p0, Lcom/oppo/camera/e/g;->c:Lcom/oppo/camera/e/f$f;

    iget-object v1, p0, Lcom/oppo/camera/e/g;->N:Lcom/oppo/camera/e/d;

    iget-object v2, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-interface {v0, v1, v5, v2}, Lcom/oppo/camera/e/f$f;->a(Lcom/oppo/camera/e/d;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/HashMap;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 2095
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :cond_9
    :goto_2
    return-object v5
.end method

.method static synthetic E(Lcom/oppo/camera/e/g;)Landroid/media/ImageWriter;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/oppo/camera/e/g;->M:Landroid/media/ImageWriter;

    return-object p0
.end method

.method private F()Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 4

    const-string v0, "type_still_capture_raw"

    const-string v1, "OneCameraImpl"

    const-string v2, "createRawCaptureBuilder"

    .line 2166
    invoke-static {v1, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2170
    iget-object v1, p0, Lcom/oppo/camera/e/g;->b:Landroid/hardware/camera2/CameraDevice;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2172
    :try_start_0
    iget-boolean v3, p0, Lcom/oppo/camera/e/g;->x:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    .line 2173
    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    .line 2175
    invoke-virtual {v1, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    :goto_0
    move-object v2, v1

    .line 2178
    iget-object v1, p0, Lcom/oppo/camera/e/g;->N:Lcom/oppo/camera/e/d;

    invoke-virtual {v2, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 2179
    invoke-direct {p0, v2}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2181
    iget-object v1, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2182
    iget-object v1, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {v2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 2183
    iget-object v0, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    const-string v1, "type_preview"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {v2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 2186
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/e/g;->c:Lcom/oppo/camera/e/f$f;

    if-eqz v0, :cond_2

    .line 2187
    iget-object v0, p0, Lcom/oppo/camera/e/g;->c:Lcom/oppo/camera/e/f$f;

    iget-object v1, p0, Lcom/oppo/camera/e/g;->N:Lcom/oppo/camera/e/d;

    iget-object v3, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-interface {v0, v1, v2, v3}, Lcom/oppo/camera/e/f$f;->a(Lcom/oppo/camera/e/d;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/HashMap;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 2190
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :cond_2
    :goto_1
    return-object v2
.end method

.method static synthetic F(Lcom/oppo/camera/e/g;)Lcom/oppo/camera/e/h;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/oppo/camera/e/g;->f:Lcom/oppo/camera/e/h;

    return-object p0
.end method

.method private G()V
    .locals 2

    .line 2223
    iget-object v0, p0, Lcom/oppo/camera/e/g;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 2224
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/e/g;->n:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 2225
    iget-object v1, p0, Lcom/oppo/camera/e/g;->n:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 2227
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic G(Lcom/oppo/camera/e/g;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/oppo/camera/e/g;->P:Z

    return p0
.end method

.method static synthetic H(Lcom/oppo/camera/e/g;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/oppo/camera/e/g;->D:I

    return p0
.end method

.method private H()V
    .locals 3

    const-string v0, "releaseResource"

    const-string v1, "OneCameraImpl"

    .line 2295
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2297
    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    .line 2299
    iget-object v1, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_0

    .line 2300
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 2303
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/e/g;->M:Landroid/media/ImageWriter;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2304
    invoke-virtual {v1}, Landroid/media/ImageWriter;->close()V

    .line 2305
    iput-object v2, p0, Lcom/oppo/camera/e/g;->M:Landroid/media/ImageWriter;

    .line 2308
    :cond_1
    iput-object v2, p0, Lcom/oppo/camera/e/g;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 2310
    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic I(Lcom/oppo/camera/e/g;)Ljava/util/List;
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/oppo/camera/e/g;->B()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private I()V
    .locals 2

    .line 2346
    iget-object v0, p0, Lcom/oppo/camera/e/g;->u:Ljava/lang/String;

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2347
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    .line 2348
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e/g;->u:Ljava/lang/String;

    const-string v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2349
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    .line 2350
    :cond_1
    iget-boolean v0, p0, Lcom/oppo/camera/e/g;->B:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/oppo/camera/e/g;->C:Z

    if-nez v0, :cond_2

    goto :goto_0

    .line 2352
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/e/g;->u:Ljava/lang/String;

    const-string v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2353
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    .line 2351
    :cond_3
    :goto_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method

.method static synthetic J(Lcom/oppo/camera/e/g;)Landroid/hardware/camera2/params/InputConfiguration;
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/oppo/camera/e/g;->A()Landroid/hardware/camera2/params/InputConfiguration;

    move-result-object p0

    return-object p0
.end method

.method static synthetic K(Lcom/oppo/camera/e/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Lcom/oppo/camera/e/g;->C()V

    return-void
.end method

.method static synthetic L(Lcom/oppo/camera/e/g;)Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/oppo/camera/e/g;->R:Landroid/hardware/camera2/CameraCaptureSession$StateCallback;

    return-object p0
.end method

.method static synthetic M(Lcom/oppo/camera/e/g;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/oppo/camera/e/g;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method static synthetic N(Lcom/oppo/camera/e/g;)Ljava/util/LinkedHashMap;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method static synthetic O(Lcom/oppo/camera/e/g;)Z
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/oppo/camera/e/g;->s()Z

    move-result p0

    return p0
.end method

.method static synthetic P(Lcom/oppo/camera/e/g;)Z
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/oppo/camera/e/g;->t()Z

    move-result p0

    return p0
.end method

.method static synthetic Q(Lcom/oppo/camera/e/g;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/oppo/camera/e/g;->E()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic R(Lcom/oppo/camera/e/g;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/oppo/camera/e/g;->F()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic S(Lcom/oppo/camera/e/g;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/oppo/camera/e/g;->V:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object p0
.end method

.method static synthetic T(Lcom/oppo/camera/e/g;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/oppo/camera/e/g;->S:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object p0
.end method

.method static synthetic U(Lcom/oppo/camera/e/g;)Z
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/oppo/camera/e/g;->z()Z

    move-result p0

    return p0
.end method

.method static synthetic V(Lcom/oppo/camera/e/g;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/oppo/camera/e/g;->D()Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/graphics/Rect;Landroid/util/Size;)Landroid/graphics/Rect;
    .locals 11

    .line 1558
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1559
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->get(Landroid/hardware/camera2/CaptureRequest$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 1560
    iget-object v1, p0, Lcom/oppo/camera/e/g;->f:Lcom/oppo/camera/e/h;

    invoke-virtual {v1}, Lcom/oppo/camera/e/h;->d()Landroid/graphics/Rect;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    if-eqz v1, :cond_0

    .line 1565
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 1566
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr p1, v4

    goto :goto_0

    :cond_0
    move p1, v2

    move v3, p1

    .line 1569
    :goto_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const-string v5, ")"

    const-string v6, "OneCameraImpl"

    const-string v7, ", "

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 1571
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v2

    div-float/2addr v8, v9

    .line 1572
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, v2

    div-float/2addr v1, p3

    .line 1574
    iget p3, p2, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    mul-float/2addr p3, v8

    float-to-int p3, p3

    iget v9, p2, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    mul-float/2addr v9, v1

    float-to-int v9, v9

    iget v10, p2, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    mul-float/2addr v10, v8

    float-to-int v10, v10

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    mul-float/2addr p2, v1

    float-to-int p2, p2

    invoke-virtual {v4, p3, v9, v10, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1577
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getZoomCropFormRegin, newCropRect: ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", scaleW: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, ", scaleH: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1581
    :cond_1
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    sub-float p3, v2, v3

    mul-float/2addr p2, p3

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    float-to-int p2, p2

    .line 1582
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v2, p1

    mul-float/2addr v1, v2

    div-float/2addr v1, p3

    float-to-int p3, v1

    .line 1584
    iget v1, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p2

    iget v2, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, p3

    iget v8, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, p2

    iget p2, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p2, p3

    invoke-virtual {v0, v1, v2, v8, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1587
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getZoomCropFormRegin, newCropRegion: ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", scaleWidth: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p3, ", scaleHeight: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic a(Lcom/oppo/camera/e/g;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/graphics/Rect;Landroid/util/Size;)Landroid/graphics/Rect;
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/graphics/Rect;Landroid/util/Size;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/oppo/camera/e/g;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/oppo/camera/e/g;->d:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/camera/e/g;)Landroid/hardware/camera2/CameraManager;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/oppo/camera/e/g;->a:Landroid/hardware/camera2/CameraManager;

    return-object p0
.end method

.method static synthetic a(Lcom/oppo/camera/e/g;Landroid/hardware/camera2/CameraManager;)Landroid/hardware/camera2/CameraManager;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/oppo/camera/e/g;->a:Landroid/hardware/camera2/CameraManager;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/camera/e/g;Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/oppo/camera/e/g;->b(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/oppo/camera/e/g;Landroid/media/ImageWriter;)Landroid/media/ImageWriter;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/oppo/camera/e/g;->M:Landroid/media/ImageWriter;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/camera/e/g;Lcom/oppo/camera/e/c;)Lcom/oppo/camera/e/c;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/oppo/camera/e/g;->j:Lcom/oppo/camera/e/c;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/camera/e/g;Lcom/oppo/camera/e/d;)Lcom/oppo/camera/e/d;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/oppo/camera/e/g;->N:Lcom/oppo/camera/e/d;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/camera/e/g;Lcom/oppo/camera/e/f$a;)Lcom/oppo/camera/e/f$a;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/oppo/camera/e/g;->h:Lcom/oppo/camera/e/f$a;

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/camera/e/g;Lcom/oppo/camera/e/f$e;)Lcom/oppo/camera/e/f$e;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/oppo/camera/e/g;->g:Lcom/oppo/camera/e/f$e;

    return-object p1
.end method

.method private a(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "closeCameraDevice"

    .line 374
    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 376
    invoke-direct {p0, v1}, Lcom/oppo/camera/e/g;->u(I)V

    .line 377
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 379
    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 6

    .line 2198
    iget-object v0, p0, Lcom/oppo/camera/e/g;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 2199
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/e/g;->n:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 2200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2202
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2203
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2204
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/camera/e/g$a;

    .line 2205
    invoke-virtual {v4, p1}, Lcom/oppo/camera/e/g$a;->a(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2207
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oppo/camera/e/g$a;

    invoke-static {v3}, Lcom/oppo/camera/e/g$a;->a(Lcom/oppo/camera/e/g$a;)Lcom/oppo/camera/e/i;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p1, "OneCameraImpl"

    .line 2210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addCacheToBuilder, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2211
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;I)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 1745
    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;ILcom/oppo/camera/e/f$d;Z)V

    return-void
.end method

.method private a(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;ILcom/oppo/camera/e/f$d;Z)V
    .locals 9

    .line 1750
    iget-object v0, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    new-instance v8, Lcom/oppo/camera/e/g$13;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move-object v5, p4

    move v6, p5

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/oppo/camera/e/g$13;-><init>(Lcom/oppo/camera/e/g;Landroid/hardware/camera2/CaptureRequest$Builder;ILcom/oppo/camera/e/f$d;ZLandroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)V

    invoke-virtual {v0, v8}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/oppo/camera/e/d;)V
    .locals 3

    .line 2103
    iget-boolean v0, p2, Lcom/oppo/camera/e/d;->a:Z

    if-eqz v0, :cond_0

    iget p2, p2, Lcom/oppo/camera/e/d;->C:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 2104
    iget-object p2, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    const-string v0, "type_still_capture_yuv_main_high_pixel_mfnr"

    invoke-virtual {p2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/Surface;

    if-eqz p2, :cond_0

    const-string v1, "OneCameraImpl"

    const-string v2, "filterCaptureBuilder, TYPE_STILL_CAPTURE_YUV_MAIN_HIGH_PIXEL_MFNR"

    .line 2107
    invoke-static {v1, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2109
    iget-object v1, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    const-string v2, "type_still_capture_yuv_main"

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    .line 2111
    iget-object v1, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2112
    invoke-virtual {p1, p2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/oppo/camera/e/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;",
            "Lcom/oppo/camera/e/i<",
            "TT;>;)V"
        }
    .end annotation

    .line 2259
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Lcom/oppo/camera/e/i;)V

    return-void
.end method

.method private a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 2231
    new-instance v0, Lcom/oppo/camera/e/g$15;

    invoke-direct {v0, p0, p2}, Lcom/oppo/camera/e/g$15;-><init>(Lcom/oppo/camera/e/g;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Lcom/oppo/camera/e/i;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/e/g;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/oppo/camera/e/g;->u(I)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/e/g;Landroid/hardware/camera2/CameraDevice;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CameraDevice;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/e/g;Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/e/g;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;I)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/e/g;Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/oppo/camera/e/d;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Builder;Lcom/oppo/camera/e/d;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/e/g;Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/oppo/camera/e/g;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/e/g;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/oppo/camera/e/i;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/oppo/camera/e/i<",
            "TT;>;)V"
        }
    .end annotation

    .line 2287
    iget-object v0, p0, Lcom/oppo/camera/e/g;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 2288
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/e/g;->n:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 2289
    iget-object v1, p0, Lcom/oppo/camera/e/g;->n:Ljava/util/HashMap;

    new-instance v2, Lcom/oppo/camera/e/g$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, p2, v3}, Lcom/oppo/camera/e/g$a;-><init>(Lcom/oppo/camera/e/g;Ljava/lang/String;Lcom/oppo/camera/e/i;Lcom/oppo/camera/e/g$1;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2291
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 2263
    new-instance v0, Lcom/oppo/camera/e/g$16;

    invoke-direct {v0, p0, p2}, Lcom/oppo/camera/e/g$16;-><init>(Lcom/oppo/camera/e/g;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Lcom/oppo/camera/e/i;)V

    return-void
.end method

.method private a(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Z)Z
    .locals 3

    .line 1792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestRepeating, builder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isHFR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1794
    invoke-direct {p0, p1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 1797
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_1

    .line 1800
    iget-object p3, p0, Lcom/oppo/camera/e/g;->g:Lcom/oppo/camera/e/f$e;

    invoke-interface {p3}, Lcom/oppo/camera/e/f$e;->e()Landroid/util/Range;

    move-result-object p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1806
    :cond_0
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v2, p3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1807
    iget-object p3, p0, Lcom/oppo/camera/e/g;->d:Landroid/hardware/camera2/CameraCaptureSession;

    check-cast p3, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    .line 1808
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;->createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;

    move-result-object p1

    .line 1807
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1810
    :cond_1
    iget-object p3, p0, Lcom/oppo/camera/e/g;->g:Lcom/oppo/camera/e/f$e;

    invoke-interface {p3}, Lcom/oppo/camera/e/f$e;->e()Landroid/util/Range;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 1813
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v2, p3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1816
    :cond_2
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    const-string p1, "requestRepeating start"

    .line 1819
    invoke-static {v1, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1821
    iget-object p1, p0, Lcom/oppo/camera/e/g;->d:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object p3, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    invoke-virtual {p1, v0, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1823
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method static synthetic a(Lcom/oppo/camera/e/g;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Z)Z
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/oppo/camera/e/g;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/oppo/camera/e/g;->z:Z

    return p1
.end method

.method static synthetic a(Lcom/oppo/camera/e/g;ZLcom/oppo/camera/e/f$b;)Z
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/e/g;->b(ZLcom/oppo/camera/e/f$b;)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/oppo/camera/e/g;I)I
    .locals 0

    .line 55
    iput p1, p0, Lcom/oppo/camera/e/g;->G:I

    return p1
.end method

.method static synthetic b(Lcom/oppo/camera/e/g;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/oppo/camera/e/g;->b:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method static synthetic b(Lcom/oppo/camera/e/g;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/oppo/camera/e/g;->b:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method private b(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 6

    const-string v0, "type_still_capture_yuv_third"

    const-string v1, "type_still_capture_yuv_sub"

    const-string v2, "type_still_capture_yuv_main"

    const-string v3, "type_still_capture"

    const/4 v4, 0x0

    .line 2122
    :try_start_0
    iget-object v5, p0, Lcom/oppo/camera/e/g;->b:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v5, p1}, Landroid/hardware/camera2/CameraDevice;->createReprocessCaptureRequest(Landroid/hardware/camera2/TotalCaptureResult;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v4

    .line 2123
    new-instance p1, Lcom/oppo/camera/e/d;

    sget-object v5, Lcom/oppo/camera/e/d$a;->CAPTURE_REPROCESS:Lcom/oppo/camera/e/d$a;

    invoke-direct {p1, v5}, Lcom/oppo/camera/e/d;-><init>(Lcom/oppo/camera/e/d$a;)V

    .line 2125
    iget-object v5, p0, Lcom/oppo/camera/e/g;->N:Lcom/oppo/camera/e/d;

    if-eqz v5, :cond_0

    .line 2126
    iget-object v5, p0, Lcom/oppo/camera/e/g;->N:Lcom/oppo/camera/e/d;

    iget-object v5, v5, Lcom/oppo/camera/e/d;->p:Ljava/lang/String;

    iput-object v5, p1, Lcom/oppo/camera/e/d;->p:Ljava/lang/String;

    .line 2127
    iget-object v5, p0, Lcom/oppo/camera/e/g;->N:Lcom/oppo/camera/e/d;

    iget v5, v5, Lcom/oppo/camera/e/d;->q:I

    iput v5, p1, Lcom/oppo/camera/e/d;->q:I

    .line 2128
    iget-object v5, p0, Lcom/oppo/camera/e/g;->N:Lcom/oppo/camera/e/d;

    iget-object v5, v5, Lcom/oppo/camera/e/d;->u:Ljava/lang/String;

    iput-object v5, p1, Lcom/oppo/camera/e/d;->u:Ljava/lang/String;

    .line 2129
    iget-object v5, p0, Lcom/oppo/camera/e/g;->N:Lcom/oppo/camera/e/d;

    iget-object v5, v5, Lcom/oppo/camera/e/d;->v:Ljava/lang/String;

    iput-object v5, p1, Lcom/oppo/camera/e/d;->v:Ljava/lang/String;

    .line 2130
    iget-object v5, p0, Lcom/oppo/camera/e/g;->N:Lcom/oppo/camera/e/d;

    iget v5, v5, Lcom/oppo/camera/e/d;->x:I

    iput v5, p1, Lcom/oppo/camera/e/d;->x:I

    .line 2131
    iget-object v5, p0, Lcom/oppo/camera/e/g;->N:Lcom/oppo/camera/e/d;

    iget-object v5, v5, Lcom/oppo/camera/e/d;->y:Ljava/lang/String;

    iput-object v5, p1, Lcom/oppo/camera/e/d;->y:Ljava/lang/String;

    .line 2132
    iget-object v5, p0, Lcom/oppo/camera/e/g;->N:Lcom/oppo/camera/e/d;

    iget v5, v5, Lcom/oppo/camera/e/d;->z:I

    iput v5, p1, Lcom/oppo/camera/e/d;->z:I

    .line 2133
    iget-object v5, p0, Lcom/oppo/camera/e/g;->N:Lcom/oppo/camera/e/d;

    iget-object v5, v5, Lcom/oppo/camera/e/d;->t:Ljava/lang/String;

    iput-object v5, p1, Lcom/oppo/camera/e/d;->t:Ljava/lang/String;

    .line 2136
    :cond_0
    invoke-virtual {v4, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    .line 2137
    invoke-direct {p0, v4}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 2139
    iget-object v5, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 2140
    iget-object v5, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Surface;

    invoke-virtual {v4, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 2143
    :cond_1
    iget-object v3, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2144
    iget-object v3, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    invoke-virtual {v4, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 2147
    :cond_2
    iget-object v2, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2148
    iget-object v2, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    invoke-virtual {v4, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 2151
    :cond_3
    iget-object v1, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 2152
    iget-object v1, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {v4, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 2155
    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/e/g;->c:Lcom/oppo/camera/e/f$f;

    if-eqz v0, :cond_5

    .line 2156
    iget-object v0, p0, Lcom/oppo/camera/e/g;->c:Lcom/oppo/camera/e/f$f;

    iget-object v1, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-interface {v0, p1, v4, v1}, Lcom/oppo/camera/e/f$f;->a(Lcom/oppo/camera/e/d;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/HashMap;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2159
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :cond_5
    :goto_0
    return-object v4
.end method

.method static synthetic b(Lcom/oppo/camera/e/g;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/oppo/camera/e/g;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p1
.end method

.method private b(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Z)Z
    .locals 3

    .line 1831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCapture, builder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isHFR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1833
    invoke-direct {p0, p1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    const/4 v0, 0x0

    .line 1836
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p3, :cond_1

    .line 1839
    iget-object p3, p0, Lcom/oppo/camera/e/g;->g:Lcom/oppo/camera/e/f$e;

    invoke-interface {p3}, Lcom/oppo/camera/e/f$e;->e()Landroid/util/Range;

    move-result-object p3

    if-nez p3, :cond_0

    return v0

    .line 1845
    :cond_0
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v2, p3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1846
    iget-object p3, p0, Lcom/oppo/camera/e/g;->d:Landroid/hardware/camera2/CameraCaptureSession;

    check-cast p3, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;

    .line 1847
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/CameraConstrainedHighSpeedCaptureSession;->createHighSpeedRequestList(Landroid/hardware/camera2/CaptureRequest;)Ljava/util/List;

    move-result-object p1

    .line 1846
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1849
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1852
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/e/g;->d:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object p3, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    invoke-virtual {p1, v1, p2, p3}, Landroid/hardware/camera2/CameraCaptureSession;->captureBurst(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 1854
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method static synthetic b(Lcom/oppo/camera/e/g;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Z)Z
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/camera/e/g;->b(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/oppo/camera/e/g;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/oppo/camera/e/g;->t:Z

    return p1
.end method

.method private b(ZLcom/oppo/camera/e/f$b;)Z
    .locals 6

    const-string v0, "closeSession"

    const-string v1, "abortCaptures"

    const-string v2, "stopRepeating"

    .line 902
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "closeOldSession, mCameraCaptureSession: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oppo/camera/e/g;->d:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mDeviceState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oppo/camera/e/g;->D:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OneCameraImpl"

    invoke-static {v4, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    iget v3, p0, Lcom/oppo/camera/e/g;->D:I

    const/4 v5, 0x5

    if-ne v5, v3, :cond_2

    const/4 v3, 0x7

    .line 906
    invoke-direct {p0, v3}, Lcom/oppo/camera/e/g;->u(I)V

    .line 909
    :try_start_0
    iget-object v3, p0, Lcom/oppo/camera/e/g;->d:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v3, :cond_1

    const-string v3, "closeOldSession, begin to stopRepeating"

    .line 910
    invoke-static {v4, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    invoke-static {v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    .line 914
    iget-object v3, p0, Lcom/oppo/camera/e/g;->d:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v3}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 916
    invoke-static {v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    const-string v2, "closeOldSession, begin to abortCaptures"

    .line 918
    invoke-static {v4, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    invoke-static {v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    .line 922
    iget-object v2, p0, Lcom/oppo/camera/e/g;->d:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    .line 924
    invoke-static {v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    .line 926
    iget-object v1, p0, Lcom/oppo/camera/e/g;->c:Lcom/oppo/camera/e/f$f;

    if-eqz v1, :cond_0

    .line 927
    iget-object v1, p0, Lcom/oppo/camera/e/g;->c:Lcom/oppo/camera/e/f$f;

    invoke-interface {v1}, Lcom/oppo/camera/e/f$f;->d()V

    :cond_0
    const-string v1, "closeOldSession, begin to close"

    .line 930
    invoke-static {v4, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    .line 934
    iget-object v1, p0, Lcom/oppo/camera/e/g;->d:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 936
    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "closeOldSession"

    .line 939
    invoke-static {v4, v1, v0}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 942
    invoke-interface {p2, v5}, Lcom/oppo/camera/e/f$b;->a(I)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic c(Lcom/oppo/camera/e/g;I)I
    .locals 0

    .line 55
    iput p1, p0, Lcom/oppo/camera/e/g;->H:I

    return p1
.end method

.method static synthetic c(Lcom/oppo/camera/e/g;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/oppo/camera/e/g;->H()V

    return-void
.end method

.method static synthetic c(Lcom/oppo/camera/e/g;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/oppo/camera/e/g;->r:Z

    return p1
.end method

.method static synthetic d(Lcom/oppo/camera/e/g;I)I
    .locals 0

    .line 55
    iput p1, p0, Lcom/oppo/camera/e/g;->I:I

    return p1
.end method

.method static synthetic d(Lcom/oppo/camera/e/g;)Ljava/util/concurrent/Semaphore;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/oppo/camera/e/g;->p:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method private d(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2215
    iget-object v0, p0, Lcom/oppo/camera/e/g;->o:Ljava/lang/Object;

    monitor-enter v0

    .line 2216
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/e/g;->n:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/e/g;->n:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2217
    iget-object v1, p0, Lcom/oppo/camera/e/g;->n:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2219
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic d(Lcom/oppo/camera/e/g;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/oppo/camera/e/g;->v:Z

    return p1
.end method

.method static synthetic e(Lcom/oppo/camera/e/g;I)I
    .locals 0

    .line 55
    iput p1, p0, Lcom/oppo/camera/e/g;->E:I

    return p1
.end method

.method static synthetic e(Lcom/oppo/camera/e/g;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/oppo/camera/e/g;->G()V

    return-void
.end method

.method static synthetic e(Lcom/oppo/camera/e/g;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/oppo/camera/e/g;->Q:Z

    return p1
.end method

.method static synthetic f(Lcom/oppo/camera/e/g;I)I
    .locals 0

    .line 55
    iput p1, p0, Lcom/oppo/camera/e/g;->K:I

    return p1
.end method

.method static synthetic f(Lcom/oppo/camera/e/g;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/oppo/camera/e/g;->d:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method static synthetic g(Lcom/oppo/camera/e/g;I)I
    .locals 0

    .line 55
    iput p1, p0, Lcom/oppo/camera/e/g;->J:I

    return p1
.end method

.method static synthetic g(Lcom/oppo/camera/e/g;)Lcom/oppo/camera/n/a;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    return-object p0
.end method

.method static synthetic h(Lcom/oppo/camera/e/g;I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/oppo/camera/e/g;->v(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic h(Lcom/oppo/camera/e/g;)Lcom/oppo/camera/e/c;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/oppo/camera/e/g;->j:Lcom/oppo/camera/e/c;

    return-object p0
.end method

.method static synthetic i(Lcom/oppo/camera/e/g;)Lcom/oppo/camera/e/f$e;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/oppo/camera/e/g;->g:Lcom/oppo/camera/e/f$e;

    return-object p0
.end method

.method static synthetic j(Lcom/oppo/camera/e/g;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/oppo/camera/e/g;->z:Z

    return p0
.end method

.method static synthetic k(Lcom/oppo/camera/e/g;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/oppo/camera/e/g;->E:I

    return p0
.end method

.method static synthetic l(Lcom/oppo/camera/e/g;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/oppo/camera/e/g;->r:Z

    return p0
.end method

.method static synthetic m(Lcom/oppo/camera/e/g;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/oppo/camera/e/g;->K:I

    return p0
.end method

.method static synthetic n(Lcom/oppo/camera/e/g;)Lcom/oppo/camera/e/f$c;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/oppo/camera/e/g;->i:Lcom/oppo/camera/e/f$c;

    return-object p0
.end method

.method static synthetic o(Lcom/oppo/camera/e/g;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcom/oppo/camera/e/g;->t:Z

    return p0
.end method

.method static synthetic p(Lcom/oppo/camera/e/g;)Lcom/oppo/camera/h/a;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/oppo/camera/e/g;->T:Lcom/oppo/camera/h/a;

    return-object p0
.end method

.method static synthetic q(Lcom/oppo/camera/e/g;)Lcom/oppo/camera/b/a;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/oppo/camera/e/g;->U:Lcom/oppo/camera/b/a;

    return-object p0
.end method

.method static synthetic r(Lcom/oppo/camera/e/g;)I
    .locals 2

    .line 55
    iget v0, p0, Lcom/oppo/camera/e/g;->I:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oppo/camera/e/g;->I:I

    return v0
.end method

.method static synthetic s(Lcom/oppo/camera/e/g;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/oppo/camera/e/g;->q:I

    return p0
.end method

.method private s()Z
    .locals 3

    .line 953
    invoke-direct {p0}, Lcom/oppo/camera/e/g;->w()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/e/g;->T:Lcom/oppo/camera/h/a;

    if-eqz v0, :cond_2

    .line 955
    invoke-virtual {v0}, Lcom/oppo/camera/h/a;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oppo/camera/e/g;->u()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e/g;->T:Lcom/oppo/camera/h/a;

    .line 956
    invoke-virtual {v0}, Lcom/oppo/camera/h/a;->f()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/oppo/camera/e/g;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/oppo/camera/e/g;->v:Z

    if-nez v0, :cond_2

    .line 958
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAeAfState, flash required, but ae not converged, mFlashControllerCallback.isAeConverged: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/e/g;->T:Lcom/oppo/camera/h/a;

    .line 959
    invoke-virtual {v2}, Lcom/oppo/camera/h/a;->e()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mbAeAfLocked: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oppo/camera/e/g;->v:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OneCameraImpl"

    .line 958
    invoke-static {v2, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    iget-object v0, p0, Lcom/oppo/camera/e/g;->T:Lcom/oppo/camera/h/a;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/h/a;->a(Z)V

    .line 962
    iget-object v0, p0, Lcom/oppo/camera/e/g;->T:Lcom/oppo/camera/h/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/h/a;->a(I)V

    .line 963
    invoke-direct {p0}, Lcom/oppo/camera/e/g;->x()V

    :cond_2
    return v1
.end method

.method static synthetic t(Lcom/oppo/camera/e/g;)I
    .locals 0

    .line 55
    iget p0, p0, Lcom/oppo/camera/e/g;->I:I

    return p0
.end method

.method private t()Z
    .locals 3

    .line 971
    iget-object v0, p0, Lcom/oppo/camera/e/g;->U:Lcom/oppo/camera/b/a;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/b/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OneCameraImpl"

    const-string v2, "checkApertureSwitchState, isApertureSwitching"

    .line 972
    invoke-static {v0, v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 974
    iget-object v0, p0, Lcom/oppo/camera/e/g;->U:Lcom/oppo/camera/b/a;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/b/a;->a(Z)V

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method static synthetic u(Lcom/oppo/camera/e/g;)Lcom/oppo/camera/e/f$f;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/oppo/camera/e/g;->c:Lcom/oppo/camera/e/f$f;

    return-object p0
.end method

.method private u(I)V
    .locals 2

    .line 1863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDeviceState, sessionState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/e/g;->D:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1865
    iput p1, p0, Lcom/oppo/camera/e/g;->D:I

    return-void
.end method

.method private u()Z
    .locals 1

    .line 982
    invoke-virtual {p0}, Lcom/oppo/camera/e/g;->a()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private v(I)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 4

    const-string v0, "type_video"

    const-string v1, "type_preview"

    .line 1962
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createTriggerBuilder, templateType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OneCameraImpl"

    invoke-static {v3, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1966
    iget-object v2, p0, Lcom/oppo/camera/e/g;->b:Landroid/hardware/camera2/CameraDevice;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 1968
    :try_start_0
    invoke-virtual {v2, p1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1970
    iget-object p1, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1971
    iget-object p1, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    invoke-virtual {v3, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 1974
    :cond_0
    iget-boolean p1, p0, Lcom/oppo/camera/e/g;->Q:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/oppo/camera/e/g;->r:Z

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x3

    iget v1, p0, Lcom/oppo/camera/e/g;->K:I

    if-ne p1, v1, :cond_2

    if-eqz v3, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    .line 1977
    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1978
    iget-object p1, p0, Lcom/oppo/camera/e/g;->m:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Surface;

    invoke-virtual {v3, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1981
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    :cond_2
    :goto_0
    return-object v3
.end method

.method private v()Z
    .locals 1

    .line 986
    invoke-virtual {p0}, Lcom/oppo/camera/e/g;->a()Z

    move-result v0

    return v0
.end method

.method static synthetic v(Lcom/oppo/camera/e/g;)Z
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/oppo/camera/e/g;->w()Z

    move-result p0

    return p0
.end method

.method private w()Z
    .locals 3

    .line 990
    invoke-virtual {p0}, Lcom/oppo/camera/e/g;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oppo/camera/config/ConfigDataBase;->KEY_TORCH_SOFT_LIGHT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 994
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e/g;->u:Ljava/lang/String;

    const-string v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/e/g;->u:Ljava/lang/String;

    const-string v2, "auto"

    .line 995
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/e/g;->w:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic w(Lcom/oppo/camera/e/g;)Z
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/oppo/camera/e/g;->u()Z

    move-result p0

    return p0
.end method

.method private x()V
    .locals 2

    const-string v0, "OneCameraImpl"

    const-string v1, "triggerAeAfForFlash"

    .line 1622
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1624
    iget-object v0, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    new-instance v1, Lcom/oppo/camera/e/g$10;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e/g$10;-><init>(Lcom/oppo/camera/e/g;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic x(Lcom/oppo/camera/e/g;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/oppo/camera/e/g;->y()V

    return-void
.end method

.method static synthetic y(Lcom/oppo/camera/e/g;)Lcom/oppo/camera/e/f$a;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/oppo/camera/e/g;->h:Lcom/oppo/camera/e/f$a;

    return-object p0
.end method

.method private y()V
    .locals 3

    .line 1644
    iget-boolean v0, p0, Lcom/oppo/camera/e/g;->v:Z

    if-nez v0, :cond_0

    .line 1645
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1646
    iget-object v0, p0, Lcom/oppo/camera/e/g;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lcom/oppo/camera/e/g;->S:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;I)V

    :cond_0
    return-void
.end method

.method static synthetic z(Lcom/oppo/camera/e/g;)Lcom/oppo/camera/e/d;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/oppo/camera/e/g;->N:Lcom/oppo/camera/e/d;

    return-object p0
.end method

.method private z()Z
    .locals 1

    .line 1721
    monitor-enter p0

    .line 1722
    :try_start_0
    iget-boolean v0, p0, Lcom/oppo/camera/e/g;->A:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 1723
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(F)V
    .locals 3

    .line 1127
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1128
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1130
    iget-object p1, p0, Lcom/oppo/camera/e/g;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/oppo/camera/e/g;->S:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-direct {p0, p1, v0, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;I)V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 1107
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public a(ILcom/oppo/camera/e/d;Lcom/oppo/camera/e/f$a;)V
    .locals 1

    const/4 v0, 0x0

    .line 1019
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/oppo/camera/e/g;->a(ILcom/oppo/camera/e/d;Lcom/oppo/camera/e/f$a;Landroid/os/Handler;)V

    return-void
.end method

.method public a(ILcom/oppo/camera/e/d;Lcom/oppo/camera/e/f$a;Landroid/os/Handler;)V
    .locals 8

    .line 1025
    iget-object v0, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    new-instance v7, Lcom/oppo/camera/e/g$4;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move v4, p1

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/oppo/camera/e/g$4;-><init>(Lcom/oppo/camera/e/g;Lcom/oppo/camera/e/d;ILandroid/os/Handler;Lcom/oppo/camera/e/f$a;)V

    invoke-virtual {v0, v7}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(ILcom/oppo/camera/e/f$e;ZI)V
    .locals 8

    .line 770
    iget-object v0, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    const-string v1, "OneCameraImpl"

    const-string v2, "createCaptureSession"

    invoke-static {v1, v0, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Landroid/os/Handler;Ljava/lang/String;)V

    .line 772
    iget-object v0, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    new-instance v7, Lcom/oppo/camera/e/g$26;

    move-object v1, v7

    move-object v2, p0

    move v3, p3

    move v4, p1

    move v5, p4

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/oppo/camera/e/g$26;-><init>(Lcom/oppo/camera/e/g;ZIILcom/oppo/camera/e/f$e;)V

    invoke-virtual {v0, v7}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V
    .locals 2

    .line 1145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFocusMode, focusMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", needTrigger: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    invoke-virtual {p0}, Lcom/oppo/camera/e/g;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-ne p1, v1, :cond_0

    if-eqz p4, :cond_0

    .line 1149
    iget-object p4, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    new-instance v0, Lcom/oppo/camera/e/g$5;

    invoke-direct {v0, p0}, Lcom/oppo/camera/e/g$5;-><init>(Lcom/oppo/camera/e/g;)V

    invoke-virtual {p4, v0}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    .line 1166
    :cond_0
    sget-object p4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p4, p1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1167
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1170
    :cond_1
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1171
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, p1, p3}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public a(J)V
    .locals 3

    .line 2387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExposureTime, exposureTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2390
    iput-boolean v0, p0, Lcom/oppo/camera/e/g;->C:Z

    .line 2391
    invoke-direct {p0}, Lcom/oppo/camera/e/g;->I()V

    goto :goto_0

    .line 2393
    :cond_0
    iput-boolean v1, p0, Lcom/oppo/camera/e/g;->C:Z

    .line 2394
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2397
    :goto_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2398
    iget-object p1, p0, Lcom/oppo/camera/e/g;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p2, p0, Lcom/oppo/camera/e/g;->S:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-direct {p0, p1, p2, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;I)V

    return-void
.end method

.method public a(Landroid/content/Context;ILcom/oppo/camera/e/f$b;ZI)V
    .locals 7

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openCamera, context: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", this: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/e/g;->p:Ljava/util/concurrent/Semaphore;

    const-wide/16 v2, 0x9c4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    const-string v0, "openCamera, acquire success."

    .line 143
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iput p5, p0, Lcom/oppo/camera/e/g;->F:I

    .line 146
    invoke-static {p2}, Lcom/oppo/camera/e/a;->a(I)Lcom/oppo/camera/e/h;

    move-result-object p5

    iput-object p5, p0, Lcom/oppo/camera/e/g;->f:Lcom/oppo/camera/e/h;

    .line 148
    iget-object p5, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    new-instance v6, Lcom/oppo/camera/e/g$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move-object v4, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/e/g$1;-><init>(Lcom/oppo/camera/e/g;Landroid/content/Context;ZLcom/oppo/camera/e/f$b;I)V

    invoke-virtual {p5, v6}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    return-void

    .line 136
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Time out waiting to lock camera opening."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 139
    iget-object p2, p0, Lcom/oppo/camera/e/g;->p:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 140
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Interrupted while trying to lock camera opening."

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 1

    .line 1122
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v0, p1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/location/Location;)V
    .locals 1

    .line 1117
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_GPS_LOCATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v0, p1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/media/Image;Landroid/hardware/camera2/TotalCaptureResult;Landroid/graphics/Rect;Landroid/util/Size;)V
    .locals 3

    const-string v0, "OneCameraImpl"

    const-string v1, "reprocessImage"

    .line 1488
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1490
    iget-object v1, p0, Lcom/oppo/camera/e/g;->b:Landroid/hardware/camera2/CameraDevice;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/oppo/camera/e/g;->d:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_4

    .line 1499
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/e/g;->M:Landroid/media/ImageWriter;

    if-eqz v1, :cond_1

    .line 1500
    iget-object v1, p0, Lcom/oppo/camera/e/g;->M:Landroid/media/ImageWriter;

    invoke-virtual {v1}, Landroid/media/ImageWriter;->close()V

    const/4 v1, 0x0

    .line 1501
    iput-object v1, p0, Lcom/oppo/camera/e/g;->M:Landroid/media/ImageWriter;

    .line 1504
    :cond_1
    iget v1, p0, Lcom/oppo/camera/e/g;->D:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/oppo/camera/e/g;->d:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->isReprocessable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1505
    iget-object v1, p0, Lcom/oppo/camera/e/g;->d:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->getInputSurface()Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/e/g;->M:Landroid/media/ImageWriter;

    if-nez v1, :cond_2

    .line 1506
    iget-object v1, p0, Lcom/oppo/camera/e/g;->d:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->getInputSurface()Landroid/view/Surface;

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v1, v2}, Landroid/media/ImageWriter;->newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/e/g;->M:Landroid/media/ImageWriter;

    .line 1510
    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/e/g;->M:Landroid/media/ImageWriter;

    if-eqz v1, :cond_4

    .line 1511
    iget-object v1, p0, Lcom/oppo/camera/e/g;->M:Landroid/media/ImageWriter;

    invoke-virtual {v1, p1}, Landroid/media/ImageWriter;->queueInputImage(Landroid/media/Image;)V

    goto :goto_0

    .line 1514
    :cond_3
    invoke-virtual {p1}, Landroid/media/Image;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "reprocessImage, Queueing more than it can have!"

    .line 1517
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    .line 1523
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    new-instance v0, Lcom/oppo/camera/e/g$9;

    invoke-direct {v0, p0, p2, p3, p4}, Lcom/oppo/camera/e/g$9;-><init>(Lcom/oppo/camera/e/g;Landroid/hardware/camera2/TotalCaptureResult;Landroid/graphics/Rect;Landroid/util/Size;)V

    invoke-virtual {p1, v0}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_5
    :goto_1
    const-string p2, "reprocessImage request is called even before taking picture"

    .line 1491
    invoke-static {v0, p2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    invoke-virtual {p1}, Landroid/media/Image;->close()V

    return-void
.end method

.method public a(Lcom/oppo/camera/e/f$a;Lcom/oppo/camera/e/d;)V
    .locals 2

    .line 1990
    iget-object v0, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    new-instance v1, Lcom/oppo/camera/e/g$14;

    invoke-direct {v1, p0, p2, p1}, Lcom/oppo/camera/e/g$14;-><init>(Lcom/oppo/camera/e/g;Lcom/oppo/camera/e/d;Lcom/oppo/camera/e/f$a;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/oppo/camera/e/f$c;)V
    .locals 2

    .line 1728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRepeatingRequest, previewCallback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mCameraCaptureSession: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/e/g;->d:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPreviewBuilder: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/e/g;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDeviceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/e/g;->D:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1732
    iput-object p1, p0, Lcom/oppo/camera/e/g;->i:Lcom/oppo/camera/e/f$c;

    .line 1735
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/e/g;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/oppo/camera/e/g;->S:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;I)V

    return-void
.end method

.method public a(Lcom/oppo/camera/e/f$d;)V
    .locals 6

    .line 1740
    iget-object v1, p0, Lcom/oppo/camera/e/g;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, p0, Lcom/oppo/camera/e/g;->S:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;ILcom/oppo/camera/e/f$d;Z)V

    return-void
.end method

.method public a(Lcom/oppo/camera/e/f$f;)V
    .locals 0

    .line 759
    iput-object p1, p0, Lcom/oppo/camera/e/g;->c:Lcom/oppo/camera/e/f$f;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 7

    .line 1447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFlashMode, value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 1453
    :cond_0
    iput-object p1, p0, Lcom/oppo/camera/e/g;->u:Ljava/lang/String;

    const/4 v0, -0x1

    .line 1455
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0xddf

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v1, v2, :cond_4

    const v2, 0x1ad6f

    if-eq v1, v2, :cond_3

    const v2, 0x2dddaf

    if-eq v1, v2, :cond_2

    const v2, 0x696d3fc

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "torch"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move v0, v4

    goto :goto_0

    :cond_2
    const-string v1, "auto"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move v0, v5

    goto :goto_0

    :cond_3
    const-string v1, "off"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move v0, v6

    goto :goto_0

    :cond_4
    const-string v1, "on"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    move v0, v3

    :cond_5
    :goto_0
    if-eqz v0, :cond_9

    if-eq v0, v6, :cond_8

    if-eq v0, v5, :cond_7

    if-eq v0, v4, :cond_6

    goto :goto_1

    .line 1472
    :cond_6
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1473
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    .line 1467
    :cond_7
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1468
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    .line 1462
    :cond_8
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1463
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    .line 1457
    :cond_9
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1458
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;[I)V
    .locals 0

    .line 1437
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 1713
    monitor-enter p0

    :try_start_0
    const-string v0, "OneCameraImpl"

    .line 1714
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSurfaceReleased, hasReleased: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oppo/camera/e/g;->A:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1716
    iput-boolean p1, p0, Lcom/oppo/camera/e/g;->A:Z

    .line 1717
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(ZLcom/oppo/camera/e/d;Lcom/oppo/camera/e/f$a;)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1005
    iput-boolean v0, p0, Lcom/oppo/camera/e/g;->P:Z

    :cond_0
    if-eqz p1, :cond_1

    .line 1008
    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_CSHOT_FIRST_REQUEST_NUM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigIntValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)I

    move-result v0

    .line 1009
    :cond_1
    invoke-virtual {p0, v0, p2, p3}, Lcom/oppo/camera/e/g;->a(ILcom/oppo/camera/e/d;Lcom/oppo/camera/e/f$a;)V

    return-void
.end method

.method public a(ZLcom/oppo/camera/e/f$b;)V
    .locals 3

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeCamera, mCameraDevice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/e/g;->b:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fromError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 310
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/e/g;->p:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 312
    iget-object v2, p0, Lcom/oppo/camera/e/g;->p:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 313
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    const-string v0, "closeCamera, acquire success."

    .line 316
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v0, p0, Lcom/oppo/camera/e/g;->b:Landroid/hardware/camera2/CameraDevice;

    if-nez v0, :cond_0

    .line 319
    iget-object p1, p0, Lcom/oppo/camera/e/g;->p:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    new-instance v1, Lcom/oppo/camera/e/g$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/oppo/camera/e/g$12;-><init>(Lcom/oppo/camera/e/g;ZLcom/oppo/camera/e/f$b;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a([I)V
    .locals 2

    .line 1312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCustomBeautyValues, values: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.oppo.facebeauty.custom"

    .line 1314
    invoke-direct {p0, v0, p1}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public a([Landroid/hardware/camera2/params/MeteringRectangle;)V
    .locals 1

    .line 1176
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v0, p1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/oppo/camera/e/g;->b:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 4

    .line 1266
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.oppo.mirror.enable"

    goto :goto_0

    :cond_0
    const-string v0, "com.mediatek.control.capture.flipmode"

    .line 1270
    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/e/g;->j:Lcom/oppo/camera/e/c;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1271
    invoke-virtual {v1, v0}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1274
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, [I

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 1275
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    check-cast p1, [I

    if-eqz p1, :cond_2

    .line 1277
    array-length v0, p1

    if-lez v0, :cond_2

    aget p1, p1, v2

    if-ne p1, v3, :cond_2

    :goto_1
    move v2, v3

    goto :goto_2

    .line 1278
    :cond_1
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, [B

    if-eqz v1, :cond_2

    .line 1279
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    check-cast p1, [B

    if-eqz p1, :cond_2

    .line 1281
    array-length v0, p1

    if-lez v0, :cond_2

    aget-byte p1, p1, v2

    if-ne p1, v3, :cond_2

    goto :goto_1

    .line 1286
    :cond_2
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getMirrorState, mirror: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OneCameraImpl"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public a(Ljava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;)[I
    .locals 2

    .line 1608
    iget-object v0, p0, Lcom/oppo/camera/e/g;->j:Lcom/oppo/camera/e/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1609
    invoke-virtual {v0, p1}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1611
    invoke-virtual {p2, p1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, [I

    if-eqz v0, :cond_1

    .line 1612
    invoke-virtual {p2, p1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    check-cast p1, [I

    .line 1614
    array-length p2, p1

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    return-object p1

    :cond_1
    return-object v1
.end method

.method public b()V
    .locals 4

    const-string v0, "OneCameraImpl"

    const-string v1, "waitHandlerThread"

    .line 346
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-object v1, p0, Lcom/oppo/camera/e/g;->M:Landroid/media/ImageWriter;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 349
    invoke-virtual {v1}, Landroid/media/ImageWriter;->close()V

    .line 350
    iput-object v2, p0, Lcom/oppo/camera/e/g;->M:Landroid/media/ImageWriter;

    .line 353
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    new-instance v3, Lcom/oppo/camera/e/g$20;

    invoke-direct {v3, p0}, Lcom/oppo/camera/e/g$20;-><init>(Lcom/oppo/camera/e/g;)V

    invoke-virtual {v1, v3}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    .line 361
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/e/g;->l:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    .line 362
    iget-object v1, p0, Lcom/oppo/camera/e/g;->l:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->join()V

    .line 363
    iput-object v2, p0, Lcom/oppo/camera/e/g;->l:Landroid/os/HandlerThread;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 366
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_1
    :goto_0
    const-string v1, "waitHandlerThread X"

    .line 369
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 1112
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureRequest$Key;

    int-to-byte p1, p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 2426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "openStream, type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2428
    iget-object v0, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    new-instance v1, Lcom/oppo/camera/e/g$17;

    invoke-direct {v1, p0, p1}, Lcom/oppo/camera/e/g$17;-><init>(Lcom/oppo/camera/e/g;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 1483
    iput-boolean p1, p0, Lcom/oppo/camera/e/g;->w:Z

    return-void
.end method

.method public b([Landroid/hardware/camera2/params/MeteringRectangle;)V
    .locals 1

    .line 1181
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v0, p1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public c()Lcom/oppo/camera/e/h;
    .locals 1

    .line 764
    iget-object v0, p0, Lcom/oppo/camera/e/g;->f:Lcom/oppo/camera/e/h;

    return-object v0
.end method

.method public c(I)V
    .locals 2

    .line 1240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExposureCompensation, value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1242
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1243
    iget-object p1, p0, Lcom/oppo/camera/e/g;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/oppo/camera/e/g;->S:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;I)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 2443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeStream, type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2445
    iget-object v0, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    new-instance v1, Lcom/oppo/camera/e/g$18;

    invoke-direct {v1, p0, p1}, Lcom/oppo/camera/e/g$18;-><init>(Lcom/oppo/camera/e/g;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Z)V
    .locals 3

    .line 1255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMirror, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1257
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 1258
    new-array v0, v2, [B

    aput-byte p1, v0, v1

    const-string p1, "com.oppo.mirror.enable"

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 1260
    :cond_0
    new-array v0, v2, [I

    aput p1, v0, v1

    const-string p1, "com.mediatek.control.capture.flipmode"

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public d()V
    .locals 2

    const-string v0, "OneCameraImpl"

    const-string v1, "closeSession"

    .line 891
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    iget-object v0, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    new-instance v1, Lcom/oppo/camera/e/g$3;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e/g$3;-><init>(Lcom/oppo/camera/e/g;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(I)V
    .locals 0

    .line 1442
    iput p1, p0, Lcom/oppo/camera/e/g;->q:I

    return-void
.end method

.method public d(Z)V
    .locals 2

    .line 1389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPIEnable, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1391
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.oppo.auto.pi.enable"

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 867
    iget-object v0, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    new-instance v1, Lcom/oppo/camera/e/g$2;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e/g$2;-><init>(Lcom/oppo/camera/e/g;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e(I)V
    .locals 2

    .line 1248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAISceneMode, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1250
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.oppo.ai.scene.app.enable"

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public e(Z)V
    .locals 2

    .line 1396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAutoExposureLock, aeLock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1400
    iget-object v0, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    new-instance v1, Lcom/oppo/camera/e/g$8;

    invoke-direct {v1, p0, p1}, Lcom/oppo/camera/e/g$8;-><init>(Lcom/oppo/camera/e/g;Z)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    .line 1014
    iput-boolean v0, p0, Lcom/oppo/camera/e/g;->P:Z

    return-void
.end method

.method public f(I)V
    .locals 2

    const/4 v0, 0x1

    .line 1293
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.mediatek.vsdoffeature.vsdofFeatureCaptureWarningMsg"

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public f(Z)V
    .locals 2

    .line 1410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAutoWhiteBalanceLock, awbLock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public g()V
    .locals 4

    .line 1682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startFaceDetection, mDeviceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/e/g;->D:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "startFaceDetection"

    .line 1684
    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    .line 1686
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1687
    iget-object v1, p0, Lcom/oppo/camera/e/g;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v2, p0, Lcom/oppo/camera/e/g;->S:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;I)V

    .line 1689
    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public g(I)V
    .locals 2

    .line 1305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFaceBeautyLevel, level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1307
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.oppo.facebeauty.level"

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public g(Z)V
    .locals 2

    .line 1417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLongShotEnable, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1419
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.oppo.longshot.enable"

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public h()V
    .locals 2

    .line 1701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopFaceDetection, mDeviceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/e/g;->D:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1703
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public h(I)V
    .locals 4

    .line 2321
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2322
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2323
    new-array v0, v1, [I

    aput p1, v0, v2

    const-string p1, "com.qti.stats.awbwrapper.AWBCCT"

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 2325
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2326
    new-array v0, v1, [I

    aput p1, v0, v2

    const-string p1, "com.oppo.manualWB.color_temperature"

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2329
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/e/g;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/oppo/camera/e/g;->S:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-direct {p0, p1, v0, v2}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;I)V

    return-void
.end method

.method public h(Z)V
    .locals 2

    .line 1424
    iput-boolean p1, p0, Lcom/oppo/camera/e/g;->x:Z

    .line 1426
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1427
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 1428
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_ENABLE_ZSL:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 1431
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    const-string p1, "com.mediatek.control.capture.zsl.mode"

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public i()Landroid/os/Handler;
    .locals 1

    .line 1708
    iget-object v0, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    return-object v0
.end method

.method public i(I)V
    .locals 2

    const/4 v0, 0x1

    .line 2334
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "org.codeaurora.qcamera3.exposure_metering.exposure_metering_mode"

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public i(Z)V
    .locals 4

    .line 2465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endOfStream, isHFR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "endOfStream"

    .line 2467
    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    .line 2469
    new-instance v1, Landroid/os/ConditionVariable;

    invoke-direct {v1}, Landroid/os/ConditionVariable;-><init>()V

    .line 2470
    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 2472
    iget-object v2, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    new-instance v3, Lcom/oppo/camera/e/g$19;

    invoke-direct {v3, p0, v1, p1}, Lcom/oppo/camera/e/g$19;-><init>(Lcom/oppo/camera/e/g;Landroid/os/ConditionVariable;Z)V

    invoke-virtual {v2, v3}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x7d0

    .line 2518
    invoke-virtual {v1, v2, v3}, Landroid/os/ConditionVariable;->block(J)Z

    .line 2520
    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method public j()V
    .locals 2

    .line 1186
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1187
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public j(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    .line 2360
    iput-boolean v1, p0, Lcom/oppo/camera/e/g;->B:Z

    .line 2361
    invoke-direct {p0}, Lcom/oppo/camera/e/g;->I()V

    goto :goto_0

    .line 2363
    :cond_0
    iput-boolean v0, p0, Lcom/oppo/camera/e/g;->B:Z

    .line 2364
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2367
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/camera/e/g;->c()Lcom/oppo/camera/e/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/camera/e/h;->r()I

    move-result v1

    .line 2369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setIso, iso: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", maxISOValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OneCameraImpl"

    invoke-static {v3, v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-le p1, v1, :cond_1

    int-to-float p1, p1

    int-to-float v2, v1

    div-float/2addr p1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr p1, v2

    float-to-int p1, p1

    .line 2375
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2376
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    .line 2378
    :cond_1
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2379
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureRequest$Key;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2382
    :goto_1
    iget-object p1, p0, Lcom/oppo/camera/e/g;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lcom/oppo/camera/e/g;->S:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    invoke-direct {p0, p1, v1, v0}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;I)V

    return-void
.end method

.method public j(Z)V
    .locals 2

    const/4 v0, 0x1

    .line 2530
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.oppo.faceblur.enable"

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public k()V
    .locals 2

    .line 1192
    iget-object v0, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    new-instance v1, Lcom/oppo/camera/e/g$6;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e/g$6;-><init>(Lcom/oppo/camera/e/g;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public k(I)V
    .locals 2

    .line 1348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSceneMode, mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public k(Z)V
    .locals 2

    const/4 v0, 0x1

    .line 2555
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.mediatek.control.capture.early.notification.trigger"

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public l()V
    .locals 3

    const-string v0, "OneCameraImpl"

    const-string v1, "cancelAutoFocus"

    .line 1207
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    invoke-virtual {p0}, Lcom/oppo/camera/e/g;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1210
    iget-object v0, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    new-instance v1, Lcom/oppo/camera/e/g$7;

    invoke-direct {v1, p0}, Lcom/oppo/camera/e/g$7;-><init>(Lcom/oppo/camera/e/g;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    .line 1228
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1229
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {}, Lcom/oppo/camera/a;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1232
    :cond_0
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1233
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {}, Lcom/oppo/camera/a;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1235
    iget-object v0, p0, Lcom/oppo/camera/e/g;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lcom/oppo/camera/e/g;->S:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;I)V

    return-void
.end method

.method public l(I)V
    .locals 4

    .line 1355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHDRMode, mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    iput p1, p0, Lcom/oppo/camera/e/g;->y:I

    .line 1358
    invoke-virtual {p0}, Lcom/oppo/camera/e/g;->c()Lcom/oppo/camera/e/h;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1359
    invoke-virtual {p0}, Lcom/oppo/camera/e/g;->c()Lcom/oppo/camera/e/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/e/h;->G()Z

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    .line 1360
    iget p1, p0, Lcom/oppo/camera/e/g;->y:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x4

    .line 1361
    iput p1, p0, Lcom/oppo/camera/e/g;->L:I

    goto :goto_0

    :cond_0
    if-ne p1, v2, :cond_1

    const/4 p1, 0x3

    .line 1363
    iput p1, p0, Lcom/oppo/camera/e/g;->L:I

    goto :goto_0

    .line 1365
    :cond_1
    iput v1, p0, Lcom/oppo/camera/e/g;->L:I

    .line 1368
    :goto_0
    new-array p1, v2, [I

    iget v3, p0, Lcom/oppo/camera/e/g;->L:I

    aput v3, p1, v1

    const-string v3, "com.mediatek.hdrfeature.SessionParamhdrMode"

    invoke-direct {p0, v3, p1}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1371
    :cond_2
    new-array p1, v2, [I

    iget v3, p0, Lcom/oppo/camera/e/g;->y:I

    if-ne v3, v0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    aput v2, p1, v1

    const-string v0, "com.oppo.auto.hdr.enable"

    invoke-direct {p0, v0, p1}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public l(Z)V
    .locals 2

    .line 2560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreviewPluginBypass, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2562
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.oppo.bypass.tpi.enable"

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public m()I
    .locals 1

    .line 1135
    iget v0, p0, Lcom/oppo/camera/e/g;->G:I

    return v0
.end method

.method public m(I)V
    .locals 2

    const/4 v0, 0x1

    .line 2460
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.oppo.picture.exif.flag"

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public m(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 2574
    sget-object p1, Lcom/oppo/camera/e/c;->l:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    invoke-direct {p0, p1, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 2576
    :cond_0
    sget-object p1, Lcom/oppo/camera/e/c;->l:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oppo/camera/e/g;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public n()Lcom/oppo/camera/e/c;
    .locals 1

    .line 1603
    iget-object v0, p0, Lcom/oppo/camera/e/g;->j:Lcom/oppo/camera/e/c;

    return-object v0
.end method

.method public n(I)V
    .locals 2

    .line 1694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoEISRecordState, value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1696
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.oppo.eis.record.state"

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public n(Z)V
    .locals 3

    .line 1377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVHdrRequest, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.mediatek.hdrfeature.hdrMode"

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 1380
    new-array p1, p1, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/oppo/camera/e/g;->L:I

    aput v2, p1, v1

    invoke-direct {p0, v0, p1}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, "com.mediatek.hdrfeature.SessionParamhdrMode"

    .line 1382
    invoke-direct {p0, p1}, Lcom/oppo/camera/e/g;->d(Ljava/lang/String;)V

    .line 1383
    invoke-direct {p0, v0}, Lcom/oppo/camera/e/g;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public o()V
    .locals 3

    .line 2315
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2316
    iget-object v0, p0, Lcom/oppo/camera/e/g;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lcom/oppo/camera/e/g;->S:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;I)V

    return-void
.end method

.method public o(I)V
    .locals 2

    const/4 v0, 0x1

    .line 2525
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.oppo.camera.3d.api.state"

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected o(Z)V
    .locals 2

    .line 1651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetParamsForFlash, isFlashRequired: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oppo/camera/e/g;->w()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cancelAETrigger: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1654
    iget-object v0, p0, Lcom/oppo/camera/e/g;->T:Lcom/oppo/camera/h/a;

    invoke-virtual {v0}, Lcom/oppo/camera/h/a;->i()V

    .line 1656
    iget-object v0, p0, Lcom/oppo/camera/e/g;->k:Lcom/oppo/camera/n/a;

    new-instance v1, Lcom/oppo/camera/e/g$11;

    invoke-direct {v1, p0, p1}, Lcom/oppo/camera/e/g$11;-><init>(Lcom/oppo/camera/e/g;Z)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/n/a;->a(Ljava/lang/Runnable;)V

    .line 1674
    iget-boolean p1, p0, Lcom/oppo/camera/e/g;->v:Z

    if-nez p1, :cond_0

    .line 1675
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 1676
    iget-object p1, p0, Lcom/oppo/camera/e/g;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v0, p0, Lcom/oppo/camera/e/g;->S:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;I)V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 2

    .line 2403
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public p(I)V
    .locals 2

    const/4 v0, 0x1

    .line 2535
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.oppo.faceblur.level"

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public q()V
    .locals 3

    .line 2408
    iget v0, p0, Lcom/oppo/camera/e/g;->H:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/e/g;->u:Ljava/lang/String;

    const-string v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2409
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2410
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 2411
    :cond_0
    iget v0, p0, Lcom/oppo/camera/e/g;->H:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/e/g;->u:Ljava/lang/String;

    const-string v2, "auto"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2412
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2413
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2416
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/e/g;->e:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lcom/oppo/camera/e/g;->S:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/oppo/camera/e/g;->a(Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;I)V

    return-void
.end method

.method public q(I)V
    .locals 2

    const/4 v0, 0x1

    .line 2545
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.oppo.supernight.mode"

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public r()V
    .locals 1

    .line 1551
    iget-object v0, p0, Lcom/oppo/camera/e/g;->M:Landroid/media/ImageWriter;

    if-eqz v0, :cond_0

    .line 1552
    invoke-virtual {v0}, Landroid/media/ImageWriter;->close()V

    const/4 v0, 0x0

    .line 1553
    iput-object v0, p0, Lcom/oppo/camera/e/g;->M:Landroid/media/ImageWriter;

    :cond_0
    return-void
.end method

.method public r(I)V
    .locals 2

    const/4 v0, 0x1

    .line 2550
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.oppo.rear.remosaic.enable"

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public s(I)V
    .locals 2

    .line 1319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setApertureValue, value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1321
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.oppo.iris.aperture.value"

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public t(I)V
    .locals 2

    .line 2339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHighResolution: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneCameraImpl"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2341
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const-string p1, "com.oppo.high.resolution"

    invoke-direct {p0, p1, v0}, Lcom/oppo/camera/e/g;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
