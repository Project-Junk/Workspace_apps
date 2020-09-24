.class public Landroid/support/v4/media/session/MediaSessionCompat;
.super Ljava/lang/Object;
.source "MediaSessionCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompat$c;,
        Landroid/support/v4/media/session/MediaSessionCompat$b;,
        Landroid/support/v4/media/session/MediaSessionCompat$d;,
        Landroid/support/v4/media/session/MediaSessionCompat$ResultReceiverWrapper;,
        Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;,
        Landroid/support/v4/media/session/MediaSessionCompat$Token;,
        Landroid/support/v4/media/session/MediaSessionCompat$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/support/v4/media/session/MediaSessionCompat$b;

.field public final b:Landroid/support/v4/media/session/MediaControllerCompat;

.field public final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/media/session/MediaSessionCompat$d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$b;)V
    .locals 2

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->c:Ljava/util/ArrayList;

    .line 518
    iput-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$b;

    .line 519
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 520
    invoke-interface {p2}, Landroid/support/v4/media/session/MediaSessionCompat$b;->c()Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Landroid/support/v4/media/session/d;->b(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 522
    new-instance p2, Landroid/support/v4/media/session/MediaSessionCompat$1;

    invoke-direct {p2, p0}, Landroid/support/v4/media/session/MediaSessionCompat$1;-><init>(Landroid/support/v4/media/session/MediaSessionCompat;)V

    .line 1550
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$b;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-interface {v0, p2, v1}, Landroid/support/v4/media/session/MediaSessionCompat$b;->a(Landroid/support/v4/media/session/MediaSessionCompat$a;Landroid/os/Handler;)V

    .line 524
    :cond_0
    new-instance p2, Landroid/support/v4/media/session/MediaControllerCompat;

    invoke-direct {p2, p1, p0}, Landroid/support/v4/media/session/MediaControllerCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat;)V

    iput-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat;->b:Landroid/support/v4/media/session/MediaControllerCompat;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Object;)Landroid/support/v4/media/session/MediaSessionCompat;
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 915
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 916
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompat;

    new-instance v1, Landroid/support/v4/media/session/MediaSessionCompat$c;

    invoke-direct {v1, p1}, Landroid/support/v4/media/session/MediaSessionCompat$c;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/session/MediaSessionCompat;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/MediaSessionCompat$b;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static a(Landroid/support/v4/media/session/PlaybackStateCompat;Landroid/support/v4/media/MediaMetadataCompat;)Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v0, :cond_5

    .line 1648
    iget-wide v2, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->b:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto/16 :goto_1

    .line 2641
    :cond_0
    iget v2, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->a:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 3641
    iget v2, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->a:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    .line 4641
    iget v2, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->a:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    .line 4658
    :cond_1
    iget-wide v2, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->h:J

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-lez v8, :cond_5

    .line 945
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 4692
    iget v10, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->d:F

    sub-long v2, v8, v2

    long-to-float v2, v2

    mul-float/2addr v10, v2

    float-to-long v2, v10

    .line 5648
    iget-wide v10, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->b:J

    add-long/2addr v2, v10

    if-eqz v1, :cond_2

    .line 6384
    iget-object v10, v1, Landroid/support/v4/media/MediaMetadataCompat;->b:Landroid/os/Bundle;

    const-string v11, "android.media.metadata.DURATION"

    invoke-virtual {v10, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 951
    invoke-virtual {v1, v11}, Landroid/support/v4/media/MediaMetadataCompat;->a(Ljava/lang/String;)J

    move-result-wide v4

    :cond_2
    cmp-long v1, v4, v6

    if-ltz v1, :cond_3

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    move-wide v2, v4

    goto :goto_0

    :cond_3
    cmp-long v1, v2, v6

    if-gez v1, :cond_4

    move-wide v2, v6

    .line 959
    :cond_4
    :goto_0
    new-instance v1, Landroid/support/v4/media/session/PlaybackStateCompat$a;

    invoke-direct {v1, v0}, Landroid/support/v4/media/session/PlaybackStateCompat$a;-><init>(Landroid/support/v4/media/session/PlaybackStateCompat;)V

    .line 6641
    iget v4, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->a:I

    .line 6692
    iget v0, v0, Landroid/support/v4/media/session/PlaybackStateCompat;->d:F

    .line 7210
    iput v4, v1, Landroid/support/v4/media/session/PlaybackStateCompat$a;->b:I

    .line 7211
    iput-wide v2, v1, Landroid/support/v4/media/session/PlaybackStateCompat$a;->c:J

    .line 7212
    iput-wide v8, v1, Landroid/support/v4/media/session/PlaybackStateCompat$a;->i:J

    .line 7213
    iput v0, v1, Landroid/support/v4/media/session/PlaybackStateCompat$a;->e:F

    .line 7360
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat;

    move-object v10, v0

    iget v11, v1, Landroid/support/v4/media/session/PlaybackStateCompat$a;->b:I

    iget-wide v12, v1, Landroid/support/v4/media/session/PlaybackStateCompat$a;->c:J

    iget-wide v14, v1, Landroid/support/v4/media/session/PlaybackStateCompat$a;->d:J

    iget v2, v1, Landroid/support/v4/media/session/PlaybackStateCompat$a;->e:F

    move/from16 v16, v2

    iget-wide v2, v1, Landroid/support/v4/media/session/PlaybackStateCompat$a;->f:J

    move-wide/from16 v17, v2

    iget v2, v1, Landroid/support/v4/media/session/PlaybackStateCompat$a;->g:I

    move/from16 v19, v2

    iget-object v2, v1, Landroid/support/v4/media/session/PlaybackStateCompat$a;->h:Ljava/lang/CharSequence;

    move-object/from16 v20, v2

    iget-wide v2, v1, Landroid/support/v4/media/session/PlaybackStateCompat$a;->i:J

    move-wide/from16 v21, v2

    iget-object v2, v1, Landroid/support/v4/media/session/PlaybackStateCompat$a;->a:Ljava/util/List;

    move-object/from16 v23, v2

    iget-wide v2, v1, Landroid/support/v4/media/session/PlaybackStateCompat$a;->j:J

    move-wide/from16 v24, v2

    iget-object v1, v1, Landroid/support/v4/media/session/PlaybackStateCompat$a;->k:Landroid/os/Bundle;

    move-object/from16 v26, v1

    invoke-direct/range {v10 .. v26}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(IJJFJILjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)V

    :cond_5
    :goto_1
    return-object v0
.end method

.method public static a(Landroid/os/Bundle;)V
    .locals 1
    .param p0    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 929
    const-class v0, Landroid/support/v4/media/session/MediaSessionCompat;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 654
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$b;

    invoke-interface {v0}, Landroid/support/v4/media/session/MediaSessionCompat$b;->a()Z

    move-result v0

    return v0
.end method

.method public final b()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1

    .line 696
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat;->a:Landroid/support/v4/media/session/MediaSessionCompat$b;

    invoke-interface {v0}, Landroid/support/v4/media/session/MediaSessionCompat$b;->b()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    return-object v0
.end method
