.class final Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment$1;
.super Lcom/android/settings/search/a;
.source "RealmeCurvedDisplaySettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 355
    invoke-direct {p0}, Lcom/android/settings/search/a;-><init>()V

    return-void
.end method

.method private static synthetic a(Landroid/provider/SearchIndexableResource;)V
    .locals 1

    const v0, 0x7f150101

    .line 368
    iput v0, p0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    return-void
.end method

.method private static synthetic b(Landroid/provider/SearchIndexableResource;)V
    .locals 1

    const v0, 0x7f150079

    .line 367
    iput v0, p0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    return-void
.end method

.method public static synthetic lambda$UIQcwPd8u5WN-swtEbn2_YqMJfo(Landroid/provider/SearchIndexableResource;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment$1;->a(Landroid/provider/SearchIndexableResource;)V

    return-void
.end method

.method public static synthetic lambda$az2eQ0-q73iDxyi2BrcD4URV8Tw(Landroid/provider/SearchIndexableResource;)V
    .locals 0

    invoke-static {p0}, Lcom/coloros/settings/feature/display/curveddisplay/RealmeCurvedDisplaySettingFragment$1;->b(Landroid/provider/SearchIndexableResource;)V

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

    .line 363
    new-instance p2, Landroid/provider/SearchIndexableResource;

    invoke-direct {p2, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 366
    invoke-static {}, Lcom/coloros/settings/utils/bg$d;->b()Lcom/coloros/settings/utils/bg$d;

    move-result-object p1

    new-instance v0, Lcom/coloros/settings/feature/display/curveddisplay/-$$Lambda$RealmeCurvedDisplaySettingFragment$1$az2eQ0-q73iDxyi2BrcD4URV8Tw;

    invoke-direct {v0, p2}, Lcom/coloros/settings/feature/display/curveddisplay/-$$Lambda$RealmeCurvedDisplaySettingFragment$1$az2eQ0-q73iDxyi2BrcD4URV8Tw;-><init>(Landroid/provider/SearchIndexableResource;)V

    .line 367
    invoke-virtual {p1, v0}, Lcom/coloros/settings/utils/bg$d;->b(Lcom/coloros/settings/utils/bg$a;)Lcom/coloros/settings/utils/bg$d;

    move-result-object p1

    new-instance v0, Lcom/coloros/settings/feature/display/curveddisplay/-$$Lambda$RealmeCurvedDisplaySettingFragment$1$UIQcwPd8u5WN-swtEbn2_YqMJfo;

    invoke-direct {v0, p2}, Lcom/coloros/settings/feature/display/curveddisplay/-$$Lambda$RealmeCurvedDisplaySettingFragment$1$UIQcwPd8u5WN-swtEbn2_YqMJfo;-><init>(Landroid/provider/SearchIndexableResource;)V

    .line 368
    invoke-virtual {p1, v0}, Lcom/coloros/settings/utils/bg$d;->a(Lcom/coloros/settings/utils/bg$a;)Lcom/coloros/settings/utils/bg$d;

    move-result-object p1

    .line 369
    invoke-virtual {p1}, Lcom/coloros/settings/utils/bg$d;->a()V

    const p1, 0x7f08098e

    .line 371
    iput p1, p2, Landroid/provider/SearchIndexableResource;->iconResId:I

    const/4 p1, 0x1

    .line 372
    new-array p1, p1, [Landroid/provider/SearchIndexableResource;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
