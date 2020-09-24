.class public final Lcom/android/ims/a;
.super Ljava/lang/Object;
.source "ImsCall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/ims/a$a;,
        Lcom/android/ims/a$b;
    }
.end annotation


# static fields
.field private static final D:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final k:Z

.field private static final l:Z


# instance fields
.field private A:Z

.field private B:Landroid/telephony/ims/ImsReasonInfo;

.field private C:Z

.field private E:Z

.field public a:Ljava/lang/Object;

.field public b:Landroid/telephony/ims/ImsCallSession;

.field c:Landroid/telephony/ims/ImsCallProfile;

.field public d:Z

.field public e:Z

.field f:Z

.field public g:Z

.field public final h:I

.field public i:Lcom/android/ims/a$a;

.field public j:I

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;"
        }
    .end annotation
.end field

.field private n:Landroid/content/Context;

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:I

.field private s:Lcom/android/ims/a$b;

.field private t:Lcom/android/ims/a;

.field private u:Lcom/android/ims/a;

.field private v:Z

.field private w:Landroid/telephony/ims/ImsCallProfile;

.field private x:Landroid/telephony/ims/ImsReasonInfo;

.field private y:Lcom/android/ims/internal/a;

.field private z:Landroid/telephony/ims/ImsCallSession;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ImsCall"

    const/4 v1, 0x3

    .line 74
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/ims/a;->k:Z

    const/4 v1, 0x2

    .line 75
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/ims/a;->l:Z

    .line 603
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/android/ims/a;->D:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;)V
    .locals 2

    .line 636
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 507
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/ims/a;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 511
    iput-boolean v0, p0, Lcom/android/ims/a;->o:Z

    .line 515
    iput-boolean v0, p0, Lcom/android/ims/a;->p:Z

    .line 517
    iput-boolean v0, p0, Lcom/android/ims/a;->q:Z

    .line 519
    iput v0, p0, Lcom/android/ims/a;->r:I

    const/4 v1, 0x0

    .line 521
    iput-object v1, p0, Lcom/android/ims/a;->s:Lcom/android/ims/a$b;

    .line 524
    iput-object v1, p0, Lcom/android/ims/a;->t:Lcom/android/ims/a;

    .line 526
    iput-object v1, p0, Lcom/android/ims/a;->u:Lcom/android/ims/a;

    .line 530
    iput-boolean v0, p0, Lcom/android/ims/a;->v:Z

    .line 532
    iput-object v1, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    .line 535
    iput-object v1, p0, Lcom/android/ims/a;->c:Landroid/telephony/ims/ImsCallProfile;

    .line 539
    iput-object v1, p0, Lcom/android/ims/a;->w:Landroid/telephony/ims/ImsCallProfile;

    .line 540
    iput-object v1, p0, Lcom/android/ims/a;->x:Landroid/telephony/ims/ImsReasonInfo;

    .line 543
    iput-object v1, p0, Lcom/android/ims/a;->y:Lcom/android/ims/internal/a;

    .line 547
    iput-object v1, p0, Lcom/android/ims/a;->z:Landroid/telephony/ims/ImsCallSession;

    .line 553
    iput-boolean v0, p0, Lcom/android/ims/a;->A:Z

    .line 557
    iput-object v1, p0, Lcom/android/ims/a;->B:Landroid/telephony/ims/ImsReasonInfo;

    .line 561
    iput-boolean v0, p0, Lcom/android/ims/a;->d:Z

    .line 567
    iput-boolean v0, p0, Lcom/android/ims/a;->e:Z

    .line 576
    iput-boolean v0, p0, Lcom/android/ims/a;->C:Z

    .line 589
    iput-boolean v0, p0, Lcom/android/ims/a;->f:Z

    .line 598
    iput-boolean v0, p0, Lcom/android/ims/a;->g:Z

    .line 622
    iput v0, p0, Lcom/android/ims/a;->j:I

    .line 628
    iput-boolean v0, p0, Lcom/android/ims/a;->E:Z

    .line 637
    iput-object p1, p0, Lcom/android/ims/a;->n:Landroid/content/Context;

    .line 638
    invoke-virtual {p0, p2}, Lcom/android/ims/a;->a(Landroid/telephony/ims/ImsCallProfile;)V

    .line 639
    sget-object p1, Lcom/android/ims/a;->D:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p1

    iput p1, p0, Lcom/android/ims/a;->h:I

    return-void
.end method

.method private A()V
    .locals 3

    const-string v0, "clearMergeInfo :: clearing all merge info"

    .line 3324
    invoke-virtual {p0, v0}, Lcom/android/ims/a;->d(Ljava/lang/String;)V

    .line 3328
    iget-object v0, p0, Lcom/android/ims/a;->u:Lcom/android/ims/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3329
    iput-object v1, v0, Lcom/android/ims/a;->t:Lcom/android/ims/a;

    .line 3330
    iput v2, v0, Lcom/android/ims/a;->r:I

    .line 3331
    iput-boolean v2, v0, Lcom/android/ims/a;->e:Z

    .line 3333
    :cond_0
    iget-object v0, p0, Lcom/android/ims/a;->t:Lcom/android/ims/a;

    if-eqz v0, :cond_1

    .line 3334
    iput-object v1, v0, Lcom/android/ims/a;->u:Lcom/android/ims/a;

    .line 3335
    iput v2, v0, Lcom/android/ims/a;->r:I

    .line 3336
    iput-boolean v2, v0, Lcom/android/ims/a;->e:Z

    .line 3338
    :cond_1
    iput-object v1, p0, Lcom/android/ims/a;->u:Lcom/android/ims/a;

    .line 3339
    iput-object v1, p0, Lcom/android/ims/a;->t:Lcom/android/ims/a;

    .line 3340
    iput v2, p0, Lcom/android/ims/a;->r:I

    .line 3341
    iput-boolean v2, p0, Lcom/android/ims/a;->e:Z

    return-void
.end method

.method private B()Z
    .locals 1

    .line 3378
    iget-object v0, p0, Lcom/android/ims/a;->t:Lcom/android/ims/a;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/ims/a;->u:Lcom/android/ims/a;

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

.method private C()Z
    .locals 1

    .line 3387
    iget-object v0, p0, Lcom/android/ims/a;->t:Lcom/android/ims/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/ims/a;->u:Lcom/android/ims/a;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic a(Lcom/android/ims/a;I)I
    .locals 0

    .line 56
    iput p1, p0, Lcom/android/ims/a;->r:I

    return p1
.end method

.method static synthetic a(Lcom/android/ims/a;Landroid/telephony/ims/ImsCallProfile;)Landroid/telephony/ims/ImsCallProfile;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/ims/a;->w:Landroid/telephony/ims/ImsCallProfile;

    return-object p1
.end method

.method static synthetic a(Lcom/android/ims/a;Landroid/telephony/ims/ImsReasonInfo;)Landroid/telephony/ims/ImsReasonInfo;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/ims/a;->x:Landroid/telephony/ims/ImsReasonInfo;

    return-object p1
.end method

.method private a(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/a;
    .locals 2

    .line 1765
    new-instance v0, Lcom/android/ims/a;

    iget-object v1, p0, Lcom/android/ims/a;->n:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Lcom/android/ims/a;-><init>(Landroid/content/Context;Landroid/telephony/ims/ImsCallProfile;)V

    .line 1768
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/android/ims/a;->a(Landroid/telephony/ims/ImsCallSession;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1771
    :catch_0
    invoke-virtual {v0}, Lcom/android/ims/a;->a()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method static synthetic a(Lcom/android/ims/a;Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/a;
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/ims/a;->a(Landroid/telephony/ims/ImsCallSession;Landroid/telephony/ims/ImsCallProfile;)Lcom/android/ims/a;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 1742
    iput-boolean v0, p0, Lcom/android/ims/a;->o:Z

    .line 1743
    iput-boolean v0, p0, Lcom/android/ims/a;->p:Z

    .line 1744
    iput v0, p0, Lcom/android/ims/a;->r:I

    .line 1745
    iput-object p1, p0, Lcom/android/ims/a;->x:Landroid/telephony/ims/ImsReasonInfo;

    return-void
.end method

.method static synthetic a(Lcom/android/ims/a;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/ims/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/android/ims/a;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/android/ims/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static a(Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 3552
    instance-of v0, p0, Lcom/android/ims/ImsException;

    if-eqz v0, :cond_0

    .line 3553
    check-cast p0, Lcom/android/ims/ImsException;

    throw p0

    .line 3555
    :cond_0
    new-instance v0, Lcom/android/ims/ImsException;

    const/4 v1, 0x0

    const-string v2, "0"

    invoke-direct {v0, v2, p0, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v0
.end method

.method static synthetic a(Lcom/android/ims/a;Landroid/telephony/ims/ImsCallSession;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 17965
    iget-object v0, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/ims/a;->z:Landroid/telephony/ims/ImsCallSession;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic a(Lcom/android/ims/a;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/android/ims/a;->p:Z

    return p1
.end method

.method static synthetic b(Lcom/android/ims/a;Landroid/telephony/ims/ImsCallSession;)Landroid/telephony/ims/ImsCallSession;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/ims/a;->z:Landroid/telephony/ims/ImsCallSession;

    return-object p1
.end method

.method static synthetic b(Lcom/android/ims/a;)Lcom/android/ims/a$b;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/ims/a;->s:Lcom/android/ims/a$b;

    return-object p0
.end method

.method private b(Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2

    .line 1910
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "processCallTerminated :: reason="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " userInitiated = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/ims/a;->C:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/a;->d(Ljava/lang/String;)V

    .line 1914
    monitor-enter p0

    .line 14405
    :try_start_0
    iget-boolean v0, p0, Lcom/android/ims/a;->e:Z

    if-eqz v0, :cond_0

    .line 1919
    iget-boolean v0, p0, Lcom/android/ims/a;->C:Z

    if-nez v0, :cond_0

    const-string v0, "processCallTerminated :: burying termination during ongoing merge."

    .line 1927
    invoke-virtual {p0, v0}, Lcom/android/ims/a;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1929
    iput-boolean v0, p0, Lcom/android/ims/a;->A:Z

    .line 1930
    iput-object p1, p0, Lcom/android/ims/a;->B:Landroid/telephony/ims/ImsReasonInfo;

    .line 1931
    monitor-exit p0

    return-void

    .line 1935
    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/a;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 14834
    iget-object v0, p0, Lcom/android/ims/a;->s:Lcom/android/ims/a$b;

    .line 14835
    invoke-direct {p0, p1}, Lcom/android/ims/a;->a(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 14839
    :try_start_1
    invoke-virtual {v0, p0, p1}, Lcom/android/ims/a$b;->onCallTerminated(Lcom/android/ims/a;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v0, "notifyConferenceSessionTerminated :: "

    .line 14841
    invoke-virtual {p0, v0, p1}, Lcom/android/ims/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1937
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 1939
    :cond_2
    iget-object v0, p0, Lcom/android/ims/a;->s:Lcom/android/ims/a$b;

    .line 1940
    invoke-direct {p0, p1}, Lcom/android/ims/a;->a(Landroid/telephony/ims/ImsReasonInfo;)V

    .line 1942
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    .line 1946
    :try_start_3
    invoke-virtual {v0, p0, p1}, Lcom/android/ims/a$b;->onCallTerminated(Lcom/android/ims/a;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    move-exception p1

    const-string v0, "processCallTerminated :: "

    .line 1948
    invoke-virtual {p0, v0, p1}, Lcom/android/ims/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 1942
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method static synthetic b(Lcom/android/ims/a;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 4

    .line 19272
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "processMergeFailed :: reason="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/a;->d(Ljava/lang/String;)V

    .line 19275
    monitor-enter p0

    .line 19278
    :try_start_0
    invoke-direct {p0}, Lcom/android/ims/a;->C()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "processMergeFailed :: We are not the merge host!"

    .line 19279
    invoke-direct {p0, p1}, Lcom/android/ims/a;->f(Ljava/lang/String;)V

    .line 19280
    monitor-exit p0

    return-void

    .line 19284
    :cond_0
    iget-object v0, p0, Lcom/android/ims/a;->z:Landroid/telephony/ims/ImsCallSession;

    if-eqz v0, :cond_1

    .line 19285
    iget-object v0, p0, Lcom/android/ims/a;->z:Landroid/telephony/ims/ImsCallSession;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/ims/ImsCallSession;->setListener(Landroid/telephony/ims/ImsCallSession$Listener;)V

    .line 19286
    iput-object v1, p0, Lcom/android/ims/a;->z:Landroid/telephony/ims/ImsCallSession;

    .line 19289
    :cond_1
    iget-object v0, p0, Lcom/android/ims/a;->s:Lcom/android/ims/a$b;

    const/4 v1, 0x1

    .line 19293
    invoke-direct {p0, v1}, Lcom/android/ims/a;->d(Z)V

    const/4 v2, 0x0

    .line 19415
    iput-boolean v2, p0, Lcom/android/ims/a;->e:Z

    .line 19295
    invoke-direct {p0}, Lcom/android/ims/a;->y()V

    .line 19298
    iget-object v3, p0, Lcom/android/ims/a;->t:Lcom/android/ims/a;

    if-eqz v3, :cond_2

    .line 19299
    iget-object v3, p0, Lcom/android/ims/a;->t:Lcom/android/ims/a;

    invoke-direct {v3, v1}, Lcom/android/ims/a;->d(Z)V

    .line 19300
    iget-object v1, p0, Lcom/android/ims/a;->t:Lcom/android/ims/a;

    .line 20415
    iput-boolean v2, v1, Lcom/android/ims/a;->e:Z

    .line 19301
    iget-object v1, p0, Lcom/android/ims/a;->t:Lcom/android/ims/a;

    invoke-direct {v1}, Lcom/android/ims/a;->y()V

    goto :goto_0

    :cond_2
    const-string v1, "processMergeFailed :: No merge peer!"

    .line 19303
    invoke-direct {p0, v1}, Lcom/android/ims/a;->f(Ljava/lang/String;)V

    .line 19307
    :goto_0
    invoke-direct {p0}, Lcom/android/ims/a;->A()V

    .line 19308
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 19311
    :try_start_1
    invoke-virtual {v0, p0, p1}, Lcom/android/ims/a$b;->onCallMergeFailed(Lcom/android/ims/a;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "processMergeFailed :: "

    .line 19313
    invoke-virtual {p0, v0, p1}, Lcom/android/ims/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 19308
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method static synthetic b(Lcom/android/ims/a;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/ims/a;->f(Ljava/lang/String;)V

    return-void
.end method

.method private static b(Landroid/telephony/ims/ImsCallSession;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 697
    invoke-virtual {p0}, Landroid/telephony/ims/ImsCallSession;->isAlive()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic c(Lcom/android/ims/a;)Landroid/telephony/ims/ImsCallProfile;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/ims/a;->c:Landroid/telephony/ims/ImsCallProfile;

    return-object p0
.end method

.method private static c(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_0
    const-string p0, "UNSPECIFIED"

    return-object p0

    :pswitch_1
    const-string p0, "EXTEND_TO_CONFERENCE"

    return-object p0

    :pswitch_2
    const-string p0, "MERGE"

    return-object p0

    :pswitch_3
    const-string p0, "RESUME"

    return-object p0

    :pswitch_4
    const-string p0, "HOLD_MERGE"

    return-object p0

    :pswitch_5
    const-string p0, "HOLD"

    return-object p0

    :pswitch_6
    const-string p0, "NONE"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private c(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1

    .line 3578
    iget-boolean v0, p0, Lcom/android/ims/a;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/telephony/ims/ImsCallProfile;->isVideoCall()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/android/ims/a;->g:Z

    return-void
.end method

.method static synthetic c(Lcom/android/ims/a;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/ims/a;->b(Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method static synthetic d(Lcom/android/ims/a;)V
    .locals 1

    const/4 v0, 0x0

    .line 18415
    iput-boolean v0, p0, Lcom/android/ims/a;->e:Z

    return-void
.end method

.method private d(Z)V
    .locals 3

    .line 1980
    iget-object v0, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v0}, Lcom/android/ims/a;->b(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "markCallAsMerged"

    .line 1983
    invoke-virtual {p0, v0}, Lcom/android/ims/a;->d(Ljava/lang/String;)V

    .line 14970
    iput-boolean p1, p0, Lcom/android/ims/a;->d:Z

    const/4 v0, 0x1

    .line 1985
    iput-boolean v0, p0, Lcom/android/ims/a;->A:Z

    if-eqz p1, :cond_0

    const/16 p1, 0x1fe

    const-string v0, "Call ended by network"

    goto :goto_0

    :cond_0
    const/16 p1, 0x6c

    const-string v0, "Call ended during conference merge process."

    .line 1995
    :goto_0
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v0}, Landroid/telephony/ims/ImsReasonInfo;-><init>(IILjava/lang/String;)V

    iput-object v1, p0, Lcom/android/ims/a;->B:Landroid/telephony/ims/ImsReasonInfo;

    :cond_1
    return-void
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 3565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3566
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " ImsCall="

    .line 3567
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3568
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3569
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic e(Lcom/android/ims/a;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/android/ims/a;->f:Z

    return p0
.end method

.method private f(Ljava/lang/String;)V
    .locals 1

    .line 3674
    invoke-direct {p0, p1}, Lcom/android/ims/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsCall"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic f(Lcom/android/ims/a;)Z
    .locals 1

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/android/ims/a;->f:Z

    return v0
.end method

.method static synthetic g(Lcom/android/ims/a;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/android/ims/a;->j:I

    return p0
.end method

.method static synthetic h(Lcom/android/ims/a;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/android/ims/a;->r:I

    return p0
.end method

.method static synthetic i(Lcom/android/ims/a;)V
    .locals 1

    const-string v0, "mergeInternal :: "

    .line 20826
    invoke-virtual {p0, v0}, Lcom/android/ims/a;->d(Ljava/lang/String;)V

    .line 20829
    iget-object v0, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallSession;->merge()V

    const/4 v0, 0x4

    .line 20830
    iput v0, p0, Lcom/android/ims/a;->r:I

    return-void
.end method

.method static synthetic j(Lcom/android/ims/a;)Ljava/lang/Object;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/ims/a;->a:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic k(Lcom/android/ims/a;)Z
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/android/ims/a;->C()Z

    move-result p0

    return p0
.end method

.method static synthetic l(Lcom/android/ims/a;)Lcom/android/ims/a;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/android/ims/a;->u:Lcom/android/ims/a;

    return-object p0
.end method

.method static synthetic m(Lcom/android/ims/a;)V
    .locals 8

    const-string v0, "processMergeComplete :: "

    .line 21039
    invoke-virtual {p0, v0}, Lcom/android/ims/a;->d(Ljava/lang/String;)V

    .line 21043
    invoke-direct {p0}, Lcom/android/ims/a;->C()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "processMergeComplete :: We are not the merge host!"

    .line 21044
    invoke-direct {p0, v0}, Lcom/android/ims/a;->f(Ljava/lang/String;)V

    return-void

    .line 21054
    :cond_0
    monitor-enter p0

    .line 21055
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/a;->h()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 21970
    iput-boolean v2, p0, Lcom/android/ims/a;->d:Z

    .line 21059
    iget-boolean v0, p0, Lcom/android/ims/a;->v:Z

    if-nez v0, :cond_1

    .line 21062
    iput-boolean v2, p0, Lcom/android/ims/a;->p:Z

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 21065
    :goto_0
    iget-object v3, p0, Lcom/android/ims/a;->t:Lcom/android/ims/a;

    invoke-direct {v3, v2}, Lcom/android/ims/a;->d(Z)V

    .line 21067
    iget-object v2, p0, Lcom/android/ims/a;->t:Lcom/android/ims/a;

    move-object v4, p0

    goto/16 :goto_3

    .line 21074
    :cond_2
    iget-object v0, p0, Lcom/android/ims/a;->z:Landroid/telephony/ims/ImsCallSession;

    if-nez v0, :cond_3

    const-string v0, "processMergeComplete :: No transient session!"

    .line 21075
    invoke-direct {p0, v0}, Lcom/android/ims/a;->f(Ljava/lang/String;)V

    .line 21076
    monitor-exit p0

    return-void

    .line 21078
    :cond_3
    iget-object v0, p0, Lcom/android/ims/a;->t:Lcom/android/ims/a;

    if-nez v0, :cond_4

    const-string v0, "processMergeComplete :: No merge peer!"

    .line 21079
    invoke-direct {p0, v0}, Lcom/android/ims/a;->f(Ljava/lang/String;)V

    .line 21080
    monitor-exit p0

    return-void

    .line 21085
    :cond_4
    iget-object v0, p0, Lcom/android/ims/a;->z:Landroid/telephony/ims/ImsCallSession;

    const/4 v3, 0x0

    .line 21086
    iput-object v3, p0, Lcom/android/ims/a;->z:Landroid/telephony/ims/ImsCallSession;

    .line 21090
    invoke-virtual {v0, v3}, Landroid/telephony/ims/ImsCallSession;->setListener(Landroid/telephony/ims/ImsCallSession$Listener;)V

    .line 21100
    iget-object v4, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v4}, Lcom/android/ims/a;->b(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/ims/a;->t:Lcom/android/ims/a;

    invoke-virtual {v4}, Lcom/android/ims/a;->f()Landroid/telephony/ims/ImsCallSession;

    move-result-object v4

    invoke-static {v4}, Lcom/android/ims/a;->b(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 21109
    iget-object v4, p0, Lcom/android/ims/a;->t:Lcom/android/ims/a;

    iput-boolean v2, v4, Lcom/android/ims/a;->p:Z

    .line 21110
    iput-boolean v1, p0, Lcom/android/ims/a;->p:Z

    .line 21111
    iget-object v4, p0, Lcom/android/ims/a;->m:Ljava/util/List;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/ims/a;->m:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 21112
    iget-object v4, p0, Lcom/android/ims/a;->t:Lcom/android/ims/a;

    iget-object v5, p0, Lcom/android/ims/a;->m:Ljava/util/List;

    iput-object v5, v4, Lcom/android/ims/a;->m:Ljava/util/List;

    .line 21121
    :cond_5
    iget-object v4, p0, Lcom/android/ims/a;->t:Lcom/android/ims/a;

    .line 22970
    iput-boolean v2, p0, Lcom/android/ims/a;->d:Z

    .line 21125
    iget-object v5, p0, Lcom/android/ims/a;->t:Lcom/android/ims/a;

    .line 23970
    iput-boolean v2, v5, Lcom/android/ims/a;->d:Z

    const-string v2, "processMergeComplete :: transient will transfer to merge peer"

    .line 21127
    invoke-virtual {p0, v2}, Lcom/android/ims/a;->d(Ljava/lang/String;)V

    move-object v2, p0

    move v5, v1

    goto :goto_2

    .line 21129
    :cond_6
    iget-object v4, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    invoke-static {v4}, Lcom/android/ims/a;->b(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/ims/a;->t:Lcom/android/ims/a;

    .line 21130
    invoke-virtual {v4}, Lcom/android/ims/a;->f()Landroid/telephony/ims/ImsCallSession;

    move-result-object v4

    invoke-static {v4}, Lcom/android/ims/a;->b(Landroid/telephony/ims/ImsCallSession;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 21136
    iget-object v4, p0, Lcom/android/ims/a;->t:Lcom/android/ims/a;

    .line 24970
    iput-boolean v2, p0, Lcom/android/ims/a;->d:Z

    .line 21139
    iget-object v5, p0, Lcom/android/ims/a;->t:Lcom/android/ims/a;

    .line 25970
    iput-boolean v2, v5, Lcom/android/ims/a;->d:Z

    const-string v5, "processMergeComplete :: transient will stay with the merge host"

    .line 21141
    invoke-virtual {p0, v5}, Lcom/android/ims/a;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 21149
    :cond_7
    iget-object v4, p0, Lcom/android/ims/a;->t:Lcom/android/ims/a;

    .line 21150
    iget-object v5, p0, Lcom/android/ims/a;->t:Lcom/android/ims/a;

    invoke-direct {v5, v2}, Lcom/android/ims/a;->d(Z)V

    .line 26970
    iput-boolean v2, p0, Lcom/android/ims/a;->d:Z

    .line 21153
    iget-object v5, p0, Lcom/android/ims/a;->t:Lcom/android/ims/a;

    .line 27970
    iput-boolean v1, v5, Lcom/android/ims/a;->d:Z

    const-string v5, "processMergeComplete :: transient will stay with us (I\'m the host)."

    .line 21155
    invoke-virtual {p0, v5}, Lcom/android/ims/a;->d(Ljava/lang/String;)V

    :goto_1
    move v5, v2

    move-object v2, v4

    move-object v4, p0

    .line 21160
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "processMergeComplete :: call="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " is the final host"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/ims/a;->d(Ljava/lang/String;)V

    .line 27972
    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27973
    :try_start_1
    iget-object v6, v4, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v6, v3}, Landroid/telephony/ims/ImsCallSession;->setListener(Landroid/telephony/ims/ImsCallSession$Listener;)V

    .line 27974
    iput-object v0, v4, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    .line 27975
    iget-object v0, v4, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v4}, Lcom/android/ims/a;->n()Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/telephony/ims/ImsCallSession;->setListener(Landroid/telephony/ims/ImsCallSession$Listener;)V

    .line 27976
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v5

    .line 21168
    :goto_3
    :try_start_2
    iget-object v3, v4, Lcom/android/ims/a;->s:Lcom/android/ims/a$b;

    .line 21170
    invoke-static {v2}, Lcom/android/ims/a;->o(Lcom/android/ims/a;)V

    .line 21171
    invoke-static {v4}, Lcom/android/ims/a;->o(Lcom/android/ims/a;)V

    .line 21174
    invoke-direct {p0}, Lcom/android/ims/a;->A()V

    .line 21178
    invoke-direct {v2}, Lcom/android/ims/a;->y()V

    .line 21181
    invoke-direct {v4}, Lcom/android/ims/a;->z()V

    .line 21187
    iput-boolean v1, v4, Lcom/android/ims/a;->f:Z

    .line 21188
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_8

    .line 21194
    :try_start_3
    invoke-virtual {v3, v4, v2, v0}, Lcom/android/ims/a$b;->onCallMerged(Lcom/android/ims/a;Lcom/android/ims/a;Z)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v1, "processMergeComplete :: "

    .line 21196
    invoke-virtual {p0, v1, v0}, Lcom/android/ims/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21198
    :goto_4
    iget-object v0, p0, Lcom/android/ims/a;->m:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 21200
    :try_start_4
    iget-object v0, p0, Lcom/android/ims/a;->m:Ljava/util/List;

    invoke-virtual {v3, v4, v0}, Lcom/android/ims/a$b;->onConferenceParticipantsStateChanged(Lcom/android/ims/a;Ljava/util/List;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    return-void

    :catch_1
    move-exception v0

    const-string v1, "processMergeComplete :: "

    .line 21203
    invoke-virtual {p0, v1, v0}, Lcom/android/ims/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    return-void

    :catchall_0
    move-exception v0

    .line 27976
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0

    :catchall_1
    move-exception v0

    .line 21188
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0
.end method

.method private n(Lcom/android/ims/a;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 1371
    iget p1, p1, Lcom/android/ims/a;->r:I

    if-eqz p1, :cond_0

    .line 1372
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "merge :: update is in progress; request="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/ims/a;->r:I

    .line 1373
    invoke-static {v0}, Lcom/android/ims/a;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1372
    invoke-direct {p0, p1}, Lcom/android/ims/a;->f(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static o(Lcom/android/ims/a;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 15217
    iget-object v0, p0, Lcom/android/ims/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 15218
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_0

    .line 15219
    iget-object v1, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/ims/a;->a(Landroid/telephony/ims/ImsCallProfile;)V

    .line 15221
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-void
.end method

.method static synthetic u()Z
    .locals 1

    .line 56
    sget-boolean v0, Lcom/android/ims/a;->l:Z

    return v0
.end method

.method private v()Z
    .locals 2

    .line 918
    iget-object v0, p0, Lcom/android/ims/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 919
    :try_start_0
    iget-boolean v1, p0, Lcom/android/ims/a;->q:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 920
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private w()Z
    .locals 2

    .line 929
    iget-object v0, p0, Lcom/android/ims/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 930
    :try_start_0
    iget-boolean v1, p0, Lcom/android/ims/a;->p:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 931
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private x()Landroid/telephony/ims/ImsStreamMediaProfile;
    .locals 3

    .line 1782
    new-instance v0, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    .line 1784
    iget-object v1, p0, Lcom/android/ims/a;->c:Landroid/telephony/ims/ImsCallProfile;

    if-nez v1, :cond_0

    return-object v0

    .line 1788
    :cond_0
    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v1, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 1789
    iget-object v1, p0, Lcom/android/ims/a;->c:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v1, v1, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    const/4 v1, 0x2

    .line 1790
    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 1792
    iget v2, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    if-eqz v2, :cond_1

    .line 1793
    iput v1, v0, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    :cond_1
    return-object v0
.end method

.method private y()V
    .locals 3

    .line 2233
    monitor-enter p0

    .line 2234
    :try_start_0
    iget-object v0, p0, Lcom/android/ims/a;->s:Lcom/android/ims/a$b;

    .line 2235
    iget-boolean v1, p0, Lcom/android/ims/a;->A:Z

    if-eqz v1, :cond_0

    const-string v1, "notifySessionTerminatedDuringMerge ::reporting terminate during merge"

    .line 2240
    invoke-virtual {p0, v1}, Lcom/android/ims/a;->d(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 2243
    iget-object v2, p0, Lcom/android/ims/a;->B:Landroid/telephony/ims/ImsReasonInfo;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2245
    :goto_0
    invoke-direct {p0}, Lcom/android/ims/a;->z()V

    .line 2246
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 2250
    :try_start_1
    invoke-direct {p0, v2}, Lcom/android/ims/a;->b(Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "notifySessionTerminatedDuringMerge :: "

    .line 2252
    invoke-virtual {p0, v1, v0}, Lcom/android/ims/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 2246
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private z()V
    .locals 1

    const/4 v0, 0x0

    .line 2258
    iput-boolean v0, p0, Lcom/android/ims/a;->A:Z

    const/4 v0, 0x0

    .line 2259
    iput-object v0, p0, Lcom/android/ims/a;->B:Landroid/telephony/ims/ImsReasonInfo;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 647
    iget-object v0, p0, Lcom/android/ims/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 648
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 649
    iget-object v1, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->close()V

    .line 650
    iput-object v2, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    goto :goto_0

    :cond_0
    const-string v1, "close :: Cannot close Null call session!"

    .line 652
    invoke-virtual {p0, v1}, Lcom/android/ims/a;->d(Ljava/lang/String;)V

    .line 655
    :goto_0
    iput-object v2, p0, Lcom/android/ims/a;->c:Landroid/telephony/ims/ImsCallProfile;

    .line 656
    iput-object v2, p0, Lcom/android/ims/a;->w:Landroid/telephony/ims/ImsCallProfile;

    .line 657
    iput-object v2, p0, Lcom/android/ims/a;->x:Landroid/telephony/ims/ImsReasonInfo;

    .line 658
    iput-object v2, p0, Lcom/android/ims/a;->y:Lcom/android/ims/internal/a;

    .line 659
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1148
    new-instance v0, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/ims/a;->a(ILandroid/telephony/ims/ImsStreamMediaProfile;)V

    return-void
.end method

.method public final a(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1160
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "accept :: callType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", profile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/a;->d(Ljava/lang/String;)V

    .line 1162
    iget-boolean v0, p0, Lcom/android/ims/a;->E:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1163
    iput v0, p2, Landroid/telephony/ims/ImsStreamMediaProfile;->mRttMode:I

    const-string v0, "accept :: changing media profile RTT mode to full"

    .line 1164
    invoke-virtual {p0, v0}, Lcom/android/ims/a;->d(Ljava/lang/String;)V

    .line 1167
    :cond_0
    iget-object v0, p0, Lcom/android/ims/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 1168
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    .line 1174
    :try_start_1
    iget-object v2, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v2, p1, p2}, Landroid/telephony/ims/ImsCallSession;->accept(ILandroid/telephony/ims/ImsStreamMediaProfile;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1180
    :try_start_2
    iget-boolean p1, p0, Lcom/android/ims/a;->o:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/ims/a;->w:Landroid/telephony/ims/ImsCallProfile;

    if-eqz p1, :cond_2

    .line 1181
    sget-boolean p1, Lcom/android/ims/a;->k:Z

    if-eqz p1, :cond_1

    const-string p1, "accept :: call profile will be updated"

    .line 1182
    invoke-virtual {p0, p1}, Lcom/android/ims/a;->d(Ljava/lang/String;)V

    .line 1185
    :cond_1
    iget-object p1, p0, Lcom/android/ims/a;->w:Landroid/telephony/ims/ImsCallProfile;

    iput-object p1, p0, Lcom/android/ims/a;->c:Landroid/telephony/ims/ImsCallProfile;

    .line 1186
    iget-object p1, p0, Lcom/android/ims/a;->c:Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {p0, p1}, Lcom/android/ims/a;->c(Landroid/telephony/ims/ImsCallProfile;)V

    const/4 p1, 0x0

    .line 1187
    iput-object p1, p0, Lcom/android/ims/a;->w:Landroid/telephony/ims/ImsCallProfile;

    .line 1191
    :cond_2
    iget-boolean p1, p0, Lcom/android/ims/a;->o:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/android/ims/a;->r:I

    const/4 p2, 0x6

    if-ne p1, p2, :cond_3

    .line 1192
    iput v1, p0, Lcom/android/ims/a;->r:I

    .line 1194
    :cond_3
    monitor-exit v0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "accept :: "

    .line 1176
    invoke-virtual {p0, p2, p1}, Lcom/android/ims/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1177
    new-instance p2, Lcom/android/ims/ImsException;

    const-string v2, "accept()"

    invoke-direct {p2, v2, p1, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw p2

    .line 1169
    :cond_4
    new-instance p1, Lcom/android/ims/ImsException;

    const-string p2, "No call to answer"

    const/16 v1, 0x94

    invoke-direct {p1, p2, v1}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p1

    :catchall_0
    move-exception p1

    .line 1194
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final a(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 719
    iget-object v0, p0, Lcom/android/ims/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 720
    :try_start_0
    iput-object p1, p0, Lcom/android/ims/a;->c:Landroid/telephony/ims/ImsCallProfile;

    .line 721
    iget-object p1, p0, Lcom/android/ims/a;->c:Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {p0, p1}, Lcom/android/ims/a;->c(Landroid/telephony/ims/ImsCallProfile;)V

    .line 722
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Landroid/telephony/ims/ImsCallSession;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1074
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "attachSession :: session="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/a;->d(Ljava/lang/String;)V

    .line 1076
    iget-object v0, p0, Lcom/android/ims/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 1077
    :try_start_0
    iput-object p1, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1080
    :try_start_1
    iget-object p1, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {p0}, Lcom/android/ims/a;->n()Landroid/telephony/ims/ImsCallSession$Listener;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/telephony/ims/ImsCallSession;->setListener(Landroid/telephony/ims/ImsCallSession$Listener;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, "attachSession :: "

    .line 1082
    invoke-virtual {p0, v1, p1}, Lcom/android/ims/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1083
    invoke-static {p1}, Lcom/android/ims/a;->a(Ljava/lang/Throwable;)V

    .line 1085
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final a(Landroid/telephony/ims/ImsConferenceState;)V
    .locals 8
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3277
    monitor-enter p0

    if-eqz p1, :cond_4

    .line 15847
    :try_start_0
    iget-object v0, p1, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 15851
    :cond_0
    iget-object v0, p1, Landroid/telephony/ims/ImsConferenceState;->mParticipants:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 15857
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 15858
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/ims/a;->m:Ljava/util/List;

    .line 15859
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15860
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 15862
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 15863
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v3, "status"

    .line 15864
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "user"

    .line 15865
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "display-text"

    .line 15866
    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "endpoint"

    .line 15867
    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15870
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "notifyConferenceStateUpdated :: key="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "ImsCall"

    invoke-static {v7, v2}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", status="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", user="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ImsCall"

    .line 15872
    invoke-static {v2, v4}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", displayName= "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ImsCall"

    .line 15873
    invoke-static {v2, v5}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", endpoint="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 15870
    invoke-virtual {p0, v2}, Lcom/android/ims/a;->d(Ljava/lang/String;)V

    .line 15877
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    if-nez v0, :cond_2

    const-string v0, ""

    .line 15881
    :cond_2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 15882
    invoke-static {v3}, Landroid/telephony/ims/ImsConferenceState;->getConnectionStateForStatus(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x6

    if-eq v3, v4, :cond_1

    .line 15885
    new-instance v4, Landroid/telecom/ConferenceParticipant;

    invoke-direct {v4, v2, v5, v0, v3}, Landroid/telecom/ConferenceParticipant;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;I)V

    .line 15887
    iget-object v0, p0, Lcom/android/ims/a;->m:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 15891
    :cond_3
    iget-object v0, p0, Lcom/android/ims/a;->m:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/ims/a;->s:Lcom/android/ims/a$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    .line 15893
    :try_start_1
    iget-object v0, p0, Lcom/android/ims/a;->s:Lcom/android/ims/a$b;

    iget-object v1, p0, Lcom/android/ims/a;->m:Ljava/util/List;

    invoke-virtual {v0, p0, v1}, Lcom/android/ims/a$b;->onConferenceParticipantsStateChanged(Lcom/android/ims/a;Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "notifyConferenceStateUpdated :: "

    .line 15895
    invoke-virtual {p0, v1, v0}, Lcom/android/ims/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 3279
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/ims/a;->s:Lcom/android/ims/a$b;

    .line 3280
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_5

    .line 3284
    :try_start_3
    invoke-virtual {v0, p0, p1}, Lcom/android/ims/a$b;->onCallConferenceStateUpdated(Lcom/android/ims/a;Landroid/telephony/ims/ImsConferenceState;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    return-void

    :catch_1
    move-exception p1

    const-string v0, "callSessionConferenceStateUpdated :: "

    .line 3286
    invoke-virtual {p0, v0, p1}, Lcom/android/ims/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    return-void

    .line 3280
    :goto_2
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final a(Lcom/android/ims/a$b;)V
    .locals 1

    .line 4006
    iget-object v0, p0, Lcom/android/ims/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 4007
    :try_start_0
    iput-object p1, p0, Lcom/android/ims/a;->s:Lcom/android/ims/a$b;

    .line 4010
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 4017
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Lcom/android/ims/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1455
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "merge(1) :: bgImsCall="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/a;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_10

    .line 1462
    iget-object v0, p0, Lcom/android/ims/a;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 5415
    :try_start_0
    iput-boolean v1, p0, Lcom/android/ims/a;->e:Z

    .line 6415
    iput-boolean v1, p1, Lcom/android/ims/a;->e:Z

    .line 1467
    invoke-virtual {p0}, Lcom/android/ims/a;->h()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/android/ims/a;->h()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/a;->h()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 7351
    :cond_1
    iput-object p1, p0, Lcom/android/ims/a;->t:Lcom/android/ims/a;

    .line 7352
    iput-object v3, p0, Lcom/android/ims/a;->u:Lcom/android/ims/a;

    .line 7354
    iput-object p0, p1, Lcom/android/ims/a;->u:Lcom/android/ims/a;

    .line 7355
    iput-object v3, p1, Lcom/android/ims/a;->t:Lcom/android/ims/a;

    goto :goto_0

    .line 7365
    :cond_2
    iput-object p1, p0, Lcom/android/ims/a;->u:Lcom/android/ims/a;

    .line 7366
    iput-object v3, p0, Lcom/android/ims/a;->t:Lcom/android/ims/a;

    .line 7368
    iput-object v3, p1, Lcom/android/ims/a;->u:Lcom/android/ims/a;

    .line 7369
    iput-object p0, p1, Lcom/android/ims/a;->t:Lcom/android/ims/a;

    .line 1478
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1480
    invoke-virtual {p0}, Lcom/android/ims/a;->h()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1481
    iput-boolean v1, p0, Lcom/android/ims/a;->v:Z

    goto :goto_1

    :cond_3
    const-string p1, "merge : mMergeRequestedByConference not set"

    .line 1483
    invoke-virtual {p0, p1}, Lcom/android/ims/a;->d(Ljava/lang/String;)V

    :goto_1
    const-string p1, "merge :: "

    .line 7386
    invoke-virtual {p0, p1}, Lcom/android/ims/a;->d(Ljava/lang/String;)V

    .line 7388
    iget-object p1, p0, Lcom/android/ims/a;->a:Ljava/lang/Object;

    monitor-enter p1

    .line 7391
    :try_start_1
    invoke-direct {p0, p0}, Lcom/android/ims/a;->n(Lcom/android/ims/a;)Z

    move-result v0

    const/16 v2, 0x66

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 8415
    iput-boolean v3, p0, Lcom/android/ims/a;->e:Z

    .line 7393
    iget-object v0, p0, Lcom/android/ims/a;->t:Lcom/android/ims/a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/ims/a;->t:Lcom/android/ims/a;

    .line 9415
    iput-boolean v3, v0, Lcom/android/ims/a;->e:Z

    .line 7394
    :cond_4
    iget-object v0, p0, Lcom/android/ims/a;->u:Lcom/android/ims/a;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/ims/a;->u:Lcom/android/ims/a;

    .line 10415
    iput-boolean v3, v0, Lcom/android/ims/a;->e:Z

    .line 7395
    :cond_5
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v1, "Call update is in progress"

    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 7401
    :cond_6
    iget-object v0, p0, Lcom/android/ims/a;->t:Lcom/android/ims/a;

    invoke-direct {p0, v0}, Lcom/android/ims/a;->n(Lcom/android/ims/a;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/ims/a;->u:Lcom/android/ims/a;

    invoke-direct {p0, v0}, Lcom/android/ims/a;->n(Lcom/android/ims/a;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_5

    .line 7409
    :cond_7
    iget-object v0, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    if-eqz v0, :cond_c

    .line 7417
    iget-boolean v0, p0, Lcom/android/ims/a;->p:Z

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/ims/a;->n:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x111011a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_2

    .line 7440
    :cond_8
    iget-object v0, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    invoke-direct {p0}, Lcom/android/ims/a;->x()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/telephony/ims/ImsCallSession;->hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 7441
    iput-boolean v1, p0, Lcom/android/ims/a;->p:Z

    const/4 v0, 0x2

    .line 7442
    iput v0, p0, Lcom/android/ims/a;->r:I

    goto :goto_4

    .line 7420
    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/android/ims/a;->t:Lcom/android/ims/a;

    const/4 v1, 0x4

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/ims/a;->t:Lcom/android/ims/a;

    invoke-virtual {v0}, Lcom/android/ims/a;->h()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/ims/a;->h()Z

    move-result v0

    if-nez v0, :cond_a

    .line 7428
    iput v1, p0, Lcom/android/ims/a;->r:I

    .line 7429
    iget-object v0, p0, Lcom/android/ims/a;->t:Lcom/android/ims/a;

    iput v1, v0, Lcom/android/ims/a;->r:I

    goto :goto_3

    .line 7430
    :cond_a
    iget-object v0, p0, Lcom/android/ims/a;->u:Lcom/android/ims/a;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/ims/a;->u:Lcom/android/ims/a;

    invoke-virtual {v0}, Lcom/android/ims/a;->h()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/android/ims/a;->h()Z

    move-result v0

    if-nez v0, :cond_b

    .line 7431
    iput v1, p0, Lcom/android/ims/a;->r:I

    .line 7432
    iget-object v0, p0, Lcom/android/ims/a;->u:Lcom/android/ims/a;

    iput v1, v0, Lcom/android/ims/a;->r:I

    .line 7435
    :cond_b
    :goto_3
    iget-object v0, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsCallSession;->merge()V

    .line 7444
    :goto_4
    monitor-exit p1

    return-void

    :cond_c
    const-string v0, "merge :: no call session"

    .line 7410
    invoke-direct {p0, v0}, Lcom/android/ims/a;->f(Ljava/lang/String;)V

    .line 7411
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v1, "No call session"

    const/16 v2, 0x94

    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 11415
    :cond_d
    :goto_5
    iput-boolean v3, p0, Lcom/android/ims/a;->e:Z

    .line 7403
    iget-object v0, p0, Lcom/android/ims/a;->t:Lcom/android/ims/a;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/ims/a;->t:Lcom/android/ims/a;

    .line 12415
    iput-boolean v3, v0, Lcom/android/ims/a;->e:Z

    .line 7404
    :cond_e
    iget-object v0, p0, Lcom/android/ims/a;->u:Lcom/android/ims/a;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/ims/a;->u:Lcom/android/ims/a;

    .line 13415
    iput-boolean v3, v0, Lcom/android/ims/a;->e:Z

    .line 7405
    :cond_f
    new-instance v0, Lcom/android/ims/ImsException;

    const-string v1, "Peer or host call update is in progress"

    invoke-direct {v0, v1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v0

    :catchall_0
    move-exception v0

    .line 7444
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception p1

    .line 1478
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 1458
    :cond_10
    new-instance p1, Lcom/android/ims/ImsException;

    const/16 v0, 0x65

    const-string v1, "No background call"

    invoke-direct {p1, v1, v0}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1204
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deflect :: session="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ImsCall"

    invoke-static {v1, p1}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/a;->d(Ljava/lang/String;)V

    .line 1206
    iget-object v0, p0, Lcom/android/ims/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 1207
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1213
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->deflect(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1218
    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception p1

    const-string v1, "deflect :: "

    .line 1215
    invoke-virtual {p0, v1, p1}, Lcom/android/ims/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1216
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "deflect()"

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v1

    .line 1208
    :cond_0
    new-instance p1, Lcom/android/ims/ImsException;

    const-string v1, "No call to deflect"

    const/16 v2, 0x94

    invoke-direct {p1, v1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p1

    :catchall_0
    move-exception p1

    .line 1218
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method final a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 3683
    invoke-direct {p0, p1}, Lcom/android/ims/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsCall"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final a(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1052
    iget-object v0, p0, Lcom/android/ims/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 1053
    :try_start_0
    iget-boolean v1, p0, Lcom/android/ims/a;->q:Z

    if-eq v1, p1, :cond_1

    .line 1054
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setMute :: turning mute "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v2, "on"

    goto :goto_0

    :cond_0
    const-string v2, "off"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/ims/a;->d(Ljava/lang/String;)V

    .line 1055
    iput-boolean p1, p0, Lcom/android/ims/a;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1058
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->setMute(Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, "setMute :: "

    .line 1060
    invoke-virtual {p0, v1, p1}, Lcom/android/ims/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1061
    invoke-static {p1}, Lcom/android/ims/a;->a(Ljava/lang/Throwable;)V

    .line 1064
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final a([Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1583
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "removeParticipants :: session="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/a;->d(Ljava/lang/String;)V

    .line 1584
    iget-object v0, p0, Lcom/android/ims/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 1585
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_0

    .line 1591
    iget-object v1, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->removeParticipants([Ljava/lang/String;)V

    .line 1593
    monitor-exit v0

    return-void

    :cond_0
    const-string p1, "removeParticipants :: "

    .line 1586
    invoke-direct {p0, p1}, Lcom/android/ims/a;->f(Ljava/lang/String;)V

    .line 1587
    new-instance p1, Lcom/android/ims/ImsException;

    const-string v1, "No call session"

    const/16 v2, 0x94

    invoke-direct {p1, v1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p1

    :catchall_0
    move-exception p1

    .line 1593
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b()Landroid/telephony/ims/ImsCallProfile;
    .locals 2

    .line 706
    iget-object v0, p0, Lcom/android/ims/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 707
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/a;->c:Landroid/telephony/ims/ImsCallProfile;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 708
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b(I)V
    .locals 2

    .line 1263
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "terminate :: reason="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/a;->d(Ljava/lang/String;)V

    .line 1265
    iget-object v0, p0, Lcom/android/ims/a;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1266
    :try_start_0
    iput-boolean v1, p0, Lcom/android/ims/a;->p:Z

    .line 1267
    iput-boolean v1, p0, Lcom/android/ims/a;->o:Z

    const/4 v1, 0x1

    .line 1268
    iput-boolean v1, p0, Lcom/android/ims/a;->C:Z

    .line 1270
    iget-object v1, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_0

    .line 1290
    iget-object v1, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->terminate(I)V

    .line 1292
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

.method public final b(Landroid/telephony/ims/ImsCallProfile;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    const-string v0, "RTT: sendRttModifyRequest"

    .line 2327
    invoke-virtual {p0, v0}, Lcom/android/ims/a;->d(Ljava/lang/String;)V

    .line 2329
    iget-object v0, p0, Lcom/android/ims/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2330
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_0

    .line 2335
    iget-object v1, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V

    .line 2336
    monitor-exit v0

    return-void

    :cond_0
    const-string p1, "RTT: sendRttModifyRequest :: no call session"

    .line 2331
    invoke-direct {p0, p1}, Lcom/android/ims/a;->f(Ljava/lang/String;)V

    .line 2332
    new-instance p1, Lcom/android/ims/ImsException;

    const-string v1, "No call session"

    const/16 v2, 0x94

    invoke-direct {p1, v1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p1

    :catchall_0
    move-exception p1

    .line 2336
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 1650
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendUssd :: ussdMessage="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/ims/a;->d(Ljava/lang/String;)V

    .line 1652
    iget-object v0, p0, Lcom/android/ims/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 1653
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_0

    .line 1659
    iget-object v1, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->sendUssd(Ljava/lang/String;)V

    .line 1660
    monitor-exit v0

    return-void

    :cond_0
    const-string p1, "sendUssd :: "

    .line 1654
    invoke-direct {p0, p1}, Lcom/android/ims/a;->f(Ljava/lang/String;)V

    .line 1655
    new-instance p1, Lcom/android/ims/ImsException;

    const-string v1, "No call session"

    const/16 v2, 0x94

    invoke-direct {p1, v1, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p1

    :catchall_0
    move-exception p1

    .line 1660
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Z)V
    .locals 4

    const-string v0, "sendRttModifyRequest"

    .line 1690
    invoke-virtual {p0, v0}, Lcom/android/ims/a;->d(Ljava/lang/String;)V

    .line 1692
    iget-object v0, p0, Lcom/android/ims/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 1693
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    if-nez v1, :cond_0

    const-string v1, "sendRttModifyRequest::no session"

    .line 1694
    invoke-direct {p0, v1}, Lcom/android/ims/a;->f(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 1696
    iget-object v1, p0, Lcom/android/ims/a;->c:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "sendRttModifyRequest::Already RTT call, ignoring request to turn on."

    .line 1697
    invoke-virtual {p0, p1}, Lcom/android/ims/a;->d(Ljava/lang/String;)V

    .line 1698
    monitor-exit v0

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 1699
    iget-object v1, p0, Lcom/android/ims/a;->c:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v1

    if-nez v1, :cond_2

    const-string p1, "sendRttModifyRequest::Not RTT call, ignoring request to turn off."

    .line 1700
    invoke-virtual {p0, p1}, Lcom/android/ims/a;->d(Ljava/lang/String;)V

    .line 1701
    monitor-exit v0

    return-void

    .line 1704
    :cond_2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1705
    iget-object v2, p0, Lcom/android/ims/a;->c:Landroid/telephony/ims/ImsCallProfile;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/telephony/ims/ImsCallProfile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1706
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 1707
    new-instance v2, Landroid/telephony/ims/ImsCallProfile;

    invoke-direct {v2, v1}, Landroid/telephony/ims/ImsCallProfile;-><init>(Landroid/os/Parcel;)V

    .line 1708
    iget-object v1, v2, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    if-eqz p1, :cond_3

    const/4 v3, 0x1

    :cond_3
    invoke-virtual {v1, v3}, Landroid/telephony/ims/ImsStreamMediaProfile;->setRttMode(I)V

    .line 1712
    iget-object p1, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {p1, v2}, Landroid/telephony/ims/ImsCallSession;->sendRttModifyRequest(Landroid/telephony/ims/ImsCallProfile;)V

    .line 1713
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c()Landroid/telephony/ims/ImsCallProfile;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 731
    iget-object v0, p0, Lcom/android/ims/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 732
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 738
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->getLocalCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "getLocalCallProfile :: "

    .line 740
    invoke-virtual {p0, v2, v1}, Lcom/android/ims/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 741
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "getLocalCallProfile()"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2

    .line 733
    :cond_0
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    :catchall_0
    move-exception v1

    .line 743
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2

    .line 1664
    iget-object v0, p0, Lcom/android/ims/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 1665
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    if-nez v1, :cond_0

    const-string v1, "sendRttMessage::no session"

    .line 1666
    invoke-direct {p0, v1}, Lcom/android/ims/a;->f(Ljava/lang/String;)V

    .line 1668
    :cond_0
    iget-object v1, p0, Lcom/android/ims/a;->c:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p1, "sendRttMessage::Not an rtt call, ignoring"

    .line 1669
    invoke-virtual {p0, p1}, Lcom/android/ims/a;->d(Ljava/lang/String;)V

    .line 1670
    monitor-exit v0

    return-void

    .line 1672
    :cond_1
    iget-object v1, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->sendRttMessage(Ljava/lang/String;)V

    .line 1673
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final c(Z)V
    .locals 2

    const-string v0, "sendRttModifyResponse"

    .line 1723
    invoke-virtual {p0, v0}, Lcom/android/ims/a;->d(Ljava/lang/String;)V

    .line 1725
    iget-object v0, p0, Lcom/android/ims/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 1726
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    if-nez v1, :cond_0

    const-string v1, "sendRttModifyResponse::no session"

    .line 1727
    invoke-direct {p0, v1}, Lcom/android/ims/a;->f(Ljava/lang/String;)V

    .line 1729
    :cond_0
    iget-object v1, p0, Lcom/android/ims/a;->c:Landroid/telephony/ims/ImsCallProfile;

    iget-object v1, v1, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "sendRttModifyResponse::Already RTT call, ignoring."

    .line 1730
    invoke-virtual {p0, p1}, Lcom/android/ims/a;->d(Ljava/lang/String;)V

    .line 1731
    monitor-exit v0

    return-void

    .line 1733
    :cond_1
    iget-object v1, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1, p1}, Landroid/telephony/ims/ImsCallSession;->sendRttModifyResponse(Z)V

    .line 1734
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final d()Landroid/telephony/ims/ImsCallProfile;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    .line 752
    iget-object v0, p0, Lcom/android/ims/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 753
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 759
    :try_start_1
    iget-object v1, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->getRemoteCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "getRemoteCallProfile :: "

    .line 761
    invoke-virtual {p0, v2, v1}, Lcom/android/ims/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 762
    new-instance v2, Lcom/android/ims/ImsException;

    const-string v3, "getRemoteCallProfile()"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    throw v2

    .line 754
    :cond_0
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    :catchall_0
    move-exception v1

    .line 764
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    .line 3650
    invoke-direct {p0, p1}, Lcom/android/ims/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "ImsCall"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final e()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;"
        }
    .end annotation

    .line 789
    iget-object v0, p0, Lcom/android/ims/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 790
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getConferenceParticipants :: mConferenceParticipants"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/ims/a;->m:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/ims/a;->d(Ljava/lang/String;)V

    .line 792
    iget-object v1, p0, Lcom/android/ims/a;->m:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 793
    monitor-exit v0

    return-object v1

    .line 795
    :cond_0
    iget-object v1, p0, Lcom/android/ims/a;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 796
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    monitor-exit v0

    return-object v1

    .line 798
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/ims/a;->m:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 799
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final f()Landroid/telephony/ims/ImsCallSession;
    .locals 2

    .line 825
    iget-object v0, p0, Lcom/android/ims/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 826
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 827
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final g()Z
    .locals 3

    .line 896
    iget-object v0, p0, Lcom/android/ims/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 897
    :try_start_0
    iget v1, p0, Lcom/android/ims/a;->r:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    .line 898
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final h()Z
    .locals 2

    .line 940
    iget-object v0, p0, Lcom/android/ims/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 941
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 942
    monitor-exit v0

    return v1

    .line 945
    :cond_0
    iget-object v1, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallSession;->isMultiparty()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 946
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final i()Z
    .locals 2

    .line 958
    iget-object v0, p0, Lcom/android/ims/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 959
    :try_start_0
    invoke-virtual {p0}, Lcom/android/ims/a;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/ims/a;->f:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 960
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final j()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    const-string v0, "reject :: reason=504"

    .line 1229
    invoke-virtual {p0, v0}, Lcom/android/ims/a;->d(Ljava/lang/String;)V

    .line 1231
    iget-object v0, p0, Lcom/android/ims/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 1232
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_0

    .line 1233
    iget-object v1, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    const/16 v2, 0x1f8

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallSession;->reject(I)V

    .line 1236
    :cond_0
    iget-boolean v1, p0, Lcom/android/ims/a;->o:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/ims/a;->w:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v1, :cond_2

    .line 1237
    sget-boolean v1, Lcom/android/ims/a;->k:Z

    if-eqz v1, :cond_1

    const-string v1, "reject :: call profile is not updated; destroy it..."

    .line 1238
    invoke-virtual {p0, v1}, Lcom/android/ims/a;->d(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    .line 1241
    iput-object v1, p0, Lcom/android/ims/a;->w:Landroid/telephony/ims/ImsCallProfile;

    .line 1245
    :cond_2
    iget-boolean v1, p0, Lcom/android/ims/a;->o:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/ims/a;->r:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_3

    const/4 v1, 0x0

    .line 1246
    iput v1, p0, Lcom/android/ims/a;->r:I

    .line 1248
    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final k()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    const-string v0, "hold :: "

    .line 1303
    invoke-virtual {p0, v0}, Lcom/android/ims/a;->d(Ljava/lang/String;)V

    .line 1305
    invoke-direct {p0}, Lcom/android/ims/a;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1306
    sget-boolean v0, Lcom/android/ims/a;->k:Z

    if-eqz v0, :cond_0

    const-string v0, "hold :: call is already on hold"

    .line 1307
    invoke-virtual {p0, v0}, Lcom/android/ims/a;->d(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 1312
    :cond_1
    iget-object v0, p0, Lcom/android/ims/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 1313
    :try_start_0
    iget v1, p0, Lcom/android/ims/a;->r:I

    if-nez v1, :cond_3

    .line 1320
    iget-object v1, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_2

    .line 1325
    iget-object v1, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    invoke-direct {p0}, Lcom/android/ims/a;->x()Landroid/telephony/ims/ImsStreamMediaProfile;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telephony/ims/ImsCallSession;->hold(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    const/4 v1, 0x1

    .line 1328
    iput-boolean v1, p0, Lcom/android/ims/a;->p:Z

    .line 1329
    iput v1, p0, Lcom/android/ims/a;->r:I

    .line 1330
    monitor-exit v0

    return-void

    .line 1321
    :cond_2
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 1314
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hold :: update is in progress; request="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/ims/a;->r:I

    .line 1315
    invoke-static {v2}, Lcom/android/ims/a;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1314
    invoke-direct {p0, v1}, Lcom/android/ims/a;->f(Ljava/lang/String;)V

    .line 1316
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "Call update is in progress"

    const/16 v3, 0x66

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    :catchall_0
    move-exception v1

    .line 1330
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final l()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    const-string v0, "resume :: "

    .line 1340
    invoke-virtual {p0, v0}, Lcom/android/ims/a;->d(Ljava/lang/String;)V

    .line 1342
    invoke-direct {p0}, Lcom/android/ims/a;->w()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1343
    sget-boolean v0, Lcom/android/ims/a;->k:Z

    if-eqz v0, :cond_0

    const-string v0, "resume :: call is not being held"

    .line 1344
    invoke-virtual {p0, v0}, Lcom/android/ims/a;->d(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 1349
    :cond_1
    iget-object v0, p0, Lcom/android/ims/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 1350
    :try_start_0
    iget v1, p0, Lcom/android/ims/a;->r:I

    if-nez v1, :cond_4

    .line 1357
    iget-object v1, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 1365
    iput v1, p0, Lcom/android/ims/a;->r:I

    .line 1366
    iget-object v2, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    .line 4800
    new-instance v3, Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-direct {v3}, Landroid/telephony/ims/ImsStreamMediaProfile;-><init>()V

    .line 4802
    iget-object v4, p0, Lcom/android/ims/a;->c:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v4, :cond_2

    .line 4806
    iget-object v4, p0, Lcom/android/ims/a;->c:Landroid/telephony/ims/ImsCallProfile;

    iget-object v4, v4, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v4, v4, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    iput v4, v3, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioQuality:I

    .line 4807
    iget-object v4, p0, Lcom/android/ims/a;->c:Landroid/telephony/ims/ImsCallProfile;

    iget-object v4, v4, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    iget v4, v4, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    iput v4, v3, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    .line 4808
    iput v1, v3, Landroid/telephony/ims/ImsStreamMediaProfile;->mAudioDirection:I

    .line 4810
    iget v4, v3, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoQuality:I

    if-eqz v4, :cond_2

    .line 4811
    iput v1, v3, Landroid/telephony/ims/ImsStreamMediaProfile;->mVideoDirection:I

    .line 1366
    :cond_2
    invoke-virtual {v2, v3}, Landroid/telephony/ims/ImsCallSession;->resume(Landroid/telephony/ims/ImsStreamMediaProfile;)V

    .line 1367
    monitor-exit v0

    return-void

    :cond_3
    const-string v1, "resume :: "

    .line 1358
    invoke-direct {p0, v1}, Lcom/android/ims/a;->f(Ljava/lang/String;)V

    .line 1359
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "No call session"

    const/16 v3, 0x94

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 1351
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resume :: update is in progress; request="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/ims/a;->r:I

    .line 1352
    invoke-static {v2}, Lcom/android/ims/a;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1351
    invoke-direct {p0, v1}, Lcom/android/ims/a;->f(Ljava/lang/String;)V

    .line 1353
    new-instance v1, Lcom/android/ims/ImsException;

    const-string v2, "Call update is in progress"

    const/16 v3, 0x66

    invoke-direct {v1, v2, v3}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw v1

    :catchall_0
    move-exception v1

    .line 1367
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final m()Z
    .locals 1

    .line 1682
    iget-object v0, p0, Lcom/android/ims/a;->c:Landroid/telephony/ims/ImsCallProfile;

    iget-object v0, v0, Landroid/telephony/ims/ImsCallProfile;->mMediaProfile:Landroid/telephony/ims/ImsStreamMediaProfile;

    invoke-virtual {v0}, Landroid/telephony/ims/ImsStreamMediaProfile;->isRttCall()Z

    move-result v0

    return v0
.end method

.method final n()Landroid/telephony/ims/ImsCallSession$Listener;
    .locals 1

    .line 1752
    new-instance v0, Lcom/android/ims/a$a;

    invoke-direct {v0, p0}, Lcom/android/ims/a$a;-><init>(Lcom/android/ims/a;)V

    iput-object v0, p0, Lcom/android/ims/a;->i:Lcom/android/ims/a$a;

    .line 1753
    iget-object v0, p0, Lcom/android/ims/a;->i:Lcom/android/ims/a$a;

    return-object v0
.end method

.method public final o()Z
    .locals 2

    .line 2006
    iget-object v0, p0, Lcom/android/ims/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2007
    :try_start_0
    iget-boolean v1, p0, Lcom/android/ims/a;->v:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 2008
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final p()V
    .locals 2

    .line 2016
    iget-object v0, p0, Lcom/android/ims/a;->a:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2017
    :try_start_0
    iput-boolean v1, p0, Lcom/android/ims/a;->v:Z

    .line 2018
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final q()Landroid/telephony/ims/ImsCallSession;
    .locals 2

    .line 2027
    iget-object v0, p0, Lcom/android/ims/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2028
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2029
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final r()Z
    .locals 2

    .line 3593
    iget-object v0, p0, Lcom/android/ims/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3594
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/a;->c:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/ims/a;->c:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1}, Landroid/telephony/ims/ImsCallProfile;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 3595
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final s()Z
    .locals 4

    .line 3609
    iget-object v0, p0, Lcom/android/ims/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3610
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/a;->c:Landroid/telephony/ims/ImsCallProfile;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3611
    monitor-exit v0

    return v2

    .line 3613
    :cond_0
    invoke-virtual {p0}, Lcom/android/ims/a;->t()I

    move-result v1

    const/16 v3, 0x12

    if-ne v1, v3, :cond_1

    const/4 v2, 0x1

    .line 3614
    :cond_1
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    .line 3615
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final t()I
    .locals 4

    .line 3623
    iget-object v0, p0, Lcom/android/ims/a;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 3624
    :try_start_0
    iget-object v1, p0, Lcom/android/ims/a;->c:Landroid/telephony/ims/ImsCallProfile;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3625
    monitor-exit v0

    return v2

    .line 3627
    :cond_0
    iget-object v1, p0, Lcom/android/ims/a;->c:Landroid/telephony/ims/ImsCallProfile;

    const-string v3, "CallRadioTech"

    invoke-virtual {v1, v3}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3628
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3629
    :cond_1
    iget-object v1, p0, Lcom/android/ims/a;->c:Landroid/telephony/ims/ImsCallProfile;

    const-string v3, "callRadioTech"

    invoke-virtual {v1, v3}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3636
    :cond_2
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3641
    :catch_0
    :try_start_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    .line 3642
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 3504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ImsCall objId:"

    .line 3505
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3506
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " onHold:"

    .line 3507
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3508
    invoke-direct {p0}, Lcom/android/ims/a;->w()Z

    move-result v1

    const-string v2, "Y"

    const-string v3, "N"

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mute:"

    .line 3509
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3510
    invoke-direct {p0}, Lcom/android/ims/a;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3511
    iget-object v1, p0, Lcom/android/ims/a;->c:Landroid/telephony/ims/ImsCallProfile;

    if-eqz v1, :cond_2

    .line 3512
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, " mCallProfile:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/ims/a;->c:Landroid/telephony/ims/ImsCallProfile;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " tech:"

    .line 3513
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3514
    iget-object v1, p0, Lcom/android/ims/a;->c:Landroid/telephony/ims/ImsCallProfile;

    const-string v4, "CallRadioTech"

    invoke-virtual {v1, v4}, Landroid/telephony/ims/ImsCallProfile;->getCallExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v1, " updateRequest:"

    .line 3516
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3517
    iget v1, p0, Lcom/android/ims/a;->r:I

    invoke-static {v1}, Lcom/android/ims/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " merging:"

    .line 3518
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3519
    invoke-direct {p0}, Lcom/android/ims/a;->B()Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v1, v2

    goto :goto_2

    :cond_3
    move-object v1, v3

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3520
    invoke-direct {p0}, Lcom/android/ims/a;->B()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 16396
    iget-object v1, p0, Lcom/android/ims/a;->t:Lcom/android/ims/a;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/ims/a;->u:Lcom/android/ims/a;

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_5

    const-string v1, "P"

    .line 3522
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_5
    const-string v1, "H"

    .line 3524
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_4
    const-string v1, " merge action pending:"

    .line 3527
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16405
    iget-boolean v1, p0, Lcom/android/ims/a;->e:Z

    if-eqz v1, :cond_7

    move-object v1, v2

    goto :goto_5

    :cond_7
    move-object v1, v3

    .line 3528
    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " merged:"

    .line 3529
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16977
    iget-boolean v1, p0, Lcom/android/ims/a;->d:Z

    if-eqz v1, :cond_8

    move-object v1, v2

    goto :goto_6

    :cond_8
    move-object v1, v3

    .line 3530
    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " multiParty:"

    .line 3531
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3532
    invoke-virtual {p0}, Lcom/android/ims/a;->h()Z

    move-result v1

    if-eqz v1, :cond_9

    move-object v1, v2

    goto :goto_7

    :cond_9
    move-object v1, v3

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " confHost:"

    .line 3533
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3534
    invoke-virtual {p0}, Lcom/android/ims/a;->i()Z

    move-result v1

    if-eqz v1, :cond_a

    move-object v1, v2

    goto :goto_8

    :cond_a
    move-object v1, v3

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " buried term:"

    .line 3535
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3536
    iget-boolean v1, p0, Lcom/android/ims/a;->A:Z

    if-eqz v1, :cond_b

    move-object v1, v2

    goto :goto_9

    :cond_b
    move-object v1, v3

    :goto_9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isVideo: "

    .line 3537
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3538
    invoke-virtual {p0}, Lcom/android/ims/a;->r()Z

    move-result v1

    if-eqz v1, :cond_c

    move-object v1, v2

    goto :goto_a

    :cond_c
    move-object v1, v3

    :goto_a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " wasVideo: "

    .line 3539
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3540
    iget-boolean v1, p0, Lcom/android/ims/a;->g:Z

    if-eqz v1, :cond_d

    move-object v1, v2

    goto :goto_b

    :cond_d
    move-object v1, v3

    :goto_b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isWifi: "

    .line 3541
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3542
    invoke-virtual {p0}, Lcom/android/ims/a;->s()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_c

    :cond_e
    move-object v2, v3

    :goto_c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " session:"

    .line 3543
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3544
    iget-object v1, p0, Lcom/android/ims/a;->b:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " transientSession:"

    .line 3545
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3546
    iget-object v1, p0, Lcom/android/ims/a;->z:Landroid/telephony/ims/ImsCallSession;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 3547
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3548
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
