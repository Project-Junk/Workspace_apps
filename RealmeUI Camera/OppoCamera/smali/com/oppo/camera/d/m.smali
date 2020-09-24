.class public abstract Lcom/oppo/camera/d/m;
.super Lcom/oppo/camera/d/a;
.source "VideoMode.java"

# interfaces
.implements Lcom/oppo/camera/d/n$d;
.implements Lcom/oppo/camera/d/n$e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/d/m$a;,
        Lcom/oppo/camera/d/m$b;,
        Lcom/oppo/camera/d/m$c;
    }
.end annotation


# instance fields
.field protected W:Landroid/os/Handler;

.field protected X:Ljava/lang/String;

.field protected Y:J

.field protected Z:Landroid/media/CamcorderProfile;

.field private aA:Landroid/content/ContentValues;

.field private aB:Landroid/os/ParcelFileDescriptor;

.field private aC:Landroid/os/AsyncTask;

.field private aD:Landroid/animation/ValueAnimator;

.field private aE:Lcom/oppo/camera/d/m$a;

.field private aF:J

.field private aG:I

.field private aH:J

.field private aI:J

.field protected aa:Landroid/view/Surface;

.field protected ab:Ljava/lang/Object;

.field protected ac:Lcom/oppo/camera/d/n;

.field protected ad:I

.field protected ae:Z

.field private final af:Landroid/os/ConditionVariable;

.field private ag:Landroid/os/Handler;

.field private ah:Landroid/os/HandlerThread;

.field private ai:Ljava/lang/String;

.field private aj:Ljava/lang/String;

.field private ak:Ljava/lang/String;

.field private al:Ljava/lang/String;

.field private am:I

.field private an:I

.field private ao:I

.field private ap:Z

.field private aq:Z

.field private ar:Z

.field private as:Z

.field private at:Z

.field private au:Z

.field private av:Z

.field private aw:J

.field private ax:J

.field private ay:J

.field private az:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V
    .locals 3

    .line 238
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oppo/camera/d/a;-><init>(Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V

    const/4 p2, 0x0

    .line 108
    iput-object p2, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    const-string p3, "video_size_1080p"

    .line 109
    iput-object p3, p0, Lcom/oppo/camera/d/m;->X:Ljava/lang/String;

    const-wide/16 p3, 0x0

    .line 110
    iput-wide p3, p0, Lcom/oppo/camera/d/m;->Y:J

    .line 111
    iput-object p2, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    .line 112
    iput-object p2, p0, Lcom/oppo/camera/d/m;->aa:Landroid/view/Surface;

    .line 113
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oppo/camera/d/m;->ab:Ljava/lang/Object;

    .line 114
    iput-object p2, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    const/4 v0, 0x0

    .line 115
    iput v0, p0, Lcom/oppo/camera/d/m;->ad:I

    const/4 v1, 0x1

    .line 116
    iput-boolean v1, p0, Lcom/oppo/camera/d/m;->ae:Z

    .line 198
    new-instance v2, Landroid/os/ConditionVariable;

    invoke-direct {v2}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v2, p0, Lcom/oppo/camera/d/m;->af:Landroid/os/ConditionVariable;

    .line 200
    iput-object p2, p0, Lcom/oppo/camera/d/m;->ag:Landroid/os/Handler;

    .line 201
    iput-object p2, p0, Lcom/oppo/camera/d/m;->ah:Landroid/os/HandlerThread;

    .line 206
    iput-object p2, p0, Lcom/oppo/camera/d/m;->ak:Ljava/lang/String;

    const-string v2, ""

    .line 207
    iput-object v2, p0, Lcom/oppo/camera/d/m;->al:Ljava/lang/String;

    .line 209
    iput v0, p0, Lcom/oppo/camera/d/m;->am:I

    const/4 v2, -0x1

    .line 210
    iput v2, p0, Lcom/oppo/camera/d/m;->an:I

    const/4 v2, 0x2

    .line 211
    iput v2, p0, Lcom/oppo/camera/d/m;->ao:I

    .line 213
    iput-boolean v0, p0, Lcom/oppo/camera/d/m;->ap:Z

    .line 214
    iput-boolean v0, p0, Lcom/oppo/camera/d/m;->aq:Z

    .line 215
    iput-boolean v1, p0, Lcom/oppo/camera/d/m;->ar:Z

    .line 216
    iput-boolean v1, p0, Lcom/oppo/camera/d/m;->as:Z

    .line 217
    iput-boolean v0, p0, Lcom/oppo/camera/d/m;->at:Z

    .line 218
    iput-boolean v0, p0, Lcom/oppo/camera/d/m;->au:Z

    .line 219
    iput-boolean v0, p0, Lcom/oppo/camera/d/m;->av:Z

    .line 220
    iput-wide p3, p0, Lcom/oppo/camera/d/m;->aw:J

    .line 221
    iput-wide p3, p0, Lcom/oppo/camera/d/m;->ax:J

    .line 222
    iput-wide p3, p0, Lcom/oppo/camera/d/m;->ay:J

    .line 224
    iput-object p2, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    .line 225
    iput-object p2, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    .line 227
    iput-object p2, p0, Lcom/oppo/camera/d/m;->aB:Landroid/os/ParcelFileDescriptor;

    .line 228
    iput-object p2, p0, Lcom/oppo/camera/d/m;->aC:Landroid/os/AsyncTask;

    .line 229
    iput-object p2, p0, Lcom/oppo/camera/d/m;->aD:Landroid/animation/ValueAnimator;

    .line 230
    iput-object p2, p0, Lcom/oppo/camera/d/m;->aE:Lcom/oppo/camera/d/m$a;

    .line 231
    iput-wide p3, p0, Lcom/oppo/camera/d/m;->aF:J

    .line 232
    iput v0, p0, Lcom/oppo/camera/d/m;->aG:I

    .line 240
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->dt()V

    .line 241
    new-instance p3, Lcom/oppo/camera/d/m$c;

    invoke-direct {p3, p0, p2}, Lcom/oppo/camera/d/m$c;-><init>(Lcom/oppo/camera/d/m;Lcom/oppo/camera/d/m$1;)V

    iput-object p3, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    .line 243
    new-instance p2, Lcom/oppo/camera/d/m$a;

    invoke-direct {p2, p0, p1}, Lcom/oppo/camera/d/m$a;-><init>(Lcom/oppo/camera/d/m;Landroid/app/Activity;)V

    iput-object p2, p0, Lcom/oppo/camera/d/m;->aE:Lcom/oppo/camera/d/m$a;

    .line 244
    new-array p1, v2, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/d/m;->aD:Landroid/animation/ValueAnimator;

    .line 245
    iget-object p1, p0, Lcom/oppo/camera/d/m;->aD:Landroid/animation/ValueAnimator;

    const-wide/16 p2, 0x2710

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 246
    iget-object p1, p0, Lcom/oppo/camera/d/m;->aD:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/oppo/camera/d/m;->aE:Lcom/oppo/camera/d/m$a;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 248
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "CameraRecorder"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oppo/camera/d/m;->ah:Landroid/os/HandlerThread;

    .line 249
    iget-object p1, p0, Lcom/oppo/camera/d/m;->ah:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 250
    new-instance p1, Lcom/oppo/camera/d/m$1;

    iget-object p2, p0, Lcom/oppo/camera/d/m;->ah:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/oppo/camera/d/m$1;-><init>(Lcom/oppo/camera/d/m;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oppo/camera/d/m;->ag:Landroid/os/Handler;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private A(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string p1, ".mp4"

    return-object p1

    :cond_0
    const-string p1, ".3gp"

    return-object p1
.end method

.method private B(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string p1, "video/mp4"

    return-object p1

    :cond_0
    const-string p1, "video/3gpp"

    return-object p1
.end method

.method private C(I)V
    .locals 8

    .line 1740
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1741
    invoke-direct {p0, v0, v1}, Lcom/oppo/camera/d/m;->b(J)Ljava/lang/String;

    move-result-object v2

    .line 1744
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/oppo/camera/d/m;->A(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1745
    iput-object v3, p0, Lcom/oppo/camera/d/m;->al:Ljava/lang/String;

    .line 1746
    invoke-direct {p0, p1}, Lcom/oppo/camera/d/m;->B(I)Ljava/lang/String;

    move-result-object p1

    .line 1748
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->di()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/oppo/camera/d/m;->ak:Ljava/lang/String;

    .line 1749
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/oppo/camera/d/m;->ak:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1751
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "generateVideoFilename, path: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", mime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "VideoMode"

    invoke-static {v6, v5}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1753
    new-instance v5, Ljava/io/File;

    iget-object v7, p0, Lcom/oppo/camera/d/m;->ak:Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1755
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1756
    iget-object v5, p0, Lcom/oppo/camera/d/m;->ak:Ljava/lang/String;

    invoke-static {v5}, Lcom/oppo/camera/l/a;->f(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 p1, 0x0

    .line 1757
    iput-object p1, p0, Lcom/oppo/camera/d/m;->aj:Ljava/lang/String;

    const-string p1, "generateVideoFilename, Exception: mk video dir fail...."

    .line 1759
    invoke-static {v6, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1765
    :cond_0
    iput-object v4, p0, Lcom/oppo/camera/d/m;->aj:Ljava/lang/String;

    .line 1766
    new-instance v5, Landroid/content/ContentValues;

    const/4 v7, 0x7

    invoke-direct {v5, v7}, Landroid/content/ContentValues;-><init>(I)V

    iput-object v5, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    .line 1767
    iget-object v5, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    const-string v7, "title"

    invoke-virtual {v5, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1768
    iget-object v2, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    const-string v5, "_display_name"

    invoke-virtual {v2, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1769
    iget-object v2, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "datetaken"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1770
    iget-object v0, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    const-string v1, "mime_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1771
    iget-object p1, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    const-string v0, "_data"

    invoke-virtual {p1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1772
    iget-object p1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->k()I

    move-result p1

    .line 1773
    iput p1, p0, Lcom/oppo/camera/d/m;->ad:I

    .line 1774
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cS()Landroid/media/CamcorderProfile;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1775
    :goto_0
    invoke-static {v0}, La/a/a;->a(Z)V

    .line 1777
    iget-object v0, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 1778
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "resolution"

    .line 1777
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1779
    iget-object v0, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    iget v1, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "width"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1780
    iget-object v0, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    iget p1, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "height"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1782
    iget-object p1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->o()Landroid/location/Location;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1785
    iget-object v0, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "latitude"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1786
    iget-object v0, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string v1, "longitude"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 1789
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "generateVideoFilename, New video filename: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/d/m;->aj:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 4

    .line 1447
    invoke-direct {p0, p2}, Lcom/oppo/camera/d/m;->n(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1450
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "duration"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1453
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->a()Ljava/lang/String;

    move-result-object v0

    .line 1454
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cp()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/oppo/camera/d/m;->j:I

    .line 1453
    :goto_0
    invoke-static {v0, v1}, Lcom/oppo/camera/f/a;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 1454
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cO()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "title"

    .line 1453
    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1455
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "_size"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1456
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "datetaken"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1457
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->a()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/oppo/camera/d/m;->j:I

    invoke-static {v0, v1}, Lcom/oppo/camera/f/a;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "tagflags"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1458
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->dj()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_display_name"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_data"

    .line 1459
    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method static synthetic a(Lcom/oppo/camera/d/m;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/oppo/camera/d/m;->aC:Landroid/os/AsyncTask;

    return-object p1
.end method

.method private a(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2204
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2206
    invoke-static {p1, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p2

    :cond_0
    const/4 p1, 0x1

    .line 2210
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/net/Uri;)V
    .locals 3

    .line 1430
    iget-boolean v0, p0, Lcom/oppo/camera/d/m;->F:Z

    if-eqz v0, :cond_0

    .line 1431
    iget-object v0, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 1432
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1433
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "media_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "content://com.oppo.gallery3d.albumsprovider/locked_pictures"

    .line 1434
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1435
    iget-object v1, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1438
    :try_start_0
    invoke-virtual {v1, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "VideoMode"

    const-string v1, "addVideoToMediaStore, updateLockCameraAlbum, error: "

    .line 1440
    invoke-static {v0, v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/d/m;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->dc()V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/d/m;Landroid/app/Activity;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/oppo/camera/d/m;->b(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/d/m;Ljava/lang/String;)V
    .locals 0

    .line 94
    invoke-direct {p0, p1}, Lcom/oppo/camera/d/m;->o(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/d/m;Z)Z
    .locals 0

    .line 94
    iput-boolean p1, p0, Lcom/oppo/camera/d/m;->at:Z

    return p1
.end method

.method private b(J)Ljava/lang/String;
    .locals 2

    .line 1715
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 1717
    new-instance p1, Ljava/text/SimpleDateFormat;

    iget-object p2, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    .line 1718
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0f01a4

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p1, p2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 1720
    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b(Landroid/app/Activity;)V
    .locals 5

    const/4 v0, 0x0

    .line 2177
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.brightness.mode"

    .line 2176
    invoke-static {v1, v0}, Lcom/oppo/camera/debug/DebugUtil;->getDebugProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xbf

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2183
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "camera.video.exponential.brightness"

    .line 2182
    invoke-static {v1, v0}, Lcom/oppo/camera/debug/DebugUtil;->getDebugProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 2186
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "camera.video.brightness"

    .line 2185
    invoke-static {v1, v0}, Lcom/oppo/camera/debug/DebugUtil;->getDebugProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2189
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 2190
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2191
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "screen_brightness"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    int-to-float p1, p1

    int-to-float v2, v1

    cmpl-float v3, p1, v2

    if-lez v3, :cond_2

    .line 2195
    iget-object v3, p0, Lcom/oppo/camera/d/m;->aE:Lcom/oppo/camera/d/m$a;

    sub-float v4, p1, v2

    invoke-virtual {v3, v4, v2}, Lcom/oppo/camera/d/m$a;->a(FF)V

    .line 2196
    iget-object v2, p0, Lcom/oppo/camera/d/m;->aD:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 2199
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setScreenBrightness, brightness: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currBrightness: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", winParams.screenBrightness: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoMode"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Landroid/net/Uri;)V
    .locals 3

    .line 2789
    iget-object v0, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.hardware.action.NEW_VIDEO"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2791
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oppo.camera.NEW_VIDEO"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2792
    sget p1, Lcom/color/compat/content/IntentNative;->FLAG_RECEIVER_INCLUDE_BACKGROUND:I

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2793
    iget-object p1, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/oppo/camera/d/m;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->db()V

    return-void
.end method

.method static synthetic c(Lcom/oppo/camera/d/m;)Z
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->dq()Z

    move-result p0

    return p0
.end method

.method private cB()Z
    .locals 2

    .line 912
    iget v0, p0, Lcom/oppo/camera/d/m;->aG:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private cJ()Z
    .locals 2

    .line 916
    iget v0, p0, Lcom/oppo/camera/d/m;->aG:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private cK()V
    .locals 3

    .line 1055
    iget-object v0, p0, Lcom/oppo/camera/d/m;->aB:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 1057
    :try_start_0
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "VideoMode"

    const-string v2, "closeVideoFileDescriptor, Fail to close fd"

    .line 1059
    invoke-static {v1, v2, v0}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    .line 1062
    iput-object v0, p0, Lcom/oppo/camera/d/m;->aB:Landroid/os/ParcelFileDescriptor;

    :cond_0
    return-void
.end method

.method private cL()V
    .locals 4

    const-string v0, "VideoMode"

    const-string v1, "releaseVideoRecorderWrapper, Releasing media recorder."

    .line 1067
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    iget-object v0, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    if-eqz v0, :cond_1

    .line 1070
    iget-object v0, p0, Lcom/oppo/camera/d/m;->aj:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1071
    iget-object v2, p0, Lcom/oppo/camera/d/m;->ag:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1072
    iput-object v1, p0, Lcom/oppo/camera/d/m;->aj:Ljava/lang/String;

    .line 1075
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    invoke-virtual {v0}, Lcom/oppo/camera/d/n;->c()Z

    .line 1076
    iput-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    :cond_1
    return-void
.end method

.method private cX()V
    .locals 2

    .line 1081
    iget-object v0, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 1082
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1085
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/m;->aC:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 1086
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 1087
    iput-object v0, p0, Lcom/oppo/camera/d/m;->aC:Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method private cY()V
    .locals 2

    .line 1092
    iget-object v0, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1093
    iget-object v0, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private cZ()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1098
    iput-wide v0, p0, Lcom/oppo/camera/d/m;->Y:J

    .line 1099
    iput-wide v0, p0, Lcom/oppo/camera/d/m;->aw:J

    .line 1100
    iput-wide v0, p0, Lcom/oppo/camera/d/m;->ax:J

    .line 1102
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->cX()V

    .line 1104
    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    if-eqz v0, :cond_0

    .line 1105
    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->H()V

    .line 1108
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1109
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->cY()V

    .line 1111
    iget-object v0, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1112
    iget-object v0, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/oppo/camera/d/m;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->ds()V

    return-void
.end method

.method private da()Z
    .locals 11

    const-string v0, "stopVideoRecording fail, time is too short or stop fail, mVideoFilename: "

    const-string v1, "type_video"

    const-string v2, "VideoMode"

    const-string v3, "stopVideoRecording"

    .line 1117
    invoke-static {v2, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->ca()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_a

    .line 1122
    iget-wide v5, p0, Lcom/oppo/camera/d/m;->aF:J

    iget-wide v7, p0, Lcom/oppo/camera/d/m;->Y:J

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/oppo/camera/d/m;->aF:J

    const-wide/16 v5, 0x3e8

    const/4 v3, 0x1

    const/4 v7, 0x3

    .line 1126
    :try_start_0
    iget-object v8, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    invoke-virtual {v8}, Lcom/oppo/camera/d/n;->b()Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1127
    :try_start_1
    iget-object v9, p0, Lcom/oppo/camera/d/m;->aj:Ljava/lang/String;

    iput-object v9, p0, Lcom/oppo/camera/d/m;->ai:Ljava/lang/String;

    .line 1129
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "stopVideoRecording, mCurrentVideoFilename: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/oppo/camera/d/m;->ai:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", stopResult: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1140
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cE()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-wide v9, p0, Lcom/oppo/camera/d/m;->Y:J

    cmp-long v5, v9, v5

    if-ltz v5, :cond_0

    if-nez v8, :cond_2

    .line 1141
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/d/m;->aj:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    iget-object v0, p0, Lcom/oppo/camera/d/m;->aj:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1145
    iget-object v2, p0, Lcom/oppo/camera/d/m;->ag:Landroid/os/Handler;

    invoke-virtual {v2, v7, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    move v4, v3

    .line 1151
    :cond_2
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->cL()V

    .line 1153
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cp()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/m;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cE()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/oppo/camera/d/m;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_a

    .line 1154
    iget-object v0, p0, Lcom/oppo/camera/d/m;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->c(Ljava/lang/String;)V

    goto/16 :goto_2

    :catchall_0
    move-exception v3

    goto/16 :goto_1

    :catch_0
    move-exception v4

    goto :goto_0

    :catchall_1
    move-exception v4

    move v8, v3

    move-object v3, v4

    goto/16 :goto_1

    :catch_1
    move-exception v4

    move v8, v3

    .line 1132
    :goto_0
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "stopVideoRecording fail, mVideoFilename: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/oppo/camera/d/m;->aj:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9, v4}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1134
    iget-object v4, p0, Lcom/oppo/camera/d/m;->aj:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 1135
    iget-object v4, p0, Lcom/oppo/camera/d/m;->ag:Landroid/os/Handler;

    iget-object v9, p0, Lcom/oppo/camera/d/m;->aj:Ljava/lang/String;

    invoke-virtual {v4, v7, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1140
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cE()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-wide v9, p0, Lcom/oppo/camera/d/m;->Y:J

    cmp-long v4, v9, v5

    if-ltz v4, :cond_4

    if-nez v8, :cond_5

    .line 1141
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/d/m;->aj:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    iget-object v0, p0, Lcom/oppo/camera/d/m;->aj:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 1145
    iget-object v2, p0, Lcom/oppo/camera/d/m;->ag:Landroid/os/Handler;

    invoke-virtual {v2, v7, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1151
    :cond_5
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->cL()V

    .line 1153
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cp()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/m;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cE()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/d/m;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_6

    .line 1154
    iget-object v0, p0, Lcom/oppo/camera/d/m;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->c(Ljava/lang/String;)V

    :cond_6
    return v3

    .line 1140
    :goto_1
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cE()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-wide v9, p0, Lcom/oppo/camera/d/m;->Y:J

    cmp-long v4, v9, v5

    if-ltz v4, :cond_7

    if-nez v8, :cond_8

    .line 1141
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/d/m;->aj:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    iget-object v0, p0, Lcom/oppo/camera/d/m;->aj:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 1145
    iget-object v2, p0, Lcom/oppo/camera/d/m;->ag:Landroid/os/Handler;

    invoke-virtual {v2, v7, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1151
    :cond_8
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->cL()V

    .line 1153
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cp()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/m;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cE()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/oppo/camera/d/m;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_9

    .line 1154
    iget-object v0, p0, Lcom/oppo/camera/d/m;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->c(Ljava/lang/String;)V

    :cond_9
    throw v3

    :cond_a
    :goto_2
    return v4
.end method

.method private db()V
    .locals 2

    const-string v0, "VideoMode"

    const-string v1, "stopVideoRecordThread"

    .line 1215
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    iget-object v0, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1218
    iget-object v0, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1221
    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->da()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oppo/camera/d/m;->au:Z

    .line 1223
    iget-boolean v0, p0, Lcom/oppo/camera/d/m;->au:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/d/m;->ae:Z

    if-eqz v0, :cond_1

    .line 1224
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cT()Z

    .line 1227
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oppo/camera/d/b;->a(I)V

    .line 1229
    iget-object v0, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    new-instance v1, Lcom/oppo/camera/d/m$4;

    invoke-direct {v1, p0}, Lcom/oppo/camera/d/m$4;-><init>(Lcom/oppo/camera/d/m;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1254
    iget-object v0, p0, Lcom/oppo/camera/d/m;->af:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method private dc()V
    .locals 7

    const-string v0, "VideoMode"

    const-string v1, "startVideoRecordThread"

    .line 1487
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    iget-boolean v1, p0, Lcom/oppo/camera/d/m;->s:Z

    if-eqz v1, :cond_0

    .line 1490
    iget-object v0, p0, Lcom/oppo/camera/d/m;->af:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void

    .line 1494
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cp()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "type_video"

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/m;->k(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cE()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/oppo/camera/d/m;->K:Lcom/oppo/camera/e/f;

    if-eqz v2, :cond_1

    .line 1495
    iget-object v2, p0, Lcom/oppo/camera/d/m;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v2, v1}, Lcom/oppo/camera/e/f;->b(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 1499
    :try_start_0
    iget-object v3, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    invoke-virtual {v3}, Lcom/oppo/camera/d/n;->e()V

    .line 1500
    iget-object v3, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    invoke-virtual {v3}, Lcom/oppo/camera/d/n;->a()Z

    move-result v3

    .line 1502
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startVideoRecordThread, start end, result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_4

    .line 1505
    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/m;->x(I)V

    .line 1507
    iget-object v3, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1508
    iget-object v3, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1509
    iget-object v3, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1512
    :cond_2
    iget-object v3, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    const/4 v4, 0x7

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1513
    iget-object v3, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1516
    :cond_3
    iget-object v3, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1517
    :cond_4
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cE()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/oppo/camera/d/m;->F:Z

    if-eqz v3, :cond_5

    .line 1518
    iget-object v3, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1529
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/d/m;->af:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v3

    .line 1521
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startVideoRecordThread failed, mVideoFilename: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oppo/camera/d/m;->aj:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v3}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    .line 1523
    iput-boolean v0, p0, Lcom/oppo/camera/d/m;->av:Z

    const-string v3, "oppo.multimedia.record.conflict"

    .line 1524
    invoke-static {v3}, Lcom/oppo/camera/o/d;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "persist.sys.record.forbid"

    const-string v4, "0"

    .line 1525
    invoke-static {v3, v4}, Lcom/oppo/camera/debug/DebugUtil;->getDebugProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1526
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cE()Z

    move-result v3

    if-nez v3, :cond_6

    iget-boolean v3, p0, Lcom/oppo/camera/d/m;->F:Z

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    move v0, v2

    .line 1527
    :cond_7
    :goto_1
    iget-object v2, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_2
    return-void

    .line 1529
    :goto_3
    iget-object v1, p0, Lcom/oppo/camera/d/m;->af:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    throw v0
.end method

.method private dd()V
    .locals 4

    .line 1534
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cH()V

    const-string v0, "key_short_video"

    .line 1536
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/m;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1539
    iget-object v1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f06035e

    .line 1540
    invoke-direct {p0, v1}, Lcom/oppo/camera/d/m;->z(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const v1, 0x7f06035d

    .line 1542
    invoke-direct {p0, v1}, Lcom/oppo/camera/d/m;->z(I)I

    move-result v1

    .line 1545
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cU()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1546
    iget-object v2, p0, Lcom/oppo/camera/d/m;->M:Lcom/oppo/camera/ui/c;

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cN()Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/oppo/camera/ui/c;->a(Ljava/lang/Float;I)V

    .line 1550
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/oppo/camera/d/m;->ay:J

    .line 1551
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->dn()V

    .line 1553
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/m;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1554
    iget-object v0, p0, Lcom/oppo/camera/d/m;->M:Lcom/oppo/camera/ui/c;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->e(Z)V

    .line 1557
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->A()V

    const-string v0, "VideoMode"

    const-string v1, "startVideoRecordHandler end"

    .line 1559
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private de()V
    .locals 7

    .line 1591
    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->y()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1592
    :goto_0
    iput-boolean v1, p0, Lcom/oppo/camera/d/m;->at:Z

    .line 1593
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cb()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/oppo/camera/d/m;->ae:Z

    .line 1595
    iget-object v1, p0, Lcom/oppo/camera/d/m;->ag:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1596
    iget-object v1, p0, Lcom/oppo/camera/d/m;->ag:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1597
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->ds()V

    .line 1600
    :cond_1
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->do()V

    .line 1601
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->dp()V

    const/4 v1, 0x2

    const-string v3, "VideoMode"

    if-nez v0, :cond_2

    .line 1604
    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/m;->x(I)V

    const-string v0, "startVideoRecording, ret is false, so return"

    .line 1606
    invoke-static {v3, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1611
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startVideoRecording, mVideoRecorder: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1613
    iget-object v0, p0, Lcom/oppo/camera/d/m;->ag:Landroid/os/Handler;

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1615
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cV()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1616
    iget-object v0, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    const/4 v4, 0x4

    const-wide/16 v5, 0x7d0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1617
    iget-object v0, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1620
    :cond_3
    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/m;->x(I)V

    const/4 v0, 0x0

    .line 1621
    iput-object v0, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    .line 1623
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->dk()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "startVideoRecording, init FileDescriptor fail"

    .line 1624
    invoke-static {v3, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1629
    :cond_4
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->dl()V

    .line 1631
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->dg()V

    .line 1632
    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0, v2}, Lcom/oppo/camera/d/b;->a(I)V

    .line 1634
    iget-object v0, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1635
    iget-object v0, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    const-wide/16 v5, 0x2710

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1637
    iget-object v0, p0, Lcom/oppo/camera/d/m;->af:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 1639
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cE()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1640
    iget-object v0, p0, Lcom/oppo/camera/d/m;->ag:Landroid/os/Handler;

    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 1642
    :cond_5
    iget-object v0, p0, Lcom/oppo/camera/d/m;->ag:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1645
    :goto_1
    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->z()V

    .line 1647
    invoke-static {}, Lcom/oppo/camera/o/d;->y()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1648
    iget-object v0, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "oppo_is_camera_recording"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1651
    :cond_6
    iget-object v0, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const-string v0, "afterInitRecorder end"

    .line 1653
    invoke-static {v3, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private df()V
    .locals 4

    .line 1658
    iget-object v0, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1661
    iget-boolean v1, p0, Lcom/oppo/camera/d/m;->aq:Z

    const-string v2, "VideoMode"

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 1662
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    .line 1664
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resumeAudioPlayback, Not send broadcast to restore the background music: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1666
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumeAudioPlayback, send broadcast to restore the background music: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1668
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oppo.music.musicservicecommand.resume"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "command"

    const-string v2, "VideoReqMusicRestore"

    .line 1669
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1670
    iget-object v1, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private dg()V
    .locals 5

    const-string v0, "VideoMode"

    const-string v1, "pauseAudioPlayback"

    .line 1679
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1681
    iget-object v1, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    .line 1683
    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1686
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pauseAudioPlayback, Not send broadcast to pause the background music: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 1688
    iput-boolean v3, p0, Lcom/oppo/camera/d/m;->aq:Z

    :cond_0
    if-nez v1, :cond_1

    .line 1692
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pauseAudioPlayback, send broadcast to pause the background music: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1694
    iput-boolean v2, p0, Lcom/oppo/camera/d/m;->aq:Z

    .line 1695
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oppo.music.musicservicecommand.pause"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "command"

    const-string v2, "VideoReqMusicPause"

    .line 1696
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1697
    iget-object v1, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method private dh()Z
    .locals 7

    const-string v0, "VideoMode"

    const-string v1, "recDisabledReturn"

    .line 1702
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1705
    iget-boolean v0, p0, Lcom/oppo/camera/d/m;->ap:Z

    if-eqz v0, :cond_0

    .line 1706
    iget-object v1, p0, Lcom/oppo/camera/d/m;->M:Lcom/oppo/camera/ui/c;

    const v2, 0x7f0f00f4

    const/4 v3, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private di()Ljava/lang/String;
    .locals 3

    .line 1794
    sget-object v0, Lcom/oppo/camera/v;->q:Ljava/lang/String;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x2f

    if-eqz v0, :cond_0

    .line 1797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/oppo/camera/v;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1799
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/oppo/camera/v;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private dj()Ljava/lang/String;
    .locals 3

    .line 1806
    iget-object v0, p0, Lcom/oppo/camera/d/m;->al:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1807
    iget-object v0, p0, Lcom/oppo/camera/d/m;->al:Ljava/lang/String;

    const-string v1, "VID"

    const-string v2, "Slow"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/d/m;->al:Ljava/lang/String;

    .line 1810
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/m;->al:Ljava/lang/String;

    return-object v0
.end method

.method private dk()Z
    .locals 4

    .line 1836
    iget-object v0, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1838
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->cK()V

    .line 1840
    iget-object v1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->h()Z

    move-result v1

    const-string v2, "VideoMode"

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v1, "output"

    .line 1841
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 1843
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeRecorder, saveUri: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 1847
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "rw"

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/d/m;->aB:Landroid/os/ParcelFileDescriptor;

    .line 1848
    iput-object v0, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1850
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1855
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/d/m;->aB:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_2

    .line 1856
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cS()Landroid/media/CamcorderProfile;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1857
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cS()Landroid/media/CamcorderProfile;

    move-result-object v0

    iget v0, v0, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v0}, Lcom/oppo/camera/d/m;->C(I)V

    .line 1860
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/m;->aj:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "initializeRecorder, mVideoFilename is null"

    .line 1861
    invoke-static {v2, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private dl()V
    .locals 14

    const-string v0, "VideoMode"

    const-string v1, "initializeRecorder"

    .line 1871
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1873
    iget-object v0, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1877
    sget-object v1, Lcom/oppo/camera/v;->q:Ljava/lang/String;

    const-string v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    const-wide v4, 0x100000000L

    goto :goto_0

    :cond_0
    move-wide v4, v2

    .line 1879
    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const-string v1, "android.intent.extra.sizeLimit"

    .line 1880
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    :cond_1
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v6, "is_from_oppo_mms"

    .line 1884
    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 1886
    iget-object v7, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v7}, Lcom/oppo/camera/d/b;->h()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v4, "android.intent.extra.sizeLimit"

    .line 1887
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_1

    :cond_2
    move v6, v1

    .line 1891
    :cond_3
    :goto_1
    new-instance v0, Lcom/oppo/camera/d/n;

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cE()Z

    move-result v7

    invoke-direct {v0, v7}, Lcom/oppo/camera/d/n;-><init>(Z)V

    iput-object v0, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    .line 1893
    iget-object v0, p0, Lcom/oppo/camera/d/m;->ab:Ljava/lang/Object;

    monitor-enter v0

    .line 1894
    :try_start_0
    iget-object v7, p0, Lcom/oppo/camera/d/m;->aa:Landroid/view/Surface;

    if-eqz v7, :cond_4

    .line 1895
    iget-object v7, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    iget-object v8, p0, Lcom/oppo/camera/d/m;->aa:Landroid/view/Surface;

    invoke-virtual {v7, v8}, Lcom/oppo/camera/d/n;->a(Landroid/view/Surface;)V

    .line 1897
    :cond_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1899
    iget-object v0, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    iget-object v7, p0, Lcom/oppo/camera/d/m;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v7}, Lcom/oppo/camera/ui/c;->a()Lcom/oppo/camera/gl/GLRootView;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/oppo/camera/d/n;->a(Lcom/oppo/camera/gl/q;)V

    .line 1901
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cS()Landroid/media/CamcorderProfile;

    move-result-object v0

    const/4 v7, 0x1

    if-eqz v0, :cond_5

    move v8, v7

    goto :goto_2

    :cond_5
    move v8, v1

    .line 1902
    :goto_2
    invoke-static {v8}, La/a/a;->a(Z)V

    .line 1904
    iget-boolean v8, p0, Lcom/oppo/camera/d/m;->as:Z

    const/4 v9, 0x5

    if-eqz v8, :cond_6

    .line 1905
    iget-object v8, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    invoke-virtual {v8, v9}, Lcom/oppo/camera/d/n;->a(I)V

    const/4 v8, 0x3

    .line 1906
    iput v8, v0, Landroid/media/CamcorderProfile;->audioCodec:I

    if-nez v6, :cond_7

    const v8, 0x4e200

    .line 1909
    iput v8, v0, Landroid/media/CamcorderProfile;->audioBitRate:I

    goto :goto_3

    :cond_6
    const/4 v8, -0x1

    .line 1912
    iput v8, v0, Landroid/media/CamcorderProfile;->audioCodec:I

    .line 1915
    :cond_7
    :goto_3
    iget-object v8, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    const/4 v10, 0x2

    invoke-virtual {v8, v10}, Lcom/oppo/camera/d/n;->f(I)V

    .line 1917
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cO()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_9

    .line 1920
    iget-object v11, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->a()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cp()Z

    move-result v13

    if-eqz v13, :cond_8

    goto :goto_4

    :cond_8
    iget v1, p0, Lcom/oppo/camera/d/m;->j:I

    :goto_4
    invoke-static {v12, v1}, Lcom/oppo/camera/f/a;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 1921
    invoke-virtual {v1, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1920
    invoke-virtual {v11, v1}, Lcom/oppo/camera/d/n;->b(Ljava/lang/String;)V

    .line 1924
    :cond_9
    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/m;->a(Lcom/oppo/camera/d/n;)V

    .line 1926
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v1

    const/16 v8, 0x8

    if-eqz v1, :cond_12

    .line 1927
    iget-object v1, p0, Lcom/oppo/camera/d/m;->O:Landroid/content/SharedPreferences;

    iget-object v11, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    const v12, 0x7f0f019b

    .line 1928
    invoke-virtual {v11, v12}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "pref_video_codec_key"

    .line 1927
    invoke-interface {v1, v12, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v11, "H264"

    .line 1930
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1931
    iput v10, v0, Landroid/media/CamcorderProfile;->videoCodec:I

    .line 1932
    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    const/16 v9, 0x800

    invoke-virtual {v1, v8, v9}, Lcom/oppo/camera/d/n;->b(II)V

    goto :goto_5

    :cond_a
    const-string v8, "H265"

    .line 1934
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1935
    iput v9, v0, Landroid/media/CamcorderProfile;->videoCodec:I

    .line 1938
    :cond_b
    :goto_5
    iget v1, p0, Lcom/oppo/camera/d/m;->j:I

    invoke-static {v1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->az()Ljava/lang/String;

    move-result-object v1

    const-string v8, "off"

    invoke-static {v1, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1939
    iget-object v1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->k()I

    move-result v1

    if-eqz v1, :cond_d

    const/16 v8, 0xb4

    if-ne v1, v8, :cond_c

    goto :goto_6

    .line 1944
    :cond_c
    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    invoke-virtual {v1, v7}, Lcom/oppo/camera/d/n;->l(I)V

    goto :goto_7

    .line 1942
    :cond_d
    :goto_6
    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    invoke-virtual {v1, v10}, Lcom/oppo/camera/d/n;->l(I)V

    .line 1948
    :cond_e
    :goto_7
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cC()I

    move-result v1

    iput v1, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 1950
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initializeRecorder, vCodec: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", vBitRate: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", reduceBitRate: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1951
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cW()Z

    move-result v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", aBitRate: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", aCodec: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", aChannel: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", aSampleRate: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", pQuality: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Landroid/media/CamcorderProfile;->quality:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "VideoMode"

    .line 1950
    invoke-static {v7, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1956
    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/d/n;->a(Landroid/media/CamcorderProfile;)V

    .line 1958
    iget-object v1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->h()Z

    move-result v1

    if-eqz v1, :cond_10

    if-eqz v6, :cond_f

    .line 1960
    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    iget v6, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    div-int/lit8 v6, v6, 0x4

    invoke-virtual {v1, v6}, Lcom/oppo/camera/d/n;->g(I)V

    goto/16 :goto_c

    .line 1962
    :cond_f
    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    iget v6, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v1, v6}, Lcom/oppo/camera/d/n;->g(I)V

    goto/16 :goto_c

    .line 1965
    :cond_10
    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cW()Z

    move-result v6

    if-eqz v6, :cond_11

    iget v6, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    div-int/2addr v6, v10

    goto :goto_8

    :cond_11
    iget v6, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    :goto_8
    invoke-virtual {v1, v6}, Lcom/oppo/camera/d/n;->g(I)V

    goto/16 :goto_c

    .line 1969
    :cond_12
    iget-object v1, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    iput v10, v1, Landroid/media/CamcorderProfile;->fileFormat:I

    .line 1970
    iget-object v7, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    iget v1, v1, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v7, v1}, Lcom/oppo/camera/d/n;->h(I)V

    .line 1971
    iget-object v1, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cC()I

    move-result v7

    iput v7, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 1972
    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    iget-object v7, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    iget v7, v7, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v1, v7}, Lcom/oppo/camera/d/n;->i(I)V

    .line 1973
    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    iget-object v7, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    iget v7, v7, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v9, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v1, v7, v9}, Lcom/oppo/camera/d/n;->a(II)V

    .line 1974
    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    iget-object v7, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    iget v7, v7, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v1, v7}, Lcom/oppo/camera/d/n;->j(I)V

    .line 1976
    iget-object v1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->h()Z

    move-result v1

    if-eqz v1, :cond_15

    if-eqz v6, :cond_14

    .line 1978
    invoke-static {}, Lcom/oppo/camera/o/d;->y()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1979
    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    const v6, 0xfa00

    invoke-virtual {v1, v6}, Lcom/oppo/camera/d/n;->g(I)V

    goto :goto_a

    .line 1981
    :cond_13
    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    iget v6, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    div-int/lit8 v6, v6, 0x18

    invoke-virtual {v1, v6}, Lcom/oppo/camera/d/n;->g(I)V

    goto :goto_a

    .line 1984
    :cond_14
    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    iget v6, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    div-int/lit8 v6, v6, 0x4

    invoke-virtual {v1, v6}, Lcom/oppo/camera/d/n;->g(I)V

    goto :goto_a

    .line 1987
    :cond_15
    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cW()Z

    move-result v6

    if-eqz v6, :cond_16

    iget v6, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    div-int/2addr v6, v10

    goto :goto_9

    :cond_16
    iget v6, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    :goto_9
    invoke-virtual {v1, v6}, Lcom/oppo/camera/d/n;->g(I)V

    .line 1991
    :goto_a
    iget-boolean v1, p0, Lcom/oppo/camera/d/m;->as:Z

    if-eqz v1, :cond_19

    .line 1992
    iget-object v1, p0, Lcom/oppo/camera/d/m;->X:Ljava/lang/String;

    const-string v6, "video_size_cif"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/oppo/camera/d/m;->X:Ljava/lang/String;

    const-string v6, "video_size_qcif"

    .line 1993
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_b

    .line 1999
    :cond_17
    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    iget-object v6, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {v1, v6}, Lcom/oppo/camera/d/n;->b(I)V

    .line 2000
    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    iget-object v6, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {v1, v6}, Lcom/oppo/camera/d/n;->c(I)V

    .line 2001
    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    iget-object v6, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {v1, v6}, Lcom/oppo/camera/d/n;->d(I)V

    .line 2002
    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    iget-object v6, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {v1, v6}, Lcom/oppo/camera/d/n;->e(I)V

    goto :goto_c

    .line 1994
    :cond_18
    :goto_b
    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    iget-object v6, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->audioBitRate:I

    div-int/2addr v6, v8

    invoke-virtual {v1, v6}, Lcom/oppo/camera/d/n;->b(I)V

    .line 1995
    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    iget-object v6, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {v1, v6}, Lcom/oppo/camera/d/n;->c(I)V

    .line 1996
    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    iget-object v6, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->audioSampleRate:I

    div-int/2addr v6, v8

    invoke-virtual {v1, v6}, Lcom/oppo/camera/d/n;->d(I)V

    .line 1997
    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    iget-object v6, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {v1, v6}, Lcom/oppo/camera/d/n;->e(I)V

    .line 2007
    :cond_19
    :goto_c
    iget-object v1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->o()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 2010
    iget-object v6, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    double-to-float v7, v7

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    double-to-float v1, v8

    invoke-virtual {v6, v7, v1}, Lcom/oppo/camera/d/n;->a(FF)V

    :cond_1a
    const-string v1, "key_short_video"

    .line 2013
    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/m;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2014
    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    const v6, 0xea60

    invoke-virtual {v1, v6}, Lcom/oppo/camera/d/n;->k(I)V

    goto :goto_d

    .line 2016
    :cond_1b
    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    iget v6, p0, Lcom/oppo/camera/d/m;->an:I

    invoke-virtual {v1, v6}, Lcom/oppo/camera/d/n;->k(I)V

    .line 2019
    :goto_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "x"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2020
    iget-object v6, p0, Lcom/oppo/camera/d/m;->M:Lcom/oppo/camera/ui/c;

    iget v7, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v8, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-interface {v6, v7, v8}, Lcom/oppo/camera/ui/c;->a(II)V

    .line 2022
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initializeRecorder, vFPS: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", duration: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/media/CamcorderProfile;->duration:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", vSize: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2025
    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->k()I

    move-result v0

    .line 2026
    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    iget v6, p0, Lcom/oppo/camera/d/m;->j:I

    invoke-virtual {v1, v0, v6}, Lcom/oppo/camera/d/n;->c(II)V

    .line 2028
    iget-object v0, p0, Lcom/oppo/camera/d/m;->aB:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1c

    .line 2029
    iget-object v1, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/oppo/camera/d/n;->a(Ljava/io/FileDescriptor;)V

    goto :goto_e

    .line 2031
    :cond_1c
    iget-object v0, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    iget-object v1, p0, Lcom/oppo/camera/d/m;->aj:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/d/n;->a(Ljava/lang/String;)V

    .line 2034
    :goto_e
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cD()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cD()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1d

    .line 2035
    iget-object v0, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cD()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v6, v1

    invoke-virtual {v0, v6, v7}, Lcom/oppo/camera/d/n;->a(D)V

    .line 2038
    :cond_1d
    sget-object v0, Lcom/oppo/camera/v;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/oppo/camera/v;->b(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v2, v4, v2

    if-lez v2, :cond_1e

    cmp-long v2, v4, v0

    if-gez v2, :cond_1e

    move-wide v0, v4

    .line 2045
    :cond_1e
    :try_start_1
    iget-object v2, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    invoke-virtual {v2, v0, v1}, Lcom/oppo/camera/d/n;->a(J)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2050
    :catch_0
    iget-object v2, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    invoke-virtual {v2, p0}, Lcom/oppo/camera/d/n;->a(Lcom/oppo/camera/d/n$d;)V

    .line 2051
    iget-object v2, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    invoke-virtual {v2, p0}, Lcom/oppo/camera/d/n;->a(Lcom/oppo/camera/d/n$e;)V

    .line 2053
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeRecorder end, maxFileSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", requestedSizeLimit: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    .line 1897
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private dm()V
    .locals 4

    .line 2058
    iget-object v0, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    if-eqz v0, :cond_4

    .line 2059
    iget-object v0, p0, Lcom/oppo/camera/d/m;->X:Ljava/lang/String;

    const-string v1, "video_size_1080p"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x1036640

    if-eqz v0, :cond_0

    .line 2060
    iget-object v0, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    const/16 v2, 0x780

    iput v2, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v2, 0x438

    .line 2061
    iput v2, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 2062
    iput v1, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    goto :goto_0

    .line 2063
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/m;->X:Ljava/lang/String;

    const-string v2, "video_size_720p"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x2d0

    if-eqz v0, :cond_1

    .line 2064
    iget-object v0, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    const/16 v3, 0x500

    iput v3, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 2065
    iput v2, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 2066
    iput v1, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    goto :goto_0

    .line 2067
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/m;->X:Ljava/lang/String;

    const-string v1, "video_size_cif"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2068
    iget-object v0, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    const/16 v1, 0x160

    iput v1, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v1, 0x120

    .line 2069
    iput v1, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const v1, 0xafc80

    .line 2070
    iput v1, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    goto :goto_0

    .line 2071
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/d/m;->X:Ljava/lang/String;

    const-string v1, "video_size_qcif"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2072
    iget-object v0, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    const/16 v1, 0xb0

    iput v1, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v1, 0x90

    .line 2073
    iput v1, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const v1, 0x2ee00

    .line 2074
    iput v1, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    goto :goto_0

    .line 2076
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    iput v2, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v1, 0x1e0

    .line 2077
    iput v1, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const v1, 0x895440

    .line 2078
    iput v1, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    :cond_4
    :goto_0
    return-void
.end method

.method private dn()V
    .locals 4

    .line 2088
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cR()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2092
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2093
    iget-wide v2, p0, Lcom/oppo/camera/d/m;->ay:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/oppo/camera/d/m;->aw:J

    sub-long/2addr v0, v2

    .line 2094
    iput-wide v0, p0, Lcom/oppo/camera/d/m;->Y:J

    .line 2096
    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/d/m;->a(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2097
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->bT()V

    return-void

    :cond_1
    const-string v0, "key_short_video"

    .line 2101
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/m;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2102
    iget-object v0, p0, Lcom/oppo/camera/d/m;->M:Lcom/oppo/camera/ui/c;

    iget-wide v1, p0, Lcom/oppo/camera/d/m;->Y:J

    iget-boolean v3, p0, Lcom/oppo/camera/d/m;->ar:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/oppo/camera/ui/c;->a(JZ)V

    .line 2105
    :cond_2
    iget v0, p0, Lcom/oppo/camera/d/m;->am:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/oppo/camera/d/m;->am:I

    .line 2106
    iget v0, p0, Lcom/oppo/camera/d/m;->am:I

    rem-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/oppo/camera/d/m;->am:I

    .line 2108
    iget v0, p0, Lcom/oppo/camera/d/m;->am:I

    if-nez v0, :cond_3

    .line 2109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRecordingTime, mbShowRecordingIndicator: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oppo/camera/d/m;->ar:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oppo/camera/d/m;->ar:Z

    xor-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VideoMode"

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2112
    iget-boolean v0, p0, Lcom/oppo/camera/d/m;->ar:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/oppo/camera/d/m;->ar:Z

    .line 2115
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    const-wide/16 v2, 0x51

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private do()V
    .locals 2

    .line 2166
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oppo.multimedia.soundrecorder.stopRecroderNormal"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2167
    iget-object v1, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private dp()V
    .locals 2

    .line 2171
    new-instance v0, Landroid/content/Intent;

    const-string v1, "coloros.camera.record.start"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2172
    iget-object v1, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private dq()Z
    .locals 6

    const-string v0, "type_video"

    .line 2431
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/m;->k(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    const-string v0, "VideoMode"

    const-string v2, "prepareVideoSurface"

    .line 2432
    invoke-static {v0, v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2434
    invoke-direct {p0, v1}, Lcom/oppo/camera/d/m;->y(I)V

    .line 2436
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->dr()V

    const-string v0, "prepareVideoSurface"

    .line 2438
    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    .line 2440
    new-instance v0, Lcom/oppo/camera/d/n;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/oppo/camera/d/n;-><init>(Z)V

    .line 2442
    iget-object v2, p0, Lcom/oppo/camera/d/m;->ab:Ljava/lang/Object;

    monitor-enter v2

    .line 2443
    :try_start_0
    iget-object v3, p0, Lcom/oppo/camera/d/m;->aa:Landroid/view/Surface;

    if-eqz v3, :cond_0

    .line 2444
    iget-object v3, p0, Lcom/oppo/camera/d/m;->aa:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    .line 2447
    :cond_0
    invoke-static {}, Landroid/media/MediaCodec;->createPersistentInputSurface()Landroid/view/Surface;

    move-result-object v3

    iput-object v3, p0, Lcom/oppo/camera/d/m;->aa:Landroid/view/Surface;

    .line 2448
    iget-object v3, p0, Lcom/oppo/camera/d/m;->aa:Landroid/view/Surface;

    invoke-virtual {v0, v3}, Lcom/oppo/camera/d/n;->a(Landroid/view/Surface;)V

    .line 2449
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x2

    .line 2451
    invoke-virtual {v0, v2}, Lcom/oppo/camera/d/n;->f(I)V

    .line 2452
    invoke-virtual {v0, v2}, Lcom/oppo/camera/d/n;->h(I)V

    .line 2453
    iget-object v3, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v3}, Lcom/oppo/camera/d/b;->k()I

    move-result v3

    .line 2454
    iget v4, p0, Lcom/oppo/camera/d/m;->j:I

    invoke-virtual {v0, v3, v4}, Lcom/oppo/camera/d/n;->c(II)V

    .line 2455
    iget-object v3, p0, Lcom/oppo/camera/d/m;->O:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    const v5, 0x7f0f019b

    .line 2456
    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "pref_video_codec_key"

    .line 2455
    invoke-interface {v3, v5, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2458
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cD()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cD()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_1

    .line 2459
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cD()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-double v4, v4

    invoke-virtual {v0, v4, v5}, Lcom/oppo/camera/d/n;->a(D)V

    :cond_1
    const/16 v4, 0x1e

    .line 2462
    invoke-virtual {v0, v4}, Lcom/oppo/camera/d/n;->i(I)V

    .line 2463
    iget-object v4, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v5, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v0, v4, v5}, Lcom/oppo/camera/d/n;->a(II)V

    .line 2465
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepareVideoSurface videoCodec: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", videoBitRate: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VideoMode"

    invoke-static {v5, v4}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "H264"

    .line 2467
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2468
    invoke-virtual {v0, v2}, Lcom/oppo/camera/d/n;->j(I)V

    const/16 v3, 0x8

    const/16 v4, 0x800

    .line 2469
    invoke-virtual {v0, v3, v4}, Lcom/oppo/camera/d/n;->b(II)V

    .line 2471
    iget-object v3, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v0, v3}, Lcom/oppo/camera/d/n;->g(I)V

    goto :goto_0

    :cond_2
    const-string v4, "H265"

    .line 2472
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x5

    .line 2473
    invoke-virtual {v0, v3}, Lcom/oppo/camera/d/n;->j(I)V

    .line 2474
    iget-object v3, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoBitRate:I

    div-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lcom/oppo/camera/d/n;->g(I)V

    :cond_3
    :goto_0
    const/4 v3, 0x0

    :try_start_1
    const-string v4, "VideoMode"

    const-string v5, "TempMediaRecorder"

    .line 2480
    invoke-static {v4, v5}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 2482
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    if-eqz v3, :cond_4

    .line 2486
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/oppo/camera/d/n;->a(Ljava/lang/String;)V

    goto :goto_2

    .line 2488
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configSessionSurface, setOutputFile failed, tempFile: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "VideoMode"

    invoke-static {v5, v4}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2492
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Lcom/oppo/camera/d/n;->e()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v4

    .line 2494
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 2497
    :goto_3
    invoke-virtual {v0}, Lcom/oppo/camera/d/n;->c()Z

    if-eqz v3, :cond_5

    .line 2499
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2500
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/camera/l/a;->c(Ljava/lang/String;)Z

    .line 2503
    :cond_5
    invoke-direct {p0, v2}, Lcom/oppo/camera/d/m;->y(I)V

    .line 2504
    iget-object v0, p0, Lcom/oppo/camera/d/m;->af:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    const-string v0, "prepareVideoSurface"

    .line 2506
    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 2449
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_6
    :goto_4
    return v1
.end method

.method private dr()V
    .locals 11

    const-string v0, "readVideoPreferences"

    .line 2513
    invoke-static {v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;)V

    .line 2515
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->bQ()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/d/m;->X:Ljava/lang/String;

    .line 2517
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readVideoPreferences, mVideoSizeType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/d/m;->X:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoMode"

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2521
    iget v1, p0, Lcom/oppo/camera/d/m;->j:I

    invoke-static {v1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2522
    iget v1, p0, Lcom/oppo/camera/d/m;->j:I

    iget-object v3, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    const v4, 0x7f0f01ae

    .line 2523
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2522
    invoke-direct {p0, v1, v3}, Lcom/oppo/camera/d/m;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2525
    :cond_0
    iget v1, p0, Lcom/oppo/camera/d/m;->j:I

    iget-object v3, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    const v4, 0x7f0f01ad

    .line 2526
    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2525
    invoke-direct {p0, v1, v3}, Lcom/oppo/camera/d/m;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2529
    :goto_0
    invoke-direct {p0, v1}, Lcom/oppo/camera/d/m;->p(Ljava/lang/String;)I

    move-result v1

    .line 2531
    iget-object v3, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 2532
    invoke-static {}, Lcom/oppo/camera/o/d;->y()Z

    move-result v4

    .line 2533
    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    const-string v7, "is_from_oppo_mms"

    .line 2537
    invoke-virtual {v5, v7, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    :cond_1
    const-string v7, "android.intent.extra.videoQuality"

    .line 2540
    invoke-virtual {v3, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x2

    const/4 v10, 0x4

    if-eqz v8, :cond_4

    if-eqz v5, :cond_2

    if-nez v6, :cond_2

    .line 2542
    invoke-virtual {v5, v7, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v5, 0x6

    if-eq v5, v1, :cond_2

    const/4 v5, 0x5

    if-eq v5, v1, :cond_2

    const-string v1, "readVideoPreferences, EXTRA_VIDEO_QUALITY is not support, reset to QUALITY_480P"

    .line 2547
    invoke-static {v2, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v10

    :cond_2
    if-eqz v4, :cond_4

    if-eqz v6, :cond_4

    .line 2552
    iget-object v4, p0, Lcom/oppo/camera/d/m;->X:Ljava/lang/String;

    const-string v5, "video_size_cif"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v1, 0x3

    goto :goto_1

    .line 2554
    :cond_3
    iget-object v4, p0, Lcom/oppo/camera/d/m;->X:Ljava/lang/String;

    const-string v5, "video_size_qcif"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v9

    .line 2560
    :cond_4
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readVideoPreferences, quality: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "android.intent.extra.durationLimit"

    .line 2563
    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const/4 v5, -0x1

    .line 2564
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ltz v3, :cond_5

    mul-int/lit16 v3, v3, 0x3e8

    .line 2567
    iput v3, p0, Lcom/oppo/camera/d/m;->an:I

    .line 2570
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readVideoPreferences, mMaxVideoDurationInMs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oppo/camera/d/m;->an:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2573
    :cond_6
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v3

    if-nez v3, :cond_8

    .line 2574
    iget v3, p0, Lcom/oppo/camera/d/m;->j:I

    invoke-static {v3, v1}, Lcom/oppo/camera/e/e;->c(II)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2575
    iget v3, p0, Lcom/oppo/camera/d/m;->j:I

    invoke-static {v3, v1}, Lcom/oppo/camera/e/e;->a(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    goto :goto_2

    .line 2577
    :cond_7
    iget v1, p0, Lcom/oppo/camera/d/m;->j:I

    invoke-static {v1, v10}, Lcom/oppo/camera/e/e;->a(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    .line 2580
    :goto_2
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->dm()V

    goto :goto_3

    .line 2583
    :cond_8
    :try_start_0
    iget v3, p0, Lcom/oppo/camera/d/m;->j:I

    invoke-static {v3, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v1

    iput-object v1, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    const/4 v3, 0x0

    .line 2585
    iput-object v3, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    const-string v3, "readVideoPreferences, CamcorderProfile.get fail! "

    .line 2587
    invoke-static {v2, v3, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2591
    :goto_3
    iget-object v1, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    if-nez v1, :cond_9

    const-string v0, "readVideoPreferences, mProfile is null, so return..."

    .line 2592
    invoke-static {v2, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2597
    :cond_9
    iget-object v1, p0, Lcom/oppo/camera/d/m;->X:Ljava/lang/String;

    const-string v3, "video_size_4kuhd"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2598
    iget-object v1, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    const v3, 0x5f5e100

    iput v3, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    const/16 v3, 0xf00

    .line 2599
    iput v3, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    const/16 v3, 0x870

    .line 2600
    iput v3, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    const v3, 0xbb80

    .line 2601
    iput v3, v1, Landroid/media/CamcorderProfile;->audioSampleRate:I

    const v3, 0x26160

    .line 2602
    iput v3, v1, Landroid/media/CamcorderProfile;->audioBitRate:I

    .line 2603
    iput v9, v1, Landroid/media/CamcorderProfile;->audioChannels:I

    .line 2606
    :cond_a
    iget-object v1, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cC()I

    move-result v3

    iput v3, v1, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 2607
    iget-object v1, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cQ()I

    move-result v3

    iput v3, v1, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 2609
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readVideoPreferences, videoFrameWidth: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", videoFrameHeight: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", videoFrameRate: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", videoBitRate: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2613
    invoke-static {v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;)V

    return-void
.end method

.method private ds()V
    .locals 2

    const-string v0, "VideoMode"

    const-string v1, "hideHintViewShowZoom"

    .line 2617
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2619
    iget-object v0, p0, Lcom/oppo/camera/d/m;->M:Lcom/oppo/camera/ui/c;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->i(Z)V

    .line 2621
    iget-boolean v0, p0, Lcom/oppo/camera/d/m;->au:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    if-eqz v0, :cond_0

    .line 2622
    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->w()V

    .line 2623
    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0, v1}, Lcom/oppo/camera/d/b;->c(Z)V

    :cond_0
    return-void
.end method

.method private dt()V
    .locals 4

    .line 2663
    invoke-static {}, Lcom/oppo/camera/o/d;->X()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2664
    iget-object v0, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    const v1, 0x7f0f019b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2665
    iget-object v1, p0, Lcom/oppo/camera/d/m;->O:Landroid/content/SharedPreferences;

    const-string v2, "pref_video_codec_key"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "H265"

    .line 2667
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "VideoMode"

    const-string v3, "checkVideoCodecAndReset, reset video codec to default."

    .line 2668
    invoke-static {v1, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2670
    iget-object v1, p0, Lcom/oppo/camera/d/m;->O:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2671
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2672
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private du()V
    .locals 6

    .line 2713
    new-instance v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;

    iget-object v1, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;-><init>(Landroid/content/Context;)V

    .line 2714
    iget v1, p0, Lcom/oppo/camera/d/m;->j:I

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/m;->a(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mCameraId:Ljava/lang/String;

    .line 2715
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mVideoMode:Ljava/lang/String;

    .line 2716
    iget-wide v1, p0, Lcom/oppo/camera/d/m;->Y:J

    iput-wide v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mVideoTime:J

    .line 2717
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->bQ()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mVideoSizeType:Ljava/lang/String;

    .line 2718
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->av()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mFlashMode:Ljava/lang/String;

    .line 2719
    sget-object v1, Lcom/oppo/camera/v;->q:Ljava/lang/String;

    invoke-static {v1}, Lcom/oppo/camera/v;->b(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mAvaliableStorage:J

    .line 2720
    iget v1, p0, Lcom/oppo/camera/d/m;->ad:I

    iput v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mOrientation:I

    .line 2721
    iget-object v1, p0, Lcom/oppo/camera/d/m;->O:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    const v3, 0x7f0f019b

    .line 2722
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_video_codec_key"

    .line 2721
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mVideoCodec:Ljava/lang/String;

    .line 2723
    iget-wide v1, p0, Lcom/oppo/camera/d/m;->aI:J

    iput-wide v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mPreviewCaptureCostTime:J

    .line 2725
    iget-object v1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    .line 2726
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mCameraEnterType:Ljava/lang/String;

    .line 2729
    :cond_0
    iget-wide v1, p0, Lcom/oppo/camera/d/m;->aI:J

    iput-wide v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mPreviewCaptureCostTime:J

    .line 2730
    iget-object v1, p0, Lcom/oppo/camera/d/m;->O:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->bL()[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {p0, v3}, Lcom/oppo/camera/d/m;->h(I)I

    move-result v4

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2731
    iput v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mVideoFaceBeauty:I

    .line 2733
    iget v1, p0, Lcom/oppo/camera/d/m;->j:I

    invoke-static {v1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2734
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->az()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mIsMirror:Ljava/lang/String;

    .line 2737
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->bP()I

    move-result v1

    if-eqz v1, :cond_2

    const-string v2, "key_support_video_high_fps"

    .line 2739
    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/m;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2740
    iput v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mVideoFps:I

    .line 2743
    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/d/m;->O:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    const v4, 0x7f0f00f0

    .line 2744
    invoke-virtual {v2, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "pref_camera_recordlocation_key"

    .line 2743
    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    .line 2745
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mIsRecordLocation:Ljava/lang/String;

    .line 2747
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->aW()I

    move-result v1

    iput v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mSmooth:I

    const-string v1, "pref_filter_process_key"

    .line 2749
    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/m;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2750
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->F()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->bc()I

    move-result v1

    if-lez v1, :cond_3

    .line 2751
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->bc()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/m;->o(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mFilterType:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v1, "default"

    .line 2753
    iput-object v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mFilterType:Ljava/lang/String;

    .line 2757
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->o()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2758
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    const-string v1, ""

    :goto_1
    iput-object v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mLocation:Ljava/lang/String;

    const-string v1, "pref_camera_videoflashmode_key"

    .line 2760
    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/m;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "pref_camera_torch_mode_key"

    .line 2761
    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/m;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2762
    :cond_6
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->av()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mFlashMode:Ljava/lang/String;

    .line 2763
    invoke-virtual {p0, v3}, Lcom/oppo/camera/d/m;->p(I)I

    move-result v1

    iput v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mbFlashTrigger:I

    .line 2766
    :cond_7
    iget v1, p0, Lcom/oppo/camera/d/m;->j:I

    invoke-static {v1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v1

    if-nez v1, :cond_8

    .line 2767
    iget-object v1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->O()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mAeAfLock:Ljava/lang/String;

    :cond_8
    const-string v1, "pref_zoom_key"

    .line 2770
    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/m;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2771
    iget-object v1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->T()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mZoomValue:Ljava/lang/String;

    .line 2774
    :cond_9
    iget-object v1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->P()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mTouchXYValue:Ljava/lang/String;

    .line 2775
    iget-object v1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->R()I

    move-result v1

    iput v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mTouchEVValue:I

    .line 2776
    iget-object v1, p0, Lcom/oppo/camera/d/m;->O:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    const v3, 0x7f0f01bf

    .line 2777
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_volume_key_function_key"

    .line 2776
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mVolumeFunction:Ljava/lang/String;

    .line 2778
    iget-object v1, p0, Lcom/oppo/camera/d/m;->O:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    const v3, 0x7f0f016f

    .line 2779
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_sound_key"

    .line 2778
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mIsShutterVoice:Ljava/lang/String;

    .line 2780
    iget v1, p0, Lcom/oppo/camera/d/m;->n:I

    iput v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mFaceCount:I

    .line 2781
    iget v1, p0, Lcom/oppo/camera/d/m;->o:I

    iput v1, v0, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->mScreenBrightness:I

    .line 2783
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/m;->b(Lcom/oppo/camera/statistics/model/DcsMsgData;)Lcom/oppo/camera/statistics/model/DcsMsgData;

    .line 2785
    invoke-virtual {v0}, Lcom/oppo/camera/statistics/model/VideoRecordMsgData;->report()V

    return-void
.end method

.method static synthetic e(Lcom/oppo/camera/d/m;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->df()V

    return-void
.end method

.method static synthetic f(Lcom/oppo/camera/d/m;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->cZ()V

    return-void
.end method

.method static synthetic g(Lcom/oppo/camera/d/m;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lcom/oppo/camera/d/m;->au:Z

    return p0
.end method

.method static synthetic h(Lcom/oppo/camera/d/m;)Z
    .locals 0

    .line 94
    iget-boolean p0, p0, Lcom/oppo/camera/d/m;->at:Z

    return p0
.end method

.method static synthetic i(Lcom/oppo/camera/d/m;)Landroid/os/Handler;
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/oppo/camera/d/m;->ag:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic j(Lcom/oppo/camera/d/m;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->dn()V

    return-void
.end method

.method static synthetic k(Lcom/oppo/camera/d/m;)V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->dd()V

    return-void
.end method

.method private n(Ljava/lang/String;)J
    .locals 5

    const/4 v0, 0x0

    .line 1469
    :try_start_0
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1470
    :try_start_1
    invoke-virtual {v1, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    const/16 p1, 0x9

    .line 1471
    invoke-virtual {v1, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1479
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    .line 1474
    :catch_1
    :goto_0
    :try_start_2
    iget-wide v2, p0, Lcom/oppo/camera/d/m;->Y:J

    const-string p1, "VideoMode"

    .line 1476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extractMetadataDurationFromFile duration: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_0

    .line 1479
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    :cond_0
    :goto_1
    return-wide v2

    :goto_2
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    :cond_1
    throw p1
.end method

.method private o(Ljava/lang/String;)V
    .locals 6

    const-string v0, "VideoMode"

    const-string v1, "cleanupEmptyFile"

    .line 1814
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1817
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1819
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1820
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cleanupEmptyFile, Empty video file deleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private p(Ljava/lang/String;)I
    .locals 11

    .line 2222
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const-string v3, "video_size_qcif"

    const-string v4, "video_size_cif"

    const/4 v5, 0x5

    const-string v6, "video_size_480p"

    const-string v7, "video_size_720p"

    const-string v8, "video_size_1080p"

    const/4 v9, 0x6

    if-eqz v0, :cond_6

    .line 2223
    iget-object v0, p0, Lcom/oppo/camera/d/m;->X:Ljava/lang/String;

    const-string v10, "video_size_4kuhd"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    move v1, v9

    goto/16 :goto_2

    .line 2225
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/m;->X:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2227
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/m;->X:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v5

    goto/16 :goto_2

    .line 2229
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/d/m;->X:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    goto :goto_2

    .line 2233
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/d/m;->X:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 2235
    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/d/m;->X:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 2238
    :cond_5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_2

    .line 2241
    :cond_6
    iget-object v0, p0, Lcom/oppo/camera/d/m;->X:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2242
    invoke-static {v9}, Lcom/oppo/camera/e/e;->a(I)I

    move-result v1

    goto :goto_2

    .line 2243
    :cond_7
    iget-object v0, p0, Lcom/oppo/camera/d/m;->X:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2244
    invoke-static {v5}, Lcom/oppo/camera/e/e;->a(I)I

    move-result v1

    goto :goto_2

    .line 2245
    :cond_8
    iget-object v0, p0, Lcom/oppo/camera/d/m;->X:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 p1, 0xa

    .line 2246
    invoke-static {p1}, Lcom/oppo/camera/e/e;->a(I)I

    move-result v1

    goto :goto_2

    .line 2249
    :cond_9
    iget-object v0, p0, Lcom/oppo/camera/d/m;->X:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :goto_1
    move v1, v2

    goto :goto_2

    .line 2251
    :cond_a
    iget-object v0, p0, Lcom/oppo/camera/d/m;->X:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_2

    .line 2254
    :cond_b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2258
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "matchRecModeToVideoQuality, mVideoSizeType: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/d/m;->X:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", videoQuality: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoMode"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private y(I)V
    .locals 2

    .line 906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoSurfaceState, mVideoSurfaceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/d/m;->aG:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    iput p1, p0, Lcom/oppo/camera/d/m;->aG:I

    return-void
.end method

.method private z(I)I
    .locals 1

    .line 1583
    iget-object v0, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1584
    iget-object v0, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public B()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public I()V
    .locals 2

    .line 2424
    invoke-super {p0}, Lcom/oppo/camera/d/a;->I()V

    .line 2426
    iget-object v0, p0, Lcom/oppo/camera/d/m;->ag:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2427
    iget-object v0, p0, Lcom/oppo/camera/d/m;->ag:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public P()Z
    .locals 3

    .line 640
    invoke-super {p0}, Lcom/oppo/camera/d/a;->P()Z

    .line 642
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->bY()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 643
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cR()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->e()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 644
    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/m;->n(Z)V

    goto :goto_0

    .line 645
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->bX()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/d/m;->av:Z

    if-eqz v0, :cond_1

    .line 646
    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/m;->n(Z)V

    :cond_1
    :goto_0
    const-string v0, "VideoMode"

    const-string v1, "onBackPressed, isVideoRecording return"

    .line 649
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2
    return v1
.end method

.method public X()V
    .locals 2

    .line 2706
    invoke-super {p0}, Lcom/oppo/camera/d/a;->X()V

    .line 2708
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/camera/d/m;->aH:J

    const-wide/16 v0, -0x1

    .line 2709
    iput-wide v0, p0, Lcom/oppo/camera/d/m;->aI:J

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 1

    .line 296
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cR()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 297
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 298
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 300
    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    .line 301
    iget-object p1, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/4 v0, 0x6

    .line 302
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 305
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/d/m;->aD:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    .line 306
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 309
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->H()V

    :cond_2
    return-void
.end method

.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2

    .line 600
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->a(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 602
    iget-object v0, p0, Lcom/oppo/camera/d/m;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->n()Lcom/oppo/camera/e/c;

    move-result-object v0

    const-string v1, "capture.state"

    .line 603
    invoke-virtual {v0, v1}, Lcom/oppo/camera/e/c;->b(Ljava/lang/String;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 606
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 608
    iget-object v0, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    .line 610
    invoke-interface {v1}, Lcom/oppo/camera/d/b;->e()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/16 v0, 0x3ea

    .line 611
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/16 v0, 0x3eb

    .line 612
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne v0, p1, :cond_1

    .line 613
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    new-instance v0, Lcom/oppo/camera/d/m$2;

    invoke-direct {v0, p0}, Lcom/oppo/camera/d/m$2;-><init>(Lcom/oppo/camera/d/m;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method protected a(Lcom/oppo/camera/d/n;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/Object;II)V
    .locals 1

    .line 1009
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onError, what: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", extra: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoMode"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cE()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-eq p2, v0, :cond_1

    const/16 p1, -0x3ef

    if-eq p3, p1, :cond_1

    .line 1013
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cE()Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x44c

    if-eq p2, p1, :cond_1

    const/16 p1, 0x44d

    if-ne p2, p1, :cond_2

    .line 1017
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->bZ()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1018
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/m;->n(Z)V

    :cond_2
    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/Surface;",
            ">;)V"
        }
    .end annotation

    .line 2629
    iget-object v0, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    if-nez v0, :cond_0

    const-string p1, "VideoMode"

    const-string v0, "configSessionSurface, mProfile is null"

    .line 2630
    invoke-static {p1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "type_video"

    .line 2635
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/m;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2636
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configSessionSurface, mVideoSurfaceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/d/m;->aG:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2638
    iget-object v0, p0, Lcom/oppo/camera/d/m;->af:Landroid/os/ConditionVariable;

    monitor-enter v0

    .line 2639
    :try_start_0
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->cB()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2640
    iget-object v1, p0, Lcom/oppo/camera/d/m;->ag:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/oppo/camera/d/m;->cJ()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "VideoMode"

    const-string v3, "configSessionSurface, send MSG_PREPARE_VIDEO_SURFACE"

    .line 2641
    invoke-static {v1, v3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2643
    iget-object v1, p0, Lcom/oppo/camera/d/m;->ag:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2646
    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/d/m;->af:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 2647
    iget-object v1, p0, Lcom/oppo/camera/d/m;->af:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    .line 2649
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 2652
    invoke-direct {p0, v0}, Lcom/oppo/camera/d/m;->y(I)V

    .line 2654
    iget-object v1, p0, Lcom/oppo/camera/d/m;->ab:Ljava/lang/Object;

    monitor-enter v1

    .line 2655
    :try_start_1
    iget-object v0, p0, Lcom/oppo/camera/d/m;->aa:Landroid/view/Surface;

    if-eqz v0, :cond_3

    const-string v0, "type_video"

    .line 2656
    iget-object v2, p0, Lcom/oppo/camera/d/m;->aa:Landroid/view/Surface;

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2658
    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 2649
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_4
    :goto_0
    return-void
.end method

.method protected a(Z)V
    .locals 2

    const-string p1, "VideoMode"

    const-string v0, "onResume"

    .line 377
    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 379
    iput-wide v0, p0, Lcom/oppo/camera/d/m;->aF:J

    return-void
.end method

.method protected a([BZ)V
    .locals 1

    .line 2684
    iget-object p1, p0, Lcom/oppo/camera/d/m;->M:Lcom/oppo/camera/ui/c;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/oppo/camera/ui/c;->d(ZZ)V

    return-void
.end method

.method protected a(J)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 1258
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "VideoMode"

    if-nez v0, :cond_6

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 1264
    :cond_0
    invoke-static {}, Lcom/oppo/camera/v;->e()Ljava/lang/String;

    move-result-object v0

    const-string v3, "on"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    invoke-static {v3}, Lcom/oppo/camera/v;->b(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1265
    iput-object v4, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    .line 1266
    iput-object v4, p0, Lcom/oppo/camera/d/m;->ai:Ljava/lang/String;

    .line 1268
    iget-object p1, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    if-eqz p1, :cond_1

    .line 1269
    invoke-virtual {p1}, Landroid/content/ContentValues;->clear()V

    .line 1270
    iput-object v4, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    :cond_1
    return v1

    :cond_2
    const-string v0, "oppo.camera.save.originalvideofile"

    const-string v1, "false"

    .line 1276
    invoke-static {v0, v1}, Lcom/oppo/camera/debug/DebugUtil;->debugPropertyEnabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteUpdateSlowVideoToMediaStore save originalVideoFileName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    iget-object v0, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1280
    invoke-static {v5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1279
    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1282
    :cond_3
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/m;->m(Ljava/lang/String;)V

    .line 1285
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/d/m;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->k()V

    .line 1287
    iget-object v0, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1289
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteUpdateVideo, originalVideoFileName: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",  compiledSlowVideoFileName: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1292
    iget-object p1, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/d/m;->a(Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    .line 1293
    invoke-static {}, Lcom/oppo/camera/v;->a()Landroid/net/Uri;

    move-result-object p1

    iget-object p2, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    .line 1295
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "deleteUpdateVideo, mCurrentVideoUri: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    iget-object p1, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    iget-object p2, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-gtz p1, :cond_4

    .line 1300
    invoke-static {}, Lcom/oppo/camera/v;->a()Landroid/net/Uri;

    move-result-object p1

    iget-object p2, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    .line 1302
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "deleteUpdateVideo, insert, mCurrentVideoUri: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1304
    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    iget-object p2, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    invoke-virtual {v0, p1, p2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1307
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "deleteUpdateSlowVideoToMediaStore mbDisplayOnLock: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/oppo/camera/d/m;->F:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    iget-object p1, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/oppo/camera/d/m;->a(Landroid/net/Uri;)V

    .line 1310
    iget-object p1, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/oppo/camera/d/m;->b(Landroid/net/Uri;)V

    .line 1312
    iget-object p1, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    if-eqz p1, :cond_5

    .line 1313
    invoke-virtual {p1}, Landroid/content/ContentValues;->clear()V

    .line 1314
    iput-object v4, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    :cond_5
    return v3

    :cond_6
    :goto_2
    const-string p1, "deleteUpdateVideo return! File name is null"

    .line 1259
    invoke-static {v2, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public an()V
    .locals 1

    .line 586
    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    if-eqz v0, :cond_0

    .line 587
    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->x()V

    :cond_0
    return-void
.end method

.method public ap()V
    .locals 3

    .line 593
    iget-object v0, p0, Lcom/oppo/camera/d/m;->M:Lcom/oppo/camera/ui/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 594
    iget-object v0, p0, Lcom/oppo/camera/d/m;->M:Lcom/oppo/camera/ui/c;

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/oppo/camera/ui/c;->b(IZ)V

    :cond_0
    return-void
.end method

.method public at()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public au()I
    .locals 1

    .line 481
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->bY()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    return v0
.end method

.method public b(Lcom/oppo/camera/e/h;)Landroid/util/Size;
    .locals 2

    .line 625
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cS()Landroid/media/CamcorderProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 630
    new-instance p1, Landroid/util/Size;

    iget v1, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {p1, v1, v0}, Landroid/util/Size;-><init>(II)V

    return-object p1

    .line 635
    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->b(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;II)V
    .locals 0

    const-string p1, "VideoMode"

    const-string p3, "onInfo"

    .line 1026
    invoke-static {p1, p3}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    const/16 p3, 0x320

    if-ne p2, p3, :cond_0

    .line 1029
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cR()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1030
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/m;->n(Z)V

    goto :goto_0

    :cond_0
    const/16 p3, 0x321

    if-ne p2, p3, :cond_1

    .line 1033
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cR()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1034
    iput-boolean p1, p0, Lcom/oppo/camera/d/m;->at:Z

    .line 1035
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/m;->n(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected b([BZ)V
    .locals 0

    .line 2679
    iget-object p1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->f()V

    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_camera_videoflashmode_key"

    .line 486
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_video_filter_menu"

    .line 487
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_none_sat_ultra_wide_angle_key"

    .line 488
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_filter_menu"

    .line 489
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 493
    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->b(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 490
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/m;->d(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected bL()[Ljava/lang/String;
    .locals 1

    .line 2821
    sget-object v0, Lcom/oppo/camera/ui/c;->b_:[Ljava/lang/String;

    return-object v0
.end method

.method public bP()I
    .locals 3

    .line 389
    iget-object v0, p0, Lcom/oppo/camera/d/m;->O:Landroid/content/SharedPreferences;

    const v1, 0x7f0f01a2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/d/m;->j:I

    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/oppo/camera/d/m;->O:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    .line 391
    invoke-virtual {v2, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_video_fps_key"

    .line 390
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public bQ()Ljava/lang/String;
    .locals 6

    .line 2120
    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->h()Z

    move-result v0

    const-string v1, "VideoMode"

    if-eqz v0, :cond_6

    .line 2125
    iget-object v0, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "video_size_480p"

    if-eqz v0, :cond_4

    const/4 v3, 0x0

    const-string v4, "is_from_oppo_mms"

    .line 2128
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x4

    if-nez v3, :cond_0

    const-string v5, "android.intent.extra.videoQuality"

    .line 2131
    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    :cond_0
    const/4 v5, 0x6

    if-ne v4, v5, :cond_1

    const-string v4, "video_size_1080p"

    goto :goto_0

    :cond_1
    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    const-string v4, "video_size_720p"

    goto :goto_0

    :cond_2
    move-object v4, v2

    .line 2142
    :goto_0
    invoke-static {}, Lcom/oppo/camera/o/d;->y()Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    const-string v4, "mms_size_type"

    .line 2143
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v4

    goto :goto_1

    :cond_4
    move-object v0, v2

    .line 2147
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    return-object v0

    .line 2150
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVideoSizeType, sizeType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 2156
    :cond_6
    iget-object v0, p0, Lcom/oppo/camera/d/m;->O:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_7

    .line 2157
    iget-object v0, p0, Lcom/oppo/camera/d/m;->O:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_video_size_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_7
    const-string v0, "getVideoSizeType, mPreferences is null!"

    .line 2159
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2161
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cG()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bR()V
    .locals 3

    const-string v0, "VideoMode"

    const-string v1, "deleteCurrentVideo"

    .line 701
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    iget-object v0, p0, Lcom/oppo/camera/d/m;->ai:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 705
    iget-object v1, p0, Lcom/oppo/camera/d/m;->ag:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v0, 0x0

    .line 706
    iput-object v0, p0, Lcom/oppo/camera/d/m;->ai:Ljava/lang/String;

    .line 708
    iget-object v1, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 709
    iget-object v1, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 710
    iput-object v0, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    .line 714
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/m;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->k()V

    return-void
.end method

.method public bS()V
    .locals 3

    .line 719
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 720
    iget-object v1, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cS()Landroid/media/CamcorderProfile;

    move-result-object v2

    iget v2, v2, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-direct {p0, v2}, Lcom/oppo/camera/d/m;->B(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 721
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "IsFromOppoViewCamera"

    .line 722
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 725
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 727
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPlayVideoActivity, Couldn\'t view video: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoMode"

    invoke-static {v2, v1, v0}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public bT()V
    .locals 8

    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoShutterButtonClick, mMediaRecorderState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/d/m;->ao:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCameraInterface.isAnimationRunning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    .line 747
    invoke-interface {v1}, Lcom/oppo/camera/d/b;->F()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMode"

    .line 746
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    iget-boolean v0, p0, Lcom/oppo/camera/d/m;->s:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    .line 750
    invoke-interface {v0}, Lcom/oppo/camera/d/b;->e()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a

    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    .line 751
    invoke-interface {v0}, Lcom/oppo/camera/d/b;->F()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    .line 752
    invoke-interface {v0}, Lcom/oppo/camera/d/b;->G()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    .line 753
    invoke-interface {v0}, Lcom/oppo/camera/d/b;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 762
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cc()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "onVideoShutterButtonClick, compiling video!"

    .line 763
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 768
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "onVideoShutterButtonClick, being capture mode change!"

    .line 769
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 774
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->N()I

    move-result v0

    invoke-static {v0}, Lcom/oppo/camera/v;->a(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 775
    iget-object v0, p0, Lcom/oppo/camera/d/m;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->k()V

    return-void

    .line 779
    :cond_3
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->bY()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->D()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "onVideoShutterButtonClick, memory or storage is not enough"

    .line 780
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    iget-object v2, p0, Lcom/oppo/camera/d/m;->M:Lcom/oppo/camera/ui/c;

    const v3, 0x7f0f0190

    const/4 v4, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    return-void

    .line 787
    :cond_4
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->bX()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 793
    :cond_5
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->dh()Z

    move-result v0

    if-eqz v0, :cond_6

    return-void

    :cond_6
    const-string v0, "onVideoShutterButtonClick, CameraTest Click Video Button"

    .line 797
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cR()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 800
    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/m;->n(Z)V

    goto :goto_0

    .line 801
    :cond_7
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->bZ()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 802
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oppo/camera/d/m;->aH:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oppo/camera/d/m;->aI:J

    .line 803
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->de()V

    :cond_8
    :goto_0
    return-void

    :cond_9
    :goto_1
    const-string v0, "onVideoShutterButtonClick, starting or error processing"

    .line 788
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 754
    :cond_a
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoShutterButtonClick, mbPaused: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oppo/camera/d/m;->s:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", CameraState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    .line 755
    invoke-interface {v2}, Lcom/oppo/camera/d/b;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isAnimationRunning: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v2}, Lcom/oppo/camera/d/b;->F()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isBlurAnimRunning: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    .line 756
    invoke-interface {v2}, Lcom/oppo/camera/d/b;->G()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mCameraInterface.getSwitchingCameraState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    .line 757
    invoke-interface {v2}, Lcom/oppo/camera/d/b;->u()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 754
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bU()V
    .locals 4

    .line 809
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cR()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->bX()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/oppo/camera/d/m;->aj:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "VideoMode"

    const-string v1, "notifyScanVideoFile, sendBroadcast() success"

    .line 812
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public bV()Z
    .locals 7

    const-string v0, "VideoMode"

    const-string v1, "onVideoRecordingPause"

    .line 865
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cR()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "onVideoRecordingPause, VideoRecord is not started, so return"

    .line 868
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 873
    :cond_0
    iget-wide v3, p0, Lcom/oppo/camera/d/m;->Y:J

    const-wide/16 v5, 0x3e8

    cmp-long v1, v3, v5

    if-gez v1, :cond_1

    const-string v1, "onVideoRecordingPause, mRecordingTotalTime less then 1s, so return"

    .line 874
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 879
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 880
    iget-object v0, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 883
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/d/m;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v2}, Lcom/oppo/camera/ui/c;->e(Z)V

    .line 884
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oppo/camera/d/m;->ax:J

    .line 885
    iget-object v0, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    invoke-virtual {v0}, Lcom/oppo/camera/d/n;->g()Z

    move-result v0

    return v0
.end method

.method public bW()Z
    .locals 6

    const-string v0, "VideoMode"

    const-string v1, "onVideoRecordingResume"

    .line 890
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cR()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "onVideoRecordingResume, VideoRecord is not started, so return"

    .line 893
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 899
    iget-object v0, p0, Lcom/oppo/camera/d/m;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->e(Z)V

    .line 900
    iget-wide v0, p0, Lcom/oppo/camera/d/m;->aw:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/oppo/camera/d/m;->ax:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/oppo/camera/d/m;->aw:J

    const-wide/16 v0, 0x0

    .line 901
    iput-wide v0, p0, Lcom/oppo/camera/d/m;->ax:J

    .line 902
    iget-object v0, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    invoke-virtual {v0}, Lcom/oppo/camera/d/n;->f()Z

    move-result v0

    return v0
.end method

.method public bX()Z
    .locals 2

    .line 935
    iget v0, p0, Lcom/oppo/camera/d/m;->ao:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bY()Z
    .locals 1

    .line 940
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cR()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->bX()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public bZ()Z
    .locals 2

    .line 945
    iget v0, p0, Lcom/oppo/camera/d/m;->ao:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected be()Ljava/lang/String;
    .locals 1

    const-string v0, "key_video_filter_index"

    return-object v0
.end method

.method protected cC()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method protected cD()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected cE()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected cF()V
    .locals 0

    return-void
.end method

.method public cG()Ljava/lang/String;
    .locals 2

    .line 455
    iget-object v0, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    const v1, 0x7f0f01b7

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected cH()V
    .locals 0

    return-void
.end method

.method protected cI()V
    .locals 0

    return-void
.end method

.method protected cM()Z
    .locals 4

    .line 315
    iget-object v0, p0, Lcom/oppo/camera/d/m;->O:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    const v2, 0x7f0f00cb

    .line 316
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_videoflashmode_key"

    .line 315
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "torch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {p0, v2}, Lcom/oppo/camera/d/m;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oppo/camera/d/m;->j:I

    .line 318
    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/m;->O:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    .line 323
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0196

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_torch_mode_key"

    .line 322
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "on"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "func_torch_soft_light"

    .line 324
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/m;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oppo/camera/d/m;->j:I

    .line 325
    invoke-static {v0}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public cN()Ljava/lang/Float;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected cO()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected cP()Ljava/lang/String;
    .locals 1

    .line 467
    iget-object v0, p0, Lcom/oppo/camera/d/m;->ai:Ljava/lang/String;

    return-object v0
.end method

.method protected cQ()I
    .locals 1

    .line 471
    iget-object v0, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    return v0
.end method

.method protected cR()Z
    .locals 1

    .line 930
    iget v0, p0, Lcom/oppo/camera/d/m;->ao:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public cS()Landroid/media/CamcorderProfile;
    .locals 1

    .line 954
    iget-object v0, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    return-object v0
.end method

.method protected cT()Z
    .locals 13
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    const-string v0, "CameraTest Video Flie Save End, mCurrentVideoUri: "

    const-string v1, "VideoMode"

    const-string v2, "addVideoToMediaStore"

    .line 1322
    invoke-static {v1, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    invoke-static {}, Lcom/oppo/camera/v;->e()Ljava/lang/String;

    move-result-object v2

    const-string v3, "on"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-static {v3}, Lcom/oppo/camera/v;->b(Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1327
    iput-object v4, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    .line 1328
    iput-object v4, p0, Lcom/oppo/camera/d/m;->ai:Ljava/lang/String;

    .line 1330
    iget-object v0, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    if-eqz v0, :cond_0

    .line 1331
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1332
    iput-object v4, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    :cond_0
    const-string v0, "addVideoToMediaStore, Exception: sdcard has removed, so not add to mediastore."

    .line 1337
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 1342
    :cond_1
    iget-object v2, p0, Lcom/oppo/camera/d/m;->aB:Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x0

    if-nez v2, :cond_b

    iget-object v2, p0, Lcom/oppo/camera/d/m;->ai:Ljava/lang/String;

    if-eqz v2, :cond_b

    .line 1343
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cO()Ljava/lang/String;

    move-result-object v2

    .line 1345
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1346
    iget-object v6, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->a()Ljava/lang/String;

    move-result-object v7

    .line 1347
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cp()Z

    move-result v8

    if-eqz v8, :cond_2

    move v8, v5

    goto :goto_0

    :cond_2
    iget v8, p0, Lcom/oppo/camera/d/m;->j:I

    .line 1346
    :goto_0
    invoke-static {v7, v8}, Lcom/oppo/camera/f/a;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 1347
    invoke-virtual {v7, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "title"

    .line 1346
    invoke-virtual {v6, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    :cond_3
    iget-object v2, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/oppo/camera/d/m;->ai:Ljava/lang/String;

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "_size"

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1351
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1352
    iget-object v2, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "datetaken"

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1353
    iget-object v2, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->a()Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/oppo/camera/d/m;->j:I

    invoke-static {v6, v7}, Lcom/oppo/camera/f/a;->a(Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "tagflags"

    invoke-virtual {v2, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1355
    iget-object v2, p0, Lcom/oppo/camera/d/m;->ai:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/oppo/camera/d/m;->n(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-lez v2, :cond_4

    .line 1358
    iget-object v2, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v9, "duration"

    invoke-virtual {v2, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1361
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addVideoToMediaStore, duration: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", mCurrentVideoFilename: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/oppo/camera/d/m;->ai:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    :try_start_0
    iget-object v2, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    const-string v6, "_display_name"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1368
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addVideoToMediaStore, displayname: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_5

    .line 1371
    iget-object v6, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {}, Lcom/oppo/camera/v;->a()Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    const-string v10, "_display_name=  ?"

    new-array v11, v3, [Ljava/lang/String;

    aput-object v2, v11, v5

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_5
    move-object v2, v4

    :goto_1
    if-nez v2, :cond_6

    .line 1376
    :try_start_1
    iget-object v6, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {}, Lcom/oppo/camera/v;->a()Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    .line 1379
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addVideoToMediaStore, no popwindows mCurrentVideoUri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1381
    :cond_6
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "_id"

    .line 1382
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 1383
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1384
    invoke-static {}, Lcom/oppo/camera/v;->a()Landroid/net/Uri;

    move-result-object v7

    int-to-long v8, v6

    invoke-static {v7, v8, v9}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    .line 1386
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addVideoToMediaStore, popwindows mCurrentVideoUri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    iget-object v6, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    iget-object v8, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    invoke-virtual {v6, v7, v8, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 1390
    :cond_7
    iget-object v6, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {}, Lcom/oppo/camera/v;->a()Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    .line 1393
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addVideoToMediaStore, no popwindows else mCurrentVideoUri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1399
    :goto_2
    iget-object v6, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    invoke-direct {p0, v6}, Lcom/oppo/camera/d/m;->a(Landroid/net/Uri;)V

    .line 1400
    iget-object v6, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    invoke-direct {p0, v6}, Lcom/oppo/camera/d/m;->b(Landroid/net/Uri;)V

    .line 1402
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addVideoToMediaStore, Video mCurrentVideoUri: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_8

    .line 1413
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1416
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_0
    move-exception v5

    goto :goto_3

    :catchall_0
    move-exception v2

    move-object v3, v2

    move-object v2, v4

    goto :goto_4

    :catch_1
    move-exception v2

    move-object v5, v2

    move-object v2, v4

    :goto_3
    :try_start_2
    const-string v6, "addVideoToMediaStore, failed to add video to media store"

    .line 1406
    invoke-static {v1, v6, v5}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1408
    iput-object v4, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    .line 1409
    iput-object v4, p0, Lcom/oppo/camera/d/m;->ai:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_9

    .line 1413
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1416
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :catchall_1
    move-exception v3

    :goto_4
    if-eqz v2, :cond_a

    .line 1413
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1416
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    throw v3

    :cond_b
    :goto_5
    move v3, v5

    .line 1420
    :goto_6
    iget-object v0, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    if-eqz v0, :cond_c

    .line 1421
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1422
    iput-object v4, p0, Lcom/oppo/camera/d/m;->aA:Landroid/content/ContentValues;

    .line 1425
    :cond_c
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->du()V

    return v3
.end method

.method protected cU()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected cV()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected cW()Z
    .locals 3

    .line 1826
    iget-object v0, p0, Lcom/oppo/camera/d/m;->X:Ljava/lang/String;

    const-string v1, "video_size_1080p"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/m;->O:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    const v2, 0x7f0f019b

    .line 1828
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_video_codec_key"

    .line 1827
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "H265"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public ca()Z
    .locals 2

    .line 950
    iget v0, p0, Lcom/oppo/camera/d/m;->ao:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ck()J
    .locals 2

    .line 2322
    iget-wide v0, p0, Lcom/oppo/camera/d/m;->aF:J

    return-wide v0
.end method

.method public cl()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public d(ZZ)V
    .locals 4

    .line 818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleStartError, fromBroadcast: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showDialog: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    iget-object v0, p0, Lcom/oppo/camera/d/m;->ag:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oppo/camera/d/m;->aj:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 822
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cE()Z

    move-result v0

    if-nez v0, :cond_0

    .line 823
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->cL()V

    .line 826
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->H()V

    .line 828
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->bX()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cR()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 829
    :cond_1
    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/m;->n(Z)V

    :cond_2
    const/4 v0, 0x5

    if-eqz p1, :cond_4

    .line 833
    iget-object p1, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    if-eqz p1, :cond_3

    .line 834
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 837
    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 839
    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/d/m;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1}, Lcom/oppo/camera/ui/c;->l()V

    .line 841
    sget-object p1, Lcom/oppo/camera/v;->q:Ljava/lang/String;

    const-string v3, "on"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/oppo/camera/v;->f()Z

    move-result p1

    if-nez p1, :cond_5

    .line 842
    sput v0, Lcom/oppo/camera/v;->r:I

    const-string p1, "invalid"

    .line 843
    sput-object p1, Lcom/oppo/camera/v;->q:Ljava/lang/String;

    .line 844
    sput v2, Lcom/oppo/camera/v;->s:I

    .line 845
    iget-object p1, p0, Lcom/oppo/camera/d/m;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1}, Lcom/oppo/camera/ui/c;->k()V

    .line 846
    iput-boolean v1, p0, Lcom/oppo/camera/d/m;->av:Z

    return-void

    :cond_5
    if-eqz p2, :cond_6

    .line 851
    iget-object p1, p0, Lcom/oppo/camera/d/m;->M:Lcom/oppo/camera/ui/c;

    new-instance p2, Lcom/oppo/camera/d/m$3;

    invoke-direct {p2, p0}, Lcom/oppo/camera/d/m$3;-><init>(Lcom/oppo/camera/d/m;)V

    invoke-interface {p1, p2}, Lcom/oppo/camera/ui/c;->a(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 860
    :cond_6
    :goto_0
    iput-boolean v1, p0, Lcom/oppo/camera/d/m;->av:Z

    return-void
.end method

.method public d(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "pref_camera_slogan_key"

    .line 531
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "pref_continuous_focus_key"

    .line 535
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 536
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->bY()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 537
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->bX()Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    :cond_1
    const-string v0, "pref_support_recording_capture"

    .line 541
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "pref_video_size_key"

    .line 542
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "pref_video_codec_key"

    .line 543
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "pref_video_ratio_key"

    .line 544
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "key_support_fovc"

    .line 548
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 549
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result p1

    return p1

    :cond_3
    const-string v0, "key_support_zsl"

    .line 552
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    const-string v0, "key_support_video_recorder"

    .line 556
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    const-string v0, "pref_video_filter_menu"

    .line 560
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    const-string v0, "pref_filter_menu"

    .line 564
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p1, "pref_filter_process_key"

    .line 565
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/m;->d(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_7
    const-string v0, "func_filter_vignette"

    .line 568
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    return v1

    .line 572
    :cond_8
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_9
    :goto_0
    return v2
.end method

.method protected d(I)[I
    .locals 1

    const-string v0, "pref_video_filter_menu"

    .line 498
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/m;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 499
    sget-object p1, Lcom/oppo/camera/ui/preview/a/d;->j:[I

    return-object p1

    .line 502
    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->d(I)[I

    move-result-object p1

    return-object p1
.end method

.method public e(Z)V
    .locals 1

    .line 2414
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->e(Z)V

    if-nez p1, :cond_0

    .line 2417
    iget-object p1, p0, Lcom/oppo/camera/d/m;->ag:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 2418
    iget-object p1, p0, Lcom/oppo/camera/d/m;->ag:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method protected e(I)[Ljava/lang/String;
    .locals 1

    const-string v0, "pref_video_filter_menu"

    .line 507
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/m;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    sget-object p1, Lcom/oppo/camera/ui/preview/a/d;->i:[Ljava/lang/String;

    return-object p1

    .line 511
    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->e(I)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public f(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_camera_timer_shutter_key"

    .line 577
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_photo_ratio_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 581
    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->f(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public g()Lcom/oppo/camera/ui/control/c;
    .locals 2

    .line 439
    invoke-super {p0}, Lcom/oppo/camera/d/a;->g()Lcom/oppo/camera/ui/control/c;

    move-result-object v0

    const-string v1, "button_color_inside_red"

    .line 440
    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/control/c;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method protected h(I)I
    .locals 2

    const-string v0, "func_face_beauty_common"

    .line 2802
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/m;->d(Ljava/lang/String;)Z

    move-result v0

    const v1, -0x186a0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    .line 2803
    iget p1, p0, Lcom/oppo/camera/d/m;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2804
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->aY()Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    const/16 p1, 0x28

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    const-string v0, "func_face_beauty_custom"

    .line 2812
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/m;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2813
    sget-object v0, Lcom/oppo/camera/d/m;->f:[I

    aget p1, v0, p1

    return p1

    :cond_3
    return v1
.end method

.method protected h()V
    .locals 3

    const-string v0, "VideoMode"

    const-string v1, "onPause"

    .line 338
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cF()V

    const/4 v0, 0x0

    .line 341
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/m;->j(Z)V

    .line 343
    iget-object v1, p0, Lcom/oppo/camera/d/m;->ag:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 345
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/m;->i(Z)V

    .line 347
    iget-object v1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    if-eqz v1, :cond_0

    .line 348
    iget-object v1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->H()V

    .line 351
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 353
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->ca()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 354
    iget-object v1, p0, Lcom/oppo/camera/d/m;->af:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    .line 356
    iget-object v1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    if-eqz v1, :cond_1

    .line 357
    iget-object v1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->C()V

    .line 360
    :cond_1
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->df()V

    .line 361
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->cZ()V

    .line 362
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cI()V

    .line 364
    iget-object v1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    if-eqz v1, :cond_2

    .line 365
    iget-object v1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    iget-boolean v2, p0, Lcom/oppo/camera/d/m;->au:Z

    invoke-interface {v1, v2}, Lcom/oppo/camera/d/b;->d(Z)V

    :cond_2
    const/4 v1, 0x2

    .line 368
    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/m;->x(I)V

    .line 371
    :cond_3
    iput-boolean v0, p0, Lcom/oppo/camera/d/m;->av:Z

    .line 372
    invoke-direct {p0, v0}, Lcom/oppo/camera/d/m;->y(I)V

    return-void
.end method

.method protected i()V
    .locals 0

    return-void
.end method

.method public i(Z)V
    .locals 2

    .line 659
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->bX()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VideoMode"

    const-string v1, "forceStopVideoRecording, mRecordSig.block"

    .line 660
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    iget-object v1, p0, Lcom/oppo/camera/d/m;->af:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    const-string v1, "forceStopVideoRecording, mRecordSig.block X"

    .line 664
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cR()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->bX()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 668
    :cond_1
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/m;->n(Z)V

    :cond_2
    return-void
.end method

.method protected j()V
    .locals 3

    const-string v0, "VideoMode"

    const-string v1, "onDestroy"

    .line 399
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/oppo/camera/d/m;->ah:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 403
    iput-object v1, p0, Lcom/oppo/camera/d/m;->ah:Landroid/os/HandlerThread;

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 407
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 408
    iput-object v1, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/d/m;->ab:Ljava/lang/Object;

    monitor-enter v0

    .line 412
    :try_start_0
    iget-object v2, p0, Lcom/oppo/camera/d/m;->aa:Landroid/view/Surface;

    if-eqz v2, :cond_2

    .line 413
    iget-object v2, p0, Lcom/oppo/camera/d/m;->aa:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 414
    iput-object v1, p0, Lcom/oppo/camera/d/m;->aa:Landroid/view/Surface;

    .line 416
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 418
    iput-object v1, p0, Lcom/oppo/camera/d/m;->Z:Landroid/media/CamcorderProfile;

    .line 419
    iput-object v1, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    return-void

    :catchall_0
    move-exception v1

    .line 416
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public j(Z)V
    .locals 0

    .line 679
    iput-boolean p1, p0, Lcom/oppo/camera/d/m;->ap:Z

    return-void
.end method

.method protected k()V
    .locals 3

    .line 424
    iget-object v0, p0, Lcom/oppo/camera/d/m;->M:Lcom/oppo/camera/ui/c;

    iget-object v1, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    const v2, 0x7f0f00a3

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public k(Z)V
    .locals 2

    .line 684
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    .line 689
    iget-object v1, p0, Lcom/oppo/camera/d/m;->az:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 690
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 695
    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {v1, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 696
    iget-object p1, p0, Lcom/oppo/camera/d/m;->N:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public k(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "type_still_capture"

    .line 2392
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const-string v0, "type_still_capture_yuv_main"

    .line 2396
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "type_video"

    .line 2400
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 2404
    :cond_2
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->k(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected l(Ljava/lang/String;)Landroid/util/Size;
    .locals 5

    const-string v0, "video_size_4kuhd"

    .line 962
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x2d0

    const/16 v2, 0x438

    const/16 v3, 0x780

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    move v0, v2

    move v1, v3

    goto :goto_1

    :cond_1
    const-string v0, "video_size_1080p"

    .line 965
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "video_size_720p"

    .line 968
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x500

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_1

    :cond_3
    const-string v0, "video_size_480p"

    .line 971
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x1e0

    goto :goto_1

    :cond_4
    const-string v0, "video_size_cif"

    .line 976
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v1, 0x160

    const/16 v0, 0x120

    goto :goto_1

    :cond_5
    const-string v0, "video_size_qcif"

    .line 979
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v1, 0xb0

    const/16 v0, 0x90

    .line 987
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVideoPreviewSize, videoSizeType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", width: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", height: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "VideoMode"

    invoke-static {v2, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v1, v0}, Landroid/util/Size;-><init>(II)V

    return-object p1
.end method

.method protected l()V
    .locals 0

    return-void
.end method

.method public l(Z)V
    .locals 2

    .line 2689
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->l(Z)V

    .line 2691
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->bY()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2692
    iget-object p1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->B()V

    const/4 p1, 0x3

    .line 2693
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/m;->x(I)V

    .line 2694
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->da()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2696
    iget-boolean v0, p0, Lcom/oppo/camera/d/m;->ae:Z

    if-eqz v0, :cond_0

    .line 2697
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cT()Z

    .line 2700
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSyncCommandBeforeFinish, failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoMode"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected m()V
    .locals 0

    .line 674
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->dr()V

    return-void
.end method

.method protected m(Ljava/lang/String;)V
    .locals 3

    .line 1041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteVideoFile, fileName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 1047
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1049
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteVideoFile, Could not delete "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected n(Z)V
    .locals 6

    .line 1163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStopVideoRecording, checkRecordTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1165
    iput-boolean v0, p0, Lcom/oppo/camera/d/m;->av:Z

    .line 1167
    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->B()V

    .line 1170
    iget-wide v2, p0, Lcom/oppo/camera/d/m;->Y:J

    const-wide/16 v4, 0x3e8

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    iget-boolean v0, p0, Lcom/oppo/camera/d/m;->s:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    .line 1172
    invoke-interface {v0}, Lcom/oppo/camera/d/b;->h()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/d/m;->ac:Lcom/oppo/camera/d/n;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const-string p1, "onStopVideoRecording, Record Time less than 1 second."

    .line 1175
    invoke-static {v1, p1}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "key_short_video"

    .line 1177
    invoke-virtual {p0, p1}, Lcom/oppo/camera/d/m;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1178
    iget-object p1, p0, Lcom/oppo/camera/d/m;->ag:Landroid/os/Handler;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1179
    iget-object p1, p0, Lcom/oppo/camera/d/m;->ag:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/oppo/camera/d/m;->Y:J

    sub-long/2addr v4, v1

    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x3

    .line 1185
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/m;->x(I)V

    .line 1186
    iget-object v0, p0, Lcom/oppo/camera/d/m;->W:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1187
    iget-object v0, p0, Lcom/oppo/camera/d/m;->aD:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x2

    if-eqz p1, :cond_2

    .line 1190
    iget-object p1, p0, Lcom/oppo/camera/d/m;->af:Landroid/os/ConditionVariable;

    invoke-virtual {p1}, Landroid/os/ConditionVariable;->close()V

    .line 1191
    iget-object p1, p0, Lcom/oppo/camera/d/m;->ag:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1193
    :cond_2
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->da()Z

    move-result p1

    .line 1195
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cp()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "type_video"

    invoke-virtual {p0, v1}, Lcom/oppo/camera/d/m;->k(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cE()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/oppo/camera/d/m;->K:Lcom/oppo/camera/e/f;

    if-eqz v2, :cond_3

    .line 1196
    iget-object v2, p0, Lcom/oppo/camera/d/m;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v2, v1}, Lcom/oppo/camera/e/f;->c(Ljava/lang/String;)V

    :cond_3
    if-nez p1, :cond_4

    .line 1199
    iget-boolean v1, p0, Lcom/oppo/camera/d/m;->ae:Z

    if-eqz v1, :cond_4

    .line 1200
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cT()Z

    .line 1203
    :cond_4
    iget-object v1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/oppo/camera/d/b;->a(I)V

    .line 1204
    iget-object v1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->C()V

    .line 1205
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->df()V

    .line 1206
    invoke-direct {p0}, Lcom/oppo/camera/d/m;->cZ()V

    .line 1207
    iget-object v1, p0, Lcom/oppo/camera/d/m;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v1, p1}, Lcom/oppo/camera/d/b;->d(Z)V

    .line 1208
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cI()V

    .line 1210
    invoke-virtual {p0, v0}, Lcom/oppo/camera/d/m;->x(I)V

    :goto_0
    return-void
.end method

.method protected n()Z
    .locals 2

    const-string v0, "VideoMode"

    const-string v1, "onBeforeSnapping"

    .line 733
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    invoke-virtual {p0}, Lcom/oppo/camera/d/m;->cR()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "onBeforeSnapping, is not in RECORD_STARTED"

    .line 736
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected o(Z)V
    .locals 2

    .line 2214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableVideoRecordingSound, enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2216
    iput-boolean p1, p0, Lcom/oppo/camera/d/m;->as:Z

    return-void
.end method

.method public t(I)Landroid/graphics/Bitmap;
    .locals 1

    .line 998
    iget-object v0, p0, Lcom/oppo/camera/d/m;->aB:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_0

    .line 999
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oppo/camera/ui/control/e;->a(Ljava/io/FileDescriptor;I)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    .line 1000
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/d/m;->ai:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1001
    invoke-static {v0, p1}, Lcom/oppo/camera/ui/control/e;->a(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected x(I)V
    .locals 2

    .line 924
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVideoRecordState, mMediaRecorderState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oppo/camera/d/m;->ao:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    iput p1, p0, Lcom/oppo/camera/d/m;->ao:I

    return-void
.end method
