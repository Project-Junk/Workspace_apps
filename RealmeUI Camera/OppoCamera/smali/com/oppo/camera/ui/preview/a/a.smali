.class public Lcom/oppo/camera/ui/preview/a/a;
.super Lcom/oppo/camera/ui/preview/a/n;
.source "AnimojiTexturePreview.java"


# instance fields
.field private A:Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;

.field private B:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

.field private C:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

.field private D:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

.field a:Ljava/lang/Runnable;

.field b:Ljava/lang/Runnable;

.field c:Ljava/lang/Runnable;

.field private final g:Ljava/lang/Object;

.field private h:I

.field private i:I

.field private j:I

.field private k:[F

.field private l:Lcom/oppo/camera/gl/s;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Landroid/util/Size;

.field private r:Lcom/oppo/camera/ui/preview/a/p;

.field private s:Landroid/content/Context;

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Ljava/lang/String;

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 103
    invoke-direct {p0, p1}, Lcom/oppo/camera/ui/preview/a/n;-><init>(Landroid/content/Context;)V

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a/a;->g:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/oppo/camera/ui/preview/a/a;->h:I

    .line 61
    iput v0, p0, Lcom/oppo/camera/ui/preview/a/a;->i:I

    .line 62
    iput v0, p0, Lcom/oppo/camera/ui/preview/a/a;->j:I

    const/4 v1, 0x3

    .line 63
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/a;->k:[F

    const/4 v1, 0x0

    .line 64
    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/a;->l:Lcom/oppo/camera/gl/s;

    .line 65
    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/a/a;->m:Z

    .line 66
    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/a/a;->n:Z

    .line 67
    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/a/a;->o:Z

    .line 68
    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/a/a;->p:Z

    .line 69
    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/a;->q:Landroid/util/Size;

    .line 70
    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/a;->r:Lcom/oppo/camera/ui/preview/a/p;

    .line 71
    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/a;->s:Landroid/content/Context;

    .line 72
    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/a/a;->t:Z

    .line 73
    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/a/a;->u:Z

    .line 74
    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/a/a;->v:Z

    .line 75
    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/a/a;->w:Z

    .line 76
    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/a;->x:Ljava/lang/String;

    .line 77
    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/a/a;->y:Z

    .line 78
    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/a/a;->z:Z

    .line 80
    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/a;->A:Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;

    .line 81
    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/a;->B:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    .line 82
    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/a;->C:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    .line 83
    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/a;->D:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    .line 107
    new-instance v0, Lcom/oppo/camera/ui/preview/a/a$1;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/preview/a/a$1;-><init>(Lcom/oppo/camera/ui/preview/a/a;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a/a;->a:Ljava/lang/Runnable;

    .line 116
    new-instance v0, Lcom/oppo/camera/ui/preview/a/a$2;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/preview/a/a$2;-><init>(Lcom/oppo/camera/ui/preview/a/a;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a/a;->b:Ljava/lang/Runnable;

    .line 125
    new-instance v0, Lcom/oppo/camera/ui/preview/a/a$3;

    invoke-direct {v0, p0}, Lcom/oppo/camera/ui/preview/a/a$3;-><init>(Lcom/oppo/camera/ui/preview/a/a;)V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a/a;->c:Ljava/lang/Runnable;

    .line 104
    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a/a;->s:Landroid/content/Context;

    return-void
.end method

.method private a(Landroid/content/Context;II)J
    .locals 5

    .line 410
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/a;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "AnimojiTexturePreview"

    .line 411
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initAnimojiEngine, start, mbInitialized: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oppo/camera/ui/preview/a/a;->t:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", height: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    iget-boolean p2, p0, Lcom/oppo/camera/ui/preview/a/a;->t:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/a/a;->A:Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;

    if-nez p2, :cond_0

    const-string p2, "Animoji.initAnimojiEngine"

    .line 415
    invoke-static {p2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    .line 417
    new-instance p2, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;

    invoke-direct {p2, p1}, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/oppo/camera/ui/preview/a/a;->A:Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;

    .line 418
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/a/a;->s:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/animoji"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 419
    iget-object p2, p0, Lcom/oppo/camera/ui/preview/a/a;->s:Landroid/content/Context;

    const-string p3, "sticker/material/animoji/data.zip"

    const/4 v1, 0x0

    invoke-direct {p0, p2, p3, p1, v1}, Lcom/oppo/camera/ui/preview/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 421
    iget-object p2, p0, Lcom/oppo/camera/ui/preview/a/a;->A:Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;

    const-string p3, "/data/track_data.dat"

    invoke-virtual {p1, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "/data/config.txt"

    .line 422
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 421
    invoke-virtual {p2, p3, v1, v2}, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;->initialize(Ljava/lang/String;Ljava/lang/String;I)J

    move-result-wide p2

    const-string v1, "AnimojiTexturePreview"

    .line 424
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initAnimojiEngine, end, mCurrentTemplatePath: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oppo/camera/ui/preview/a/a;->x:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", initResult: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/a/a;->p()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oppo/camera/ui/preview/a/a;->v:Z

    .line 428
    iput-boolean v2, p0, Lcom/oppo/camera/ui/preview/a/a;->t:Z

    const-string v1, "Animoji.initAnimojiEngine"

    .line 430
    invoke-static {v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    const-string v1, "AnimojiTexturePreview"

    .line 432
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initAnimojiEngine, end, initResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", dataPath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-wide/16 p2, -0x1

    .line 434
    :goto_0
    monitor-exit v0

    return-wide p2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/a/a;Landroid/content/Context;II)J
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/camera/ui/preview/a/a;->a(Landroid/content/Context;II)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/a/a;)Ljava/lang/Object;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oppo/camera/ui/preview/a/a;->g:Ljava/lang/Object;

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/a;->s:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/animoji"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 561
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 564
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 565
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 567
    array-length v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 568
    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 642
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 644
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 645
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 648
    :cond_0
    new-instance v0, Ljava/util/zip/ZipFile;

    invoke-direct {v0, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 649
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 651
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 652
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 653
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "../"

    .line 655
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    .line 660
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v5, "\\*"

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 661
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 665
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 667
    :try_start_1
    new-instance v6, Ljava/io/File;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {v3, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 669
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    .line 670
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 673
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_4

    if-eqz v2, :cond_1

    .line 690
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_0

    .line 675
    :cond_4
    :try_start_2
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v6, ".zip"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 676
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 679
    :cond_5
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v4, 0x400

    .line 680
    :try_start_3
    new-array v4, v4, [B

    .line 683
    :goto_1
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_6

    .line 684
    invoke-virtual {v3, v4, v8, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_6
    if-eqz v2, :cond_7

    .line 690
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 694
    :cond_7
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    move-object v5, v3

    goto :goto_3

    :catch_0
    move-exception v4

    move-object v5, v2

    move-object v2, v3

    move-object v3, v4

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception v3

    move-object v9, v5

    move-object v5, v2

    move-object v2, v9

    goto :goto_2

    :catchall_2
    move-exception p0

    move-object v2, v5

    goto :goto_3

    :catch_2
    move-exception v3

    move-object v2, v5

    .line 687
    :goto_2
    :try_start_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v5, :cond_8

    .line 690
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    :cond_8
    if-eqz v2, :cond_1

    .line 694
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    goto/16 :goto_0

    :catchall_3
    move-exception p0

    move-object v9, v5

    move-object v5, v2

    move-object v2, v9

    :goto_3
    if-eqz v2, :cond_9

    .line 690
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_9
    if-eqz v5, :cond_a

    .line 694
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    :cond_a
    throw p0

    .line 699
    :cond_b
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 701
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_c

    .line 702
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 703
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 704
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 705
    invoke-static {v0, p1}, Lcom/oppo/camera/ui/preview/a/a;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 706
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_4

    :cond_c
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 755
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 757
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    move-object p4, p1

    goto :goto_2

    .line 758
    :cond_1
    :goto_0
    new-instance p4, Ljava/io/File;

    invoke-direct {p4, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 760
    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 761
    invoke-virtual {p4}, Ljava/io/File;->mkdirs()Z

    .line 764
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 765
    :try_start_1
    sget-object p4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 766
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p3, p2

    sub-int/2addr p3, v0

    aget-object p2, p2, p3

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 767
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 769
    new-instance p4, Ljava/io/FileOutputStream;

    invoke-direct {p4, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v1, 0x400

    .line 770
    :try_start_2
    new-array v1, v1, [B

    .line 773
    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    .line 774
    invoke-virtual {p4, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    :cond_3
    const-string v1, ".zip"

    .line 777
    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/oppo/camera/ui/preview/a/a;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 778
    invoke-virtual {p3}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    if-eqz p4, :cond_4

    .line 787
    :try_start_3
    invoke-virtual {p4}, Ljava/io/FileOutputStream;->flush()V

    .line 788
    invoke-virtual {p4}, Ljava/io/FileOutputStream;->close()V

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_4
    :goto_3
    if-eqz p1, :cond_7

    .line 792
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_9

    .line 795
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    :catchall_0
    move-exception p2

    move-object v1, p4

    goto :goto_a

    :catch_1
    move-exception p2

    move-object v1, p4

    goto :goto_5

    :catch_2
    move-exception p2

    goto :goto_5

    :catchall_1
    move-exception p1

    move-object p2, p1

    move-object p1, v1

    goto :goto_a

    :catch_3
    move-exception p1

    move-object p2, p1

    move-object p1, v1

    .line 783
    :goto_5
    :try_start_4
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v1, :cond_5

    .line 787
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 788
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_6

    :catch_4
    move-exception p1

    goto :goto_7

    :cond_5
    :goto_6
    if-eqz p1, :cond_6

    .line 792
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_8

    .line 795
    :goto_7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_8
    move v0, v2

    :cond_7
    :goto_9
    return v0

    :catchall_2
    move-exception p2

    :goto_a
    if-eqz v1, :cond_8

    .line 787
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 788
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    goto :goto_b

    :catch_5
    move-exception p1

    goto :goto_c

    :cond_8
    :goto_b
    if-eqz p1, :cond_9

    .line 792
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_d

    .line 795
    :goto_c
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 796
    :cond_9
    :goto_d
    throw p2
.end method

.method static synthetic a(Lcom/oppo/camera/ui/preview/a/a;Z)Z
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/a/a;->m:Z

    return p1
.end method

.method private a([BLjava/lang/String;)Z
    .locals 5

    const-string v0, ".zip"

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_5

    .line 716
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 721
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 722
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 723
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 724
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 725
    :try_start_1
    invoke-virtual {v4, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 727
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p2, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/oppo/camera/ui/preview/a/a;->a(Ljava/io/File;Ljava/lang/String;)V

    .line 728
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v4

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v3, v4

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v3, v4

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    if-eqz v3, :cond_2

    .line 738
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 739
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 742
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    .line 734
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_2

    .line 738
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 739
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_2
    return v1

    :goto_3
    if-eqz v3, :cond_3

    .line 738
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 739
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception p2

    .line 742
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 743
    :cond_3
    :goto_4
    throw p1

    :cond_4
    :goto_5
    return v1
.end method

.method static synthetic b(Lcom/oppo/camera/ui/preview/a/a;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/a/a;->q()V

    return-void
.end method

.method static synthetic c(Lcom/oppo/camera/ui/preview/a/a;)Landroid/content/Context;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/oppo/camera/ui/preview/a/a;->s:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/oppo/camera/ui/preview/a/a;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/oppo/camera/ui/preview/a/a;->h:I

    return p0
.end method

.method static synthetic e(Lcom/oppo/camera/ui/preview/a/a;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/oppo/camera/ui/preview/a/a;->i:I

    return p0
.end method

.method static synthetic f(Lcom/oppo/camera/ui/preview/a/a;)Z
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/a/a;->t()Z

    move-result p0

    return p0
.end method

.method static synthetic g(Lcom/oppo/camera/ui/preview/a/a;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/oppo/camera/ui/preview/a/a;->s()V

    return-void
.end method

.method private p()Z
    .locals 10

    .line 362
    invoke-static {}, Lcom/oppo/camera/e/a;->a()Lcom/oppo/camera/e/a$a;

    move-result-object v0

    .line 363
    invoke-static {}, Lcom/oppo/camera/e/a;->b()Lcom/oppo/camera/e/a$a;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "AnimojiTexturePreview"

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 367
    invoke-virtual {v0}, Lcom/oppo/camera/e/a$a;->a()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 368
    invoke-virtual {v1}, Lcom/oppo/camera/e/a$a;->a()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 369
    invoke-static {v4}, Lcom/oppo/camera/ui/preview/a/h;->a(I)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_0

    .line 378
    :cond_0
    new-instance v5, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine$AvatarEngineCamera;

    invoke-direct {v5}, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine$AvatarEngineCamera;-><init>()V

    .line 379
    invoke-static {}, Lcom/oppo/camera/e/a;->a()Lcom/oppo/camera/e/a$a;

    move-result-object v6

    iget v6, v6, Lcom/oppo/camera/e/a$a;->a:I

    iput v6, v5, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine$AvatarEngineCamera;->iFrameWidth:I

    .line 380
    invoke-static {}, Lcom/oppo/camera/e/a;->a()Lcom/oppo/camera/e/a$a;

    move-result-object v6

    iget v6, v6, Lcom/oppo/camera/e/a$a;->b:I

    iput v6, v5, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine$AvatarEngineCamera;->iFrameHeight:I

    .line 382
    invoke-static {}, Lcom/oppo/camera/e/a;->a()Lcom/oppo/camera/e/a$a;

    move-result-object v6

    iget v6, v6, Lcom/oppo/camera/e/a$a;->c:F

    iput v6, v5, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine$AvatarEngineCamera;->fCameraFx:F

    .line 383
    invoke-static {}, Lcom/oppo/camera/e/a;->a()Lcom/oppo/camera/e/a$a;

    move-result-object v6

    iget v6, v6, Lcom/oppo/camera/e/a$a;->d:F

    iput v6, v5, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine$AvatarEngineCamera;->fCameraFy:F

    .line 384
    invoke-static {}, Lcom/oppo/camera/e/a;->a()Lcom/oppo/camera/e/a$a;

    move-result-object v6

    iget v6, v6, Lcom/oppo/camera/e/a$a;->e:F

    iput v6, v5, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine$AvatarEngineCamera;->fCameraCx:F

    .line 385
    invoke-static {}, Lcom/oppo/camera/e/a;->a()Lcom/oppo/camera/e/a$a;

    move-result-object v6

    iget v6, v6, Lcom/oppo/camera/e/a$a;->f:F

    iput v6, v5, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine$AvatarEngineCamera;->fCameraCy:F

    .line 387
    new-instance v6, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine$AvatarEngineCamera;

    invoke-direct {v6}, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine$AvatarEngineCamera;-><init>()V

    .line 388
    invoke-static {}, Lcom/oppo/camera/e/a;->b()Lcom/oppo/camera/e/a$a;

    move-result-object v7

    iget v7, v7, Lcom/oppo/camera/e/a$a;->a:I

    iput v7, v6, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine$AvatarEngineCamera;->iFrameWidth:I

    .line 389
    invoke-static {}, Lcom/oppo/camera/e/a;->b()Lcom/oppo/camera/e/a$a;

    move-result-object v7

    iget v7, v7, Lcom/oppo/camera/e/a$a;->b:I

    iput v7, v6, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine$AvatarEngineCamera;->iFrameHeight:I

    .line 391
    invoke-static {}, Lcom/oppo/camera/e/a;->b()Lcom/oppo/camera/e/a$a;

    move-result-object v7

    iget v7, v7, Lcom/oppo/camera/e/a$a;->c:F

    iput v7, v6, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine$AvatarEngineCamera;->fCameraFx:F

    .line 392
    invoke-static {}, Lcom/oppo/camera/e/a;->b()Lcom/oppo/camera/e/a$a;

    move-result-object v7

    iget v7, v7, Lcom/oppo/camera/e/a$a;->d:F

    iput v7, v6, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine$AvatarEngineCamera;->fCameraFy:F

    .line 393
    invoke-static {}, Lcom/oppo/camera/e/a;->b()Lcom/oppo/camera/e/a$a;

    move-result-object v7

    iget v7, v7, Lcom/oppo/camera/e/a$a;->e:F

    iput v7, v6, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine$AvatarEngineCamera;->fCameraCx:F

    .line 394
    invoke-static {}, Lcom/oppo/camera/e/a;->b()Lcom/oppo/camera/e/a$a;

    move-result-object v7

    iget v7, v7, Lcom/oppo/camera/e/a$a;->f:F

    iput v7, v6, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine$AvatarEngineCamera;->fCameraCy:F

    const-wide/16 v7, -0x1

    .line 397
    iget-object v9, p0, Lcom/oppo/camera/ui/preview/a/a;->A:Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;

    if-eqz v9, :cond_1

    .line 398
    invoke-virtual {v9, v5, v6}, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;->setCamera(Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine$AvatarEngineCamera;Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine$AvatarEngineCamera;)J

    move-result-wide v7

    .line 400
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCameraConf, masterCalibParam: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/oppo/camera/e/a$a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", depthCalibParam: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-virtual {v1}, Lcom/oppo/camera/e/a$a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", result: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 400
    invoke-static {v3, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-nez v0, :cond_2

    move v2, v4

    :cond_2
    return v2

    .line 370
    :cond_3
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setCameraConf, isSupport3DOmoji: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-static {v4}, Lcom/oppo/camera/ui/preview/a/h;->a(I)Z

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", masterCalibParam valid: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    if-nez v0, :cond_4

    move-object v0, v4

    goto :goto_1

    .line 372
    :cond_4
    invoke-virtual {v0}, Lcom/oppo/camera/e/a$a;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", depthCalibParam valid: "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_5

    goto :goto_2

    .line 373
    :cond_5
    invoke-virtual {v1}, Lcom/oppo/camera/e/a$a;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 370
    invoke-static {v3, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private q()V
    .locals 3

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unInitAnimojiEngine, mbInitialized: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/ui/preview/a/a;->t:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAvatarEngineRender: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/a;->A:Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimojiTexturePreview"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/a/a;->t:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/a;->A:Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;

    if-eqz v0, :cond_0

    const-string v0, "Animoji.unInitAnimojiEngine"

    .line 444
    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    .line 446
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/a;->A:Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;

    invoke-virtual {v1}, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;->uninitialize()V

    const/4 v1, 0x0

    .line 447
    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/a;->A:Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;

    .line 448
    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/a;->B:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    const/4 v2, 0x0

    .line 449
    iput-boolean v2, p0, Lcom/oppo/camera/ui/preview/a/a;->m:Z

    .line 450
    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/a;->C:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    .line 451
    iput-boolean v2, p0, Lcom/oppo/camera/ui/preview/a/a;->t:Z

    .line 452
    iput-boolean v2, p0, Lcom/oppo/camera/ui/preview/a/a;->v:Z

    .line 454
    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private s()V
    .locals 4

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "releaseAnimojiRender, mbInitialized: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/ui/preview/a/a;->t:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAvatarEngineRender: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/a;->A:Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimojiTexturePreview"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/a/a;->t:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/a;->A:Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;

    if-eqz v0, :cond_2

    const-string v0, "Animoji.releaseAnimojiRender"

    .line 463
    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    .line 465
    iget-object v2, p0, Lcom/oppo/camera/ui/preview/a/a;->A:Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;

    invoke-virtual {v2}, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;->releaseRender()V

    .line 467
    iget-object v2, p0, Lcom/oppo/camera/ui/preview/a/a;->B:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 468
    invoke-virtual {v2, v3}, Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;->setData([B)V

    .line 471
    :cond_0
    iget-object v2, p0, Lcom/oppo/camera/ui/preview/a/a;->C:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    if-eqz v2, :cond_1

    .line 472
    invoke-virtual {v2, v3}, Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;->setData([B)V

    .line 475
    :cond_1
    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    :cond_2
    const-string v0, "releaseAnimojiEngine, end"

    .line 478
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private t()Z
    .locals 14

    .line 509
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/a;->r:Lcom/oppo/camera/ui/preview/a/p;

    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/a/p;->c()Lcom/oppo/camera/sticker/data/StickerItem;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "AnimojiTexturePreview"

    if-nez v0, :cond_0

    const-string v0, "initTemplateResource, item is null"

    .line 512
    invoke-static {v2, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v3, "Animoji.initTemplateResource"

    .line 517
    invoke-static {v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    .line 519
    invoke-virtual {v0}, Lcom/oppo/camera/sticker/data/StickerItem;->getFileContentUri()Ljava/lang/String;

    move-result-object v4

    .line 520
    invoke-virtual {v0}, Lcom/oppo/camera/sticker/data/StickerItem;->getStickerName()Ljava/lang/String;

    move-result-object v5

    .line 522
    iget-object v6, p0, Lcom/oppo/camera/ui/preview/a/a;->s:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/oppo/camera/sticker/g;->b(Landroid/content/Context;Lcom/oppo/camera/sticker/data/StickerItem;)Lcom/oppo/camera/sticker/data/AnimojiStickerExtendedInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 526
    invoke-virtual {v0}, Lcom/oppo/camera/sticker/data/AnimojiStickerExtendedInfo;->getBackgroundColor()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "#F5E274"

    .line 529
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/oppo/camera/ui/preview/a/a;->s:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/animoji"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 530
    iget-object v7, p0, Lcom/oppo/camera/ui/preview/a/a;->s:Landroid/content/Context;

    invoke-static {v7, v4}, Lcom/oppo/camera/ui/preview/a/h;->a(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v4

    .line 531
    invoke-direct {p0, v4, v6}, Lcom/oppo/camera/ui/preview/a/a;->a([BLjava/lang/String;)Z

    move-result v4

    const-wide/16 v6, -0x1

    .line 534
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initTemplateResource, stickerName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", unZipResult: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x1

    if-eqz v4, :cond_3

    .line 537
    invoke-direct {p0, v5}, Lcom/oppo/camera/ui/preview/a/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/oppo/camera/ui/preview/a/a;->x:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 540
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 541
    iget-object v11, p0, Lcom/oppo/camera/ui/preview/a/a;->k:[F

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v12

    int-to-float v12, v12

    const/high16 v13, 0x437f0000    # 255.0f

    div-float/2addr v12, v13

    aput v12, v11, v1

    .line 542
    iget-object v11, p0, Lcom/oppo/camera/ui/preview/a/a;->k:[F

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v12, v13

    aput v12, v11, v8

    .line 543
    iget-object v11, p0, Lcom/oppo/camera/ui/preview/a/a;->k:[F

    const/4 v12, 0x2

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v13

    aput v0, v11, v12

    .line 546
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/a;->A:Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;

    if-eqz v0, :cond_3

    .line 547
    iget-object v6, p0, Lcom/oppo/camera/ui/preview/a/a;->x:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;->setTemplate(Ljava/lang/String;)J

    move-result-wide v6

    .line 551
    :cond_3
    invoke-static {v3}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    .line 553
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", templateResult: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmp-long v0, v6, v2

    if-nez v0, :cond_4

    move v1, v8

    :cond_4
    return v1
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/a;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/a;->D:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    .line 91
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(II)V
    .locals 2

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSize, width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/ui/preview/a/a;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mHeight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/ui/preview/a/a;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimojiTexturePreview"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    iget v0, p0, Lcom/oppo/camera/ui/preview/a/a;->h:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/oppo/camera/ui/preview/a/a;->i:I

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/a/a;->n:Z

    .line 610
    iput p1, p0, Lcom/oppo/camera/ui/preview/a/a;->h:I

    .line 611
    iput p2, p0, Lcom/oppo/camera/ui/preview/a/a;->i:I

    .line 613
    iget-boolean p1, p0, Lcom/oppo/camera/ui/preview/a/a;->n:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/a;->e:Lcom/oppo/camera/gl/GLRootView;

    if-eqz p1, :cond_2

    .line 614
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/a;->e:Lcom/oppo/camera/gl/GLRootView;

    new-instance p2, Lcom/oppo/camera/ui/preview/a/a$5;

    invoke-direct {p2, p0}, Lcom/oppo/camera/ui/preview/a/a$5;-><init>(Lcom/oppo/camera/ui/preview/a/a;)V

    invoke-virtual {p1, p2}, Lcom/oppo/camera/gl/GLRootView;->a(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public a(Landroid/util/Size;Z)V
    .locals 2

    .line 632
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/a;->g:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 633
    :try_start_0
    iput-boolean v1, p0, Lcom/oppo/camera/ui/preview/a/a;->o:Z

    .line 634
    iput-boolean p2, p0, Lcom/oppo/camera/ui/preview/a/a;->p:Z

    .line 635
    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a/a;->q:Landroid/util/Size;

    const-string p1, "AnimojiTexturePreview"

    .line 637
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "capture, mOutputOffscreen: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/a;->D:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mbMirror: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/ui/preview/a/a;->p:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcom/oppo/camera/gl/h;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/oppo/camera/ui/preview/a/p;)V
    .locals 2

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createEngine, request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mbCreateEngine: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/ui/preview/a/a;->w:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimojiTexturePreview"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iput-object p1, p0, Lcom/oppo/camera/ui/preview/a/a;->r:Lcom/oppo/camera/ui/preview/a/p;

    .line 308
    iget-boolean p1, p0, Lcom/oppo/camera/ui/preview/a/a;->w:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "Animoji.createEngine"

    .line 312
    invoke-static {p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 314
    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/a/a;->w:Z

    .line 315
    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/a/a;->y:Z

    const/4 p1, 0x0

    .line 316
    iput-boolean p1, p0, Lcom/oppo/camera/ui/preview/a/a;->z:Z

    .line 318
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/a;->g:Ljava/lang/Object;

    monitor-enter p1

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/a;->b:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Ljava/lang/Runnable;)V

    .line 320
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "Animoji.createEngine"

    .line 322
    invoke-static {p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 320
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a([BII)V
    .locals 4

    .line 136
    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/a/a;->t:Z

    if-nez v0, :cond_0

    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/a;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/a;->B:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/a;->B:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    .line 142
    invoke-virtual {v1}, Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;->getWidth()I

    move-result v1

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/a;->B:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    .line 143
    invoke-virtual {v1}, Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;->getHeight()I

    move-result v1

    if-eq p3, v1, :cond_2

    .line 144
    :cond_1
    new-instance v1, Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    const/16 v2, 0x802

    invoke-direct {v1, p2, p3, v2}, Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;-><init>(III)V

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/a;->B:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    const-string v1, "AnimojiTexturePreview"

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreviewCallback, new ArcSoftOffscreen, width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", height: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :cond_2
    iget-object p2, p0, Lcom/oppo/camera/ui/preview/a/a;->B:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/a/a;->r:Lcom/oppo/camera/ui/preview/a/p;

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    .line 150
    iget-object p2, p0, Lcom/oppo/camera/ui/preview/a/a;->B:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    invoke-virtual {p2, p1}, Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;->setData([B)V

    .line 152
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(I)Z
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/a;->r:Lcom/oppo/camera/ui/preview/a/p;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 182
    :cond_0
    invoke-virtual {v0}, Lcom/oppo/camera/ui/preview/a/p;->h()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/a/a;->y:Z

    if-eqz v0, :cond_1

    .line 183
    iput-boolean v1, p0, Lcom/oppo/camera/ui/preview/a/a;->y:Z

    .line 186
    :cond_1
    invoke-virtual {p0, p1}, Lcom/oppo/camera/ui/preview/a/a;->c(I)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    .line 190
    :cond_2
    iget-boolean p1, p0, Lcom/oppo/camera/ui/preview/a/a;->u:Z

    if-nez p1, :cond_3

    return v1

    .line 194
    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/a;->r:Lcom/oppo/camera/ui/preview/a/p;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/a/p;->d()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/a;->r:Lcom/oppo/camera/ui/preview/a/p;

    .line 195
    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/a/p;->e()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/oppo/camera/ui/preview/a/a;->r:Lcom/oppo/camera/ui/preview/a/p;

    .line 196
    invoke-virtual {p1}, Lcom/oppo/camera/ui/preview/a/p;->c()Lcom/oppo/camera/sticker/data/StickerItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oppo/camera/sticker/data/StickerItem;->getCategoryId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ANIMOJI"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    .line 200
    :cond_4
    iget-boolean p1, p0, Lcom/oppo/camera/ui/preview/a/a;->y:Z

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_5
    :goto_0
    return v1
.end method

.method public a(Lcom/oppo/camera/ui/preview/a/n$a;)Z
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 205
    iget-object v2, v1, Lcom/oppo/camera/ui/preview/a/a;->r:Lcom/oppo/camera/ui/preview/a/p;

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    iget-boolean v2, v1, Lcom/oppo/camera/ui/preview/a/a;->t:Z

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/oppo/camera/ui/preview/a/a;->A:Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/oppo/camera/ui/preview/a/a;->l:Lcom/oppo/camera/gl/s;

    if-eqz v2, :cond_6

    iget-object v2, v1, Lcom/oppo/camera/ui/preview/a/a;->B:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    if-eqz v2, :cond_6

    .line 210
    invoke-virtual {v2}, Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;->getData()[B

    move-result-object v2

    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    iget v2, v0, Lcom/oppo/camera/ui/preview/a/n$a;->d:I

    if-lez v2, :cond_6

    iget v2, v0, Lcom/oppo/camera/ui/preview/a/n$a;->e:I

    if-gtz v2, :cond_0

    goto/16 :goto_2

    .line 227
    :cond_0
    iget v2, v1, Lcom/oppo/camera/ui/preview/a/a;->j:I

    .line 228
    iget v4, v1, Lcom/oppo/camera/ui/preview/a/a;->d:I

    .line 229
    iget v12, v0, Lcom/oppo/camera/ui/preview/a/n$a;->d:I

    .line 230
    iget v13, v0, Lcom/oppo/camera/ui/preview/a/n$a;->e:I

    .line 232
    iget-object v14, v1, Lcom/oppo/camera/ui/preview/a/a;->g:Ljava/lang/Object;

    monitor-enter v14

    .line 233
    :try_start_0
    iget-object v5, v1, Lcom/oppo/camera/ui/preview/a/a;->A:Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;

    if-nez v5, :cond_1

    .line 234
    monitor-exit v14

    return v3

    .line 237
    :cond_1
    iget-boolean v5, v1, Lcom/oppo/camera/ui/preview/a/a;->m:Z

    if-nez v5, :cond_2

    .line 238
    iget-object v0, v1, Lcom/oppo/camera/ui/preview/a/a;->c:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/oppo/camera/o/d;->a(Ljava/lang/Runnable;)V

    const-string v0, "AnimojiTexturePreview"

    const-string v2, "process, non selected template!"

    .line 240
    invoke-static {v0, v2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    monitor-exit v14

    return v3

    .line 245
    :cond_2
    iget v5, v1, Lcom/oppo/camera/ui/preview/a/a;->d:I

    invoke-static {v5}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v11

    .line 246
    iget-object v5, v1, Lcom/oppo/camera/ui/preview/a/a;->A:Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;

    invoke-virtual {v5, v2}, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;->setDevicesOrientation(I)J

    .line 247
    invoke-static {v4, v2}, Lcom/oppo/camera/e/a;->b(II)I

    move-result v10

    .line 249
    iget-boolean v2, v1, Lcom/oppo/camera/ui/preview/a/a;->v:Z

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/oppo/camera/ui/preview/a/a;->C:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/oppo/camera/ui/preview/a/a;->C:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    invoke-virtual {v2}, Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;->getData()[B

    move-result-object v2

    if-eqz v2, :cond_3

    .line 250
    iget-object v6, v1, Lcom/oppo/camera/ui/preview/a/a;->A:Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;

    iget-object v7, v1, Lcom/oppo/camera/ui/preview/a/a;->B:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    iget-object v8, v1, Lcom/oppo/camera/ui/preview/a/a;->C:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    const/16 v9, 0x5a

    invoke-virtual/range {v6 .. v11}, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;->process(Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;IIZ)J

    goto :goto_0

    .line 253
    :cond_3
    iget-object v6, v1, Lcom/oppo/camera/ui/preview/a/a;->A:Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;

    iget-object v7, v1, Lcom/oppo/camera/ui/preview/a/a;->B:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    const/4 v8, 0x0

    const/16 v9, 0x5a

    invoke-virtual/range {v6 .. v11}, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;->process(Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;IIZ)J

    .line 257
    :goto_0
    iget-object v2, v1, Lcom/oppo/camera/ui/preview/a/a;->k:[F

    aget v2, v2, v3

    .line 258
    iget-object v4, v1, Lcom/oppo/camera/ui/preview/a/a;->k:[F

    const/4 v15, 0x1

    aget v4, v4, v15

    .line 259
    iget-object v5, v1, Lcom/oppo/camera/ui/preview/a/a;->k:[F

    const/4 v6, 0x2

    aget v11, v5, v6

    const/high16 v10, 0x3f800000    # 1.0f

    .line 260
    invoke-static {v2, v4, v11, v10}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 261
    invoke-static {v3, v3, v12, v13}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 263
    new-array v9, v15, [I

    .line 264
    iget-object v5, v1, Lcom/oppo/camera/ui/preview/a/a;->A:Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;

    const/4 v8, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move v6, v12

    move v7, v13

    move-object/from16 v18, v9

    move/from16 v9, v16

    move-object/from16 v10, v18

    move/from16 v20, v11

    move-object/from16 v11, v17

    invoke-virtual/range {v5 .. v11}, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;->render(IIIZ[ILcom/arcsoft/arcsoftjni/ArcSoftOffscreen;)J

    move-result-wide v5

    .line 265
    iget-object v7, v1, Lcom/oppo/camera/ui/preview/a/a;->l:Lcom/oppo/camera/gl/s;

    iget-object v0, v0, Lcom/oppo/camera/ui/preview/a/n$a;->a:Lcom/oppo/camera/gl/h;

    aget v8, v18, v3

    invoke-virtual {v7, v0, v8, v12, v13}, Lcom/oppo/camera/gl/s;->a(Lcom/oppo/camera/gl/h;III)V

    .line 266
    iput-boolean v15, v1, Lcom/oppo/camera/ui/preview/a/a;->z:Z

    .line 268
    iget-boolean v0, v1, Lcom/oppo/camera/ui/preview/a/a;->o:Z

    if-eqz v0, :cond_4

    const-string v0, "AnimojiTexturePreview"

    const-string v7, "process, captureRender start"

    .line 269
    invoke-static {v0, v7}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iput-boolean v3, v1, Lcom/oppo/camera/ui/preview/a/a;->o:Z

    .line 272
    new-instance v0, Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    iget-object v7, v1, Lcom/oppo/camera/ui/preview/a/a;->q:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v7

    iget-object v8, v1, Lcom/oppo/camera/ui/preview/a/a;->q:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    const/16 v9, 0x802

    invoke-direct {v0, v7, v8, v9}, Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;-><init>(III)V

    iput-object v0, v1, Lcom/oppo/camera/ui/preview/a/a;->D:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    .line 274
    iget-object v0, v1, Lcom/oppo/camera/ui/preview/a/a;->D:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    iget-object v7, v1, Lcom/oppo/camera/ui/preview/a/a;->q:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v7

    iget-object v8, v1, Lcom/oppo/camera/ui/preview/a/a;->q:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    mul-int/2addr v7, v8

    int-to-float v7, v7

    const/high16 v8, 0x3fc00000    # 1.5f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    new-array v7, v7, [B

    invoke-virtual {v0, v7}, Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;->setData([B)V

    move/from16 v0, v20

    const/high16 v7, 0x3f800000    # 1.0f

    .line 276
    invoke-static {v2, v4, v0, v7}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 277
    iget-object v0, v1, Lcom/oppo/camera/ui/preview/a/a;->A:Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;

    iget-object v2, v1, Lcom/oppo/camera/ui/preview/a/a;->D:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    invoke-virtual {v2}, Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;->getWidth()I

    move-result v17

    iget-object v2, v1, Lcom/oppo/camera/ui/preview/a/a;->D:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    invoke-virtual {v2}, Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;->getHeight()I

    move-result v18

    const/16 v19, 0x10e

    iget-boolean v2, v1, Lcom/oppo/camera/ui/preview/a/a;->p:Z

    const/16 v21, 0x0

    iget-object v4, v1, Lcom/oppo/camera/ui/preview/a/a;->D:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    move-object/from16 v16, v0

    move/from16 v20, v2

    move-object/from16 v22, v4

    invoke-virtual/range {v16 .. v22}, Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;->render(IIIZ[ILcom/arcsoft/arcsoftjni/ArcSoftOffscreen;)J

    move-result-wide v7

    const-string v0, "AnimojiTexturePreview"

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "process, captureRender end, captureResult: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_4
    monitor-exit v14

    const-wide/16 v7, -0x1

    cmp-long v0, v5, v7

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    move v15, v3

    :goto_1
    return v15

    :catchall_0
    move-exception v0

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 214
    :cond_6
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "process, something wrong, so return! mRequest: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/oppo/camera/ui/preview/a/a;->r:Lcom/oppo/camera/ui/preview/a/p;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mbInitialized: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v1, Lcom/oppo/camera/ui/preview/a/a;->t:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mAvatarEngineRender: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/oppo/camera/ui/preview/a/a;->A:Lcom/arcsoft/arcsoftjni/ArcSoftAvatarEngine;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mOutputAnimojiTexture: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/oppo/camera/ui/preview/a/a;->l:Lcom/oppo/camera/gl/s;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mPreviewOffscreen: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/oppo/camera/ui/preview/a/a;->B:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mPreviewOffscreen.data: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/oppo/camera/ui/preview/a/a;->B:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    if-eqz v4, :cond_7

    .line 219
    invoke-virtual {v4}, Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;->getData()[B

    move-result-object v4

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", frameInfo: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", outTextureWidth: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_8

    move v4, v3

    goto :goto_4

    :cond_8
    iget v4, v0, Lcom/oppo/camera/ui/preview/a/n$a;->d:I

    :goto_4
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", outTextureHeight: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_9

    move v0, v3

    goto :goto_5

    :cond_9
    iget v0, v0, Lcom/oppo/camera/ui/preview/a/n$a;->e:I

    :goto_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AnimojiTexturePreview"

    .line 214
    invoke-static {v2, v0}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public b(I)V
    .locals 0

    .line 627
    iput p1, p0, Lcom/oppo/camera/ui/preview/a/a;->j:I

    return-void
.end method

.method public b([BII)V
    .locals 4

    .line 157
    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/a/a;->t:Z

    if-nez v0, :cond_0

    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/a;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/a;->C:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/a;->C:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    .line 163
    invoke-virtual {v1}, Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;->getData()[B

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/a;->C:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    .line 164
    invoke-virtual {v1}, Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;->getData()[B

    move-result-object v1

    array-length v1, v1

    array-length v2, p1

    if-eq v1, v2, :cond_2

    .line 165
    :cond_1
    new-instance v1, Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    const/16 v2, 0xc02

    invoke-direct {v1, p2, p3, v2}, Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;-><init>(III)V

    iput-object v1, p0, Lcom/oppo/camera/ui/preview/a/a;->C:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    const-string v1, "AnimojiTexturePreview"

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDepthCallback, new ArcSoftOffscreen, width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", height: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_2
    iget-object p2, p0, Lcom/oppo/camera/ui/preview/a/a;->C:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/oppo/camera/ui/preview/a/a;->r:Lcom/oppo/camera/ui/preview/a/p;

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    .line 171
    iget-object p2, p0, Lcom/oppo/camera/ui/preview/a/a;->C:Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;

    invoke-virtual {p2, p1}, Lcom/arcsoft/arcsoftjni/ArcSoftOffscreen;->setData([B)V

    .line 173
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()Z
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/a;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 98
    :try_start_0
    iget-boolean v1, p0, Lcom/oppo/camera/ui/preview/a/a;->z:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 99
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public f()V
    .locals 2

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroyEngine, mRequest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/a;->r:Lcom/oppo/camera/ui/preview/a/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AnimojiTexturePreview"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/a/a;->w:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 333
    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/a/a;->w:Z

    .line 334
    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/a/a;->y:Z

    .line 336
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/a;->r:Lcom/oppo/camera/ui/preview/a/p;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/a;->e:Lcom/oppo/camera/gl/GLRootView;

    if-nez v0, :cond_1

    goto :goto_0

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/a;->e:Lcom/oppo/camera/gl/GLRootView;

    new-instance v1, Lcom/oppo/camera/ui/preview/a/a$4;

    invoke-direct {v1, p0}, Lcom/oppo/camera/ui/preview/a/a$4;-><init>(Lcom/oppo/camera/ui/preview/a/a;)V

    invoke-virtual {v0, v1}, Lcom/oppo/camera/gl/GLRootView;->a(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public g()Lcom/oppo/camera/gl/s;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public h()Lcom/oppo/camera/gl/s;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/a;->l:Lcom/oppo/camera/gl/s;

    return-object v0
.end method

.method public i()Z
    .locals 2

    .line 500
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/a;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 501
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/a;->c:Ljava/lang/Runnable;

    invoke-static {v1}, Lcom/oppo/camera/o/d;->b(Ljava/lang/Runnable;)V

    .line 502
    iget-object v1, p0, Lcom/oppo/camera/ui/preview/a/a;->c:Ljava/lang/Runnable;

    invoke-static {v1}, Lcom/oppo/camera/o/d;->a(Ljava/lang/Runnable;)V

    .line 503
    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public j()V
    .locals 4

    const-string v0, "AnimojiTexturePreview"

    const-string v1, "newTextures"

    .line 577
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    new-instance v0, Lcom/oppo/camera/gl/s;

    iget v1, p0, Lcom/oppo/camera/ui/preview/a/a;->h:I

    iget v2, p0, Lcom/oppo/camera/ui/preview/a/a;->i:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/oppo/camera/gl/s;-><init>(IIZ)V

    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a/a;->l:Lcom/oppo/camera/gl/s;

    .line 580
    iput-boolean v3, p0, Lcom/oppo/camera/ui/preview/a/a;->u:Z

    return-void
.end method

.method public k()V
    .locals 2

    const-string v0, "AnimojiTexturePreview"

    const-string v1, "recycleTextures"

    .line 590
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    iget-boolean v0, p0, Lcom/oppo/camera/ui/preview/a/a;->u:Z

    if-nez v0, :cond_0

    return-void

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/ui/preview/a/a;->l:Lcom/oppo/camera/gl/s;

    if-eqz v0, :cond_1

    .line 597
    invoke-virtual {v0}, Lcom/oppo/camera/gl/s;->l()V

    const/4 v0, 0x0

    .line 598
    iput-object v0, p0, Lcom/oppo/camera/ui/preview/a/a;->l:Lcom/oppo/camera/gl/s;

    :cond_1
    const/4 v0, 0x0

    .line 601
    iput-boolean v0, p0, Lcom/oppo/camera/ui/preview/a/a;->u:Z

    return-void
.end method
