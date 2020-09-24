.class Lcom/oppo/camera/Ipa/ImageProcessService$b;
.super Ljava/lang/Thread;
.source "ImageProcessService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oppo/camera/Ipa/ImageProcessService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/Ipa/ImageProcessService$b$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/oppo/camera/Ipa/ImageProcessService;

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/lang/Object;

.field private d:Lcom/oppo/camera/Ipa/a/b;

.field private e:Lcom/oppo/camera/Ipa/a/b;

.field private f:Lcom/oppo/camera/Ipa/a/b;

.field private g:Lcom/oppo/camera/Ipa/a/b;

.field private h:Lcom/oppo/camera/Ipa/a/b;

.field private i:Lcom/oppo/camera/Ipa/a/b;

.field private j:Lcom/oppo/camera/Ipa/a/b;

.field private k:Lcom/oppo/camera/Ipa/a/b;

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oppo/camera/Ipa/b;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Lcom/oppo/camera/Ipa/b;",
            ">;"
        }
    .end annotation
.end field

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/oppo/camera/Ipa/ImageProcessService$b$a;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oppo/camera/Ipa/ImageProcessService;)V
    .locals 1

    .line 447
    iput-object p1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->a:Lcom/oppo/camera/Ipa/ImageProcessService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 428
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->b:Ljava/lang/Object;

    .line 429
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 430
    iput-object p1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->d:Lcom/oppo/camera/Ipa/a/b;

    .line 431
    iput-object p1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->e:Lcom/oppo/camera/Ipa/a/b;

    .line 432
    iput-object p1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->f:Lcom/oppo/camera/Ipa/a/b;

    .line 433
    iput-object p1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->g:Lcom/oppo/camera/Ipa/a/b;

    .line 434
    iput-object p1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->h:Lcom/oppo/camera/Ipa/a/b;

    .line 435
    iput-object p1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->i:Lcom/oppo/camera/Ipa/a/b;

    .line 436
    iput-object p1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->j:Lcom/oppo/camera/Ipa/a/b;

    .line 437
    iput-object p1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->k:Lcom/oppo/camera/Ipa/a/b;

    .line 439
    iput-object p1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->l:Ljava/util/ArrayList;

    .line 440
    iput-object p1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->m:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 441
    iput-boolean v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->n:Z

    .line 442
    iput-boolean v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->o:Z

    .line 443
    iput-boolean v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->p:Z

    .line 444
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->q:Ljava/util/HashMap;

    .line 445
    iput-object p1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->r:Ljava/util/concurrent/ConcurrentHashMap;

    const-string p1, "CameraImageProcessor"

    .line 448
    invoke-virtual {p0, p1}, Lcom/oppo/camera/Ipa/ImageProcessService$b;->setName(Ljava/lang/String;)V

    .line 449
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->l:Ljava/util/ArrayList;

    .line 450
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->m:Ljava/util/concurrent/ConcurrentHashMap;

    .line 451
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->r:Ljava/util/concurrent/ConcurrentHashMap;

    .line 453
    invoke-virtual {p0}, Lcom/oppo/camera/Ipa/ImageProcessService$b;->start()V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/Ipa/ImageProcessService$b;Lcom/oppo/camera/Ipa/b;)V
    .locals 0

    .line 427
    invoke-direct {p0, p1}, Lcom/oppo/camera/Ipa/ImageProcessService$b;->d(Lcom/oppo/camera/Ipa/b;)V

    return-void
.end method

.method private a(Lcom/oppo/camera/statistics/model/CaptureMsgData;Lcom/oppo/camera/Ipa/b;)V
    .locals 0

    .line 1649
    invoke-static {p1, p2}, Lcom/oppo/camera/Ipa/a;->a(Lcom/oppo/camera/statistics/model/CaptureMsgData;Lcom/oppo/camera/Ipa/b;)Lcom/oppo/camera/statistics/model/CaptureMsgData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1652
    invoke-virtual {p1}, Lcom/oppo/camera/statistics/model/CaptureMsgData;->report()V

    :cond_0
    return-void
.end method

.method private a(I)Z
    .locals 8

    .line 924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkAlgoFlagFromeCache, algoFlag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageProcessService"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->m:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    .line 929
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_2

    .line 933
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 934
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 936
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oppo/camera/Ipa/b;

    iget-object v5, v5, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    if-eqz v5, :cond_1

    .line 937
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/camera/Ipa/b;

    iget-object v4, v4, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    iget-wide v4, v4, Lcom/oppo/camera/Ipa/b$b;->f:J

    int-to-long v6, p1

    and-long/2addr v4, v6

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    return v1

    .line 944
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 945
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oppo/camera/Ipa/b;

    .line 946
    iget-object v5, v4, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    if-eqz v5, :cond_3

    iget-object v4, v4, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    iget-wide v4, v4, Lcom/oppo/camera/Ipa/b$b;->f:J

    int-to-long v6, p1

    and-long/2addr v4, v6

    cmp-long v4, v2, v4

    if-eqz v4, :cond_3

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic a(Lcom/oppo/camera/Ipa/ImageProcessService$b;Lcom/oppo/camera/Ipa/b$a;)Z
    .locals 0

    .line 427
    invoke-direct {p0, p1}, Lcom/oppo/camera/Ipa/ImageProcessService$b;->b(Lcom/oppo/camera/Ipa/b$a;)Z

    move-result p0

    return p0
.end method

.method private a(Lcom/oppo/camera/Ipa/b$b;)Z
    .locals 2

    .line 1501
    iget v0, p1, Lcom/oppo/camera/Ipa/b$b;->ac:I

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/oppo/camera/Ipa/b$b;->ag:I

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/oppo/camera/Ipa/b$b;->ac:I

    iget v1, p1, Lcom/oppo/camera/Ipa/b$b;->ag:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/oppo/camera/Ipa/b$b;->ad:I

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/oppo/camera/Ipa/b$b;->ah:I

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/oppo/camera/Ipa/b$b;->ad:I

    iget v1, p1, Lcom/oppo/camera/Ipa/b$b;->ah:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/oppo/camera/Ipa/b$b;->ae:I

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/oppo/camera/Ipa/b$b;->ai:I

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/oppo/camera/Ipa/b$b;->ae:I

    iget v1, p1, Lcom/oppo/camera/Ipa/b$b;->ai:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Lcom/oppo/camera/Ipa/b$b;->af:I

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/oppo/camera/Ipa/b$b;->aj:I

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/oppo/camera/Ipa/b$b;->af:I

    iget v1, p1, Lcom/oppo/camera/Ipa/b$b;->aj:I

    if-eq v0, v1, :cond_0

    iget-boolean p1, p1, Lcom/oppo/camera/Ipa/b$b;->I:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4

    .line 1224
    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "ImageProcessService"

    .line 1225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createBurstShotFlagFile, burstShotPath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    .line 1230
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1232
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const-string v1, "ImageProcessService"

    const-string v3, "createBurstShotFlagFile, make directory"

    .line 1233
    invoke-static {v1, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 1238
    :cond_1
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".cshot"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1240
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    const-string p1, "ImageProcessService"

    .line 1241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createBurstShotFlagFile, path: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1246
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    const-string p1, "ImageProcessService"

    const-string v2, "createBurstShotFlagFile, Exception"

    .line 1250
    invoke-static {p1, v2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1253
    :cond_3
    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 1254
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method static synthetic b(Lcom/oppo/camera/Ipa/ImageProcessService$b;Lcom/oppo/camera/Ipa/b;)V
    .locals 0

    .line 427
    invoke-direct {p0, p1}, Lcom/oppo/camera/Ipa/ImageProcessService$b;->c(Lcom/oppo/camera/Ipa/b;)V

    return-void
.end method

.method private b(Lcom/oppo/camera/Ipa/b$c;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteThumbnailAndCache, thumbnailItem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timeStamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/oppo/camera/Ipa/b$c;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageProcessService"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    new-instance v0, Lcom/oppo/camera/v$a;

    invoke-direct {v0}, Lcom/oppo/camera/v$a;-><init>()V

    .line 1145
    iget-object v1, p1, Lcom/oppo/camera/Ipa/b$c;->b:Landroid/content/ContentResolver;

    iput-object v1, v0, Lcom/oppo/camera/v$a;->a:Landroid/content/ContentResolver;

    .line 1146
    iget-object v1, p1, Lcom/oppo/camera/Ipa/b$c;->a:Landroid/net/Uri;

    iput-object v1, v0, Lcom/oppo/camera/v$a;->b:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 1147
    iput-boolean v1, v0, Lcom/oppo/camera/v$a;->t:Z

    .line 1148
    new-instance v1, Lcom/oppo/camera/Ipa/ImageProcessService$b$2;

    invoke-direct {v1, p0, p1}, Lcom/oppo/camera/Ipa/ImageProcessService$b$2;-><init>(Lcom/oppo/camera/Ipa/ImageProcessService$b;Lcom/oppo/camera/Ipa/b$c;)V

    iput-object v1, v0, Lcom/oppo/camera/v$a;->v:Lcom/oppo/camera/ui/control/e$a;

    .line 1162
    invoke-static {}, Lcom/oppo/camera/j/b;->a()Lcom/oppo/camera/j/b;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oppo/camera/j/b;->c(Lcom/oppo/camera/v$a;)V

    :cond_0
    return-void
.end method

.method private b(Lcom/oppo/camera/Ipa/b;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 956
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processImage, start, timestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    iget-wide v3, v3, Lcom/oppo/camera/Ipa/b$b;->b:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", mRecBurstNum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/oppo/camera/Ipa/b;->a:Lcom/oppo/camera/Ipa/b$a;

    iget v3, v3, Lcom/oppo/camera/Ipa/b$a;->o:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImageProcessService"

    invoke-static {v3, v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "captureX processImage"

    .line 959
    invoke-static {v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    .line 961
    iget-object v2, v0, Lcom/oppo/camera/Ipa/b;->a:Lcom/oppo/camera/Ipa/b$a;

    .line 962
    iget-object v3, v0, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    .line 963
    iget-object v4, v0, Lcom/oppo/camera/Ipa/b;->c:Lcom/oppo/camera/Ipa/b$c;

    .line 965
    iget-boolean v5, v2, Lcom/oppo/camera/Ipa/b$a;->l:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    iget-object v5, v2, Lcom/oppo/camera/Ipa/b$a;->n:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v2, Lcom/oppo/camera/Ipa/b$a;->n:Ljava/lang/String;

    const-string v7, ""

    .line 967
    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, v2, Lcom/oppo/camera/Ipa/b$a;->o:I

    if-ne v5, v6, :cond_0

    .line 969
    iget-object v5, v2, Lcom/oppo/camera/Ipa/b$a;->n:Ljava/lang/String;

    invoke-direct {v1, v5}, Lcom/oppo/camera/Ipa/ImageProcessService$b;->a(Ljava/lang/String;)Z

    .line 972
    :cond_0
    invoke-direct {v1, v2}, Lcom/oppo/camera/Ipa/ImageProcessService$b;->b(Lcom/oppo/camera/Ipa/b$a;)Z

    move-result v5

    const/16 v7, 0x100

    if-nez v5, :cond_2

    .line 973
    invoke-direct {v1, v4}, Lcom/oppo/camera/Ipa/ImageProcessService$b;->b(Lcom/oppo/camera/Ipa/b$c;)V

    const-string v5, "ImageProcessService"

    const-string v8, "processImage, no valid data to process, so return!"

    .line 975
    invoke-static {v5, v8}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    iget-boolean v5, v2, Lcom/oppo/camera/Ipa/b$a;->l:Z

    if-eqz v5, :cond_1

    iget v5, v2, Lcom/oppo/camera/Ipa/b$a;->i:I

    if-ne v5, v7, :cond_2

    :cond_1
    const-string v0, "captureX processImage"

    .line 978
    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void

    .line 984
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processImage, mFormat: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v2, Lcom/oppo/camera/Ipa/b$a;->i:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", algoFlag: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v3, Lcom/oppo/camera/Ipa/b$b;->f:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "ImageProcessService"

    invoke-static {v8, v5}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    iget v5, v2, Lcom/oppo/camera/Ipa/b$a;->i:I

    if-ne v5, v7, :cond_3

    iget-object v5, v2, Lcom/oppo/camera/Ipa/b$a;->a:[B

    if-eqz v5, :cond_3

    .line 987
    invoke-direct/range {p0 .. p1}, Lcom/oppo/camera/Ipa/ImageProcessService$b;->d(Lcom/oppo/camera/Ipa/b;)V

    goto/16 :goto_2

    .line 989
    :cond_3
    invoke-direct {v1, v2}, Lcom/oppo/camera/Ipa/ImageProcessService$b;->b(Lcom/oppo/camera/Ipa/b$a;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 990
    invoke-direct/range {p0 .. p1}, Lcom/oppo/camera/Ipa/ImageProcessService$b;->e(Lcom/oppo/camera/Ipa/b;)V

    .line 991
    invoke-virtual {v1, v6}, Lcom/oppo/camera/Ipa/ImageProcessService$b;->b(Z)V

    .line 994
    :cond_4
    iget-object v5, v4, Lcom/oppo/camera/Ipa/b$c;->f:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_5

    iget-object v5, v4, Lcom/oppo/camera/Ipa/b$c;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-nez v5, :cond_5

    .line 995
    iget-object v5, v4, Lcom/oppo/camera/Ipa/b$c;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 998
    :cond_5
    iget-object v5, v4, Lcom/oppo/camera/Ipa/b$c;->j:Lcom/oppo/camera/Ipa/c;

    if-eqz v5, :cond_b

    .line 1001
    iget-boolean v5, v3, Lcom/oppo/camera/Ipa/b$b;->E:Z

    const/4 v6, 0x0

    const/16 v8, 0xb4

    const/16 v9, 0x5a

    if-eqz v5, :cond_9

    .line 1002
    iget v5, v3, Lcom/oppo/camera/Ipa/b$b;->v:I

    rem-int/2addr v5, v8

    if-eqz v5, :cond_a

    .line 1003
    iget-boolean v5, v2, Lcom/oppo/camera/Ipa/b$a;->q:Z

    if-eqz v5, :cond_8

    .line 1004
    iget v5, v3, Lcom/oppo/camera/Ipa/b$b;->v:I

    if-ne v9, v5, :cond_7

    :cond_6
    move v9, v8

    goto :goto_1

    :cond_7
    :goto_0
    move v9, v6

    goto :goto_1

    :cond_8
    const/16 v9, 0x10e

    goto :goto_1

    .line 1015
    :cond_9
    iget-boolean v5, v2, Lcom/oppo/camera/Ipa/b$a;->q:Z

    if-eqz v5, :cond_a

    .line 1016
    iget v5, v3, Lcom/oppo/camera/Ipa/b$b;->v:I

    rem-int/2addr v5, v8

    if-eqz v5, :cond_a

    .line 1017
    iget v5, v3, Lcom/oppo/camera/Ipa/b$b;->v:I

    if-ne v9, v5, :cond_6

    goto :goto_0

    :cond_a
    :goto_1
    move v14, v9

    .line 1023
    iget-object v10, v4, Lcom/oppo/camera/Ipa/b$c;->j:Lcom/oppo/camera/Ipa/c;

    iget-object v11, v2, Lcom/oppo/camera/Ipa/b$a;->a:[B

    iget v12, v2, Lcom/oppo/camera/Ipa/b$a;->e:I

    iget v13, v2, Lcom/oppo/camera/Ipa/b$a;->f:I

    iget-object v4, v0, Lcom/oppo/camera/Ipa/b;->a:Lcom/oppo/camera/Ipa/b$a;

    iget v15, v4, Lcom/oppo/camera/Ipa/b$a;->g:I

    iget-object v4, v0, Lcom/oppo/camera/Ipa/b;->a:Lcom/oppo/camera/Ipa/b$a;

    iget v4, v4, Lcom/oppo/camera/Ipa/b$a;->h:I

    iget-boolean v3, v3, Lcom/oppo/camera/Ipa/b$b;->e:Z

    move/from16 v16, v4

    move/from16 v17, v3

    invoke-interface/range {v10 .. v17}, Lcom/oppo/camera/Ipa/c;->a([BIIIIIZ)V

    .line 1028
    :cond_b
    iget-object v3, v0, Lcom/oppo/camera/Ipa/b;->a:Lcom/oppo/camera/Ipa/b$a;

    iget-boolean v3, v3, Lcom/oppo/camera/Ipa/b$a;->l:Z

    if-eqz v3, :cond_d

    .line 1029
    iget-object v3, v1, Lcom/oppo/camera/Ipa/ImageProcessService$b;->b:Ljava/lang/Object;

    monitor-enter v3

    .line 1030
    :try_start_0
    iget-object v4, v1, Lcom/oppo/camera/Ipa/ImageProcessService$b;->q:Ljava/util/HashMap;

    iget-wide v5, v2, Lcom/oppo/camera/Ipa/b$a;->m:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_c

    .line 1031
    iget-object v4, v1, Lcom/oppo/camera/Ipa/ImageProcessService$b;->q:Ljava/util/HashMap;

    iget-wide v5, v2, Lcom/oppo/camera/Ipa/b$a;->m:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    new-instance v6, Lcom/oppo/camera/Ipa/ImageProcessService$b$a;

    const/4 v7, 0x0

    invoke-direct {v6, v1, v7}, Lcom/oppo/camera/Ipa/ImageProcessService$b$a;-><init>(Lcom/oppo/camera/Ipa/ImageProcessService$b;Lcom/oppo/camera/Ipa/ImageProcessService$1;)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    :cond_c
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1035
    iget-object v3, v1, Lcom/oppo/camera/Ipa/ImageProcessService$b;->a:Lcom/oppo/camera/Ipa/ImageProcessService;

    invoke-static {v3}, Lcom/oppo/camera/Ipa/ImageProcessService;->d(Lcom/oppo/camera/Ipa/ImageProcessService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    if-eqz v3, :cond_f

    .line 1036
    iget-object v3, v1, Lcom/oppo/camera/Ipa/ImageProcessService$b;->a:Lcom/oppo/camera/Ipa/ImageProcessService;

    invoke-static {v3}, Lcom/oppo/camera/Ipa/ImageProcessService;->d(Lcom/oppo/camera/Ipa/ImageProcessService;)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    new-instance v4, Lcom/oppo/camera/Ipa/ImageProcessService$b$1;

    invoke-direct {v4, v1, v2, v0}, Lcom/oppo/camera/Ipa/ImageProcessService$b$1;-><init>(Lcom/oppo/camera/Ipa/ImageProcessService$b;Lcom/oppo/camera/Ipa/b$a;Lcom/oppo/camera/Ipa/b;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 1033
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1062
    :cond_d
    invoke-static {}, Lcom/oppo/camera/i/a;->a()Lcom/oppo/camera/i/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppo/camera/i/a;->b()V

    .line 1064
    iget v2, v2, Lcom/oppo/camera/Ipa/b$a;->i:I

    if-eq v2, v7, :cond_e

    .line 1065
    new-instance v2, Lcom/oppo/camera/Ipa/a/e;

    invoke-direct {v2}, Lcom/oppo/camera/Ipa/a/e;-><init>()V

    .line 1066
    invoke-static {}, Lcom/oppo/camera/o/d;->e()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/oppo/camera/Ipa/a/b;->a(Landroid/content/Context;Lcom/oppo/camera/Ipa/b;)V

    .line 1067
    invoke-virtual {v2, v0}, Lcom/oppo/camera/Ipa/a/b;->a(Lcom/oppo/camera/Ipa/b;)V

    .line 1068
    invoke-virtual {v2}, Lcom/oppo/camera/Ipa/a/b;->a()V

    .line 1071
    :cond_e
    invoke-direct/range {p0 .. p1}, Lcom/oppo/camera/Ipa/ImageProcessService$b;->d(Lcom/oppo/camera/Ipa/b;)V

    .line 1073
    invoke-static {}, Lcom/oppo/camera/i/a;->a()Lcom/oppo/camera/i/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/i/a;->c()V

    :cond_f
    :goto_2
    const-string v0, "captureX processImage"

    .line 1077
    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(ZZ)V
    .locals 2

    .line 1598
    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->e:Lcom/oppo/camera/Ipa/a/b;

    if-nez v0, :cond_0

    .line 1599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initFacebeautyProcess, isFrontCamera: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isPortrait: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageProcessService"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    new-instance v0, Lcom/oppo/camera/Ipa/b;

    invoke-direct {v0}, Lcom/oppo/camera/Ipa/b;-><init>()V

    .line 1602
    new-instance v1, Lcom/oppo/camera/Ipa/b$b;

    invoke-direct {v1}, Lcom/oppo/camera/Ipa/b$b;-><init>()V

    iput-object v1, v0, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    .line 1603
    iget-object v1, v0, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    iput-boolean p1, v1, Lcom/oppo/camera/Ipa/b$b;->E:Z

    .line 1604
    iget-object p1, v0, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    iput-boolean p2, p1, Lcom/oppo/camera/Ipa/b$b;->F:Z

    .line 1606
    new-instance p1, Lcom/oppo/camera/Ipa/a/c;

    invoke-direct {p1}, Lcom/oppo/camera/Ipa/a/c;-><init>()V

    iput-object p1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->e:Lcom/oppo/camera/Ipa/a/b;

    .line 1607
    iget-object p1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->e:Lcom/oppo/camera/Ipa/a/b;

    invoke-static {}, Lcom/oppo/camera/o/d;->e()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/oppo/camera/Ipa/a/b;->a(Landroid/content/Context;Lcom/oppo/camera/Ipa/b;)V

    :cond_0
    return-void
.end method

.method private b(Lcom/oppo/camera/Ipa/b$a;)Z
    .locals 1

    .line 1081
    iget-object v0, p1, Lcom/oppo/camera/Ipa/b$a;->a:[B

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/oppo/camera/Ipa/b$a;->b:[B

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/oppo/camera/Ipa/b$a;->c:[B

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/oppo/camera/Ipa/b$a;->d:Lcom/oppo/camera/jni/NativeBufferProducer$NativeBufferInfo;

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
.end method

.method private b(Ljava/lang/String;)Z
    .locals 5

    .line 1258
    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "ImageProcessService"

    .line 1259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteBurstShotFlagFile, burstShotPath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    .line 1264
    :try_start_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1265
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".cshot"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1267
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ImageProcessService"

    .line 1268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteBurstShotFlagFile, path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v1

    const-string p1, "ImageProcessService"

    const-string v2, "deleteBurstShotFlagFile, notify gallery start"

    .line 1272
    invoke-static {p1, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    iget-object p1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->a:Lcom/oppo/camera/Ipa/ImageProcessService;

    invoke-virtual {p1}, Lcom/oppo/camera/Ipa/ImageProcessService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 1275
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    const-string p1, "ImageProcessService"

    const-string v2, "deleteBurstShotFlagFile, notify gallery end"

    .line 1277
    invoke-static {p1, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1280
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    const-string p1, "ImageProcessService"

    const-string v2, "deleteBurstShotFlagFile, Exception"

    .line 1284
    invoke-static {p1, v2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    :cond_0
    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 1288
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private c(Lcom/oppo/camera/Ipa/b;)V
    .locals 7

    .line 1105
    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 1106
    :try_start_0
    iget-object v1, p1, Lcom/oppo/camera/Ipa/b;->a:Lcom/oppo/camera/Ipa/b$a;

    .line 1107
    iget-object v2, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->q:Ljava/util/HashMap;

    iget-wide v3, v1, Lcom/oppo/camera/Ipa/b$a;->m:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/Ipa/ImageProcessService$b$a;

    if-nez v2, :cond_0

    .line 1110
    new-instance v2, Lcom/oppo/camera/Ipa/ImageProcessService$b$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/oppo/camera/Ipa/ImageProcessService$b$a;-><init>(Lcom/oppo/camera/Ipa/ImageProcessService$b;Lcom/oppo/camera/Ipa/ImageProcessService$1;)V

    .line 1113
    :cond_0
    iget v3, v2, Lcom/oppo/camera/Ipa/ImageProcessService$b$a;->a:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/oppo/camera/Ipa/ImageProcessService$b$a;->a:I

    .line 1114
    iget-object v3, v1, Lcom/oppo/camera/Ipa/b$a;->n:Ljava/lang/String;

    iput-object v3, v2, Lcom/oppo/camera/Ipa/ImageProcessService$b$a;->c:Ljava/lang/String;

    .line 1116
    iget-object v3, v1, Lcom/oppo/camera/Ipa/b$a;->a:[B

    if-nez v3, :cond_1

    iget-object v3, v1, Lcom/oppo/camera/Ipa/b$a;->b:[B

    if-nez v3, :cond_1

    iget-object v3, v1, Lcom/oppo/camera/Ipa/b$a;->c:[B

    if-nez v3, :cond_1

    iget-object v3, v1, Lcom/oppo/camera/Ipa/b$a;->d:Lcom/oppo/camera/jni/NativeBufferProducer$NativeBufferInfo;

    if-eqz v3, :cond_2

    .line 1120
    :cond_1
    iget v3, v2, Lcom/oppo/camera/Ipa/ImageProcessService$b$a;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/oppo/camera/Ipa/ImageProcessService$b$a;->b:I

    :cond_2
    const-string v3, "ImageProcessService"

    .line 1123
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "countBurstShot, mCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/oppo/camera/Ipa/ImageProcessService$b$a;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mCshotPath: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/oppo/camera/Ipa/ImageProcessService$b$a;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", mBurstShotFlagId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/oppo/camera/Ipa/b$a;->m:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", map size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->q:Ljava/util/HashMap;

    .line 1124
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", mRecBurstNum: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/oppo/camera/Ipa/b;->a:Lcom/oppo/camera/Ipa/b$a;

    iget v5, v5, Lcom/oppo/camera/Ipa/b$a;->o:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1123
    invoke-static {v3, v4}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    iget v3, v2, Lcom/oppo/camera/Ipa/ImageProcessService$b$a;->a:I

    iget v4, v2, Lcom/oppo/camera/Ipa/ImageProcessService$b$a;->d:I

    if-lt v3, v4, :cond_3

    .line 1128
    iget-object v3, p1, Lcom/oppo/camera/Ipa/b;->a:Lcom/oppo/camera/Ipa/b$a;

    iget v4, v2, Lcom/oppo/camera/Ipa/ImageProcessService$b$a;->b:I

    iput v4, v3, Lcom/oppo/camera/Ipa/b$a;->o:I

    .line 1129
    iget-object v2, v2, Lcom/oppo/camera/Ipa/ImageProcessService$b$a;->c:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/oppo/camera/Ipa/ImageProcessService$b;->b(Ljava/lang/String;)Z

    .line 1130
    iget-object v2, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->q:Ljava/util/HashMap;

    iget-wide v3, v1, Lcom/oppo/camera/Ipa/b$a;->m:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    invoke-direct {p0, p1}, Lcom/oppo/camera/Ipa/ImageProcessService$b;->f(Lcom/oppo/camera/Ipa/b;)V

    goto :goto_0

    .line 1134
    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->q:Ljava/util/HashMap;

    iget-wide v3, v1, Lcom/oppo/camera/Ipa/b$a;->m:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private d(Lcom/oppo/camera/Ipa/b;)V
    .locals 9

    .line 1167
    iget-object v0, p1, Lcom/oppo/camera/Ipa/b;->c:Lcom/oppo/camera/Ipa/b$c;

    .line 1168
    iget-object v1, p1, Lcom/oppo/camera/Ipa/b;->a:Lcom/oppo/camera/Ipa/b$a;

    .line 1169
    iget-object v2, p1, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    .line 1171
    new-instance v3, Lcom/oppo/camera/v$a;

    invoke-direct {v3}, Lcom/oppo/camera/v$a;-><init>()V

    .line 1172
    iget-object v4, v0, Lcom/oppo/camera/Ipa/b$c;->b:Landroid/content/ContentResolver;

    iput-object v4, v3, Lcom/oppo/camera/v$a;->a:Landroid/content/ContentResolver;

    .line 1173
    iget-object v4, v0, Lcom/oppo/camera/Ipa/b$c;->d:Ljava/lang/String;

    iput-object v4, v3, Lcom/oppo/camera/v$a;->g:Ljava/lang/String;

    .line 1174
    iget-object v4, v1, Lcom/oppo/camera/Ipa/b$a;->a:[B

    iput-object v4, v3, Lcom/oppo/camera/v$a;->d:[B

    .line 1175
    iget-object v4, v0, Lcom/oppo/camera/Ipa/b$c;->a:Landroid/net/Uri;

    iput-object v4, v3, Lcom/oppo/camera/v$a;->b:Landroid/net/Uri;

    .line 1176
    iget v4, v1, Lcom/oppo/camera/Ipa/b$a;->e:I

    iput v4, v3, Lcom/oppo/camera/v$a;->o:I

    .line 1177
    iget v4, v1, Lcom/oppo/camera/Ipa/b$a;->f:I

    iput v4, v3, Lcom/oppo/camera/v$a;->p:I

    .line 1178
    iget v4, v1, Lcom/oppo/camera/Ipa/b$a;->o:I

    iput v4, v3, Lcom/oppo/camera/v$a;->n:I

    const/4 v4, 0x1

    .line 1179
    iput-boolean v4, v3, Lcom/oppo/camera/v$a;->t:Z

    .line 1180
    iput-boolean v4, v3, Lcom/oppo/camera/v$a;->u:Z

    .line 1182
    iget-object v5, v2, Lcom/oppo/camera/Ipa/b$b;->m:Landroid/location/Location;

    if-eqz v5, :cond_0

    .line 1183
    new-instance v5, Landroid/location/Location;

    const-string v6, "network"

    invoke-direct {v5, v6}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v5, v3, Lcom/oppo/camera/v$a;->c:Landroid/location/Location;

    .line 1184
    iget-object v5, v3, Lcom/oppo/camera/v$a;->c:Landroid/location/Location;

    iget-wide v6, v2, Lcom/oppo/camera/Ipa/b$b;->o:D

    invoke-virtual {v5, v6, v7}, Landroid/location/Location;->setLongitude(D)V

    .line 1185
    iget-object v5, v3, Lcom/oppo/camera/v$a;->c:Landroid/location/Location;

    iget-wide v6, v2, Lcom/oppo/camera/Ipa/b$b;->n:D

    invoke-virtual {v5, v6, v7}, Landroid/location/Location;->setLatitude(D)V

    .line 1188
    :cond_0
    iget-wide v5, v1, Lcom/oppo/camera/Ipa/b$a;->k:J

    iput-wide v5, v3, Lcom/oppo/camera/v$a;->C:J

    .line 1189
    iget-wide v5, v1, Lcom/oppo/camera/Ipa/b$a;->m:J

    iput-wide v5, v3, Lcom/oppo/camera/v$a;->m:J

    .line 1190
    iget-object v2, v1, Lcom/oppo/camera/Ipa/b$a;->n:Ljava/lang/String;

    iput-object v2, v3, Lcom/oppo/camera/v$a;->k:Ljava/lang/String;

    .line 1192
    iget-object v2, v0, Lcom/oppo/camera/Ipa/b$c;->o:Lcom/oppo/camera/ui/control/e$a;

    if-eqz v2, :cond_1

    .line 1193
    iget-object v2, v0, Lcom/oppo/camera/Ipa/b$c;->o:Lcom/oppo/camera/ui/control/e$a;

    iput-object v2, v3, Lcom/oppo/camera/v$a;->v:Lcom/oppo/camera/ui/control/e$a;

    .line 1194
    iget v2, v0, Lcom/oppo/camera/Ipa/b$c;->m:I

    iput v2, v3, Lcom/oppo/camera/v$a;->s:I

    .line 1197
    :cond_1
    iget-boolean v2, v1, Lcom/oppo/camera/Ipa/b$a;->l:Z

    if-nez v2, :cond_3

    iget-wide v5, v0, Lcom/oppo/camera/Ipa/b$c;->k:J

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-nez v2, :cond_2

    goto :goto_0

    .line 1200
    :cond_2
    iget-wide v5, v0, Lcom/oppo/camera/Ipa/b$c;->k:J

    iput-wide v5, v3, Lcom/oppo/camera/v$a;->l:J

    goto :goto_1

    .line 1198
    :cond_3
    :goto_0
    iget-wide v5, v1, Lcom/oppo/camera/Ipa/b$a;->p:J

    iput-wide v5, v3, Lcom/oppo/camera/v$a;->l:J

    .line 1203
    :goto_1
    iget-object v2, v1, Lcom/oppo/camera/Ipa/b$a;->a:[B

    invoke-static {v2}, Lcom/oppo/camera/o/d;->b([B)I

    move-result v2

    iput v2, v3, Lcom/oppo/camera/v$a;->r:I

    .line 1204
    iget-boolean v2, v0, Lcom/oppo/camera/Ipa/b$c;->n:Z

    iput-boolean v2, v3, Lcom/oppo/camera/v$a;->E:Z

    .line 1206
    iget-wide v5, v3, Lcom/oppo/camera/v$a;->C:J

    iget-object v2, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->a:Lcom/oppo/camera/Ipa/ImageProcessService;

    invoke-static {v2}, Lcom/oppo/camera/Ipa/ImageProcessService;->c(Lcom/oppo/camera/Ipa/ImageProcessService;)J

    move-result-wide v7

    cmp-long v2, v5, v7

    if-nez v2, :cond_4

    .line 1207
    iput-boolean v4, v3, Lcom/oppo/camera/v$a;->D:Z

    .line 1210
    :cond_4
    iget-object v2, v0, Lcom/oppo/camera/Ipa/b$c;->j:Lcom/oppo/camera/Ipa/c;

    if-eqz v2, :cond_5

    .line 1211
    iget-object v0, v0, Lcom/oppo/camera/Ipa/b$c;->j:Lcom/oppo/camera/Ipa/c;

    invoke-interface {v0, v3}, Lcom/oppo/camera/Ipa/c;->a(Lcom/oppo/camera/v$a;)V

    goto :goto_2

    .line 1213
    :cond_5
    invoke-static {}, Lcom/oppo/camera/j/b;->a()Lcom/oppo/camera/j/b;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/oppo/camera/j/b;->c(Lcom/oppo/camera/v$a;)V

    .line 1216
    :goto_2
    iget-boolean v0, v1, Lcom/oppo/camera/Ipa/b$a;->l:Z

    if-nez v0, :cond_6

    .line 1217
    invoke-direct {p0, p1}, Lcom/oppo/camera/Ipa/ImageProcessService$b;->f(Lcom/oppo/camera/Ipa/b;)V

    :cond_6
    const-string p1, "ImageProcessService"

    const-string v0, "processImage, End"

    .line 1220
    invoke-static {p1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private e()I
    .locals 4

    .line 515
    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 518
    iget-object v1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/Ipa/b;

    .line 519
    iget-object v3, v2, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    iget-boolean v3, v3, Lcom/oppo/camera/Ipa/b$b;->d:Z

    if-eqz v3, :cond_0

    .line 520
    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    :cond_1
    return v0
.end method

.method private e(Lcom/oppo/camera/Ipa/b;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 1292
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1293
    invoke-static {}, Lcom/oppo/camera/i/a;->a()Lcom/oppo/camera/i/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oppo/camera/i/a;->b()V

    const-string v4, "ImageProcessService"

    const-string v5, "processAlgorithm, Start"

    .line 1295
    invoke-static {v4, v5}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    iget-object v4, v0, Lcom/oppo/camera/Ipa/b;->a:Lcom/oppo/camera/Ipa/b$a;

    .line 1298
    iget-object v5, v0, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    .line 1299
    iget-object v6, v0, Lcom/oppo/camera/Ipa/b;->c:Lcom/oppo/camera/Ipa/b$c;

    .line 1301
    iget-wide v7, v5, Lcom/oppo/camera/Ipa/b$b;->f:J

    const-wide/16 v9, 0x100

    and-long/2addr v7, v9

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_1

    .line 1302
    iget-object v7, v1, Lcom/oppo/camera/Ipa/ImageProcessService$b;->j:Lcom/oppo/camera/Ipa/a/b;

    if-nez v7, :cond_0

    .line 1303
    new-instance v7, Lcom/oppo/camera/Ipa/a/a;

    invoke-direct {v7}, Lcom/oppo/camera/Ipa/a/a;-><init>()V

    iput-object v7, v1, Lcom/oppo/camera/Ipa/ImageProcessService$b;->j:Lcom/oppo/camera/Ipa/a/b;

    .line 1304
    iget-object v7, v1, Lcom/oppo/camera/Ipa/ImageProcessService$b;->j:Lcom/oppo/camera/Ipa/a/b;

    invoke-static {}, Lcom/oppo/camera/o/d;->e()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Lcom/oppo/camera/Ipa/a/b;->a(Landroid/content/Context;Lcom/oppo/camera/Ipa/b;)V

    .line 1307
    :cond_0
    iget-object v7, v1, Lcom/oppo/camera/Ipa/ImageProcessService$b;->j:Lcom/oppo/camera/Ipa/a/b;

    invoke-virtual {v7, v0}, Lcom/oppo/camera/Ipa/a/b;->a(Lcom/oppo/camera/Ipa/b;)V

    .line 1309
    iget v7, v4, Lcom/oppo/camera/Ipa/b$a;->i:I

    const/16 v8, 0x100

    if-ne v7, v8, :cond_1

    .line 1310
    iget-object v0, v1, Lcom/oppo/camera/Ipa/ImageProcessService$b;->a:Lcom/oppo/camera/Ipa/ImageProcessService;

    invoke-static {v0}, Lcom/oppo/camera/Ipa/ImageProcessService;->e(Lcom/oppo/camera/Ipa/ImageProcessService;)Lcom/oppo/camera/jni/NativeBufferProducer;

    move-result-object v0

    iget-object v2, v4, Lcom/oppo/camera/Ipa/b$a;->d:Lcom/oppo/camera/jni/NativeBufferProducer$NativeBufferInfo;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/jni/NativeBufferProducer;->freeNativeBuffer(Lcom/oppo/camera/jni/NativeBufferProducer$NativeBufferInfo;)[B

    return-void

    .line 1315
    :cond_1
    iget-wide v7, v5, Lcom/oppo/camera/Ipa/b$b;->f:J

    const-wide/16 v11, 0x80

    and-long/2addr v7, v11

    cmp-long v7, v7, v9

    if-eqz v7, :cond_4

    iget-boolean v7, v5, Lcom/oppo/camera/Ipa/b$b;->ar:Z

    if-eqz v7, :cond_4

    .line 1316
    iget-object v2, v1, Lcom/oppo/camera/Ipa/ImageProcessService$b;->i:Lcom/oppo/camera/Ipa/a/b;

    if-nez v2, :cond_2

    .line 1317
    new-instance v2, Lcom/oppo/camera/Ipa/a/i;

    invoke-direct {v2}, Lcom/oppo/camera/Ipa/a/i;-><init>()V

    iput-object v2, v1, Lcom/oppo/camera/Ipa/ImageProcessService$b;->i:Lcom/oppo/camera/Ipa/a/b;

    .line 1318
    iget-object v2, v1, Lcom/oppo/camera/Ipa/ImageProcessService$b;->i:Lcom/oppo/camera/Ipa/a/b;

    invoke-static {}, Lcom/oppo/camera/o/d;->e()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/oppo/camera/Ipa/a/b;->a(Landroid/content/Context;Lcom/oppo/camera/Ipa/b;)V

    .line 1321
    :cond_2
    iget-object v2, v1, Lcom/oppo/camera/Ipa/ImageProcessService$b;->i:Lcom/oppo/camera/Ipa/a/b;

    invoke-virtual {v2, v0}, Lcom/oppo/camera/Ipa/a/b;->a(Lcom/oppo/camera/Ipa/b;)V

    .line 1323
    iget-object v0, v4, Lcom/oppo/camera/Ipa/b$a;->d:Lcom/oppo/camera/jni/NativeBufferProducer$NativeBufferInfo;

    if-eqz v0, :cond_3

    .line 1324
    iget-object v0, v1, Lcom/oppo/camera/Ipa/ImageProcessService$b;->a:Lcom/oppo/camera/Ipa/ImageProcessService;

    invoke-static {v0}, Lcom/oppo/camera/Ipa/ImageProcessService;->e(Lcom/oppo/camera/Ipa/ImageProcessService;)Lcom/oppo/camera/jni/NativeBufferProducer;

    move-result-object v0

    iget-object v2, v4, Lcom/oppo/camera/Ipa/b$a;->d:Lcom/oppo/camera/jni/NativeBufferProducer$NativeBufferInfo;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/jni/NativeBufferProducer;->freeNativeBuffer(Lcom/oppo/camera/jni/NativeBufferProducer$NativeBufferInfo;)[B

    :cond_3
    return-void

    .line 1330
    :cond_4
    iget-wide v7, v5, Lcom/oppo/camera/Ipa/b$b;->f:J

    invoke-static {v7, v8}, Lcom/oppo/camera/Ipa/a/b;->e(J)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-direct {v1, v5}, Lcom/oppo/camera/Ipa/ImageProcessService$b;->a(Lcom/oppo/camera/Ipa/b$b;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1331
    :cond_5
    iget v7, v5, Lcom/oppo/camera/Ipa/b$b;->ac:I

    iput v7, v4, Lcom/oppo/camera/Ipa/b$a;->e:I

    .line 1332
    iget v7, v5, Lcom/oppo/camera/Ipa/b$b;->ad:I

    iput v7, v4, Lcom/oppo/camera/Ipa/b$a;->f:I

    .line 1333
    iget v7, v5, Lcom/oppo/camera/Ipa/b$b;->ae:I

    iput v7, v4, Lcom/oppo/camera/Ipa/b$a;->g:I

    .line 1334
    iget v7, v5, Lcom/oppo/camera/Ipa/b$b;->af:I

    iput v7, v4, Lcom/oppo/camera/Ipa/b$a;->h:I

    .line 1337
    :cond_6
    iget-boolean v7, v4, Lcom/oppo/camera/Ipa/b$a;->l:Z

    if-nez v7, :cond_9

    .line 1338
    iget-object v7, v1, Lcom/oppo/camera/Ipa/ImageProcessService$b;->a:Lcom/oppo/camera/Ipa/ImageProcessService;

    invoke-static {v7}, Lcom/oppo/camera/Ipa/ImageProcessService;->e(Lcom/oppo/camera/Ipa/ImageProcessService;)Lcom/oppo/camera/jni/NativeBufferProducer;

    move-result-object v8

    iget-object v9, v4, Lcom/oppo/camera/Ipa/b$a;->d:Lcom/oppo/camera/jni/NativeBufferProducer$NativeBufferInfo;

    iget v10, v4, Lcom/oppo/camera/Ipa/b$a;->e:I

    iget v11, v4, Lcom/oppo/camera/Ipa/b$a;->f:I

    iget v12, v4, Lcom/oppo/camera/Ipa/b$a;->g:I

    iget v13, v4, Lcom/oppo/camera/Ipa/b$a;->h:I

    const/4 v14, 0x0

    invoke-virtual/range {v8 .. v14}, Lcom/oppo/camera/jni/NativeBufferProducer;->removePadding(Lcom/oppo/camera/jni/NativeBufferProducer$NativeBufferInfo;IIIIZ)V

    .line 1340
    iget v7, v4, Lcom/oppo/camera/Ipa/b$a;->e:I

    iput v7, v4, Lcom/oppo/camera/Ipa/b$a;->g:I

    .line 1341
    iget v7, v4, Lcom/oppo/camera/Ipa/b$a;->f:I

    iput v7, v4, Lcom/oppo/camera/Ipa/b$a;->h:I

    .line 1343
    iget-wide v7, v5, Lcom/oppo/camera/Ipa/b$b;->f:J

    invoke-static {v7, v8}, Lcom/oppo/camera/Ipa/a/b;->e(J)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-direct {v1, v5}, Lcom/oppo/camera/Ipa/ImageProcessService$b;->a(Lcom/oppo/camera/Ipa/b$b;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1344
    :cond_7
    iget v7, v5, Lcom/oppo/camera/Ipa/b$b;->ac:I

    iput v7, v5, Lcom/oppo/camera/Ipa/b$b;->ae:I

    .line 1345
    iget v7, v5, Lcom/oppo/camera/Ipa/b$b;->ad:I

    iput v7, v5, Lcom/oppo/camera/Ipa/b$b;->af:I

    .line 1346
    iget v7, v5, Lcom/oppo/camera/Ipa/b$b;->ag:I

    iput v7, v5, Lcom/oppo/camera/Ipa/b$b;->ai:I

    .line 1347
    iget v7, v5, Lcom/oppo/camera/Ipa/b$b;->ah:I

    iput v7, v5, Lcom/oppo/camera/Ipa/b$b;->aj:I

    .line 1350
    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processImage, remove padding ion buffer info: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/oppo/camera/Ipa/b$a;->d:Lcom/oppo/camera/jni/NativeBufferProducer$NativeBufferInfo;

    invoke-virtual {v8}, Lcom/oppo/camera/jni/NativeBufferProducer$NativeBufferInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ImageProcessService"

    invoke-static {v8, v7}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    :cond_9
    iget-wide v7, v5, Lcom/oppo/camera/Ipa/b$b;->f:J

    invoke-static {v7, v8}, Lcom/oppo/camera/Ipa/a/b;->g(J)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1354
    iget-object v7, v1, Lcom/oppo/camera/Ipa/ImageProcessService$b;->k:Lcom/oppo/camera/Ipa/a/b;

    if-nez v7, :cond_a

    .line 1355
    new-instance v7, Lcom/oppo/camera/Ipa/a/f;

    invoke-direct {v7}, Lcom/oppo/camera/Ipa/a/f;-><init>()V

    iput-object v7, v1, Lcom/oppo/camera/Ipa/ImageProcessService$b;->k:Lcom/oppo/camera/Ipa/a/b;

    .line 1356
    iget-object v7, v1, Lcom/oppo/camera/Ipa/ImageProcessService$b;->k:Lcom/oppo/camera/Ipa/a/b;

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v8}, Lcom/oppo/camera/Ipa/a/b;->a(Landroid/content/Context;Lcom/oppo/camera/Ipa/b;)V

    .line 1359
    :cond_a
    iget-object v7, v1, Lcom/oppo/camera/Ipa/ImageProcessService$b;->k:Lcom/oppo/camera/Ipa/a/b;

    invoke-virtual {v7, v0}, Lcom/oppo/camera/Ipa/a/b;->a(Lcom/oppo/camera/Ipa/b;)V

    .line 1362
    :cond_b
    iget-object v7, v4, Lcom/oppo/camera/Ipa/b$a;->d:Lcom/oppo/camera/jni/NativeBufferProducer$NativeBufferInfo;

    if-eqz v7, :cond_c

    .line 1363
    iget-object v7, v1, Lcom/oppo/camera/Ipa/ImageProcessService$b;->a:Lcom/oppo/camera/Ipa/ImageProcessService;

    invoke-static {v7}, Lcom/oppo/camera/Ipa/ImageProcessService;->e(Lcom/oppo/camera/Ipa/ImageProcessService;)Lcom/oppo/camera/jni/NativeBufferProducer;

    move-result-object v7

    iget-object v8, v4, Lcom/oppo/camera/Ipa/b$a;->d:Lcom/oppo/camera/jni/NativeBufferProducer$NativeBufferInfo;

    invoke-virtual {v7, v8}, Lcom/oppo/camera/jni/NativeBufferProducer;->freeNativeBuffer(Lcom/oppo/camera/jni/NativeBufferProducer$NativeBufferInfo;)[B

    move-result-object v7

    iput-object v7, v4, Lcom/oppo/camera/Ipa/b$a;->a:[B

    :cond_c
    const-string v7, "oppo.dump.capture.yuv"

    const-string v8, "false"

    .line 1366
    invoke-static {v7, v8}, Lcom/oppo/camera/debug/DebugUtil;->debugPropertyEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    const-string v7, "ImageProcessService"

    const-string v8, "processAlgorithm, start dump now !"

    .line 1367
    invoke-static {v7, v8}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    iget-object v7, v4, Lcom/oppo/camera/Ipa/b$a;->a:[B

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v6, Lcom/oppo/camera/Ipa/b$c;->d:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "_"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/oppo/camera/Ipa/b$a;->e:I

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "x"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Lcom/oppo/camera/Ipa/b$a;->f:I

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ".yuv"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v8, "capture_yuv"

    invoke-static {v7, v8, v6}, Lcom/oppo/camera/o/d;->a([BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1373
    :cond_d
    iget-wide v6, v5, Lcom/oppo/camera/Ipa/b$b;->f:J

    invoke-static {v6, v7}, Lcom/oppo/camera/Ipa/a/b;->b(J)Z

    move-result v6

    if-nez v6, :cond_e

    iget-object v6, v0, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    iget v6, v6, Lcom/oppo/camera/Ipa/b$b;->z:I

    if-eqz v6, :cond_10

    .line 1374
    :cond_e
    iget-object v6, v1, Lcom/oppo/camera/Ipa/ImageProcessService$b;->c:Ljava/lang/Object;

    monitor-enter v6

    .line 1375
    :try_start_0
    iget-object v7, v1, Lcom/oppo/camera/Ipa/ImageProcessService$b;->e:Lcom/oppo/camera/Ipa/a/b;

    if-nez v7, :cond_f

    .line 1376
    new-instance v7, Lcom/oppo/camera/Ipa/a/c;

    invoke-direct {v7}, Lcom/oppo/camera/Ipa/a/c;-><init>()V

    iput-object v7, v1, Lcom/oppo/camera/Ipa/ImageProcessService$b;->e:Lcom/oppo/camera/Ipa/a/b;

    .line 1377
    iget-object v7, v1, Lcom/oppo/camera/Ipa/ImageProcessService$b;->e:Lcom/oppo/camera/Ipa/a/b;

    invoke-static {}, Lcom/oppo/camera/o/d;->e()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Lcom/oppo/camera/Ipa/a/b;->a(Landroid/content/Context;Lcom/oppo/camera/Ipa/b;)V

    .line 1380
    :cond_f
    iget-object v7, v1, Lcom/oppo/camera/Ipa/ImageProcessService$b;->e:Lcom/oppo/camera/Ipa/a/b;

    invoke-virtual {v7, v0}, Lcom/oppo/camera/Ipa/a/b;->a(Lcom/oppo/camera/Ipa/b;)V

    .line 1381
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1384
    :cond_10
    iget-wide v6, v5, Lcom/oppo/camera/Ipa/b$b;->f:J

    invoke-static {v6, v7}, Lcom/oppo/camera/Ipa/a/b;->c(J)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 1386
    sget-object v6, Lcom/oppo/camera/config/ConfigDataBase;->KEY_ARCSOFT_SINGLE_BOKEH:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v6}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 1387
    iget-object v6, v1, Lcom/oppo/camera/Ipa/ImageProcessService$b;->d:Lcom/oppo/camera/Ipa/a/b;

    if-nez v6, :cond_11

    .line 1388
    new-instance v6, Lcom/oppo/camera/Ipa/a/h;

    invoke-direct {v6}, Lcom/oppo/camera/Ipa/a/h;-><init>()V

    iput-object v6, v1, Lcom/oppo/camera/Ipa/ImageProcessService$b;->d:Lcom/oppo/camera/Ipa/a/b;

    .line 1389
    iget-object v6, v1, Lcom/oppo/camera/Ipa/ImageProcessService$b;->d:Lcom/oppo/camera/Ipa/a/b;

    invoke-static {}, Lcom/oppo/camera/o/d;->e()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/oppo/camera/Ipa/a/b;->a(Landroid/content/Context;Lcom/oppo/camera/Ipa/b;)V

    .line 1392
    :cond_11
    iget-object v6, v1, Lcom/oppo/camera/Ipa/ImageProcessService$b;->d:Lcom/oppo/camera/Ipa/a/b;

    invoke-virtual {v6, v0}, Lcom/oppo/camera/Ipa/a/b;->a(Lcom/oppo/camera/Ipa/b;)V

    goto :goto_0

    .line 1393
    :cond_12
    iget-object v6, v5, Lcom/oppo/camera/Ipa/b$b;->a:[Landroid/hardware/camera2/params/Face;

    if-eqz v6, :cond_14

    iget-object v6, v5, Lcom/oppo/camera/Ipa/b$b;->a:[Landroid/hardware/camera2/params/Face;

    array-length v6, v6

    if-lez v6, :cond_14

    .line 1394
    iget-object v6, v1, Lcom/oppo/camera/Ipa/ImageProcessService$b;->d:Lcom/oppo/camera/Ipa/a/b;

    if-nez v6, :cond_13

    .line 1395
    new-instance v6, Lcom/oppo/camera/Ipa/a/g;

    invoke-direct {v6}, Lcom/oppo/camera/Ipa/a/g;-><init>()V

    iput-object v6, v1, Lcom/oppo/camera/Ipa/ImageProcessService$b;->d:Lcom/oppo/camera/Ipa/a/b;

    .line 1396
    iget-object v6, v1, Lcom/oppo/camera/Ipa/ImageProcessService$b;->d:Lcom/oppo/camera/Ipa/a/b;

    invoke-static {}, Lcom/oppo/camera/o/d;->e()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/oppo/camera/Ipa/a/b;->a(Landroid/content/Context;Lcom/oppo/camera/Ipa/b;)V

    .line 1399
    :cond_13
    iget-object v6, v1, Lcom/oppo/camera/Ipa/ImageProcessService$b;->d:Lcom/oppo/camera/Ipa/a/b;

    invoke-virtual {v6, v0}, Lcom/oppo/camera/Ipa/a/b;->a(Lcom/oppo/camera/Ipa/b;)V

    .line 1403
    :cond_14
    :goto_0
    iget-wide v6, v5, Lcom/oppo/camera/Ipa/b$b;->f:J

    invoke-static {v6, v7}, Lcom/oppo/camera/Ipa/a/b;->a(J)Z

    move-result v6

    if-eqz v6, :cond_16

    iget-object v6, v0, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    iget-object v6, v6, Lcom/oppo/camera/Ipa/b$b;->O:Ljava/lang/String;

    const-string v7, "default"

    .line 1404
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_16

    .line 1405
    iget-object v6, v1, Lcom/oppo/camera/Ipa/ImageProcessService$b;->g:Lcom/oppo/camera/Ipa/a/b;

    if-nez v6, :cond_15

    .line 1406
    new-instance v6, Lcom/oppo/camera/Ipa/a/d;

    invoke-direct {v6}, Lcom/oppo/camera/Ipa/a/d;-><init>()V

    iput-object v6, v1, Lcom/oppo/camera/Ipa/ImageProcessService$b;->g:Lcom/oppo/camera/Ipa/a/b;

    .line 1407
    iget-object v6, v1, Lcom/oppo/camera/Ipa/ImageProcessService$b;->g:Lcom/oppo/camera/Ipa/a/b;

    invoke-static {}, Lcom/oppo/camera/o/d;->e()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/oppo/camera/Ipa/a/b;->a(Landroid/content/Context;Lcom/oppo/camera/Ipa/b;)V

    .line 1410
    :cond_15
    iget-object v6, v1, Lcom/oppo/camera/Ipa/ImageProcessService$b;->g:Lcom/oppo/camera/Ipa/a/b;

    invoke-virtual {v6, v0}, Lcom/oppo/camera/Ipa/a/b;->a(Lcom/oppo/camera/Ipa/b;)V

    .line 1413
    :cond_16
    iget-wide v6, v5, Lcom/oppo/camera/Ipa/b$b;->f:J

    invoke-static {v6, v7}, Lcom/oppo/camera/Ipa/a/b;->e(J)Z

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-nez v6, :cond_17

    invoke-direct {v1, v5}, Lcom/oppo/camera/Ipa/ImageProcessService$b;->a(Lcom/oppo/camera/Ipa/b$b;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 1414
    :cond_17
    new-array v6, v7, [I

    iget v10, v4, Lcom/oppo/camera/Ipa/b$a;->g:I

    aput v10, v6, v9

    iget v10, v4, Lcom/oppo/camera/Ipa/b$a;->g:I

    aput v10, v6, v8

    .line 1415
    new-array v15, v7, [I

    iget v10, v4, Lcom/oppo/camera/Ipa/b$a;->h:I

    aput v10, v15, v9

    iget v10, v4, Lcom/oppo/camera/Ipa/b$a;->h:I

    aput v10, v15, v8

    .line 1416
    iget v14, v4, Lcom/oppo/camera/Ipa/b$a;->e:I

    .line 1417
    iget v13, v4, Lcom/oppo/camera/Ipa/b$a;->f:I

    .line 1419
    iget-boolean v10, v5, Lcom/oppo/camera/Ipa/b$b;->e:Z

    if-eqz v10, :cond_18

    .line 1420
    iget-object v10, v4, Lcom/oppo/camera/Ipa/b$a;->a:[B

    iget-object v11, v4, Lcom/oppo/camera/Ipa/b$a;->a:[B

    array-length v11, v11

    iget v12, v5, Lcom/oppo/camera/Ipa/b$b;->v:I

    move/from16 v16, v12

    move-object v12, v6

    move/from16 v17, v13

    move-object v13, v15

    move/from16 v18, v14

    move-object/from16 v19, v15

    move/from16 v15, v17

    invoke-static/range {v10 .. v16}, Lcom/oppo/camera/jni/YuvProcessUtil;->mirrorYUV([BI[I[IIII)[B

    move-result-object v10

    iput-object v10, v4, Lcom/oppo/camera/Ipa/b$a;->a:[B

    .line 1423
    iput-boolean v9, v5, Lcom/oppo/camera/Ipa/b$b;->e:Z

    goto :goto_1

    :cond_18
    move/from16 v17, v13

    move/from16 v18, v14

    move-object/from16 v19, v15

    .line 1426
    :goto_1
    iget v10, v5, Lcom/oppo/camera/Ipa/b$b;->v:I

    const/16 v11, 0x5a

    if-eq v10, v11, :cond_19

    iget v10, v5, Lcom/oppo/camera/Ipa/b$b;->v:I

    const/16 v11, 0x10e

    if-ne v10, v11, :cond_1a

    .line 1428
    :cond_19
    iget-object v10, v4, Lcom/oppo/camera/Ipa/b$a;->a:[B

    iget-object v11, v4, Lcom/oppo/camera/Ipa/b$a;->a:[B

    array-length v11, v11

    iget v15, v5, Lcom/oppo/camera/Ipa/b$b;->v:I

    move-object v12, v6

    move-object/from16 v13, v19

    move/from16 v14, v18

    move v6, v15

    move/from16 v15, v17

    move/from16 v16, v6

    invoke-static/range {v10 .. v16}, Lcom/oppo/camera/jni/YuvProcessUtil;->rotateYUV([BI[I[IIII)[B

    move-result-object v6

    iput-object v6, v4, Lcom/oppo/camera/Ipa/b$a;->a:[B

    move/from16 v6, v17

    .line 1431
    iput v6, v4, Lcom/oppo/camera/Ipa/b$a;->e:I

    move/from16 v6, v18

    .line 1432
    iput v6, v4, Lcom/oppo/camera/Ipa/b$a;->f:I

    .line 1433
    iget v6, v4, Lcom/oppo/camera/Ipa/b$a;->e:I

    iput v6, v4, Lcom/oppo/camera/Ipa/b$a;->g:I

    .line 1434
    iget v6, v4, Lcom/oppo/camera/Ipa/b$a;->f:I

    iput v6, v4, Lcom/oppo/camera/Ipa/b$a;->h:I

    .line 1436
    iget v6, v5, Lcom/oppo/camera/Ipa/b$b;->ac:I

    .line 1437
    iget v10, v5, Lcom/oppo/camera/Ipa/b$b;->ad:I

    iput v10, v5, Lcom/oppo/camera/Ipa/b$b;->ac:I

    .line 1438
    iput v6, v5, Lcom/oppo/camera/Ipa/b$b;->ad:I

    .line 1439
    iget v6, v5, Lcom/oppo/camera/Ipa/b$b;->ac:I

    iput v6, v5, Lcom/oppo/camera/Ipa/b$b;->ae:I

    .line 1440
    iget v6, v5, Lcom/oppo/camera/Ipa/b$b;->ad:I

    iput v6, v5, Lcom/oppo/camera/Ipa/b$b;->af:I

    .line 1442
    iget v6, v5, Lcom/oppo/camera/Ipa/b$b;->ag:I

    .line 1443
    iget v10, v5, Lcom/oppo/camera/Ipa/b$b;->ah:I

    iput v10, v5, Lcom/oppo/camera/Ipa/b$b;->ag:I

    .line 1444
    iput v6, v5, Lcom/oppo/camera/Ipa/b$b;->ah:I

    .line 1445
    iget v6, v5, Lcom/oppo/camera/Ipa/b$b;->ag:I

    iput v6, v5, Lcom/oppo/camera/Ipa/b$b;->ai:I

    .line 1446
    iget v6, v5, Lcom/oppo/camera/Ipa/b$b;->ah:I

    iput v6, v5, Lcom/oppo/camera/Ipa/b$b;->aj:I

    .line 1448
    iget v6, v5, Lcom/oppo/camera/Ipa/b$b;->L:I

    .line 1449
    iget v10, v5, Lcom/oppo/camera/Ipa/b$b;->M:I

    iput v10, v5, Lcom/oppo/camera/Ipa/b$b;->L:I

    .line 1450
    iput v6, v5, Lcom/oppo/camera/Ipa/b$b;->M:I

    .line 1452
    iput v9, v4, Lcom/oppo/camera/Ipa/b$a;->j:I

    .line 1453
    iput-boolean v8, v4, Lcom/oppo/camera/Ipa/b$a;->q:Z

    .line 1456
    :cond_1a
    iget-object v6, v1, Lcom/oppo/camera/Ipa/ImageProcessService$b;->h:Lcom/oppo/camera/Ipa/a/b;

    if-nez v6, :cond_1b

    .line 1457
    new-instance v6, Lcom/oppo/camera/Ipa/a/j;

    invoke-direct {v6}, Lcom/oppo/camera/Ipa/a/j;-><init>()V

    iput-object v6, v1, Lcom/oppo/camera/Ipa/ImageProcessService$b;->h:Lcom/oppo/camera/Ipa/a/b;

    .line 1458
    iget-object v6, v1, Lcom/oppo/camera/Ipa/ImageProcessService$b;->h:Lcom/oppo/camera/Ipa/a/b;

    invoke-static {}, Lcom/oppo/camera/o/d;->e()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v6, v10, v0}, Lcom/oppo/camera/Ipa/a/b;->a(Landroid/content/Context;Lcom/oppo/camera/Ipa/b;)V

    .line 1461
    :cond_1b
    iget-object v6, v1, Lcom/oppo/camera/Ipa/ImageProcessService$b;->h:Lcom/oppo/camera/Ipa/a/b;

    invoke-virtual {v6, v0}, Lcom/oppo/camera/Ipa/a/b;->a(Lcom/oppo/camera/Ipa/b;)V

    .line 1464
    :cond_1c
    iget-boolean v6, v5, Lcom/oppo/camera/Ipa/b$b;->e:Z

    if-eqz v6, :cond_1d

    .line 1465
    new-array v12, v7, [I

    iget v6, v4, Lcom/oppo/camera/Ipa/b$a;->g:I

    aput v6, v12, v9

    iget v6, v4, Lcom/oppo/camera/Ipa/b$a;->g:I

    aput v6, v12, v8

    .line 1466
    new-array v13, v7, [I

    iget v6, v4, Lcom/oppo/camera/Ipa/b$a;->h:I

    aput v6, v13, v9

    iget v6, v4, Lcom/oppo/camera/Ipa/b$a;->h:I

    aput v6, v13, v8

    .line 1467
    iget v14, v4, Lcom/oppo/camera/Ipa/b$a;->e:I

    .line 1468
    iget v15, v4, Lcom/oppo/camera/Ipa/b$a;->f:I

    .line 1469
    iget-object v10, v4, Lcom/oppo/camera/Ipa/b$a;->a:[B

    iget-object v6, v4, Lcom/oppo/camera/Ipa/b$a;->a:[B

    array-length v11, v6

    iget v6, v5, Lcom/oppo/camera/Ipa/b$b;->v:I

    move/from16 v16, v6

    invoke-static/range {v10 .. v16}, Lcom/oppo/camera/jni/YuvProcessUtil;->mirrorYUV([BI[I[IIII)[B

    move-result-object v6

    iput-object v6, v4, Lcom/oppo/camera/Ipa/b$a;->a:[B

    .line 1472
    iput-boolean v9, v5, Lcom/oppo/camera/Ipa/b$b;->e:Z

    .line 1475
    :cond_1d
    iget-wide v6, v5, Lcom/oppo/camera/Ipa/b$b;->f:J

    invoke-static {v6, v7}, Lcom/oppo/camera/Ipa/a/b;->f(J)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1476
    iget-object v4, v1, Lcom/oppo/camera/Ipa/ImageProcessService$b;->i:Lcom/oppo/camera/Ipa/a/b;

    if-nez v4, :cond_1e

    .line 1477
    new-instance v4, Lcom/oppo/camera/Ipa/a/i;

    invoke-direct {v4}, Lcom/oppo/camera/Ipa/a/i;-><init>()V

    iput-object v4, v1, Lcom/oppo/camera/Ipa/ImageProcessService$b;->i:Lcom/oppo/camera/Ipa/a/b;

    .line 1478
    iget-object v4, v1, Lcom/oppo/camera/Ipa/ImageProcessService$b;->i:Lcom/oppo/camera/Ipa/a/b;

    invoke-static {}, Lcom/oppo/camera/o/d;->e()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v4, v6, v0}, Lcom/oppo/camera/Ipa/a/b;->a(Landroid/content/Context;Lcom/oppo/camera/Ipa/b;)V

    .line 1481
    :cond_1e
    iget-object v4, v1, Lcom/oppo/camera/Ipa/ImageProcessService$b;->i:Lcom/oppo/camera/Ipa/a/b;

    invoke-virtual {v4, v0}, Lcom/oppo/camera/Ipa/a/b;->a(Lcom/oppo/camera/Ipa/b;)V

    .line 1484
    :cond_1f
    iget-wide v4, v5, Lcom/oppo/camera/Ipa/b$b;->f:J

    invoke-static {v4, v5}, Lcom/oppo/camera/Ipa/a/b;->d(J)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1485
    iget-object v4, v1, Lcom/oppo/camera/Ipa/ImageProcessService$b;->f:Lcom/oppo/camera/Ipa/a/b;

    if-nez v4, :cond_20

    .line 1486
    new-instance v4, Lcom/oppo/camera/Ipa/a/k;

    invoke-direct {v4}, Lcom/oppo/camera/Ipa/a/k;-><init>()V

    iput-object v4, v1, Lcom/oppo/camera/Ipa/ImageProcessService$b;->f:Lcom/oppo/camera/Ipa/a/b;

    .line 1487
    iget-object v4, v1, Lcom/oppo/camera/Ipa/ImageProcessService$b;->f:Lcom/oppo/camera/Ipa/a/b;

    invoke-static {}, Lcom/oppo/camera/o/d;->e()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/oppo/camera/Ipa/a/b;->a(Landroid/content/Context;Lcom/oppo/camera/Ipa/b;)V

    .line 1490
    :cond_20
    iget-object v4, v1, Lcom/oppo/camera/Ipa/ImageProcessService$b;->f:Lcom/oppo/camera/Ipa/a/b;

    invoke-virtual {v4, v0}, Lcom/oppo/camera/Ipa/a/b;->a(Lcom/oppo/camera/Ipa/b;)V

    :cond_21
    const-string v0, "ImageProcessService"

    const-string v4, "processAlgorithm X"

    .line 1493
    invoke-static {v0, v4}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    invoke-static {}, Lcom/oppo/camera/i/a;->a()Lcom/oppo/camera/i/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oppo/camera/i/a;->c()V

    .line 1497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processAlgorithm X, Cost time: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ImageProcessService"

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 1381
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private f()V
    .locals 2

    const-string v0, "ImageProcessService"

    const-string v1, "destroyProcessor"

    .line 1517
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1519
    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->d:Lcom/oppo/camera/Ipa/a/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1520
    invoke-virtual {v0}, Lcom/oppo/camera/Ipa/a/b;->a()V

    .line 1521
    iput-object v1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->d:Lcom/oppo/camera/Ipa/a/b;

    .line 1524
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->e:Lcom/oppo/camera/Ipa/a/b;

    if-eqz v0, :cond_1

    .line 1525
    invoke-virtual {v0}, Lcom/oppo/camera/Ipa/a/b;->a()V

    .line 1526
    iput-object v1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->e:Lcom/oppo/camera/Ipa/a/b;

    .line 1529
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->f:Lcom/oppo/camera/Ipa/a/b;

    if-eqz v0, :cond_2

    .line 1530
    invoke-virtual {v0}, Lcom/oppo/camera/Ipa/a/b;->a()V

    .line 1531
    iput-object v1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->f:Lcom/oppo/camera/Ipa/a/b;

    .line 1534
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->g:Lcom/oppo/camera/Ipa/a/b;

    if-eqz v0, :cond_3

    .line 1535
    invoke-virtual {v0}, Lcom/oppo/camera/Ipa/a/b;->a()V

    .line 1536
    iput-object v1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->g:Lcom/oppo/camera/Ipa/a/b;

    .line 1539
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->h:Lcom/oppo/camera/Ipa/a/b;

    if-eqz v0, :cond_4

    .line 1540
    invoke-virtual {v0}, Lcom/oppo/camera/Ipa/a/b;->a()V

    .line 1541
    iput-object v1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->h:Lcom/oppo/camera/Ipa/a/b;

    .line 1544
    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->i:Lcom/oppo/camera/Ipa/a/b;

    if-eqz v0, :cond_5

    .line 1545
    invoke-virtual {v0}, Lcom/oppo/camera/Ipa/a/b;->a()V

    .line 1546
    iput-object v1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->i:Lcom/oppo/camera/Ipa/a/b;

    .line 1549
    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->j:Lcom/oppo/camera/Ipa/a/b;

    if-eqz v0, :cond_6

    .line 1550
    invoke-virtual {v0}, Lcom/oppo/camera/Ipa/a/b;->a()V

    .line 1551
    iput-object v1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->j:Lcom/oppo/camera/Ipa/a/b;

    .line 1554
    :cond_6
    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->k:Lcom/oppo/camera/Ipa/a/b;

    if-eqz v0, :cond_7

    .line 1555
    invoke-virtual {v0}, Lcom/oppo/camera/Ipa/a/b;->a()V

    .line 1556
    iput-object v1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->k:Lcom/oppo/camera/Ipa/a/b;

    :cond_7
    return-void
.end method

.method private f(Lcom/oppo/camera/Ipa/b;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1628
    :cond_0
    iget-object v0, p1, Lcom/oppo/camera/Ipa/b;->d:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    if-nez v0, :cond_1

    return-void

    .line 1634
    :cond_1
    iget-object v1, p1, Lcom/oppo/camera/Ipa/b;->a:Lcom/oppo/camera/Ipa/b$a;

    if-eqz v1, :cond_4

    if-nez v0, :cond_2

    goto :goto_0

    .line 1640
    :cond_2
    iget-boolean v2, v1, Lcom/oppo/camera/Ipa/b$a;->l:Z

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 1641
    iget v1, v1, Lcom/oppo/camera/Ipa/b$a;->o:I

    iput v1, v0, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mBurstCount:I

    .line 1642
    invoke-direct {p0, v0, p1}, Lcom/oppo/camera/Ipa/ImageProcessService$b;->a(Lcom/oppo/camera/statistics/model/CaptureMsgData;Lcom/oppo/camera/Ipa/b;)V

    goto :goto_0

    .line 1644
    :cond_3
    invoke-direct {p0, v0, p1}, Lcom/oppo/camera/Ipa/ImageProcessService$b;->a(Lcom/oppo/camera/statistics/model/CaptureMsgData;Lcom/oppo/camera/Ipa/b;)V

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    .line 542
    monitor-enter p0

    const/4 v0, 0x0

    .line 544
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 546
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 547
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 548
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/Ipa/b;

    .line 550
    invoke-virtual {v2}, Lcom/oppo/camera/Ipa/b;->a()Z

    move-result v3

    if-nez v3, :cond_0

    .line 551
    iget-object v3, v2, Lcom/oppo/camera/Ipa/b;->c:Lcom/oppo/camera/Ipa/b$c;

    if-eqz v3, :cond_1

    .line 552
    iget-object v2, v2, Lcom/oppo/camera/Ipa/b;->c:Lcom/oppo/camera/Ipa/b$c;

    invoke-direct {p0, v2}, Lcom/oppo/camera/Ipa/ImageProcessService$b;->b(Lcom/oppo/camera/Ipa/b$c;)V

    .line 555
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 560
    :cond_2
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 561
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(IJ)V
    .locals 4

    .line 602
    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "ImageProcessService"

    .line 603
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateBurstNum, burstTotalNum: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", burstShotFlagId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    iget-object v1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->q:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oppo/camera/Ipa/ImageProcessService$b$a;

    if-nez p2, :cond_0

    .line 608
    monitor-exit v0

    return-void

    :cond_0
    const-string p3, "ImageProcessService"

    .line 611
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateBurstNum, parameter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/oppo/camera/Ipa/ImageProcessService$b$a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    iget p3, p2, Lcom/oppo/camera/Ipa/ImageProcessService$b$a;->a:I

    if-lt p3, p1, :cond_1

    .line 614
    iput p1, p2, Lcom/oppo/camera/Ipa/ImageProcessService$b$a;->a:I

    .line 615
    iget-object p3, p2, Lcom/oppo/camera/Ipa/ImageProcessService$b$a;->c:Ljava/lang/String;

    invoke-direct {p0, p3}, Lcom/oppo/camera/Ipa/ImageProcessService$b;->b(Ljava/lang/String;)Z

    .line 618
    :cond_1
    iput p1, p2, Lcom/oppo/camera/Ipa/ImageProcessService$b$a;->d:I

    .line 619
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(J)V
    .locals 2

    .line 530
    monitor-enter p0

    .line 531
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oppo/camera/Ipa/b;

    invoke-virtual {p1, v1}, Lcom/oppo/camera/Ipa/b;->a(Z)V

    goto :goto_0

    .line 534
    :cond_0
    new-instance v0, Lcom/oppo/camera/Ipa/b;

    invoke-direct {v0}, Lcom/oppo/camera/Ipa/b;-><init>()V

    .line 535
    invoke-virtual {v0, v1}, Lcom/oppo/camera/Ipa/b;->a(Z)V

    .line 536
    iget-object v1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(JJ)V
    .locals 3

    .line 736
    monitor-enter p0

    .line 737
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->m:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    const-string v0, "ImageProcessService"

    .line 738
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeThumbnailInfo, timestamp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", hashCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/Ipa/b;

    iget-object v0, v0, Lcom/oppo/camera/Ipa/b;->c:Lcom/oppo/camera/Ipa/b$c;

    .line 742
    iput-wide p1, v0, Lcom/oppo/camera/Ipa/b$c;->h:J

    .line 743
    iget-object p1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    iget-object p1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->r:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    iget-object p1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->a:Lcom/oppo/camera/Ipa/ImageProcessService;

    const-wide/16 p2, 0x0

    invoke-static {p1, p2, p3}, Lcom/oppo/camera/Ipa/ImageProcessService;->a(Lcom/oppo/camera/Ipa/ImageProcessService;J)J

    .line 746
    invoke-virtual {p0, v0}, Lcom/oppo/camera/Ipa/ImageProcessService$b;->a(Lcom/oppo/camera/Ipa/b$c;)V

    const-string p1, "ImageProcessService"

    const-string p2, "changeThumbnailInfo, changed"

    .line 748
    invoke-static {p1, p2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->r:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcom/oppo/camera/Ipa/b$a;)V
    .locals 5

    .line 676
    monitor-enter p0

    .line 677
    :try_start_0
    iget-wide v0, p1, Lcom/oppo/camera/Ipa/b$a;->k:J

    const-string v2, "ImageProcessService"

    .line 679
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addImageInfo, timeStamp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 683
    iget-object v3, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->m:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_1

    .line 684
    iget-object v2, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 685
    iget-object v2, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/oppo/camera/Ipa/b;

    .line 686
    iput-object p1, v2, Lcom/oppo/camera/Ipa/b;->a:Lcom/oppo/camera/Ipa/b$a;

    goto :goto_0

    .line 688
    :cond_0
    new-instance v2, Lcom/oppo/camera/Ipa/b;

    invoke-direct {v2}, Lcom/oppo/camera/Ipa/b;-><init>()V

    .line 689
    iput-object p1, v2, Lcom/oppo/camera/Ipa/b;->a:Lcom/oppo/camera/Ipa/b$a;

    .line 690
    iget-object p1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    const-string p1, "ImageProcessService"

    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addImageInfo, isValid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/oppo/camera/Ipa/b;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    invoke-virtual {v2}, Lcom/oppo/camera/Ipa/b;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 698
    invoke-virtual {p0, v2}, Lcom/oppo/camera/Ipa/ImageProcessService$b;->a(Lcom/oppo/camera/Ipa/b;)V

    .line 701
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcom/oppo/camera/Ipa/b$b;Lcom/oppo/camera/statistics/model/CaptureMsgData;)V
    .locals 5

    .line 705
    monitor-enter p0

    .line 706
    :try_start_0
    iget-wide v0, p1, Lcom/oppo/camera/Ipa/b$b;->b:J

    const-string v2, "ImageProcessService"

    .line 708
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addMetaInfo, timeStamp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 712
    iget-object v3, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->m:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_1

    .line 713
    iget-object v2, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 714
    iget-object v2, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/oppo/camera/Ipa/b;

    .line 715
    iput-object p1, v2, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    .line 716
    iput-object p2, v2, Lcom/oppo/camera/Ipa/b;->d:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    goto :goto_0

    .line 718
    :cond_0
    new-instance v2, Lcom/oppo/camera/Ipa/b;

    invoke-direct {v2}, Lcom/oppo/camera/Ipa/b;-><init>()V

    .line 719
    iput-object p1, v2, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    .line 720
    iput-object p2, v2, Lcom/oppo/camera/Ipa/b;->d:Lcom/oppo/camera/statistics/model/CaptureMsgData;

    .line 721
    iget-object p1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    const-string p1, "ImageProcessService"

    .line 726
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addMetaInfo, isValid: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/oppo/camera/Ipa/b;->b()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    invoke-virtual {v2}, Lcom/oppo/camera/Ipa/b;->b()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 729
    invoke-virtual {p0, v2}, Lcom/oppo/camera/Ipa/ImageProcessService$b;->a(Lcom/oppo/camera/Ipa/b;)V

    .line 732
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcom/oppo/camera/Ipa/b$c;)V
    .locals 6

    .line 757
    monitor-enter p0

    .line 758
    :try_start_0
    iget-wide v0, p1, Lcom/oppo/camera/Ipa/b$c;->h:J

    const-wide/16 v2, 0x0

    cmp-long v2, v2, v0

    if-nez v2, :cond_1

    .line 761
    iget-wide v0, p1, Lcom/oppo/camera/Ipa/b$c;->l:J

    .line 763
    iget-object v2, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->r:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 764
    iget-object v2, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->r:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/oppo/camera/Ipa/b$c;->h:J

    .line 765
    iget-object v2, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->r:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 767
    :cond_0
    iget-wide v0, p1, Lcom/oppo/camera/Ipa/b$c;->l:J

    iput-wide v0, p1, Lcom/oppo/camera/Ipa/b$c;->h:J

    .line 770
    :goto_0
    iget-wide v0, p1, Lcom/oppo/camera/Ipa/b$c;->h:J

    :cond_1
    const-string v2, "ImageProcessService"

    .line 773
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addThumbnailInfo, timeStamp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", hash: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p1, Lcom/oppo/camera/Ipa/b$c;->l:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 777
    iget-object v3, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->m:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_4

    .line 778
    iget-object v2, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->a:Lcom/oppo/camera/Ipa/ImageProcessService;

    invoke-static {v2}, Lcom/oppo/camera/Ipa/ImageProcessService;->c(Lcom/oppo/camera/Ipa/ImageProcessService;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 779
    iget-object v2, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->a:Lcom/oppo/camera/Ipa/ImageProcessService;

    invoke-static {v2, v0, v1}, Lcom/oppo/camera/Ipa/ImageProcessService;->a(Lcom/oppo/camera/Ipa/ImageProcessService;J)J

    .line 782
    :cond_2
    iget-object v2, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 783
    iget-object v2, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/oppo/camera/Ipa/b;

    .line 784
    iput-object p1, v2, Lcom/oppo/camera/Ipa/b;->c:Lcom/oppo/camera/Ipa/b$c;

    goto :goto_1

    .line 786
    :cond_3
    new-instance v2, Lcom/oppo/camera/Ipa/b;

    invoke-direct {v2}, Lcom/oppo/camera/Ipa/b;-><init>()V

    .line 787
    iput-object p1, v2, Lcom/oppo/camera/Ipa/b;->c:Lcom/oppo/camera/Ipa/b$c;

    .line 788
    iget-object p1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    const-string p1, "ImageProcessService"

    .line 793
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addThumbnailInfo, isValid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/oppo/camera/Ipa/b;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    invoke-virtual {v2}, Lcom/oppo/camera/Ipa/b;->b()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 796
    invoke-virtual {p0, v2}, Lcom/oppo/camera/Ipa/ImageProcessService$b;->a(Lcom/oppo/camera/Ipa/b;)V

    .line 799
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcom/oppo/camera/Ipa/b;)V
    .locals 5

    .line 803
    monitor-enter p0

    .line 804
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 805
    iget-object v0, p1, Lcom/oppo/camera/Ipa/b;->a:Lcom/oppo/camera/Ipa/b$a;

    iget-wide v0, v0, Lcom/oppo/camera/Ipa/b$a;->k:J

    .line 807
    iget-object v2, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->m:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_1

    .line 808
    iget-object v2, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 809
    iget-object v2, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v2, "ImageProcessService"

    .line 812
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addImageCategory, timeStamp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", mImageCacheMap.size: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->m:Ljava/util/concurrent/ConcurrentHashMap;

    .line 813
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 812
    invoke-static {v2, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 819
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Z)V
    .locals 3

    .line 1576
    monitor-enter p0

    :try_start_0
    const-string v0, "ImageProcessService"

    .line 1577
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDestroyProcessor, destroy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    iput-boolean p1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->o:Z

    .line 1581
    iget-boolean p1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->o:Z

    if-eqz p1, :cond_0

    .line 1582
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1584
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(ZLjava/util/List;)V
    .locals 5

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyCameraClosed, isClosed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageProcessService"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "ImageProcessService"

    const-string p2, "notifyCameraClosed, camera is opened, don\'t need check the cache"

    .line 626
    invoke-static {p1, p2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 631
    :cond_0
    monitor-enter p0

    .line 632
    :try_start_0
    iget-object p1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 639
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 640
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 641
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/Ipa/b;

    .line 643
    iget-object v1, v0, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    if-nez v1, :cond_3

    .line 644
    iget-object v1, v0, Lcom/oppo/camera/Ipa/b;->c:Lcom/oppo/camera/Ipa/b$c;

    invoke-direct {p0, v1}, Lcom/oppo/camera/Ipa/ImageProcessService$b;->b(Lcom/oppo/camera/Ipa/b$c;)V

    .line 645
    iget-object v1, v0, Lcom/oppo/camera/Ipa/b;->a:Lcom/oppo/camera/Ipa/b$a;

    if-eqz v1, :cond_2

    .line 647
    iget-boolean v2, v1, Lcom/oppo/camera/Ipa/b$a;->l:Z

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/oppo/camera/Ipa/b$a;->n:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/oppo/camera/Ipa/b$a;->n:Ljava/lang/String;

    const-string v3, ""

    .line 650
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-wide v1, v1, Lcom/oppo/camera/Ipa/b$a;->m:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 652
    invoke-direct {p0, v0}, Lcom/oppo/camera/Ipa/ImageProcessService$b;->c(Lcom/oppo/camera/Ipa/b;)V

    .line 655
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 656
    :cond_3
    iget-object v1, v0, Lcom/oppo/camera/Ipa/b;->a:Lcom/oppo/camera/Ipa/b$a;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/oppo/camera/Ipa/b;->c:Lcom/oppo/camera/Ipa/b$c;

    if-nez v1, :cond_1

    if-eqz p2, :cond_4

    iget-object v1, v0, Lcom/oppo/camera/Ipa/b;->a:Lcom/oppo/camera/Ipa/b$a;

    iget-wide v1, v1, Lcom/oppo/camera/Ipa/b$a;->k:J

    .line 659
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 660
    :cond_4
    new-instance v1, Lcom/oppo/camera/Ipa/b$c;

    invoke-direct {v1}, Lcom/oppo/camera/Ipa/b$c;-><init>()V

    const/4 v2, 0x0

    .line 661
    iput-object v2, v1, Lcom/oppo/camera/Ipa/b$c;->a:Landroid/net/Uri;

    .line 662
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/oppo/camera/Ipa/b$c;->k:J

    .line 663
    invoke-static {}, Lcom/oppo/camera/o/d;->e()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, v1, Lcom/oppo/camera/Ipa/b$c;->b:Landroid/content/ContentResolver;

    const-string v3, "jpeg"

    .line 664
    iput-object v3, v1, Lcom/oppo/camera/Ipa/b$c;->c:Ljava/lang/String;

    .line 665
    iput-object v2, v1, Lcom/oppo/camera/Ipa/b$c;->e:Landroid/graphics/Bitmap;

    .line 666
    iget-object v0, v0, Lcom/oppo/camera/Ipa/b;->a:Lcom/oppo/camera/Ipa/b$a;

    iget-wide v2, v0, Lcom/oppo/camera/Ipa/b$a;->k:J

    iput-wide v2, v1, Lcom/oppo/camera/Ipa/b$c;->h:J

    .line 667
    iget-wide v2, v1, Lcom/oppo/camera/Ipa/b$c;->k:J

    invoke-static {v2, v3}, Lcom/oppo/camera/o/d;->a(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/oppo/camera/Ipa/b$c;->d:Ljava/lang/String;

    .line 669
    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->a:Lcom/oppo/camera/Ipa/ImageProcessService;

    invoke-static {v0}, Lcom/oppo/camera/Ipa/ImageProcessService;->b(Lcom/oppo/camera/Ipa/ImageProcessService;)Lcom/oppo/camera/Ipa/ImageProcessService$b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/Ipa/ImageProcessService$b;->a(Lcom/oppo/camera/Ipa/b$c;)V

    goto/16 :goto_0

    .line 672
    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(ZZ)V
    .locals 1

    .line 1588
    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->e:Lcom/oppo/camera/Ipa/a/b;

    if-eqz v0, :cond_0

    return-void

    .line 1592
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 1593
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/Ipa/ImageProcessService$b;->b(ZZ)V

    .line 1594
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcom/oppo/camera/Ipa/ImageProcessService$a;)Z
    .locals 9

    .line 823
    monitor-enter p0

    .line 824
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->l:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 825
    :goto_0
    iget-object v2, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->m:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    .line 829
    :goto_1
    iget-object v3, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->m:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v3, :cond_3

    .line 830
    iget-object v3, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v1

    move v5, v4

    .line 832
    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 833
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 835
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oppo/camera/Ipa/b;

    iget-object v7, v7, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    if-eqz v7, :cond_2

    .line 836
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oppo/camera/Ipa/b;

    iget-object v7, v7, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    iget v7, v7, Lcom/oppo/camera/Ipa/b$b;->g:I

    add-int/2addr v4, v7

    .line 838
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oppo/camera/Ipa/b;

    iget-object v6, v6, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    iget-object v6, v6, Lcom/oppo/camera/Ipa/b$b;->au:Lcom/oppo/camera/e/d;

    iget-boolean v6, v6, Lcom/oppo/camera/e/d;->a:Z

    if-eqz v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    move v4, v1

    move v5, v4

    :cond_4
    const-string v3, "ImageProcessService"

    .line 845
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isImageQueueAvailable, queue size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " cache size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mergeNum: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    sget-object v3, Lcom/oppo/camera/Ipa/ImageProcessService$1;->a:[I

    invoke-virtual {p1}, Lcom/oppo/camera/Ipa/ImageProcessService$a;->ordinal()I

    move-result p1

    aget p1, v3, p1

    const/4 v3, 0x1

    if-eq p1, v3, :cond_e

    const/4 v6, 0x2

    const/16 v7, 0x14

    const/4 v8, 0x4

    if-eq p1, v6, :cond_c

    const/4 v6, 0x3

    if-eq p1, v6, :cond_8

    if-eq p1, v8, :cond_6

    const/16 p1, 0x1e

    if-gt v4, p1, :cond_5

    add-int/2addr v0, v2

    const/16 p1, 0xf

    if-le v0, p1, :cond_10

    .line 904
    :cond_5
    monitor-exit p0

    return v1

    :cond_6
    const/16 p1, 0x17

    if-gt v4, p1, :cond_7

    add-int/2addr v0, v2

    if-le v0, v8, :cond_10

    .line 898
    :cond_7
    monitor-exit p0

    return v1

    .line 877
    :cond_8
    iget-object p1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->l:Ljava/util/ArrayList;

    if-eqz p1, :cond_a

    .line 878
    iget-object p1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->l:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/Ipa/b;

    .line 879
    iget-object v2, v0, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    if-eqz v2, :cond_9

    iget-object v2, v0, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    iget-object v2, v2, Lcom/oppo/camera/Ipa/b$b;->au:Lcom/oppo/camera/e/d;

    if-eqz v2, :cond_9

    iget-object v0, v0, Lcom/oppo/camera/Ipa/b;->b:Lcom/oppo/camera/Ipa/b$b;

    iget-object v0, v0, Lcom/oppo/camera/Ipa/b$b;->au:Lcom/oppo/camera/e/d;

    iget-boolean v0, v0, Lcom/oppo/camera/e/d;->a:Z

    if-eqz v0, :cond_9

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_a
    const-string p1, "ImageProcessService"

    .line 887
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isImageQueueAvailable, highPictureSizeNum: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-gt v5, v6, :cond_b

    if-le v4, v7, :cond_10

    .line 890
    :cond_b
    monitor-exit p0

    return v1

    :cond_c
    if-gt v4, v7, :cond_d

    add-int/2addr v0, v2

    if-le v0, v8, :cond_10

    .line 871
    :cond_d
    monitor-exit p0

    return v1

    .line 852
    :cond_e
    iget-object p1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->b:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 853
    :try_start_1
    iget-object v4, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->q:Ljava/util/HashMap;

    .line 854
    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v1

    .line 856
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 857
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 858
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oppo/camera/Ipa/ImageProcessService$b$a;

    iget v7, v7, Lcom/oppo/camera/Ipa/ImageProcessService$b$a;->d:I

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oppo/camera/Ipa/ImageProcessService$b$a;

    iget v6, v6, Lcom/oppo/camera/Ipa/ImageProcessService$b$a;->a:I

    sub-int/2addr v7, v6

    add-int/2addr v5, v7

    goto :goto_4

    .line 860
    :cond_f
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string p1, "ImageProcessService"

    .line 862
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isImageQueueAvailable, waitBurstShotNum: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/2addr v0, v2

    add-int/2addr v0, v5

    const/4 p1, 0x5

    if-le v0, p1, :cond_10

    .line 865
    monitor-exit p0

    return v1

    .line 907
    :cond_10
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v3

    :catchall_0
    move-exception v0

    .line 860
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception p1

    .line 907
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public b()V
    .locals 3

    const-string v0, "ImageProcessService"

    const-string v1, "waitProcessImageAndFinish"

    .line 578
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    monitor-enter p0

    .line 581
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 583
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 584
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 587
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/Ipa/b;

    iget-object v2, v2, Lcom/oppo/camera/Ipa/b;->a:Lcom/oppo/camera/Ipa/b$a;

    if-nez v2, :cond_0

    .line 588
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oppo/camera/Ipa/b;

    iget-object v2, v2, Lcom/oppo/camera/Ipa/b;->c:Lcom/oppo/camera/Ipa/b$c;

    if-eqz v2, :cond_1

    .line 589
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oppo/camera/Ipa/b;

    iget-object v0, v0, Lcom/oppo/camera/Ipa/b;->c:Lcom/oppo/camera/Ipa/b$c;

    iget-wide v0, v0, Lcom/oppo/camera/Ipa/b$c;->h:J

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/Ipa/ImageProcessService$b;->c(J)V

    .line 590
    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    .line 592
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 597
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 598
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(J)V
    .locals 1

    .line 565
    monitor-enter p0

    .line 566
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(Z)V
    .locals 3

    .line 1612
    monitor-enter p0

    :try_start_0
    const-string v0, "ImageProcessService"

    .line 1613
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDestroyCurrentProcessor, destroy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1615
    iput-boolean p1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->p:Z

    .line 1617
    iget-boolean p1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->p:Z

    if-eqz p1, :cond_0

    .line 1618
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1620
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c()I
    .locals 5

    .line 913
    monitor-enter p0

    .line 914
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->l:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 915
    :goto_0
    iget-object v2, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->m:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    :cond_1
    const-string v2, "ImageProcessService"

    .line 917
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIpaImageQueueSize, queueLength: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", cacheLength: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/2addr v0, v1

    .line 919
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 920
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(J)V
    .locals 1

    .line 571
    new-instance v0, Lcom/oppo/camera/Ipa/b$a;

    invoke-direct {v0}, Lcom/oppo/camera/Ipa/b$a;-><init>()V

    .line 572
    iput-wide p1, v0, Lcom/oppo/camera/Ipa/b$a;->k:J

    .line 574
    iget-object p1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->a:Lcom/oppo/camera/Ipa/ImageProcessService;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/Ipa/ImageProcessService;->a(Lcom/oppo/camera/Ipa/b$a;)V

    return-void
.end method

.method public d()V
    .locals 1

    .line 1561
    invoke-static {}, Lcom/oppo/camera/Ipa/a/b;->f()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oppo/camera/Ipa/ImageProcessService$b;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->k:Lcom/oppo/camera/Ipa/a/b;

    if-eqz v0, :cond_0

    .line 1562
    invoke-virtual {v0}, Lcom/oppo/camera/Ipa/a/b;->a()V

    const/4 v0, 0x0

    .line 1563
    iput-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->k:Lcom/oppo/camera/Ipa/a/b;

    :cond_0
    return-void
.end method

.method public run()V
    .locals 5

    .line 461
    :cond_0
    :goto_0
    monitor-enter p0

    .line 462
    :try_start_0
    iget-boolean v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->n:Z

    if-eqz v0, :cond_1

    const-string v0, "ImageProcessService"

    const-string v1, "ImageProcessor, run"

    .line 463
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    monitor-exit p0

    return-void

    .line 468
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->l:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    .line 498
    :cond_2
    invoke-direct {p0}, Lcom/oppo/camera/Ipa/ImageProcessService$b;->e()I

    move-result v0

    .line 500
    iget-object v1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->l:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oppo/camera/Ipa/b;

    const-string v2, "ImageProcessService"

    .line 502
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImageProcessor, run, index: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", recNum: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_3

    iget-object v4, v1, Lcom/oppo/camera/Ipa/b;->a:Lcom/oppo/camera/Ipa/b$a;

    iget v4, v4, Lcom/oppo/camera/Ipa/b$a;->o:I

    goto :goto_1

    :cond_3
    const/4 v4, -0x1

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    iget-object v2, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->l:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 506
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 508
    invoke-virtual {v1}, Lcom/oppo/camera/Ipa/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    invoke-direct {p0, v1}, Lcom/oppo/camera/Ipa/ImageProcessService$b;->b(Lcom/oppo/camera/Ipa/b;)V

    goto :goto_0

    .line 469
    :cond_4
    :goto_2
    :try_start_1
    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->m:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->m:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 470
    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->a:Lcom/oppo/camera/Ipa/ImageProcessService;

    iget-object v1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->a:Lcom/oppo/camera/Ipa/ImageProcessService;

    invoke-virtual {v1}, Lcom/oppo/camera/Ipa/ImageProcessService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/Ipa/ImageProcessService;->a(Lcom/oppo/camera/Ipa/ImageProcessService;Ljava/lang/String;)V

    .line 472
    iget-boolean v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->o:Z

    if-eqz v0, :cond_5

    .line 473
    invoke-direct {p0}, Lcom/oppo/camera/Ipa/ImageProcessService$b;->f()V

    .line 476
    :cond_5
    iget-boolean v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->p:Z

    if-eqz v0, :cond_6

    .line 477
    invoke-virtual {p0}, Lcom/oppo/camera/Ipa/ImageProcessService$b;->d()V

    .line 480
    :cond_6
    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->a:Lcom/oppo/camera/Ipa/ImageProcessService;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/oppo/camera/Ipa/ImageProcessService;->a(Lcom/oppo/camera/Ipa/ImageProcessService;J)J

    .line 483
    :cond_7
    iget-object v0, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->a:Lcom/oppo/camera/Ipa/ImageProcessService;

    invoke-static {v0}, Lcom/oppo/camera/Ipa/ImageProcessService;->a(Lcom/oppo/camera/Ipa/ImageProcessService;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "ImageProcessService"

    const-string v1, "ImageProcessor, run, will notify processqueuethread kill camera process"

    .line 484
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    invoke-static {}, Lcom/oppo/camera/j/b;->a()Lcom/oppo/camera/j/b;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/Ipa/ImageProcessService$b;->a:Lcom/oppo/camera/Ipa/ImageProcessService;

    invoke-static {v1}, Lcom/oppo/camera/Ipa/ImageProcessService;->a(Lcom/oppo/camera/Ipa/ImageProcessService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/j/b;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 490
    :cond_8
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 495
    :catch_0
    :try_start_3
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    .line 506
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method
