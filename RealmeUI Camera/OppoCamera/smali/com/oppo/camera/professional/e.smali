.class public Lcom/oppo/camera/professional/e;
.super Lcom/oppo/camera/d/a;
.source "ProfessionalCapMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/oppo/camera/professional/ListProfessionalModeBar$ModeBarStateListener;
.implements Lcom/oppo/camera/professional/ListProfessionalModeBar$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oppo/camera/professional/e$a;
    }
.end annotation


# instance fields
.field private W:Z

.field private X:Z

.field private Y:Z

.field private Z:Z

.field private aa:Z

.field private ab:Z

.field private ac:Z

.field private ad:Ljava/lang/Thread;

.field private ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

.field private af:Lcom/oppo/camera/professional/c;

.field private ag:Landroid/os/Handler;

.field private ah:Lcom/oppo/camera/professional/e$a;

.field private ai:Landroid/media/Image;

.field private aj:Landroid/hardware/camera2/TotalCaptureResult;

.field private ak:Lcom/oppo/camera/ui/menu/levelcontrol/b;

.field private al:[Ljava/lang/String;

.field private am:Z

.field private an:Lcom/oppo/camera/professional/c$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V
    .locals 0

    .line 111
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oppo/camera/d/a;-><init>(Landroid/app/Activity;Lcom/oppo/camera/d/b;Lcom/oppo/camera/ui/c;Lcom/oppo/camera/ui/preview/a/i;)V

    const/4 p1, 0x0

    .line 89
    iput-boolean p1, p0, Lcom/oppo/camera/professional/e;->W:Z

    .line 90
    iput-boolean p1, p0, Lcom/oppo/camera/professional/e;->X:Z

    .line 91
    iput-boolean p1, p0, Lcom/oppo/camera/professional/e;->Y:Z

    .line 92
    iput-boolean p1, p0, Lcom/oppo/camera/professional/e;->Z:Z

    const/4 p2, 0x1

    .line 93
    iput-boolean p2, p0, Lcom/oppo/camera/professional/e;->aa:Z

    .line 94
    iput-boolean p1, p0, Lcom/oppo/camera/professional/e;->ab:Z

    .line 95
    iput-boolean p1, p0, Lcom/oppo/camera/professional/e;->ac:Z

    const/4 p1, 0x0

    .line 97
    iput-object p1, p0, Lcom/oppo/camera/professional/e;->ad:Ljava/lang/Thread;

    .line 98
    iput-object p1, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    .line 99
    iput-object p1, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    .line 101
    iput-object p1, p0, Lcom/oppo/camera/professional/e;->ag:Landroid/os/Handler;

    .line 102
    iput-object p1, p0, Lcom/oppo/camera/professional/e;->ah:Lcom/oppo/camera/professional/e$a;

    .line 103
    iput-object p1, p0, Lcom/oppo/camera/professional/e;->ai:Landroid/media/Image;

    .line 104
    iput-object p1, p0, Lcom/oppo/camera/professional/e;->aj:Landroid/hardware/camera2/TotalCaptureResult;

    .line 105
    iput-object p1, p0, Lcom/oppo/camera/professional/e;->ak:Lcom/oppo/camera/ui/menu/levelcontrol/b;

    const-string p1, "ALGO_SUPERPHOTO"

    .line 106
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/professional/e;->al:[Ljava/lang/String;

    .line 107
    iput-boolean p2, p0, Lcom/oppo/camera/professional/e;->am:Z

    .line 2284
    new-instance p1, Lcom/oppo/camera/professional/e$5;

    invoke-direct {p1, p0}, Lcom/oppo/camera/professional/e$5;-><init>(Lcom/oppo/camera/professional/e;)V

    iput-object p1, p0, Lcom/oppo/camera/professional/e;->an:Lcom/oppo/camera/professional/c$a;

    return-void
.end method

.method static synthetic A(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/e/f;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    return-object p0
.end method

.method static synthetic B(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/e/f;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    return-object p0
.end method

.method static synthetic C(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/e/f;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    return-object p0
.end method

.method static synthetic D(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/e/f;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    return-object p0
.end method

.method static synthetic E(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/ui/c;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic F(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/ui/c;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic G(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/ui/c;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic H(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/ui/c;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic I(Lcom/oppo/camera/professional/e;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/oppo/camera/professional/e;->t:Z

    return p0
.end method

.method static synthetic J(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/d/b;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/oppo/camera/professional/e;->L:Lcom/oppo/camera/d/b;

    return-object p0
.end method

.method static synthetic K(Lcom/oppo/camera/professional/e;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/oppo/camera/professional/e;->X:Z

    return p0
.end method

.method static synthetic L(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/d/b;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/oppo/camera/professional/e;->L:Lcom/oppo/camera/d/b;

    return-object p0
.end method

.method private a(FLjava/util/ArrayList;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    if-eqz p2, :cond_3

    .line 521
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 525
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v1, p1

    .line 526
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    move v2, v1

    move v1, v0

    .line 529
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 530
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float/2addr v3, p1

    .line 532
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v2

    if-gez v4, :cond_1

    .line 533
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    move v2, v1

    move v1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_1
    const/4 p1, -0x1

    return p1
.end method

.method private a(ILjava/util/ArrayList;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    if-eqz p2, :cond_3

    .line 500
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 504
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int/2addr v1, p1

    .line 505
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    move v2, v1

    move v1, v0

    .line 508
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 509
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v3, p1

    .line 511
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v4, v2, :cond_1

    .line 512
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    move v2, v1

    move v1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_1
    const/4 p1, -0x1

    return p1
.end method

.method private a(JLjava/util/ArrayList;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    if-eqz p3, :cond_3

    .line 542
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 546
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long/2addr v1, p1

    .line 547
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    move-wide v2, v1

    move v1, v0

    .line 550
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 551
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v4, p1

    .line 553
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    cmp-long v6, v6, v2

    if-gez v6, :cond_1

    .line 554
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    move-wide v2, v1

    move v1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_1
    const/4 p1, -0x1

    return p1
.end method

.method static synthetic a(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/ui/menu/levelcontrol/b;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/oppo/camera/professional/e;->ak:Lcom/oppo/camera/ui/menu/levelcontrol/b;

    return-object p0
.end method

.method private a(ILjava/lang/String;Z)V
    .locals 1

    .line 2329
    new-instance p3, Lcom/oppo/camera/statistics/model/MenuClickMsgData;

    iget-object v0, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    invoke-direct {p3, v0}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 2330
    invoke-virtual {p3, v0}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->buildEvent(Z)V

    if-eqz p1, :cond_4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0xf

    .line 2355
    iput p1, p3, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    const-string p1, "profession_ev_value"

    .line 2356
    iput-object p1, p3, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItem:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/16 p1, 0xe

    .line 2350
    iput p1, p3, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    const-string p1, "profession_focus_value"

    .line 2351
    iput-object p1, p3, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItem:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/16 p1, 0xd

    .line 2345
    iput p1, p3, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    const-string p1, "profession_wb_value"

    .line 2346
    iput-object p1, p3, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItem:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/16 p1, 0x1b

    .line 2339
    iput p1, p3, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    const-string p1, "profession_exp_time"

    .line 2340
    iput-object p1, p3, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItem:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/16 p1, 0x1c

    .line 2334
    iput p1, p3, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    const-string p1, "profession_ISO_value"

    .line 2335
    iput-object p1, p3, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItem:Ljava/lang/String;

    .line 2363
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/camera/professional/e;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p3, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCaptureMode:Ljava/lang/String;

    .line 2364
    iget p1, p0, Lcom/oppo/camera/professional/e;->j:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p3, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCameraId:Ljava/lang/String;

    .line 2365
    iget p1, p0, Lcom/oppo/camera/professional/e;->g:I

    iput p1, p3, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mOrientation:I

    .line 2366
    iput-object p2, p3, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mItemValue:Ljava/lang/String;

    .line 2368
    invoke-virtual {p3}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->report()V

    return-void
.end method

.method private a(Lcom/oppo/camera/professional/ListProfessionalModeBar;ILcom/oppo/camera/professional/ListModeBarAdapter;Lcom/oppo/camera/professional/ListProfessionalModeBar$OnItemClickListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 720
    invoke-virtual {p1, p2}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->setId(I)V

    .line 721
    invoke-virtual {p1, p3}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->setAdapter(Lcom/oppo/camera/professional/ListModeBarAdapter;)V

    .line 722
    invoke-virtual {p1, p4}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->setOnItemClickListener(Lcom/oppo/camera/professional/ListProfessionalModeBar$OnItemClickListener;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/professional/e;I)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/oppo/camera/professional/e;->y(I)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/professional/e;ILjava/lang/String;Z)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/oppo/camera/professional/e;->a(ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/professional/e;Z)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/oppo/camera/professional/e;->n(Z)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/professional/e;ZZ)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/professional/e;->e(ZZ)V

    return-void
.end method

.method static synthetic a(Lcom/oppo/camera/professional/e;Ljava/lang/String;)Z
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/oppo/camera/professional/e;->n(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private b(IZ)V
    .locals 4

    .line 2292
    new-instance v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;

    iget-object v1, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 2293
    invoke-virtual {v0, v1}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->buildEvent(Z)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v3, 0x3

    if-eq p1, v3, :cond_1

    const/4 v3, 0x4

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0xf

    .line 2312
    iput p1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    goto :goto_0

    :cond_1
    const/16 p1, 0xe

    .line 2308
    iput p1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    goto :goto_0

    :cond_2
    const/16 p1, 0xd

    .line 2304
    iput p1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    goto :goto_0

    :cond_3
    const/16 p1, 0x1b

    .line 2300
    iput p1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    goto :goto_0

    :cond_4
    const/16 p1, 0x1c

    .line 2297
    iput p1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyId:I

    :goto_0
    if-eqz p2, :cond_5

    move v1, v2

    .line 2319
    :cond_5
    iput v1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mFuncKeyResult:I

    .line 2321
    invoke-virtual {p0}, Lcom/oppo/camera/professional/e;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCaptureMode:Ljava/lang/String;

    .line 2322
    iget p1, p0, Lcom/oppo/camera/professional/e;->j:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mCameraId:Ljava/lang/String;

    .line 2323
    iget p1, p0, Lcom/oppo/camera/professional/e;->g:I

    iput p1, v0, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->mOrientation:I

    .line 2325
    invoke-virtual {v0}, Lcom/oppo/camera/statistics/model/MenuClickMsgData;->report()V

    return-void
.end method

.method static synthetic b(Lcom/oppo/camera/professional/e;Z)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/oppo/camera/professional/e;->o(Z)V

    return-void
.end method

.method private b(Ljava/lang/String;Z)V
    .locals 4

    .line 1785
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1786
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFlashModeMenuEnable, exposureTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mDisPlayFlashIcon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProfessionalCapMode"

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1788
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1790
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "pref_camera_flashmode_key"

    if-nez v1, :cond_0

    .line 1791
    :try_start_1
    iget-object v1, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    if-eqz v1, :cond_1

    .line 1792
    iget-object v1, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/oppo/camera/ui/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 1793
    invoke-direct {p0, v1, p2}, Lcom/oppo/camera/professional/e;->e(ZZ)V

    goto :goto_0

    .line 1796
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 1797
    invoke-direct {p0, v1, p2}, Lcom/oppo/camera/professional/e;->e(ZZ)V

    .line 1798
    iget-object p2, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    const-string v1, "off"

    invoke-interface {p2, v2, v1}, Lcom/oppo/camera/ui/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1803
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1805
    iget-object p2, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    if-eqz p2, :cond_1

    .line 1806
    iget-object p2, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    new-instance v1, Lcom/oppo/camera/professional/e$4;

    invoke-direct {v1, p0, p1, v0}, Lcom/oppo/camera/professional/e$4;-><init>(Lcom/oppo/camera/professional/e;Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p2, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/oppo/camera/professional/e;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/oppo/camera/professional/e;->q:Z

    return p0
.end method

.method static synthetic c(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/professional/c;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    return-object p0
.end method

.method private cH()V
    .locals 4

    .line 178
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ak:Lcom/oppo/camera/ui/menu/levelcontrol/b;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Lcom/oppo/camera/ui/menu/levelcontrol/b;

    iget-object v1, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/camera/professional/e;->ak:Lcom/oppo/camera/ui/menu/levelcontrol/b;

    .line 180
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ak:Lcom/oppo/camera/ui/menu/levelcontrol/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/b;->setEnabled(Z)V

    .line 181
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ak:Lcom/oppo/camera/ui/menu/levelcontrol/b;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/menu/levelcontrol/b;->setFocusable(Z)V

    .line 182
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ak:Lcom/oppo/camera/ui/menu/levelcontrol/b;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/b;->setClickable(Z)V

    .line 183
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ak:Lcom/oppo/camera/ui/menu/levelcontrol/b;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/b;->setNormalShape(Z)V

    .line 184
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ak:Lcom/oppo/camera/ui/menu/levelcontrol/b;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/b;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ak:Lcom/oppo/camera/ui/menu/levelcontrol/b;

    iget-object v1, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    .line 186
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0f009c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 185
    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/b;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070373

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 189
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 190
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-direct {v1, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x15

    .line 191
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xb

    .line 192
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0xf

    .line 193
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 194
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0601ea

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 195
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ak:Lcom/oppo/camera/ui/menu/levelcontrol/b;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 196
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    const v1, 0x7f0800af

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/oppo/camera/professional/e;->ak:Lcom/oppo/camera/ui/menu/levelcontrol/b;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 197
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ak:Lcom/oppo/camera/ui/menu/levelcontrol/b;

    iget-object v1, p0, Lcom/oppo/camera/professional/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v1}, Lcom/oppo/camera/d/b;->k()I

    move-result v1

    invoke-virtual {v0, v1, v2}, Lcom/oppo/camera/ui/menu/levelcontrol/b;->a(IZ)V

    .line 198
    invoke-direct {p0}, Lcom/oppo/camera/professional/e;->cI()V

    :cond_0
    return-void
.end method

.method private cI()V
    .locals 5

    .line 203
    invoke-static {}, Lcom/a/a/j;->c()Lcom/a/a/j;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Lcom/a/a/j;->b()Lcom/a/a/f;

    move-result-object v0

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    .line 205
    invoke-static {v1, v2, v3, v4}, Lcom/a/a/g;->b(DD)Lcom/a/a/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/f;->a(Lcom/a/a/g;)Lcom/a/a/f;

    .line 207
    new-instance v1, Lcom/oppo/camera/professional/e$1;

    invoke-direct {v1, p0}, Lcom/oppo/camera/professional/e$1;-><init>(Lcom/oppo/camera/professional/e;)V

    invoke-virtual {v0, v1}, Lcom/a/a/f;->a(Lcom/a/a/h;)Lcom/a/a/f;

    move-result-object v1

    .line 216
    new-instance v2, Lcom/oppo/camera/professional/e$6;

    invoke-direct {v2, p0}, Lcom/oppo/camera/professional/e$6;-><init>(Lcom/oppo/camera/professional/e;)V

    invoke-virtual {v0, v2}, Lcom/a/a/f;->a(Lcom/a/a/h;)Lcom/a/a/f;

    move-result-object v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 223
    invoke-virtual {v1, v2, v3}, Lcom/a/a/f;->a(D)Lcom/a/a/f;

    .line 224
    invoke-virtual {v0, v2, v3}, Lcom/a/a/f;->a(D)Lcom/a/a/f;

    .line 226
    iget-object v2, p0, Lcom/oppo/camera/professional/e;->ak:Lcom/oppo/camera/ui/menu/levelcontrol/b;

    new-instance v3, Lcom/oppo/camera/professional/e$7;

    invoke-direct {v3, p0, v1, v0}, Lcom/oppo/camera/professional/e$7;-><init>(Lcom/oppo/camera/professional/e;Lcom/a/a/f;Lcom/a/a/f;)V

    invoke-virtual {v2, v3}, Lcom/oppo/camera/ui/menu/levelcontrol/b;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private cJ()Ljava/lang/String;
    .locals 3

    .line 495
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->O:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    .line 496
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_professional_exposure_time_key"

    .line 495
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private cK()V
    .locals 3

    .line 727
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_3

    .line 728
    iget-boolean v0, p0, Lcom/oppo/camera/professional/e;->W:Z

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    iget-object v1, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    .line 730
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 729
    invoke-interface {v0, v1, v2}, Lcom/oppo/camera/e/f;->a(J)V

    .line 731
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->t(I)V

    goto :goto_1

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oppo/camera/professional/c;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 735
    iget-object v1, p0, Lcom/oppo/camera/professional/e;->O:Landroid/content/SharedPreferences;

    const-string v2, "pref_professional_whitebalance_key"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 736
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 737
    invoke-virtual {p0}, Lcom/oppo/camera/professional/e;->cE()V

    goto :goto_0

    .line 739
    :cond_1
    invoke-virtual {p0}, Lcom/oppo/camera/professional/e;->cD()V

    .line 742
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/camera/professional/e;->cF()V

    const/4 v0, 0x0

    .line 743
    invoke-virtual {p0, v0}, Lcom/oppo/camera/professional/e;->l(Ljava/lang/String;)V

    .line 744
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->t(I)V

    const/4 v0, 0x5

    .line 745
    invoke-virtual {p0, v0}, Lcom/oppo/camera/professional/e;->x(I)V

    .line 748
    :goto_1
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->m()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    .line 749
    invoke-virtual {p0, v0}, Lcom/oppo/camera/professional/e;->x(I)V

    :cond_2
    const/4 v0, 0x3

    .line 752
    invoke-virtual {p0, v0}, Lcom/oppo/camera/professional/e;->x(I)V

    :cond_3
    return-void
.end method

.method private cL()V
    .locals 3

    .line 878
    iget-boolean v0, p0, Lcom/oppo/camera/professional/e;->W:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 879
    invoke-direct {p0, v1}, Lcom/oppo/camera/professional/e;->p(Z)V

    .line 882
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    if-nez v0, :cond_1

    return-void

    .line 886
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->k(I)V

    .line 887
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->t(I)V

    .line 888
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oppo/camera/professional/e;->l(Ljava/lang/String;)V

    .line 890
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 891
    iget-object v2, p0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v2, v0, v1}, Lcom/oppo/camera/e/f;->a(J)V

    .line 892
    invoke-direct {p0}, Lcom/oppo/camera/professional/e;->cV()V

    .line 894
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 895
    iget-object v1, p0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v1, v0}, Lcom/oppo/camera/e/f;->c(I)V

    .line 896
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->o()V

    .line 897
    invoke-direct {p0}, Lcom/oppo/camera/professional/e;->cT()V

    .line 898
    invoke-direct {p0}, Lcom/oppo/camera/professional/e;->cU()V

    .line 899
    invoke-direct {p0}, Lcom/oppo/camera/professional/e;->cM()V

    .line 901
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    invoke-virtual {v0}, Lcom/oppo/camera/professional/c;->b()V

    return-void
.end method

.method private cM()V
    .locals 3

    .line 905
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/oppo/camera/professional/c;->scrollTo(II)V

    .line 906
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/professional/c;->scrollTo(II)V

    .line 907
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/professional/c;->scrollTo(II)V

    .line 908
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Lcom/oppo/camera/professional/c;->scrollTo(II)V

    return-void
.end method

.method private cN()V
    .locals 4

    .line 912
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    if-nez v0, :cond_0

    .line 913
    new-instance v0, Lcom/oppo/camera/professional/ListProfessionalModeBar;

    iget-object v1, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/oppo/camera/professional/e;->cC()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/oppo/camera/professional/ListProfessionalModeBar;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    .line 914
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0, p0}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->setModeBarStateListener(Lcom/oppo/camera/professional/ListProfessionalModeBar$ModeBarStateListener;)V

    .line 915
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    iget-object v1, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->setPanelInterface(Lcom/oppo/camera/professional/d;)V

    .line 917
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    .line 918
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06026b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x2

    .line 919
    iget-object v2, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    invoke-virtual {v2}, Lcom/oppo/camera/professional/c;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v1, 0xe

    .line 920
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 921
    iget-object v1, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 922
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    iget-object v1, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070389

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 923
    new-instance v0, Lcom/oppo/camera/professional/ListModeBarAdapter;

    iget-object v1, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    iget-object v2, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    invoke-virtual {v2}, Lcom/oppo/camera/professional/c;->getMainModeBarData()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/oppo/camera/professional/ListModeBarAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 924
    iget-object v1, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/professional/ListModeBarAdapter;->a(Lcom/oppo/camera/professional/d;)V

    .line 925
    iget-object v1, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    const v2, 0x7f080128

    invoke-direct {p0, v1, v2, v0, p0}, Lcom/oppo/camera/professional/e;->a(Lcom/oppo/camera/professional/ListProfessionalModeBar;ILcom/oppo/camera/professional/ListModeBarAdapter;Lcom/oppo/camera/professional/ListProfessionalModeBar$OnItemClickListener;)V

    .line 927
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ah:Lcom/oppo/camera/professional/e$a;

    iget-object v1, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/professional/e$a;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private cO()V
    .locals 4

    .line 932
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    if-nez v0, :cond_0

    .line 933
    new-instance v0, Lcom/oppo/camera/professional/c;

    iget-object v1, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/oppo/camera/professional/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    .line 934
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/oppo/camera/professional/c;->setGravity(I)V

    .line 935
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/professional/c;->setId(I)V

    .line 937
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result v1

    iget-object v2, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    .line 938
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0603c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xe

    .line 939
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xc

    .line 940
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 942
    iget-object v1, p0, Lcom/oppo/camera/professional/e;->ah:Lcom/oppo/camera/professional/e$a;

    iget-object v2, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    invoke-virtual {v1, v2, v0}, Lcom/oppo/camera/professional/e$a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private cP()V
    .locals 4

    .line 947
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/oppo/camera/professional/e;->ad:Ljava/lang/Thread;

    .line 949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addViewToRoot, mUiThread: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oppo/camera/professional/e;->ad:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProfessionalCapMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 951
    iput-boolean v0, p0, Lcom/oppo/camera/professional/e;->ab:Z

    .line 952
    invoke-direct {p0}, Lcom/oppo/camera/professional/e;->cQ()V

    .line 953
    invoke-direct {p0}, Lcom/oppo/camera/professional/e;->cO()V

    .line 954
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    iget-object v1, p0, Lcom/oppo/camera/professional/e;->L:Lcom/oppo/camera/d/b;

    iget v2, p0, Lcom/oppo/camera/professional/e;->j:I

    invoke-static {v2}, Lcom/oppo/camera/e/a;->a(I)Lcom/oppo/camera/e/h;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/professional/e;->ag:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Lcom/oppo/camera/professional/c;->a(Lcom/oppo/camera/d/b;Lcom/oppo/camera/e/h;Landroid/os/Handler;)V

    .line 956
    invoke-direct {p0}, Lcom/oppo/camera/professional/e;->cN()V

    .line 957
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    iget-object v1, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/professional/c;->setSettleListener(Lcom/oppo/camera/professional/c$b;)V

    .line 958
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    iget-object v1, p0, Lcom/oppo/camera/professional/e;->an:Lcom/oppo/camera/professional/c$a;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/professional/c;->setMotionListener(Lcom/oppo/camera/professional/c$a;)V

    const/4 v0, 0x1

    .line 960
    invoke-virtual {p0, v0}, Lcom/oppo/camera/professional/e;->x(I)V

    return-void
.end method

.method private cQ()V
    .locals 4

    .line 973
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ah:Lcom/oppo/camera/professional/e$a;

    if-nez v0, :cond_1

    .line 974
    new-instance v0, Lcom/oppo/camera/professional/e$a;

    iget-object v1, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/oppo/camera/professional/e$a;-><init>(Lcom/oppo/camera/professional/e;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oppo/camera/professional/e;->ah:Lcom/oppo/camera/professional/e$a;

    .line 975
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    .line 976
    invoke-static {}, Lcom/oppo/camera/o/d;->N()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xc

    .line 977
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xe

    .line 978
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 980
    iget-object v1, p0, Lcom/oppo/camera/professional/e;->L:Lcom/oppo/camera/d/b;

    if-eqz v1, :cond_0

    .line 981
    iget-object v1, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v1}, Lcom/oppo/camera/ui/c;->g()I

    move-result v1

    iget-object v2, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    .line 982
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0603c6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 984
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 987
    :goto_0
    iget-object v1, p0, Lcom/oppo/camera/professional/e;->ah:Lcom/oppo/camera/professional/e$a;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/professional/e$a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 988
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ah:Lcom/oppo/camera/professional/e$a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oppo/camera/professional/e$a;->setVisibility(I)V

    .line 989
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ah:Lcom/oppo/camera/professional/e$a;

    invoke-virtual {v0}, Lcom/oppo/camera/professional/e$a;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/oppo/camera/professional/e$10;

    invoke-direct {v1, p0}, Lcom/oppo/camera/professional/e$10;-><init>(Lcom/oppo/camera/professional/e;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 1003
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    iget-object v1, p0, Lcom/oppo/camera/professional/e;->ah:Lcom/oppo/camera/professional/e$a;

    const/4 v2, 0x1

    const-string v3, "professional"

    invoke-interface {v0, v1, v3, v2}, Lcom/oppo/camera/ui/c;->a(Landroid/view/View;Ljava/lang/String;I)V

    .line 1006
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ah:Lcom/oppo/camera/professional/e$a;

    if-eqz v0, :cond_2

    .line 1007
    invoke-virtual {v0, v2}, Lcom/oppo/camera/professional/e$a;->a(Z)V

    :cond_2
    return-void
.end method

.method private cR()V
    .locals 2

    .line 1093
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ak:Lcom/oppo/camera/ui/menu/levelcontrol/b;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 1094
    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/b;->setVisibility(I)V

    .line 1097
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ah:Lcom/oppo/camera/professional/e$a;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 1098
    invoke-virtual {v0, v1}, Lcom/oppo/camera/professional/e$a;->a(Z)V

    .line 1100
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    if-eqz v0, :cond_1

    .line 1101
    iget-object v1, p0, Lcom/oppo/camera/professional/e;->ah:Lcom/oppo/camera/professional/e$a;

    invoke-virtual {v1, v0}, Lcom/oppo/camera/professional/e$a;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 1102
    iput-object v0, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    :cond_1
    return-void
.end method

.method private cS()Z
    .locals 7

    .line 1296
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ai:Landroid/media/Image;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oppo/camera/professional/e;->aj:Landroid/hardware/camera2/TotalCaptureResult;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v0, "ProfessionalCapMode"

    const-string v1, "saveResultToDng"

    .line 1300
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1303
    new-instance v0, Landroid/hardware/camera2/DngCreator;

    iget-object v1, p0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v1}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oppo/camera/e/h;->E()Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    iget-object v2, p0, Lcom/oppo/camera/professional/e;->aj:Landroid/hardware/camera2/TotalCaptureResult;

    invoke-direct {v0, v1, v2}, Landroid/hardware/camera2/DngCreator;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;)V

    const/4 v1, 0x0

    .line 1306
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1307
    :try_start_1
    iget-object v3, p0, Lcom/oppo/camera/professional/e;->ai:Landroid/media/Image;

    invoke-virtual {v0, v2, v3}, Landroid/hardware/camera2/DngCreator;->writeImage(Ljava/io/OutputStream;Landroid/media/Image;)V

    .line 1309
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .line 1310
    iget-object v4, p0, Lcom/oppo/camera/professional/e;->ai:Landroid/media/Image;

    invoke-virtual {v4}, Landroid/media/Image;->getFormat()I

    move-result v4

    .line 1312
    iget-object v5, p0, Lcom/oppo/camera/professional/e;->ag:Landroid/os/Handler;

    new-instance v6, Lcom/oppo/camera/professional/e$2;

    invoke-direct {v6, p0, v3, v4}, Lcom/oppo/camera/professional/e$2;-><init>(Lcom/oppo/camera/professional/e;[BI)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1321
    iget-object v3, p0, Lcom/oppo/camera/professional/e;->ai:Landroid/media/Image;

    if-eqz v3, :cond_1

    .line 1322
    invoke-virtual {v3}, Landroid/media/Image;->close()V

    .line 1323
    iput-object v1, p0, Lcom/oppo/camera/professional/e;->ai:Landroid/media/Image;

    .line 1327
    :cond_1
    invoke-virtual {v0}, Landroid/hardware/camera2/DngCreator;->close()V

    .line 1330
    iput-object v1, p0, Lcom/oppo/camera/professional/e;->aj:Landroid/hardware/camera2/TotalCaptureResult;

    .line 1334
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_0
    move-exception v3

    goto :goto_0

    :catchall_0
    move-exception v3

    move-object v2, v1

    goto :goto_2

    :catch_1
    move-exception v3

    move-object v2, v1

    .line 1319
    :goto_0
    :try_start_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1321
    iget-object v3, p0, Lcom/oppo/camera/professional/e;->ai:Landroid/media/Image;

    if-eqz v3, :cond_2

    .line 1322
    invoke-virtual {v3}, Landroid/media/Image;->close()V

    .line 1323
    iput-object v1, p0, Lcom/oppo/camera/professional/e;->ai:Landroid/media/Image;

    .line 1327
    :cond_2
    invoke-virtual {v0}, Landroid/hardware/camera2/DngCreator;->close()V

    .line 1330
    iput-object v1, p0, Lcom/oppo/camera/professional/e;->aj:Landroid/hardware/camera2/TotalCaptureResult;

    if-eqz v2, :cond_3

    .line 1334
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 1337
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_1
    const/4 v0, 0x1

    return v0

    :catchall_1
    move-exception v3

    .line 1321
    :goto_2
    iget-object v4, p0, Lcom/oppo/camera/professional/e;->ai:Landroid/media/Image;

    if-eqz v4, :cond_4

    .line 1322
    invoke-virtual {v4}, Landroid/media/Image;->close()V

    .line 1323
    iput-object v1, p0, Lcom/oppo/camera/professional/e;->ai:Landroid/media/Image;

    .line 1327
    :cond_4
    invoke-virtual {v0}, Landroid/hardware/camera2/DngCreator;->close()V

    .line 1330
    iput-object v1, p0, Lcom/oppo/camera/professional/e;->aj:Landroid/hardware/camera2/TotalCaptureResult;

    if-eqz v2, :cond_5

    .line 1334
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 1337
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1338
    :cond_5
    :goto_3
    throw v3

    :cond_6
    :goto_4
    const/4 v0, 0x0

    return v0
.end method

.method private cT()V
    .locals 3

    .line 1540
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1544
    :cond_0
    invoke-virtual {v0}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->getSelectedPosition()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 1545
    invoke-direct {p0, v1}, Lcom/oppo/camera/professional/e;->n(Z)V

    .line 1548
    :cond_1
    invoke-direct {p0, v1}, Lcom/oppo/camera/professional/e;->o(Z)V

    .line 1550
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    invoke-virtual {v0, v2}, Lcom/oppo/camera/professional/c;->setAuto(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private cU()V
    .locals 2

    .line 1554
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 1558
    invoke-virtual {v0, v1}, Lcom/oppo/camera/professional/c;->setAuto(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private cV()V
    .locals 2

    .line 1562
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1566
    invoke-virtual {v0, v1}, Lcom/oppo/camera/professional/c;->setAuto(I)V

    .line 1567
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/professional/c;->setAuto(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private cW()V
    .locals 5

    const-string v0, "ProfessionalCapMode"

    const-string v1, "restoreFocusMode"

    .line 1571
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1573
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_0

    .line 1574
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    invoke-virtual {p0}, Lcom/oppo/camera/professional/e;->au()I

    move-result v1

    invoke-static {}, Lcom/oppo/camera/a;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v2

    .line 1575
    invoke-static {}, Lcom/oppo/camera/a;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v3

    const/4 v4, 0x1

    .line 1574
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/oppo/camera/e/f;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    .line 1576
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    invoke-static {}, Lcom/oppo/camera/a;->b()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->c(I)V

    .line 1577
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    :cond_0
    return-void
.end method

.method private cX()V
    .locals 2

    .line 1582
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->setVisibility(I)V

    .line 1583
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->setItemPressed(Z)V

    .line 1584
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oppo/camera/professional/c;->setVisibility(I)V

    return-void
.end method

.method private cY()V
    .locals 1

    .line 1588
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    if-eqz v0, :cond_0

    .line 1589
    invoke-virtual {v0}, Lcom/oppo/camera/professional/c;->clearAnimation()V

    :cond_0
    return-void
.end method

.method private cZ()V
    .locals 7

    .line 1908
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->O:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    const v2, 0x7f0f00c6

    .line 1909
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_flashmode_key"

    .line 1908
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    .line 1911
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1912
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->O:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    .line 1913
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "pref_professional_exposure_time_key"

    .line 1912
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1914
    iget-object v1, p0, Lcom/oppo/camera/professional/e;->O:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    .line 1915
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f00e7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_professional_iso_key"

    .line 1914
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1917
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 1918
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    invoke-virtual {v0, v3}, Lcom/oppo/camera/professional/c;->setAuto(I)V

    .line 1920
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1921
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0, v3}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1923
    iget-object v5, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v5}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->getSelectedPosition()I

    move-result v5

    if-ne v3, v5, :cond_0

    .line 1924
    iget-object v5, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v5}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->getAdapter()Lcom/oppo/camera/professional/ListModeBarAdapter;

    move-result-object v5

    invoke-virtual {v5, v0, v4, v3}, Lcom/oppo/camera/professional/ListModeBarAdapter;->a(Landroid/view/View;IZ)V

    goto :goto_0

    .line 1926
    :cond_0
    iget-object v5, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v5}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->getAdapter()Lcom/oppo/camera/professional/ListModeBarAdapter;

    move-result-object v5

    invoke-virtual {v5, v0, v4, v4}, Lcom/oppo/camera/professional/ListModeBarAdapter;->a(Landroid/view/View;IZ)V

    .line 1931
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1932
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    invoke-virtual {v0, v4}, Lcom/oppo/camera/professional/c;->setAuto(I)V

    .line 1934
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1935
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0, v4}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1937
    iget-object v1, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v1}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->getSelectedPosition()I

    move-result v1

    if-nez v1, :cond_2

    .line 1938
    iget-object v1, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v1}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->getAdapter()Lcom/oppo/camera/professional/ListModeBarAdapter;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v3}, Lcom/oppo/camera/professional/ListModeBarAdapter;->a(Landroid/view/View;IZ)V

    goto :goto_1

    .line 1940
    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v1}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->getAdapter()Lcom/oppo/camera/professional/ListModeBarAdapter;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Lcom/oppo/camera/professional/ListModeBarAdapter;->a(Landroid/view/View;IZ)V

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic d(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/professional/ListProfessionalModeBar;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    return-object p0
.end method

.method private da()V
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "ProfessionalCapMode"

    const-string v2, "updateHighResolutionMode"

    .line 1967
    invoke-static {v1, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1969
    iget-object v1, v0, Lcom/oppo/camera/professional/e;->O:Landroid/content/SharedPreferences;

    iget-object v2, v0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    .line 1970
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f00dc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_high_resolution_key"

    .line 1969
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/oppo/camera/professional/e;->W:Z

    .line 1971
    new-instance v1, Lcom/oppo/camera/ui/control/c;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/oppo/camera/ui/control/c;-><init>(I)V

    const-string v3, "button_color_inside_none"

    .line 1972
    invoke-virtual {v1, v3}, Lcom/oppo/camera/ui/control/c;->a(Ljava/lang/String;)V

    .line 1974
    iget-object v3, v0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/professional/e;->at()Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/oppo/camera/e/f;->h(Z)V

    .line 1975
    iget-object v3, v0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    iget-boolean v4, v0, Lcom/oppo/camera/professional/e;->W:Z

    invoke-interface {v3, v4}, Lcom/oppo/camera/e/f;->t(I)V

    .line 1977
    iget-boolean v3, v0, Lcom/oppo/camera/professional/e;->W:Z

    if-eqz v3, :cond_3

    .line 1978
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/professional/e;->db()V

    .line 1979
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/professional/e;->dc()V

    .line 1981
    iget-object v3, v0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/oppo/camera/professional/c;->setAuto(I)V

    .line 1982
    iget-object v3, v0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    invoke-virtual {v3, v2}, Lcom/oppo/camera/professional/c;->setAuto(I)V

    .line 1983
    iget-object v3, v0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/oppo/camera/professional/c;->setAuto(I)V

    .line 1984
    iget-object v3, v0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/oppo/camera/professional/c;->setAuto(I)V

    .line 1986
    iget-object v3, v0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    const/4 v4, 0x4

    .line 1988
    invoke-virtual {v3, v4}, Lcom/oppo/camera/professional/c;->b(I)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, v0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    .line 1989
    invoke-virtual {v6, v4}, Lcom/oppo/camera/professional/c;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const-string v6, "pref_professional_exposure_compensation_key"

    .line 1986
    invoke-virtual {v3, v4, v6, v5}, Lcom/oppo/camera/professional/c;->a(ILjava/lang/String;I)V

    .line 1991
    invoke-virtual {v0, v2}, Lcom/oppo/camera/professional/e;->x(I)V

    const/4 v3, 0x6

    .line 1992
    invoke-virtual {v0, v3}, Lcom/oppo/camera/professional/e;->x(I)V

    .line 1993
    iget-object v3, v0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v3, v1}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;)V

    .line 1995
    iget-object v1, v0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v1}, Lcom/oppo/camera/e/f;->m()I

    move-result v1

    if-nez v1, :cond_0

    .line 1996
    iget-object v1, v0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    invoke-virtual/range {p0 .. p0}, Lcom/oppo/camera/professional/e;->au()I

    move-result v3

    invoke-static {}, Lcom/oppo/camera/a;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v5

    .line 1997
    invoke-static {}, Lcom/oppo/camera/a;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v6

    .line 1996
    invoke-interface {v1, v3, v5, v6, v2}, Lcom/oppo/camera/e/f;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    .line 1998
    iget-object v1, v0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    invoke-static {}, Lcom/oppo/camera/a;->b()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/oppo/camera/e/f;->c(I)V

    .line 1999
    iget-object v1, v0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    .line 2002
    :cond_0
    iget-object v1, v0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v1}, Lcom/oppo/camera/e/f;->m()I

    move-result v1

    if-eq v2, v1, :cond_1

    iget-object v1, v0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    .line 2003
    invoke-interface {v1}, Lcom/oppo/camera/e/f;->m()I

    move-result v1

    if-ne v4, v1, :cond_2

    .line 2004
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/oppo/camera/professional/e;->cT()V

    .line 2007
    :cond_2
    iget-object v5, v0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    const v6, 0x7f0f0193

    const/4 v7, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v5 .. v10}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    goto :goto_0

    .line 2010
    :cond_3
    iget-object v11, v0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    const v12, 0x7f0f0192

    const/4 v13, -0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-interface/range {v11 .. v16}, Lcom/oppo/camera/ui/c;->a(IIZZZ)V

    .line 2012
    invoke-virtual {v0, v2}, Lcom/oppo/camera/professional/e;->x(I)V

    .line 2013
    iget-object v2, v0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v2, v1}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;)V

    :goto_0
    return-void
.end method

.method private db()V
    .locals 3

    .line 2018
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->O:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    const v2, 0x7f0f00c6

    .line 2019
    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_camera_flashmode_key"

    .line 2018
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    .line 2021
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2022
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->O:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2023
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2024
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2025
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v2}, Lcom/oppo/camera/ui/c;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private dc()V
    .locals 3

    .line 2030
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->O:Landroid/content/SharedPreferences;

    const-string v1, "pref_raw_key"

    const-string v2, "off"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2032
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2033
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->O:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2034
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2035
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private dd()Z
    .locals 2

    .line 2099
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    .line 2100
    invoke-virtual {v0}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->getSelectedPosition()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/professional/e;->W:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private e(Landroid/view/MotionEvent;)V
    .locals 2

    .line 139
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 140
    iget-object v1, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v1}, Lcom/oppo/camera/ui/c;->e()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 146
    invoke-virtual {p0}, Lcom/oppo/camera/professional/e;->au()I

    move-result v0

    if-eq p1, v0, :cond_1

    const/4 p1, 0x4

    .line 147
    invoke-virtual {p0}, Lcom/oppo/camera/professional/e;->au()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 148
    :cond_1
    invoke-direct {p0}, Lcom/oppo/camera/professional/e;->cT()V

    const/4 p1, 0x3

    .line 149
    invoke-virtual {p0, p1}, Lcom/oppo/camera/professional/e;->a_(I)V

    :cond_2
    return-void
.end method

.method private e(ZZ)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 1833
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "showOrHideFlashIcon, enable: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isOpenFlash: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oppo/camera/professional/e;->bx()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ProfessionalCapMode"

    invoke-static {v0, p2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 1836
    invoke-virtual {p0}, Lcom/oppo/camera/professional/e;->bD()V

    goto :goto_0

    .line 1838
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2, v0}, Lcom/oppo/camera/ui/c;->a(ZZZ)V

    :goto_0
    return-void
.end method

.method static synthetic e(Lcom/oppo/camera/professional/e;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/oppo/camera/professional/e;->am:Z

    return p0
.end method

.method static synthetic f(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/professional/c$a;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/oppo/camera/professional/e;->an:Lcom/oppo/camera/professional/c$a;

    return-object p0
.end method

.method private f(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 2372
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2373
    iget-object v1, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v1}, Lcom/oppo/camera/ui/c;->e()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 2374
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method static synthetic g(Lcom/oppo/camera/professional/e;)Ljava/lang/String;
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/oppo/camera/professional/e;->cJ()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic h(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/d/b;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/oppo/camera/professional/e;->L:Lcom/oppo/camera/d/b;

    return-object p0
.end method

.method static synthetic i(Lcom/oppo/camera/professional/e;)Z
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/oppo/camera/professional/e;->dd()Z

    move-result p0

    return p0
.end method

.method static synthetic j(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/ui/c;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic k(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/ui/c;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic l(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/ui/c;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic m(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/professional/e$a;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/oppo/camera/professional/e;->ah:Lcom/oppo/camera/professional/e$a;

    return-object p0
.end method

.method static synthetic n(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/ui/c;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method private n(Z)V
    .locals 3

    .line 282
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ak:Lcom/oppo/camera/ui/menu/levelcontrol/b;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 284
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    .line 285
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f070373

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v2, 0x1

    .line 284
    invoke-virtual {v0, v2, v1, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/b;->a(ZLjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 286
    iput-boolean v2, p0, Lcom/oppo/camera/professional/e;->am:Z

    goto :goto_0

    .line 288
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    .line 289
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f070372

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v2, 0x0

    .line 288
    invoke-virtual {v0, v2, v1, p1}, Lcom/oppo/camera/ui/menu/levelcontrol/b;->a(ZLjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 290
    iput-boolean v2, p0, Lcom/oppo/camera/professional/e;->am:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private n(Ljava/lang/String;)Z
    .locals 4

    if-eqz p1, :cond_0

    .line 1130
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x3b9aca00

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic o(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/ui/c;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method private o(Z)V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->getAdapter()Lcom/oppo/camera/professional/ListModeBarAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {v0, p1}, Lcom/oppo/camera/professional/c;->a(Z)V

    .line 298
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    invoke-virtual {p1}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->getAdapter()Lcom/oppo/camera/professional/ListModeBarAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    invoke-virtual {v0}, Lcom/oppo/camera/professional/c;->getMainModeBarData()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oppo/camera/professional/ListModeBarAdapter;->a(Ljava/util/List;)V

    .line 299
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->b(I)V

    :cond_0
    return-void
.end method

.method static synthetic p(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/ui/c;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method private p(Z)V
    .locals 4

    const-string v0, "ProfessionalCapMode"

    const-string v1, "turnOffHighResolution"

    .line 1948
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "off"

    if-eqz p1, :cond_0

    .line 1953
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->O:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    const v3, 0x7f0f00c6

    .line 1954
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_camera_flashmode_key"

    .line 1953
    invoke-interface {p1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1955
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr v0, p1

    .line 1958
    :cond_0
    iget-boolean p1, p0, Lcom/oppo/camera/professional/e;->W:Z

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 1959
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    const-string v0, "pref_high_resolution_key"

    invoke-interface {p1, v0, v1}, Lcom/oppo/camera/ui/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1960
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->O:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1961
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1962
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

.method static synthetic q(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/ui/c;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic r(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/d/b;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/oppo/camera/professional/e;->L:Lcom/oppo/camera/d/b;

    return-object p0
.end method

.method static synthetic s(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/ui/c;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic t(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/ui/c;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic u(Lcom/oppo/camera/professional/e;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/oppo/camera/professional/e;->W:Z

    return p0
.end method

.method static synthetic v(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/ui/c;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic w(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/ui/c;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic x(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/ui/c;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    return-object p0
.end method

.method static synthetic y(Lcom/oppo/camera/professional/e;)Lcom/oppo/camera/e/f;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    return-object p0
.end method

.method private y(I)V
    .locals 2

    .line 1206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCameraMenuControlViewVisibility, visibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProfessionalCapMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    if-eqz v0, :cond_0

    .line 1209
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/c;->h(I)V

    .line 1210
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/c;->f(I)V

    .line 1211
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, p1}, Lcom/oppo/camera/ui/c;->d(I)V

    :cond_0
    return-void
.end method

.method static synthetic z(Lcom/oppo/camera/professional/e;)I
    .locals 0

    .line 79
    iget p0, p0, Lcom/oppo/camera/professional/e;->j:I

    return p0
.end method


# virtual methods
.method public C()V
    .locals 3

    .line 1013
    new-instance v0, Lcom/oppo/camera/ui/control/c;

    const/16 v1, 0xa

    const-string v2, "button_color_inside_none"

    invoke-direct {v0, v1, v2}, Lcom/oppo/camera/ui/control/c;-><init>(ILjava/lang/String;)V

    const/4 v1, 0x0

    .line 1015
    invoke-virtual {v0, v1}, Lcom/oppo/camera/ui/control/c;->b(I)V

    .line 1016
    iget-object v1, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v1, v0}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;)V

    return-void
.end method

.method public J()V
    .locals 2

    const-string v0, "ProfessionalCapMode"

    const-string v1, "closeImageReader"

    .line 416
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ai:Landroid/media/Image;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 420
    iput-object v1, p0, Lcom/oppo/camera/professional/e;->ai:Landroid/media/Image;

    .line 423
    :cond_0
    iput-object v1, p0, Lcom/oppo/camera/professional/e;->aj:Landroid/hardware/camera2/TotalCaptureResult;

    const/4 v0, 0x1

    .line 424
    iput-boolean v0, p0, Lcom/oppo/camera/professional/e;->aa:Z

    return-void
.end method

.method public K()I
    .locals 2

    .line 965
    iget-boolean v0, p0, Lcom/oppo/camera/professional/e;->W:Z

    if-eqz v0, :cond_0

    .line 966
    invoke-super {p0}, Lcom/oppo/camera/d/a;->K()I

    move-result v0

    return v0

    .line 968
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06035b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public P()Z
    .locals 6

    .line 1038
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBackPressed, mbInCapturing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/professional/e;->q:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProfessionalCapMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    invoke-super {p0}, Lcom/oppo/camera/d/a;->P()Z

    .line 1042
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->isSelected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1043
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ak:Lcom/oppo/camera/ui/menu/levelcontrol/b;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const-wide/16 v4, 0x12c

    invoke-static {v0, v2, v3, v4, v5}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 1044
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/oppo/camera/ui/c;->a(IZ)V

    .line 1045
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    invoke-virtual {v0}, Lcom/oppo/camera/professional/c;->c()V

    .line 1046
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->a()V

    .line 1047
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->q()V

    return v2

    :cond_0
    return v1
.end method

.method public X()V
    .locals 2

    const-string v0, "ProfessionalCapMode"

    const-string v1, "onAfterStartPreview"

    .line 1487
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1489
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ah:Lcom/oppo/camera/professional/e$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1490
    invoke-virtual {v0, v1}, Lcom/oppo/camera/professional/e$a;->a(Z)V

    .line 1493
    :cond_0
    iget-boolean v0, p0, Lcom/oppo/camera/professional/e;->W:Z

    if-eqz v0, :cond_1

    const-string v0, "false"

    goto :goto_0

    :cond_1
    const-string v0, "true"

    :goto_0
    const-string v1, "oppo.cam.slow_shutter"

    invoke-static {v1, v0}, Lcom/color/compat/os/SystemPropertiesNative;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    invoke-super {p0}, Lcom/oppo/camera/d/a;->X()V

    return-void
.end method

.method public Z()Z
    .locals 7

    const-string v0, "ProfessionalCapMode"

    const-string v1, "onAfterSnapping"

    .line 1217
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    invoke-virtual {p0}, Lcom/oppo/camera/professional/e;->at()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/professional/e;->L:Lcom/oppo/camera/d/b;

    .line 1221
    invoke-interface {v1}, Lcom/oppo/camera/d/b;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1222
    invoke-direct {p0}, Lcom/oppo/camera/professional/e;->cJ()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/32 v5, 0x3b9aca00

    cmp-long v1, v3, v5

    if-ltz v1, :cond_0

    .line 1223
    iget-object v1, p0, Lcom/oppo/camera/professional/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v1, v2}, Lcom/oppo/camera/d/b;->a(I)V

    goto :goto_0

    :cond_0
    const-string v1, "onAfterSnapping is ZSL mode, do nothing"

    .line 1225
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1228
    :goto_0
    invoke-direct {p0}, Lcom/oppo/camera/professional/e;->cJ()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oppo/camera/professional/e;->n(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1229
    iget-object v1, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/oppo/camera/ui/c;->a(ZZ)V

    .line 1230
    new-instance v1, Lcom/oppo/camera/ui/control/c;

    invoke-direct {v1}, Lcom/oppo/camera/ui/control/c;-><init>()V

    .line 1232
    iget-object v3, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v3}, Lcom/oppo/camera/ui/c;->h()I

    move-result v3

    const/16 v4, 0x9

    const-string v5, "button_color_inside_none"

    if-ne v3, v4, :cond_1

    const/4 v3, 0x3

    .line 1233
    invoke-virtual {v1, v3}, Lcom/oppo/camera/ui/control/c;->a(I)V

    .line 1234
    invoke-virtual {v1, v5}, Lcom/oppo/camera/ui/control/c;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v3, 0x7

    .line 1236
    invoke-virtual {v1, v3}, Lcom/oppo/camera/ui/control/c;->a(I)V

    .line 1237
    invoke-virtual {v1, v5}, Lcom/oppo/camera/ui/control/c;->a(Ljava/lang/String;)V

    .line 1240
    :goto_1
    iget-object v3, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v3, v1}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;)V

    :cond_2
    const-string v1, "onAfterSnapping X"

    .line 1243
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "professional"

    return-object v0
.end method

.method public a(Ljava/lang/String;I)Ljava/util/List;
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

    const-string v0, "pref_camera_timer_shutter_key"

    .line 438
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 439
    invoke-virtual {p0, p1, p2}, Lcom/oppo/camera/professional/e;->b(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 440
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 443
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 444
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 448
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p2, v1

    :goto_1
    return-object p2

    :cond_2
    const-string v0, "pref_camera_photo_ratio_key"

    .line 451
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 452
    invoke-static {v0, p2}, Lcom/oppo/camera/config/CameraConfig;->getSupportedList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    .line 453
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_3

    const-string v0, "standard"

    .line 455
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 456
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    goto :goto_2

    :cond_4
    move-object p2, v1

    :goto_2
    return-object p2

    .line 462
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/oppo/camera/d/a;->a(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a(ILandroid/os/Message;)V
    .locals 5

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "choiceUiMsg, msgId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mbOnDeInitCameraMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oppo/camera/professional/e;->ac:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProfessionalCapMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 855
    :pswitch_0
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->O:Landroid/content/SharedPreferences;

    iget-object p2, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    .line 856
    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0f00aa

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "pref_professional_exposure_compensation_key"

    .line 855
    invoke-interface {p1, v1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 857
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 858
    iget-object p2, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    .line 859
    invoke-virtual {p2, v0}, Lcom/oppo/camera/professional/c;->b(I)Ljava/util/ArrayList;

    move-result-object p2

    .line 858
    invoke-direct {p0, p1, p2}, Lcom/oppo/camera/professional/e;->a(ILjava/util/ArrayList;)I

    move-result p1

    .line 860
    iget-object p2, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    invoke-virtual {p2, v0, p1}, Lcom/oppo/camera/professional/c;->scrollTo(II)V

    .line 861
    iget-object p2, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    invoke-virtual {p2, v0, p1}, Lcom/oppo/camera/professional/c;->b(II)V

    goto/16 :goto_2

    .line 851
    :pswitch_1
    invoke-virtual {p0}, Lcom/oppo/camera/professional/e;->cG()V

    goto/16 :goto_2

    .line 865
    :pswitch_2
    invoke-direct {p0}, Lcom/oppo/camera/professional/e;->cT()V

    goto/16 :goto_2

    .line 841
    :pswitch_3
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/oppo/camera/professional/c;->h(I)Z

    .line 842
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    invoke-virtual {p1, v2}, Lcom/oppo/camera/professional/c;->h(I)Z

    .line 843
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    invoke-virtual {p1, v1}, Lcom/oppo/camera/professional/c;->h(I)Z

    .line 844
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    invoke-virtual {p1, v0}, Lcom/oppo/camera/professional/c;->h(I)Z

    .line 845
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/oppo/camera/professional/c;->h(I)Z

    .line 847
    invoke-virtual {p0, p2}, Lcom/oppo/camera/professional/e;->a_(I)V

    goto/16 :goto_2

    :pswitch_4
    const/4 p1, 0x0

    .line 822
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 825
    iget-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    .line 828
    :cond_0
    iget-object p2, p0, Lcom/oppo/camera/professional/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p2}, Lcom/oppo/camera/d/b;->M()V

    .line 830
    iget-object p2, p0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    if-eqz p2, :cond_7

    .line 831
    iget-object p2, p0, Lcom/oppo/camera/professional/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p2}, Lcom/oppo/camera/d/b;->p()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 832
    iget-object p2, p0, Lcom/oppo/camera/professional/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p2, v2, v2}, Lcom/oppo/camera/d/b;->a(ZZ)V

    .line 835
    :cond_1
    iget-object p2, p0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {p2, p1}, Lcom/oppo/camera/e/f;->a(F)V

    goto/16 :goto_2

    .line 771
    :pswitch_5
    iget-boolean p1, p0, Lcom/oppo/camera/professional/e;->ac:Z

    if-eqz p1, :cond_2

    return-void

    .line 775
    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    invoke-virtual {p1}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 776
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    invoke-virtual {p1}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->getSelectedPosition()I

    move-result p1

    .line 777
    iget-object p2, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    invoke-virtual {p2, p1, v1}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->a(IZ)V

    .line 778
    iget-object p2, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    invoke-virtual {p2, p1}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 781
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/professional/c;->g(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oppo/camera/professional/e;->ak:Lcom/oppo/camera/ui/menu/levelcontrol/b;

    invoke-virtual {p1}, Lcom/oppo/camera/ui/menu/levelcontrol/b;->getVisibility()I

    move-result p1

    if-nez p1, :cond_3

    .line 782
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    invoke-virtual {p1}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->getAdapter()Lcom/oppo/camera/professional/ListModeBarAdapter;

    move-result-object p1

    invoke-virtual {p1, p2, v2, v1}, Lcom/oppo/camera/professional/ListModeBarAdapter;->a(Landroid/view/View;IZ)V

    .line 787
    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    invoke-virtual {p1}, Lcom/oppo/camera/professional/c;->a()V

    .line 789
    iget-boolean p1, p0, Lcom/oppo/camera/professional/e;->W:Z

    const/16 p2, 0x8

    if-eqz p1, :cond_4

    .line 790
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v2, v1}, Lcom/oppo/camera/ui/c;->a(IZ)V

    .line 791
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    invoke-virtual {p1, p2}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->setVisibility(I)V

    .line 792
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    invoke-virtual {p1, p2}, Lcom/oppo/camera/professional/c;->setVisibility(I)V

    .line 793
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->ak:Lcom/oppo/camera/ui/menu/levelcontrol/b;

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/menu/levelcontrol/b;->setVisibility(I)V

    goto :goto_1

    .line 795
    :cond_4
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    invoke-virtual {p1}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 796
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, p2, v1}, Lcom/oppo/camera/ui/c;->a(IZ)V

    goto :goto_0

    .line 798
    :cond_5
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v2, v1}, Lcom/oppo/camera/ui/c;->a(IZ)V

    .line 801
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->ag:Landroid/os/Handler;

    new-instance v0, Lcom/oppo/camera/professional/e$9;

    invoke-direct {v0, p0}, Lcom/oppo/camera/professional/e$9;-><init>(Lcom/oppo/camera/professional/e;)V

    const-wide/16 v3, 0x32

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 808
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    invoke-virtual {p1, v2}, Lcom/oppo/camera/professional/c;->setVisibility(I)V

    .line 810
    invoke-direct {p0}, Lcom/oppo/camera/professional/e;->dd()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 811
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->ak:Lcom/oppo/camera/ui/menu/levelcontrol/b;

    invoke-virtual {p1, v2}, Lcom/oppo/camera/ui/menu/levelcontrol/b;->setVisibility(I)V

    goto :goto_1

    .line 813
    :cond_6
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->ak:Lcom/oppo/camera/ui/menu/levelcontrol/b;

    invoke-virtual {p1, p2}, Lcom/oppo/camera/ui/menu/levelcontrol/b;->setVisibility(I)V

    .line 817
    :goto_1
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1}, Lcom/oppo/camera/ui/c;->A()V

    :cond_7
    :goto_2
    return-void

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

.method public a(IZ)V
    .locals 4

    .line 2106
    invoke-super {p0, p1, p2}, Lcom/oppo/camera/d/a;->a(IZ)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p2, :cond_1

    .line 2128
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    if-eqz p1, :cond_5

    .line 2129
    invoke-virtual {p1, v1}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->setVisibility(I)V

    goto :goto_2

    .line 2132
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    if-eqz p1, :cond_5

    .line 2133
    invoke-direct {p0}, Lcom/oppo/camera/professional/e;->cX()V

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    .line 2112
    iget-boolean p1, p0, Lcom/oppo/camera/professional/e;->q:Z

    if-eqz p1, :cond_3

    move p1, v1

    goto :goto_0

    :cond_3
    move p1, p2

    .line 2116
    :goto_0
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ah:Lcom/oppo/camera/professional/e$a;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/professional/e$a;->a(Z)V

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    const/16 v1, 0x8

    .line 2118
    :goto_1
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->ah:Lcom/oppo/camera/professional/e$a;

    const-wide/16 v2, 0x12c

    const/4 p2, 0x0

    invoke-static {p1, v1, p2, v2, v3}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 2120
    invoke-direct {p0}, Lcom/oppo/camera/professional/e;->dd()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2121
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->ak:Lcom/oppo/camera/ui/menu/levelcontrol/b;

    invoke-static {p1, v1, p2, v2, v3}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    :cond_5
    :goto_2
    return-void
.end method

.method public a(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 6

    .line 1844
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSharedPreferenceChanged, key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProfessionalCapMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pref_professional_whitebalance_key"

    .line 1846
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1847
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/oppo/camera/professional/c;->h(I)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/oppo/camera/professional/e;->ak:Lcom/oppo/camera/ui/menu/levelcontrol/b;

    if-eqz p1, :cond_0

    .line 1848
    invoke-direct {p0, v1}, Lcom/oppo/camera/professional/e;->n(Z)V

    .line 1851
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/professional/e;->cD()V

    return-void

    :cond_1
    const-string v0, "pref_professional_iso_key"

    .line 1853
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 1854
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    invoke-virtual {p1, v1}, Lcom/oppo/camera/professional/c;->h(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1855
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->ak:Lcom/oppo/camera/ui/menu/levelcontrol/b;

    if-eqz p1, :cond_2

    move v1, v3

    :cond_2
    invoke-direct {p0, v1}, Lcom/oppo/camera/professional/e;->n(Z)V

    .line 1856
    invoke-virtual {p0, v2}, Lcom/oppo/camera/professional/e;->l(Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v0, "pref_professional_exposure_compensation_key"

    .line 1858
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1859
    invoke-virtual {p0}, Lcom/oppo/camera/professional/e;->cF()V

    return-void

    :cond_4
    const-string v0, "pref_professional_exposure_time_key"

    .line 1861
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1862
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->ak:Lcom/oppo/camera/ui/menu/levelcontrol/b;

    if-eqz p1, :cond_6

    .line 1863
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    invoke-virtual {p1, v3}, Lcom/oppo/camera/professional/c;->g(I)Z

    move-result p1

    if-nez p1, :cond_5

    .line 1864
    invoke-direct {p0, v1}, Lcom/oppo/camera/professional/e;->n(Z)V

    goto :goto_0

    .line 1865
    :cond_5
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    invoke-virtual {p1, v1}, Lcom/oppo/camera/professional/c;->g(I)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1866
    invoke-direct {p0, v3}, Lcom/oppo/camera/professional/e;->n(Z)V

    .line 1870
    :cond_6
    :goto_0
    invoke-virtual {p0}, Lcom/oppo/camera/professional/e;->cG()V

    return-void

    :cond_7
    const-string v0, "pref_high_resolution_key"

    .line 1872
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1873
    invoke-direct {p0}, Lcom/oppo/camera/professional/e;->da()V

    goto/16 :goto_1

    :cond_8
    const-string v0, "pref_professional_focus_mode_key"

    .line 1874
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1875
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/oppo/camera/professional/c;->h(I)Z

    .line 1877
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    invoke-virtual {v0, v4}, Lcom/oppo/camera/professional/c;->g(I)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1878
    invoke-virtual {p0, v2}, Lcom/oppo/camera/professional/e;->m(Ljava/lang/String;)V

    .line 1879
    invoke-direct {p0, v1}, Lcom/oppo/camera/professional/e;->n(Z)V

    .line 1880
    invoke-direct {p0, v1}, Lcom/oppo/camera/professional/e;->o(Z)V

    goto :goto_1

    .line 1882
    :cond_9
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->m()I

    move-result v0

    const/4 v1, 0x4

    if-eq v1, v0, :cond_a

    .line 1883
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    .line 1884
    invoke-static {}, Lcom/oppo/camera/a;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v4

    invoke-static {}, Lcom/oppo/camera/a;->a()[Landroid/hardware/camera2/params/MeteringRectangle;

    move-result-object v5

    .line 1883
    invoke-interface {v0, v1, v4, v5, v3}, Lcom/oppo/camera/e/f;->a(I[Landroid/hardware/camera2/params/MeteringRectangle;[Landroid/hardware/camera2/params/MeteringRectangle;Z)V

    .line 1885
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    invoke-static {}, Lcom/oppo/camera/a;->b()I

    move-result v4

    invoke-interface {v0, v4}, Lcom/oppo/camera/e/f;->c(I)V

    .line 1886
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0, v2}, Lcom/oppo/camera/e/f;->a(Lcom/oppo/camera/e/f$c;)V

    .line 1889
    :cond_a
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->m()I

    move-result v0

    if-eq v1, v0, :cond_b

    iget-object v0, p0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    .line 1890
    invoke-interface {v0}, Lcom/oppo/camera/e/f;->m()I

    move-result v0

    if-ne v3, v0, :cond_e

    .line 1891
    :cond_b
    invoke-direct {p0}, Lcom/oppo/camera/professional/e;->cT()V

    goto :goto_1

    :cond_c
    const-string v0, "pref_camera_flashmode_key"

    .line 1894
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1895
    iget-object v1, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    const v2, 0x7f0f00c6

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    .line 1897
    invoke-virtual {v4, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1896
    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 1898
    invoke-direct {p0}, Lcom/oppo/camera/professional/e;->cZ()V

    .line 1901
    :cond_d
    invoke-direct {p0, v3}, Lcom/oppo/camera/professional/e;->p(Z)V

    .line 1904
    :cond_e
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/oppo/camera/d/a;->a(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 8

    .line 564
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->a(Landroid/hardware/camera2/TotalCaptureResult;)V

    .line 566
    iget-boolean v0, p0, Lcom/oppo/camera/professional/e;->t:Z

    if-nez v0, :cond_0

    return-void

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->n()Lcom/oppo/camera/e/c;

    .line 572
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 573
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 574
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    const-string v2, "ProfessionalCapMode"

    const/4 v3, -0x1

    if-eqz v0, :cond_2

    .line 576
    iget-object v4, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/oppo/camera/professional/c;->g(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 577
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v6, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    .line 578
    invoke-virtual {v6, v5}, Lcom/oppo/camera/professional/c;->b(I)Ljava/util/ArrayList;

    move-result-object v6

    .line 577
    invoke-direct {p0, v4, v6}, Lcom/oppo/camera/professional/e;->a(ILjava/util/ArrayList;)I

    move-result v4

    if-le v4, v3, :cond_2

    .line 580
    iget-object v6, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    .line 581
    invoke-virtual {v6, v5, v4}, Lcom/oppo/camera/professional/c;->a(II)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-boolean v6, p0, Lcom/oppo/camera/professional/e;->ab:Z

    if-nez v6, :cond_2

    .line 582
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPreviewCaptureResult, iso: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    .line 585
    invoke-virtual {v0, v5}, Lcom/oppo/camera/professional/c;->c(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v6, "pref_professional_iso_key"

    .line 584
    invoke-static {v6, v0}, Lcom/oppo/camera/professional/LevelPanel;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    invoke-virtual {v0, v5, v4}, Lcom/oppo/camera/professional/c;->scrollTo(II)V

    :cond_2
    const/4 v0, 0x1

    if-eqz v1, :cond_4

    .line 590
    iget-object v4, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    invoke-virtual {v4, v0}, Lcom/oppo/camera/professional/c;->g(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 591
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v6, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    .line 592
    invoke-virtual {v6, v0}, Lcom/oppo/camera/professional/c;->b(I)Ljava/util/ArrayList;

    move-result-object v6

    .line 591
    invoke-direct {p0, v4, v5, v6}, Lcom/oppo/camera/professional/e;->a(JLjava/util/ArrayList;)I

    move-result v4

    if-le v4, v3, :cond_4

    .line 594
    iget-object v5, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    .line 595
    invoke-virtual {v5, v0, v4}, Lcom/oppo/camera/professional/c;->a(II)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/oppo/camera/professional/e;->ab:Z

    if-nez v5, :cond_4

    .line 596
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreviewCaptureResult, exposureTime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    iget-object v1, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    .line 599
    invoke-virtual {v1, v0}, Lcom/oppo/camera/professional/c;->c(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v5, "pref_professional_exposure_time_key"

    .line 598
    invoke-static {v5, v1}, Lcom/oppo/camera/professional/LevelPanel;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    iget-object v1, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    invoke-virtual {v1, v0, v4}, Lcom/oppo/camera/professional/c;->scrollTo(II)V

    .line 604
    :cond_4
    iget-object v1, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/oppo/camera/professional/c;->g(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 605
    iget v1, p0, Lcom/oppo/camera/professional/e;->T:I

    iget-object v5, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    .line 606
    invoke-virtual {v5, v4}, Lcom/oppo/camera/professional/c;->b(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 605
    invoke-direct {p0, v1, v5}, Lcom/oppo/camera/professional/e;->a(ILjava/util/ArrayList;)I

    move-result v1

    if-le v1, v3, :cond_6

    .line 608
    iget-object v5, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    .line 609
    invoke-virtual {v5, v4, v1}, Lcom/oppo/camera/professional/c;->a(II)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/oppo/camera/professional/e;->ab:Z

    if-nez v5, :cond_6

    .line 611
    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreviewCaptureResult, cct: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/oppo/camera/professional/e;->T:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    iget-object v5, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    .line 614
    invoke-virtual {v5, v4}, Lcom/oppo/camera/professional/c;->c(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 615
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "pref_professional_whitebalance_key"

    .line 613
    invoke-static {v6, v5}, Lcom/oppo/camera/professional/LevelPanel;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iget-object v5, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    invoke-virtual {v5, v4, v1}, Lcom/oppo/camera/professional/c;->scrollTo(II)V

    :cond_6
    if-eqz p1, :cond_8

    .line 620
    iget-object v1, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Lcom/oppo/camera/professional/c;->g(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 621
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v5, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    .line 622
    invoke-virtual {v5, v4}, Lcom/oppo/camera/professional/c;->b(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 621
    invoke-direct {p0, v1, v5}, Lcom/oppo/camera/professional/e;->a(FLjava/util/ArrayList;)I

    move-result v1

    if-le v1, v3, :cond_8

    .line 624
    iget-object v3, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    .line 625
    invoke-virtual {v3, v4, v1}, Lcom/oppo/camera/professional/c;->a(II)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/oppo/camera/professional/e;->ab:Z

    if-nez v3, :cond_8

    .line 626
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPreviewCaptureResult, focusDistance: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    .line 629
    invoke-virtual {p1, v4}, Lcom/oppo/camera/professional/c;->c(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v2, "pref_professional_focus_mode_key"

    .line 628
    invoke-static {v2, p1}, Lcom/oppo/camera/professional/LevelPanel;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    invoke-virtual {p1, v4, v1}, Lcom/oppo/camera/professional/c;->scrollTo(II)V

    .line 634
    :cond_8
    iput-boolean v0, p0, Lcom/oppo/camera/professional/e;->ab:Z

    return-void
.end method

.method public a(Landroid/hardware/camera2/TotalCaptureResult;Landroid/hardware/camera2/CaptureRequest;)V
    .locals 1

    .line 1283
    invoke-super {p0, p1, p2}, Lcom/oppo/camera/d/a;->a(Landroid/hardware/camera2/TotalCaptureResult;Landroid/hardware/camera2/CaptureRequest;)V

    const-string p2, "ProfessionalCapMode"

    const-string v0, "onCaptureCompleted"

    .line 1285
    invoke-static {p2, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    invoke-virtual {p1}, Landroid/hardware/camera2/TotalCaptureResult;->getRequest()Landroid/hardware/camera2/CaptureRequest;

    move-result-object p2

    invoke-virtual {p2}, Landroid/hardware/camera2/CaptureRequest;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oppo/camera/e/d;

    .line 1289
    sget-object v0, Lcom/oppo/camera/e/d$a;->CAPTURE:Lcom/oppo/camera/e/d$a;

    invoke-virtual {p2}, Lcom/oppo/camera/e/d;->a()Lcom/oppo/camera/e/d$a;

    move-result-object p2

    if-ne v0, p2, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/professional/e;->cB()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1290
    iput-object p1, p0, Lcom/oppo/camera/professional/e;->aj:Landroid/hardware/camera2/TotalCaptureResult;

    .line 1291
    invoke-direct {p0}, Lcom/oppo/camera/professional/e;->cS()Z

    :cond_0
    return-void
.end method

.method public a(Landroid/media/ImageReader;Z)V
    .locals 1

    const-string p2, "ProfessionalCapMode"

    const-string v0, "onRawImageReceived"

    .line 1269
    invoke-static {p2, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    iget-object p2, p0, Lcom/oppo/camera/professional/e;->ai:Landroid/media/Image;

    if-eqz p2, :cond_0

    .line 1272
    invoke-virtual {p2}, Landroid/media/Image;->close()V

    const/4 p2, 0x0

    .line 1273
    iput-object p2, p0, Lcom/oppo/camera/professional/e;->ai:Landroid/media/Image;

    .line 1276
    :cond_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    move-result-object p1

    iput-object p1, p0, Lcom/oppo/camera/professional/e;->ai:Landroid/media/Image;

    .line 1278
    invoke-direct {p0}, Lcom/oppo/camera/professional/e;->cS()Z

    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/View;IJ)V
    .locals 2

    .line 1621
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->L:Lcom/oppo/camera/d/b;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oppo/camera/professional/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->q()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_1

    .line 1625
    :cond_0
    sget-object p1, Lcom/oppo/camera/professional/ListProfessionalModeBar$ModePressState;->NO_PRESSED:Lcom/oppo/camera/professional/ListProfessionalModeBar$ModePressState;

    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->getModePressState()Lcom/oppo/camera/professional/ListProfessionalModeBar$ModePressState;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    .line 1626
    invoke-virtual {p1}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1627
    invoke-virtual {p0}, Lcom/oppo/camera/professional/e;->P()Z

    .line 1628
    invoke-direct {p0, p3, v1}, Lcom/oppo/camera/professional/e;->b(IZ)V

    return-void

    .line 1632
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->x()V

    .line 1634
    invoke-direct {p0}, Lcom/oppo/camera/professional/e;->cY()V

    .line 1636
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onItemClick, position: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", id: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "ProfessionalCapMode"

    invoke-static {p4, p1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 1638
    invoke-direct {p0, p3, p1}, Lcom/oppo/camera/professional/e;->b(IZ)V

    const/4 p4, 0x4

    if-ne p3, p4, :cond_2

    .line 1641
    iget-object p5, p0, Lcom/oppo/camera/professional/e;->ak:Lcom/oppo/camera/ui/menu/levelcontrol/b;

    invoke-virtual {p5, p4}, Lcom/oppo/camera/ui/menu/levelcontrol/b;->setVisibility(I)V

    goto :goto_0

    .line 1643
    :cond_2
    iget p5, p0, Lcom/oppo/camera/professional/e;->g:I

    invoke-virtual {p0, p5}, Lcom/oppo/camera/professional/e;->c(I)V

    .line 1644
    iget-object p5, p0, Lcom/oppo/camera/professional/e;->ak:Lcom/oppo/camera/ui/menu/levelcontrol/b;

    invoke-virtual {p5, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/b;->setVisibility(I)V

    .line 1647
    :goto_0
    iget-object p5, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p5, p4, p1}, Lcom/oppo/camera/ui/c;->a(IZ)V

    .line 1648
    iget-object p4, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    invoke-virtual {p4, p3}, Lcom/oppo/camera/professional/c;->f(I)V

    .line 1650
    iget-object p4, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    invoke-virtual {p4, p3}, Lcom/oppo/camera/professional/c;->g(I)Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/oppo/camera/professional/e;->ak:Lcom/oppo/camera/ui/menu/levelcontrol/b;

    invoke-virtual {p3}, Lcom/oppo/camera/ui/menu/levelcontrol/b;->getVisibility()I

    move-result p3

    if-nez p3, :cond_3

    .line 1651
    invoke-direct {p0, p1}, Lcom/oppo/camera/professional/e;->n(Z)V

    .line 1652
    iget-object p3, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    invoke-virtual {p3}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->getAdapter()Lcom/oppo/camera/professional/ListModeBarAdapter;

    move-result-object p3

    invoke-virtual {p3, p2, v1, p1}, Lcom/oppo/camera/professional/ListModeBarAdapter;->a(Landroid/view/View;IZ)V

    goto :goto_1

    .line 1654
    :cond_3
    invoke-direct {p0, v1}, Lcom/oppo/camera/professional/e;->n(Z)V

    .line 1655
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    invoke-virtual {p1}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->getAdapter()Lcom/oppo/camera/professional/ListModeBarAdapter;

    move-result-object p1

    const/16 p3, 0x8

    invoke-virtual {p1, p2, p3, v1}, Lcom/oppo/camera/professional/ListModeBarAdapter;->a(Landroid/view/View;IZ)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected a(Lcom/oppo/camera/e/d;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/HashMap;)V
    .locals 6
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

    .line 2208
    sget-object v0, Lcom/oppo/camera/e/d$a;->CAPTURE:Lcom/oppo/camera/e/d$a;

    invoke-virtual {p1}, Lcom/oppo/camera/e/d;->a()Lcom/oppo/camera/e/d$a;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const-string v0, "type_preview"

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2209
    iget-object v1, p0, Lcom/oppo/camera/professional/e;->O:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    .line 2210
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f00ac

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_professional_exposure_time_key"

    .line 2209
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 2212
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/32 v4, 0x2625a00

    cmp-long v2, v2, v4

    const-string v3, "ProfessionalCapMode"

    if-ltz v2, :cond_0

    .line 2213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRequestBuilderCreated, setSlowShutter, exposureTime: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2215
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    .line 2216
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2217
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2218
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "onRequestBuilderCreated, exposureTime not slow shutter"

    .line 2220
    invoke-static {v3, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v0, "type_still_capture_raw"

    .line 2223
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/oppo/camera/professional/e;->cB()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2224
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {p2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 2227
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_LENS_SHADING_MAP_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    .line 2228
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2227
    invoke-virtual {p2, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 2232
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/oppo/camera/d/a;->a(Lcom/oppo/camera/e/d;Landroid/hardware/camera2/CaptureRequest$Builder;Ljava/util/HashMap;)V

    return-void
.end method

.method protected a(Z)V
    .locals 3

    const-string p1, "ProfessionalCapMode"

    const-string v0, "onResume"

    .line 1413
    invoke-static {p1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1415
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->O:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_0

    .line 1416
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->O:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    .line 1417
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "pref_high_resolution_key"

    .line 1416
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oppo/camera/professional/e;->W:Z

    .line 1420
    :cond_0
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->ah:Lcom/oppo/camera/professional/e$a;

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    .line 1421
    invoke-virtual {p1, v1}, Lcom/oppo/camera/professional/e$a;->setVisibility(I)V

    .line 1423
    invoke-direct {p0}, Lcom/oppo/camera/professional/e;->dd()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1424
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->ak:Lcom/oppo/camera/ui/menu/levelcontrol/b;

    invoke-virtual {p1, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/b;->setVisibility(I)V

    .line 1427
    :cond_1
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    invoke-virtual {p1}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->isSelected()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1428
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v1, v0}, Lcom/oppo/camera/ui/c;->a(IZ)V

    goto :goto_0

    .line 1430
    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    const/4 v2, 0x4

    invoke-interface {p1, v2, v1}, Lcom/oppo/camera/ui/c;->a(IZ)V

    .line 1434
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1, v0}, Lcom/oppo/camera/d/b;->c(Z)V

    .line 1435
    invoke-virtual {p0, v0}, Lcom/oppo/camera/professional/e;->x(I)V

    return-void
.end method

.method protected a(ZZ)V
    .locals 4

    .line 1250
    invoke-super {p0, p1, p2}, Lcom/oppo/camera/d/a;->a(ZZ)V

    if-nez p2, :cond_0

    return-void

    .line 1256
    :cond_0
    invoke-virtual {p0}, Lcom/oppo/camera/professional/e;->at()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/oppo/camera/professional/e;->L:Lcom/oppo/camera/d/b;

    .line 1257
    invoke-interface {p1}, Lcom/oppo/camera/d/b;->g()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1258
    invoke-direct {p0}, Lcom/oppo/camera/professional/e;->cJ()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x3b9aca00

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    .line 1259
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->L:Lcom/oppo/camera/d/b;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/oppo/camera/d/b;->a(I)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 1262
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->L:Lcom/oppo/camera/d/b;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/oppo/camera/d/b;->a(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected a([BZ)V
    .locals 6

    const-string p1, "ProfessionalCapMode"

    const-string p2, "onAfterPictureTaken"

    .line 1356
    invoke-static {p1, p2}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    iget-boolean p1, p0, Lcom/oppo/camera/professional/e;->aa:Z

    const/4 p2, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/professional/e;->cB()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1359
    iput-boolean p2, p0, Lcom/oppo/camera/professional/e;->aa:Z

    return-void

    .line 1363
    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/professional/e;->cJ()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oppo/camera/professional/e;->n(Ljava/lang/String;)Z

    move-result p1

    const-wide/16 v0, 0x12c

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    .line 1364
    new-instance p1, Lcom/oppo/camera/ui/control/c;

    const/16 v4, 0xb

    const-string v5, "button_color_inside_none"

    invoke-direct {p1, v4, v5}, Lcom/oppo/camera/ui/control/c;-><init>(ILjava/lang/String;)V

    .line 1366
    iget-object v4, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v4, p1}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;)V

    .line 1367
    invoke-direct {p0, v3}, Lcom/oppo/camera/professional/e;->y(I)V

    .line 1368
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->ah:Lcom/oppo/camera/professional/e$a;

    invoke-static {p1, v3, v2, v0, v1}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 1369
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {p1}, Lcom/oppo/camera/d/b;->w()V

    .line 1371
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    invoke-virtual {p1}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->isSelected()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1372
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v3, p2}, Lcom/oppo/camera/ui/c;->a(IZ)V

    goto :goto_0

    .line 1373
    :cond_1
    invoke-direct {p0}, Lcom/oppo/camera/professional/e;->dd()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1374
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->ak:Lcom/oppo/camera/ui/menu/levelcontrol/b;

    invoke-static {p1, v3, v2, v0, v1}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 1378
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, p2, v3}, Lcom/oppo/camera/ui/c;->d(ZZ)V

    .line 1380
    iget-boolean p1, p0, Lcom/oppo/camera/professional/e;->Y:Z

    if-eqz p1, :cond_3

    .line 1381
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->ah:Lcom/oppo/camera/professional/e$a;

    invoke-static {p1, v3, v2, v0, v1}, Lcom/oppo/camera/o/d;->a(Landroid/view/View;ILandroid/view/animation/Animation$AnimationListener;J)V

    .line 1382
    iput-boolean v3, p0, Lcom/oppo/camera/professional/e;->Y:Z

    .line 1385
    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->ah:Lcom/oppo/camera/professional/e$a;

    invoke-virtual {p1, p2}, Lcom/oppo/camera/professional/e$a;->a(Z)V

    return-void
.end method

.method public a(ILandroid/view/MotionEvent;)Z
    .locals 2

    .line 1595
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->L:Lcom/oppo/camera/d/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/professional/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 1599
    :cond_0
    invoke-direct {p0, p2}, Lcom/oppo/camera/professional/e;->f(Landroid/view/MotionEvent;)Z

    move-result p2

    if-nez p2, :cond_1

    return v1

    :cond_1
    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 1609
    :cond_2
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    invoke-virtual {p1}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->c()V

    goto :goto_0

    .line 1605
    :cond_3
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    invoke-virtual {p1}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->b()V

    :goto_0
    return p2
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_camera_high_resolution_key"

    .line 483
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "pref_camera_photo_ratio_key"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 487
    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->a(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 309
    invoke-interface {p2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public aL()V
    .locals 2

    .line 370
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ah:Lcom/oppo/camera/professional/e$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oppo/camera/professional/e$a;->setEnabled(Z)V

    .line 372
    invoke-virtual {p0}, Lcom/oppo/camera/professional/e;->P()Z

    return-void
.end method

.method public aM()V
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->q()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oppo/camera/professional/e;->q:Z

    if-nez v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ah:Lcom/oppo/camera/professional/e$a;

    invoke-virtual {v0, v1}, Lcom/oppo/camera/professional/e$a;->setEnabled(Z)V

    goto :goto_0

    .line 364
    :cond_0
    iput-boolean v1, p0, Lcom/oppo/camera/professional/e;->Y:Z

    :goto_0
    return-void
.end method

.method public a_(I)V
    .locals 2

    .line 2259
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->getAdapter()Lcom/oppo/camera/professional/ListModeBarAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    if-eqz v0, :cond_0

    .line 2260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateChange, index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProfessionalCapMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2262
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->getAdapter()Lcom/oppo/camera/professional/ListModeBarAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    invoke-virtual {v1}, Lcom/oppo/camera/professional/c;->getMainModeBarData()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oppo/camera/professional/ListModeBarAdapter;->a(Ljava/util/List;)V

    .line 2263
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0, p1}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->b(I)V

    :cond_0
    return-void
.end method

.method public a_(Z)V
    .locals 3

    .line 1021
    new-instance v0, Lcom/oppo/camera/ui/control/c;

    invoke-direct {v0}, Lcom/oppo/camera/ui/control/c;-><init>()V

    .line 1023
    iget-boolean v1, p0, Lcom/oppo/camera/professional/e;->W:Z

    const-string v2, "button_color_inside_none"

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    .line 1024
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/c;->a(I)V

    .line 1025
    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/control/c;->a(Ljava/lang/String;)V

    .line 1027
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2}, Lcom/oppo/camera/ui/c;->a(IZ)V

    goto :goto_0

    :cond_0
    const/16 p1, 0xb

    .line 1029
    invoke-virtual {v0, p1}, Lcom/oppo/camera/ui/control/c;->a(I)V

    .line 1030
    invoke-virtual {v0, v2}, Lcom/oppo/camera/ui/control/c;->a(Ljava/lang/String;)V

    .line 1033
    :goto_0
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {p1, v0}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;)V

    return-void
.end method

.method public at()Z
    .locals 3

    .line 377
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->O:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    .line 378
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_high_resolution_key"

    .line 377
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oppo/camera/professional/e;->W:Z

    .line 380
    iget-boolean v0, p0, Lcom/oppo/camera/professional/e;->W:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public au()I
    .locals 1

    .line 2184
    invoke-virtual {p0}, Lcom/oppo/camera/professional/e;->aB()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oppo/camera/professional/e;->ae()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2185
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->m()I

    move-result v0

    return v0

    .line 2188
    :cond_0
    invoke-super {p0}, Lcom/oppo/camera/d/a;->au()I

    move-result v0

    return v0
.end method

.method public av()Ljava/lang/String;
    .locals 3

    .line 1509
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->O:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 1510
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1511
    iget-object v1, p0, Lcom/oppo/camera/professional/e;->O:Landroid/content/SharedPreferences;

    const-string v2, "pref_professional_exposure_time_key"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1514
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1515
    invoke-super {p0}, Lcom/oppo/camera/d/a;->av()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "off"

    return-object v0
.end method

.method public b()I
    .locals 1

    const v0, 0x8009

    return v0
.end method

.method public b(Lcom/oppo/camera/e/h;)Landroid/util/Size;
    .locals 2

    const/16 v0, 0x100

    .line 389
    invoke-virtual {p1, v0}, Lcom/oppo/camera/e/h;->a(I)Ljava/util/List;

    move-result-object p1

    const-wide v0, 0x3ff5555555555555L    # 1.3333333333333333

    invoke-static {p1, v0, v1}, Lcom/oppo/camera/o/d;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/oppo/camera/statistics/model/DcsMsgData;)Lcom/oppo/camera/statistics/model/DcsMsgData;
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2067
    instance-of v1, p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;

    if-eqz v1, :cond_0

    .line 2068
    check-cast p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-nez p1, :cond_1

    return-object v0

    .line 2075
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oppo/camera/professional/c;->d(I)Ljava/lang/String;

    move-result-object v0

    .line 2076
    iget-object v1, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/oppo/camera/professional/c;->d(I)Ljava/lang/String;

    move-result-object v1

    .line 2077
    iget-object v2, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    .line 2078
    invoke-interface {v3}, Lcom/oppo/camera/e/f;->c()Lcom/oppo/camera/e/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oppo/camera/e/h;->o()F

    move-result v3

    .line 2077
    invoke-virtual {v2, v1, v3}, Lcom/oppo/camera/professional/c;->a(IF)Ljava/lang/String;

    move-result-object v1

    .line 2079
    iget-object v2, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/oppo/camera/professional/c;->d(I)Ljava/lang/String;

    move-result-object v2

    .line 2080
    iget-object v3, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/oppo/camera/professional/c;->d(I)Ljava/lang/String;

    move-result-object v3

    .line 2081
    iget-object v4, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    invoke-virtual {v4}, Lcom/oppo/camera/professional/c;->getFocusValue()Ljava/lang/String;

    move-result-object v4

    .line 2083
    iget-object v5, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    const v6, 0x7f0f00ac

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v2, "auto"

    .line 2087
    :cond_2
    iput-object v0, p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mProfessionWbValue:Ljava/lang/String;

    .line 2088
    iput-object v1, p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mProfessionEvValue:Ljava/lang/String;

    .line 2089
    iput-object v2, p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mProfessionExpValue:Ljava/lang/String;

    .line 2090
    iput-object v3, p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mProfessionISOValue:Ljava/lang/String;

    .line 2091
    iput-object v4, p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mProfessionFocusValue:Ljava/lang/String;

    .line 2092
    iget-boolean v0, p0, Lcom/oppo/camera/professional/e;->W:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mProfessionHighResolution:Ljava/lang/String;

    .line 2093
    iget v0, p0, Lcom/oppo/camera/professional/e;->T:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mCCT:Ljava/lang/String;

    .line 2094
    iget v0, p0, Lcom/oppo/camera/professional/e;->U:F

    iput v0, p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mLux:F

    return-object p1
.end method

.method public b(Lcom/oppo/camera/statistics/model/DcsMsgData;Lcom/oppo/camera/v$a;)Lcom/oppo/camera/statistics/model/DcsMsgData;
    .locals 2

    if-eqz p1, :cond_0

    .line 2271
    instance-of v0, p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;

    if-eqz v0, :cond_0

    .line 2272
    check-cast p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;

    .line 2273
    iget-object v0, p2, Lcom/oppo/camera/v$a;->d:[B

    invoke-static {v0}, Lcom/oppo/camera/o/d;->a([B)Landroid/media/ExifInterface;

    move-result-object v0

    invoke-static {v0}, Lcom/oppo/camera/v;->a(Landroid/media/ExifInterface;)Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2276
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mWidth:Ljava/lang/String;

    .line 2277
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oppo/camera/statistics/model/CaptureMsgData;->mHeight:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2281
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/oppo/camera/d/a;->b(Lcom/oppo/camera/statistics/model/DcsMsgData;Lcom/oppo/camera/v$a;)Lcom/oppo/camera/statistics/model/DcsMsgData;

    move-result-object p1

    return-object p1
.end method

.method public b(I)V
    .locals 1

    .line 1390
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->b(I)V

    .line 1392
    invoke-virtual {p0}, Lcom/oppo/camera/professional/e;->au()I

    move-result p1

    const/4 v0, 0x1

    if-eq v0, p1, :cond_0

    const/4 p1, 0x4

    .line 1393
    invoke-virtual {p0}, Lcom/oppo/camera/professional/e;->au()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 1394
    :cond_0
    invoke-direct {p0}, Lcom/oppo/camera/professional/e;->cT()V

    :cond_1
    return-void
.end method

.method protected b([BZ)V
    .locals 1

    const-string p1, "ProfessionalCapMode"

    const-string p2, "onBeforePictureTaken"

    .line 1346
    invoke-static {p1, p2}, Lcom/oppo/camera/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    iget-boolean p1, p0, Lcom/oppo/camera/professional/e;->W:Z

    if-eqz p1, :cond_0

    .line 1349
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    invoke-virtual {p0}, Lcom/oppo/camera/professional/e;->g()Lcom/oppo/camera/ui/control/c;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;Z)V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "ProfessionalCapMode"

    const-string v1, "onSingleTapUp"

    .line 116
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 122
    :cond_0
    invoke-direct {p0, p1}, Lcom/oppo/camera/professional/e;->f(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/professional/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->q()Z

    move-result v0

    if-nez v0, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/oppo/camera/professional/e;->P()Z

    .line 126
    :cond_1
    invoke-direct {p0, p1}, Lcom/oppo/camera/professional/e;->e(Landroid/view/MotionEvent;)V

    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_camera_flashmode_key"

    .line 467
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const-string v0, "pref_switch_dual_camera_key"

    .line 471
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "pref_raw_key"

    .line 472
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "pref_high_resolution_key"

    .line 473
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "pref_switch_camera_key"

    .line 474
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 478
    :cond_1
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->b(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 475
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/oppo/camera/professional/e;->d(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bF()Z
    .locals 4

    .line 2041
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->O:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    .line 2042
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_professional_exposure_time_key"

    .line 2041
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2044
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2045
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x3b9aca00

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public br()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(I)V
    .locals 2

    .line 1400
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ak:Lcom/oppo/camera/ui/menu/levelcontrol/b;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1401
    invoke-virtual {v0, p1, v1}, Lcom/oppo/camera/ui/menu/levelcontrol/b;->a(IZ)V

    .line 1404
    :cond_0
    iget v0, p0, Lcom/oppo/camera/professional/e;->g:I

    if-ne v0, p1, :cond_1

    return-void

    .line 1408
    :cond_1
    iput p1, p0, Lcom/oppo/camera/professional/e;->g:I

    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(Landroid/view/MotionEvent;)Z
    .locals 2

    const-string v0, "ProfessionalCapMode"

    const-string v1, "onLongPress"

    .line 132
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-direct {p0, p1}, Lcom/oppo/camera/professional/e;->e(Landroid/view/MotionEvent;)V

    .line 135
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->c(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public cB()Z
    .locals 3

    const-string v0, "pref_raw_key"

    .line 410
    invoke-virtual {p0, v0}, Lcom/oppo/camera/professional/e;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oppo/camera/professional/e;->O:Landroid/content/SharedPreferences;

    const-string v2, "off"

    .line 411
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

.method public cC()I
    .locals 1

    .line 491
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->L:Lcom/oppo/camera/d/b;

    invoke-interface {v0}, Lcom/oppo/camera/d/b;->k()I

    move-result v0

    return v0
.end method

.method public cD()V
    .locals 3

    .line 1660
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->O:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    .line 1661
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f01c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "pref_professional_whitebalance_key"

    .line 1660
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1663
    iget-object v1, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/oppo/camera/professional/c;->b(I)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oppo/camera/professional/e;->a(Ljava/lang/String;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1665
    :try_start_0
    iget-object v1, p0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/oppo/camera/e/f;->h(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1667
    :catch_0
    iget-object v1, p0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v1}, Lcom/oppo/camera/e/f;->o()V

    goto :goto_0

    .line 1670
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v1}, Lcom/oppo/camera/e/f;->o()V

    .line 1673
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWhiteBalance, whiteBalance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProfessionalCapMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public cE()V
    .locals 1

    .line 1677
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->o()V

    return-void
.end method

.method public cF()V
    .locals 4

    const-string v0, "ProfessionalCapMode"

    .line 1732
    iget-object v1, p0, Lcom/oppo/camera/professional/e;->O:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    .line 1733
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f00aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_professional_exposure_compensation_key"

    .line 1732
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1736
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1737
    iget-object v2, p0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v2, v1}, Lcom/oppo/camera/e/f;->c(I)V

    .line 1739
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setExposureCompensation, evValue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1741
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setExposureCompensation, e: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oppo/camera/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public cG()V
    .locals 9

    .line 1746
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->O:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    .line 1747
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "pref_professional_exposure_time_key"

    .line 1746
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1748
    new-instance v1, Lcom/oppo/camera/ui/control/c;

    const/4 v3, 0x1

    const-string v4, "button_color_inside_none"

    invoke-direct {v1, v3, v4}, Lcom/oppo/camera/ui/control/c;-><init>(ILjava/lang/String;)V

    .line 1750
    iget-object v3, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 1751
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    cmp-long v0, v5, v7

    if-eqz v0, :cond_0

    .line 1754
    invoke-direct {p0}, Lcom/oppo/camera/professional/e;->db()V

    .line 1757
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->i()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/oppo/camera/professional/e$3;

    move-object v3, v2

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/oppo/camera/professional/e$3;-><init>(Lcom/oppo/camera/professional/e;JJ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1779
    iget-boolean v0, p0, Lcom/oppo/camera/professional/e;->Z:Z

    if-nez v0, :cond_1

    .line 1780
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;)V

    :cond_1
    return-void
.end method

.method protected cs()V
    .locals 2

    .line 1534
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ah:Lcom/oppo/camera/professional/e$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 1535
    invoke-virtual {v0, v1}, Lcom/oppo/camera/professional/e$a;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected ct()Ljava/lang/String;
    .locals 2

    .line 2237
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    const v1, 0x7f0f0122

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cw()I
    .locals 1

    .line 160
    iget-boolean v0, p0, Lcom/oppo/camera/professional/e;->W:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected cx()I
    .locals 3

    .line 2242
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->O:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_2

    .line 2243
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->O:Landroid/content/SharedPreferences;

    const-string v1, "camera_main"

    const-string v2, "pref_switch_camera_key"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2245
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v0, 0x7f0f0185

    return v0

    :cond_0
    const-string v1, "camera_ultra_wide"

    .line 2247
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f0f0188

    return v0

    :cond_1
    const-string v1, "camera_tele"

    .line 2249
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0f0186

    return v0

    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method public d(Lcom/oppo/camera/e/h;)Landroid/util/Size;
    .locals 3

    const/16 v0, 0x20

    .line 2193
    invoke-virtual {p1, v0}, Lcom/oppo/camera/e/h;->a(I)Ljava/util/List;

    move-result-object v0

    const-wide v1, 0x3ff5555555555555L    # 1.3333333333333333

    .line 2194
    invoke-static {v0, v1, v2}, Lcom/oppo/camera/o/d;->b(Ljava/util/List;D)Landroid/util/Size;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2197
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRawSize, optimalSize: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ProfessionalCapMode"

    invoke-static {v1, p1}, Lcom/oppo/camera/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 2202
    :cond_0
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->d(Lcom/oppo/camera/e/h;)Landroid/util/Size;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;)Z
    .locals 7

    const-string v0, "pref_camera_gesture_shutter_key"

    .line 639
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    const-string v0, "pref_manual_exposure_key"

    .line 640
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "pref_support_switch_camera"

    .line 641
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "pref_camera_tap_shutter_key"

    .line 642
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v0, "pref_switch_dual_camera_key"

    .line 646
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 647
    iget-boolean p1, p0, Lcom/oppo/camera/professional/e;->D:Z

    if-eqz p1, :cond_1

    return v1

    .line 651
    :cond_1
    iget p1, p0, Lcom/oppo/camera/professional/e;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    :cond_2
    const-string v0, "pref_support_post_view"

    .line 654
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    const-string v0, "pref_professional_exposure_time_key"

    .line 658
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/oppo/camera/professional/e;->O:Landroid/content/SharedPreferences;

    if-eqz v3, :cond_5

    .line 659
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->O:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    .line 660
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f00ac

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 659
    invoke-interface {p1, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 661
    iget-boolean v0, p0, Lcom/oppo/camera/professional/e;->W:Z

    if-nez v0, :cond_4

    .line 662
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/32 v5, 0x3b9aca00

    cmp-long p1, v3, v5

    if-ltz p1, :cond_4

    move v1, v2

    :cond_4
    return v1

    :cond_5
    const-string v0, "pref_camera_flashmode_key"

    .line 665
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 666
    iget p1, p0, Lcom/oppo/camera/professional/e;->j:I

    invoke-static {p1}, Lcom/oppo/camera/e/a;->c(I)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    :cond_6
    const-string v0, "pref_expand_popbar_key"

    .line 669
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    :cond_7
    const-string v0, "pref_raw_key"

    .line 673
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 674
    invoke-static {v0}, Lcom/oppo/camera/config/CameraConfig;->getSupportSettingMenuKey(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_8
    const-string v0, "pref_camera_gradienter_key"

    .line 677
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return v1

    :cond_9
    const-string v0, "pref_headline_control_by_mode"

    .line 681
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 682
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    if-eqz v0, :cond_a

    .line 683
    invoke-virtual {v0}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->isSelected()Z

    move-result p1

    return p1

    :cond_a
    const-string v0, "pref_high_resolution_key"

    .line 687
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 688
    sget-object p1, Lcom/oppo/camera/config/ConfigDataBase;->KEY_SUPPORT_HIGH_RESOLUTION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p1}, Lcom/oppo/camera/config/CameraConfig;->getConfigBooleanValue(Landroid/hardware/camera2/CameraCharacteristics$Key;)Z

    move-result p1

    return p1

    :cond_b
    const-string v0, "pref_support_ipa_process"

    .line 691
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 692
    invoke-static {}, Lcom/oppo/camera/o/d;->w()Z

    move-result p1

    return p1

    :cond_c
    const-string v0, "pref_support_capture_preview"

    .line 695
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "func_post_thumbnail"

    if-eqz v0, :cond_d

    .line 696
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->L:Lcom/oppo/camera/d/b;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/oppo/camera/professional/e;->L:Lcom/oppo/camera/d/b;

    .line 697
    invoke-interface {v0}, Lcom/oppo/camera/d/b;->g()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 698
    invoke-virtual {p0, v3}, Lcom/oppo/camera/professional/e;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d

    return v2

    .line 703
    :cond_d
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 704
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->L:Lcom/oppo/camera/d/b;

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/oppo/camera/professional/e;->L:Lcom/oppo/camera/d/b;

    .line 705
    invoke-interface {p1}, Lcom/oppo/camera/d/b;->g()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    if-eqz p1, :cond_e

    .line 707
    invoke-virtual {p1, v2}, Lcom/oppo/camera/professional/c;->g(I)Z

    move-result p1

    if-nez p1, :cond_e

    move v1, v2

    :cond_e
    return v1

    :cond_f
    const-string v0, "pref_switch_camera_key"

    .line 710
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 711
    invoke-static {}, Lcom/oppo/camera/e/a;->g()Z

    move-result p1

    return p1

    .line 714
    :cond_10
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->d(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_11
    :goto_0
    return v1
.end method

.method public f(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "pref_camera_photo_ratio_key"

    .line 429
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected h()V
    .locals 3

    const-string v0, "ProfessionalCapMode"

    const-string v1, "onPause"

    .line 1440
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1442
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oppo/camera/ui/c;->i(Z)V

    .line 1444
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ah:Lcom/oppo/camera/professional/e$a;

    if-eqz v0, :cond_0

    .line 1445
    invoke-virtual {v0, v1}, Lcom/oppo/camera/professional/e$a;->a(Z)V

    .line 1448
    :cond_0
    iput-boolean v1, p0, Lcom/oppo/camera/professional/e;->Y:Z

    .line 1450
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ag:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    .line 1451
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1454
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    if-eqz v0, :cond_2

    .line 1455
    invoke-virtual {v0}, Lcom/oppo/camera/professional/c;->f()V

    .line 1458
    :cond_2
    invoke-direct {p0, v1}, Lcom/oppo/camera/professional/e;->y(I)V

    .line 1459
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Lcom/oppo/camera/ui/c;->d(ZZ)V

    .line 1461
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    invoke-virtual {v0}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->getSelectedPosition()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1462
    invoke-direct {p0, v2}, Lcom/oppo/camera/professional/e;->n(Z)V

    .line 1465
    :cond_3
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    if-eqz v0, :cond_4

    .line 1466
    invoke-virtual {v0, v1}, Lcom/oppo/camera/professional/c;->setAuto(I)V

    .line 1469
    :cond_4
    invoke-direct {p0}, Lcom/oppo/camera/professional/e;->cW()V

    return-void
.end method

.method protected i()V
    .locals 0

    return-void
.end method

.method protected j()V
    .locals 2

    const-string v0, "ProfessionalCapMode"

    const-string v1, "onDestroy"

    .line 1474
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1476
    iget-boolean v0, p0, Lcom/oppo/camera/professional/e;->W:Z

    if-eqz v0, :cond_0

    .line 1477
    invoke-direct {p0}, Lcom/oppo/camera/professional/e;->cL()V

    .line 1480
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    if-eqz v0, :cond_1

    .line 1481
    invoke-virtual {v0}, Lcom/oppo/camera/professional/c;->d()V

    :cond_1
    return-void
.end method

.method protected k()V
    .locals 5

    const-string v0, "ProfessionalCapMode"

    const-string v1, "onInitCameraMode, Start"

    .line 314
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 316
    iput-boolean v0, p0, Lcom/oppo/camera/professional/e;->ac:Z

    .line 317
    invoke-direct {p0}, Lcom/oppo/camera/professional/e;->cH()V

    .line 318
    invoke-static {}, Lcom/oppo/camera/professional/LevelPanel;->a()V

    .line 320
    iget-object v1, p0, Lcom/oppo/camera/professional/e;->O:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    .line 321
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f00dc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_high_resolution_key"

    .line 320
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "on"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oppo/camera/professional/e;->W:Z

    .line 323
    iget-boolean v1, p0, Lcom/oppo/camera/professional/e;->W:Z

    if-nez v1, :cond_0

    .line 324
    iget-object v1, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    const-string v2, "off"

    invoke-interface {v1, v3, v2}, Lcom/oppo/camera/ui/c;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :cond_0
    iget-object v1, p0, Lcom/oppo/camera/professional/e;->ag:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 328
    new-instance v1, Lcom/oppo/camera/professional/e$8;

    invoke-direct {v1, p0}, Lcom/oppo/camera/professional/e$8;-><init>(Lcom/oppo/camera/professional/e;)V

    iput-object v1, p0, Lcom/oppo/camera/professional/e;->ag:Landroid/os/Handler;

    .line 336
    :cond_1
    invoke-direct {p0}, Lcom/oppo/camera/professional/e;->cJ()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/32 v3, 0x3b9aca00

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    .line 337
    new-instance v1, Lcom/oppo/camera/ui/control/c;

    const/4 v2, 0x1

    const-string v3, "button_color_inside_none"

    invoke-direct {v1, v2, v3}, Lcom/oppo/camera/ui/control/c;-><init>(ILjava/lang/String;)V

    .line 339
    iget-object v2, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v2, v1}, Lcom/oppo/camera/ui/c;->a(Lcom/oppo/camera/ui/control/c;)V

    .line 342
    :cond_2
    iget-object v1, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    iget-object v2, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    const v3, 0x7f0f0094

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/oppo/camera/ui/c;->a(Ljava/lang/String;)V

    .line 344
    invoke-direct {p0}, Lcom/oppo/camera/professional/e;->cP()V

    .line 346
    iget-object v1, p0, Lcom/oppo/camera/professional/e;->V:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/oppo/camera/professional/e;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oppo/camera/professional/e;->al:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    iget-object v1, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    if-eqz v1, :cond_3

    .line 349
    invoke-virtual {v1, v0}, Lcom/oppo/camera/professional/c;->setVisibility(I)V

    .line 352
    :cond_3
    iget-object v1, p0, Lcom/oppo/camera/professional/e;->ae:Lcom/oppo/camera/professional/ListProfessionalModeBar;

    if-eqz v1, :cond_4

    .line 353
    invoke-virtual {v1, v0}, Lcom/oppo/camera/professional/ListProfessionalModeBar;->setVisibility(I)V

    .line 356
    :cond_4
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->A()V

    return-void
.end method

.method public k(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "type_still_capture_raw"

    .line 394
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {p0}, Lcom/oppo/camera/professional/e;->cB()Z

    move-result p1

    return p1

    :cond_0
    const-string v0, "type_still_capture"

    .line 398
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const-string v0, "type_still_capture_yuv_main"

    .line 402
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 406
    :cond_2
    invoke-super {p0, p1}, Lcom/oppo/camera/d/a;->k(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected l()V
    .locals 2

    const-string v0, "ProfessionalCapMode"

    const-string v1, "onDeInitCameraMode"

    .line 1109
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1111
    iput-boolean v0, p0, Lcom/oppo/camera/professional/e;->ac:Z

    .line 1113
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ag:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1114
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1117
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    if-eqz v0, :cond_1

    .line 1118
    invoke-virtual {v0}, Lcom/oppo/camera/professional/c;->f()V

    .line 1121
    :cond_1
    invoke-direct {p0}, Lcom/oppo/camera/professional/e;->cX()V

    const-string v0, "oppo.cam.slow_shutter"

    const-string v1, "false"

    .line 1123
    invoke-static {v0, v1}, Lcom/color/compat/os/SystemPropertiesNative;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    invoke-direct {p0}, Lcom/oppo/camera/professional/e;->cL()V

    .line 1125
    invoke-direct {p0}, Lcom/oppo/camera/professional/e;->cR()V

    const/4 v0, 0x0

    const-string v1, "0"

    .line 1126
    invoke-direct {p0, v1, v0}, Lcom/oppo/camera/professional/e;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 5

    const v0, 0x7f0f00e7

    const-string v1, "pref_professional_iso_key"

    if-nez p1, :cond_0

    .line 1684
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->O:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    .line 1685
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1684
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1690
    :cond_0
    iget-object v2, p0, Lcom/oppo/camera/professional/e;->O:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    .line 1691
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1690
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1691
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1692
    iget-object v2, p0, Lcom/oppo/camera/professional/e;->O:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1693
    iget-object v3, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    const/4 v4, 0x0

    .line 1694
    invoke-virtual {v3, v4}, Lcom/oppo/camera/professional/c;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 1693
    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1695
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1698
    :cond_1
    iget-object v1, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1699
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->j(I)V

    goto :goto_0

    .line 1701
    :cond_2
    invoke-direct {p0}, Lcom/oppo/camera/professional/e;->db()V

    .line 1702
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->p()V

    .line 1703
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/oppo/camera/e/f;->j(I)V

    .line 1706
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setISOValue, iso: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ProfessionalCapMode"

    invoke-static {v0, p1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected m()V
    .locals 2

    const-string v0, "ProfessionalCapMode"

    const-string v1, "onBeforePreview()"

    .line 1500
    invoke-static {v0, v1}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1502
    iget-boolean v0, p0, Lcom/oppo/camera/professional/e;->t:Z

    if-eqz v0, :cond_0

    .line 1503
    invoke-direct {p0}, Lcom/oppo/camera/professional/e;->cK()V

    :cond_0
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1713
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->O:Landroid/content/SharedPreferences;

    const-string v0, "pref_professional_focus_mode_key"

    const-string v1, "0"

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1718
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFocusValue, focusValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProfessionalCapMode"

    invoke-static {v1, v0}, Lcom/oppo/camera/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1720
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ag:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1721
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1722
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1723
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1724
    iget-object p1, p0, Lcom/oppo/camera/professional/e;->ag:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1726
    iget-boolean p1, p0, Lcom/oppo/camera/professional/e;->W:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 1727
    invoke-direct {p0, p1}, Lcom/oppo/camera/professional/e;->p(Z)V

    :cond_1
    return-void
.end method

.method protected n()Z
    .locals 4

    .line 1139
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->af:Lcom/oppo/camera/professional/c;

    const-string v1, "ProfessionalCapMode"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oppo/camera/professional/c;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onBeforeSnapping, levelPanelScrolling"

    .line 1140
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 1145
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    if-eqz v0, :cond_1

    .line 1146
    iget-boolean v0, p0, Lcom/oppo/camera/professional/e;->W:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oppo/camera/professional/e;->L:Lcom/oppo/camera/d/b;

    sget-object v3, Lcom/oppo/camera/Ipa/ImageProcessService$a;->CHECK_QUEUE_TYPE_SUPER_PHOTO:Lcom/oppo/camera/Ipa/ImageProcessService$a;

    .line 1147
    invoke-interface {v0, v3}, Lcom/oppo/camera/d/b;->a(Lcom/oppo/camera/Ipa/ImageProcessService$a;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "onBeforeSnapping, memory or storage is not enough"

    .line 1148
    invoke-static {v1, v0}, Lcom/oppo/camera/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    new-instance v1, Lcom/oppo/camera/professional/e$12;

    invoke-direct {v1, p0}, Lcom/oppo/camera/professional/e$12;-><init>(Lcom/oppo/camera/professional/e;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return v2

    .line 1161
    :cond_1
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    new-instance v1, Lcom/oppo/camera/professional/e$13;

    invoke-direct {v1, p0}, Lcom/oppo/camera/professional/e$13;-><init>(Lcom/oppo/camera/professional/e;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1194
    invoke-virtual {p0}, Lcom/oppo/camera/professional/e;->cB()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1195
    iput-boolean v2, p0, Lcom/oppo/camera/professional/e;->aa:Z

    .line 1198
    :cond_2
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    if-eqz v0, :cond_3

    .line 1199
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->K:Lcom/oppo/camera/e/f;

    invoke-interface {v0}, Lcom/oppo/camera/e/f;->q()V

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method protected o()Z
    .locals 3

    .line 1056
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0}, Lcom/oppo/camera/ui/c;->h()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    return v1

    .line 1060
    :cond_0
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->N:Landroid/app/Activity;

    new-instance v2, Lcom/oppo/camera/professional/e$11;

    invoke-direct {v2, p0}, Lcom/oppo/camera/professional/e$11;-><init>(Lcom/oppo/camera/professional/e;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1085
    iput-boolean v1, p0, Lcom/oppo/camera/professional/e;->q:Z

    .line 1086
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ah:Lcom/oppo/camera/professional/e$a;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/oppo/camera/professional/e$a;->a(Z)V

    .line 1087
    invoke-virtual {p0}, Lcom/oppo/camera/professional/e;->v()V

    .line 1088
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->M:Lcom/oppo/camera/ui/c;

    invoke-interface {v0, v2, v1}, Lcom/oppo/camera/ui/c;->a(ZZ)V

    return v2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public x(I)V
    .locals 2

    .line 757
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/oppo/camera/professional/e;->ad:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 758
    iget-object v0, p0, Lcom/oppo/camera/professional/e;->ag:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 759
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 762
    invoke-virtual {p0, p1, v0}, Lcom/oppo/camera/professional/e;->a(ILandroid/os/Message;)V

    :cond_1
    :goto_0
    return-void
.end method
