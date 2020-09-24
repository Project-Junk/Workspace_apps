.class final Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment$2;
.super Lcom/android/settings/search/a;
.source "ScreenRefreshRateFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/display/ScreenRefreshRateFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 261
    invoke-direct {p0}, Lcom/android/settings/search/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 278
    invoke-super {p0, p1}, Lcom/android/settings/search/a;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 279
    invoke-static {p1}, Lcom/coloros/settings/utils/al;->aw(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "refresh_rate_90Hz"

    .line 280
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_0
    invoke-static {}, Lcom/coloros/settings/utils/bh;->q()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "refresh_rate_120Hz"

    .line 283
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string p1, "refresh_rate_category"

    .line 286
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

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

    .line 265
    new-instance p2, Landroid/provider/SearchIndexableResource;

    invoke-direct {p2, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1500e2

    .line 266
    iput v0, p2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    const v0, 0x7f08098e

    .line 267
    iput v0, p2, Landroid/provider/SearchIndexableResource;->iconResId:I

    .line 268
    invoke-static {}, Lcom/coloros/settings/utils/bh;->q()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/coloros/settings/utils/al;->aw(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 269
    new-array p1, p1, [Landroid/provider/SearchIndexableResource;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
