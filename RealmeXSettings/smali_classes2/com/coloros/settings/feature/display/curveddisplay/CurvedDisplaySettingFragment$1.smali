.class final Lcom/coloros/settings/feature/display/curveddisplay/CurvedDisplaySettingFragment$1;
.super Lcom/android/settings/search/a;
.source "CurvedDisplaySettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/display/curveddisplay/CurvedDisplaySettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 376
    invoke-direct {p0}, Lcom/android/settings/search/a;-><init>()V

    return-void
.end method

.method private static synthetic a(Landroid/provider/SearchIndexableResource;)V
    .locals 1

    const v0, 0x7f150101

    .line 389
    iput v0, p0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    return-void
.end method

.method private static synthetic b(Landroid/provider/SearchIndexableResource;)V
    .locals 1

    const v0, 0x7f150079

    .line 388
    iput v0, p0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    return-void
.end method

.method public static synthetic lambda$QTZvKpbQ0_dFRpY2b_ySq9uC5CM(Landroid/provider/SearchIndexableResource;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/settings/feature/display/curveddisplay/CurvedDisplaySettingFragment$1;->b(Landroid/provider/SearchIndexableResource;)V

    return-void
.end method

.method public static synthetic lambda$Y1vwIv-YUDjn9l-h1P8q_6IG4UQ(Landroid/provider/SearchIndexableResource;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/settings/feature/display/curveddisplay/CurvedDisplaySettingFragment$1;->a(Landroid/provider/SearchIndexableResource;)V

    return-void
.end method


# virtual methods
.method public final getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .line 384
    new-instance p2, Landroid/provider/SearchIndexableResource;

    invoke-direct {p2, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 387
    invoke-static {}, Lcom/coloros/settings/utils/bg$d;->b()Lcom/coloros/settings/utils/bg$d;

    move-result-object p1

    new-instance v0, Lcom/coloros/settings/feature/display/curveddisplay/-$$Lambda$CurvedDisplaySettingFragment$1$QTZvKpbQ0_dFRpY2b_ySq9uC5CM;

    invoke-direct {v0, p2}, Lcom/coloros/settings/feature/display/curveddisplay/-$$Lambda$CurvedDisplaySettingFragment$1$QTZvKpbQ0_dFRpY2b_ySq9uC5CM;-><init>(Landroid/provider/SearchIndexableResource;)V

    .line 388
    invoke-virtual {p1, v0}, Lcom/coloros/settings/utils/bg$d;->b(Lcom/coloros/settings/utils/bg$a;)Lcom/coloros/settings/utils/bg$d;

    move-result-object p1

    new-instance v0, Lcom/coloros/settings/feature/display/curveddisplay/-$$Lambda$CurvedDisplaySettingFragment$1$Y1vwIv-YUDjn9l-h1P8q_6IG4UQ;

    invoke-direct {v0, p2}, Lcom/coloros/settings/feature/display/curveddisplay/-$$Lambda$CurvedDisplaySettingFragment$1$Y1vwIv-YUDjn9l-h1P8q_6IG4UQ;-><init>(Landroid/provider/SearchIndexableResource;)V

    .line 389
    invoke-virtual {p1, v0}, Lcom/coloros/settings/utils/bg$d;->a(Lcom/coloros/settings/utils/bg$a;)Lcom/coloros/settings/utils/bg$d;

    move-result-object p1

    .line 390
    invoke-virtual {p1}, Lcom/coloros/settings/utils/bg$d;->a()V

    const p1, 0x7f08098e

    .line 392
    iput p1, p2, Landroid/provider/SearchIndexableResource;->iconResId:I

    const/4 p1, 0x1

    .line 393
    new-array p1, p1, [Landroid/provider/SearchIndexableResource;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
