.class final Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment$6;
.super Lcom/android/settings/search/a;
.source "ColorModeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/display/protecteyes/ColorModeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 399
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

    .line 418
    invoke-super {p0, p1}, Lcom/android/settings/search/a;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    .line 421
    invoke-static {}, Lcom/coloros/settings/utils/bh;->r()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "color_mode_colorful"

    .line 422
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 425
    :cond_0
    invoke-static {}, Lcom/coloros/settings/utils/bh;->s()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "color_mode_adaptive"

    .line 426
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    :cond_1
    invoke-static {}, Lcom/coloros/settings/utils/bh;->t()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "color_mode_cinema"

    .line 429
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object p1
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

    .line 403
    new-instance p2, Landroid/provider/SearchIndexableResource;

    invoke-direct {p2, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const p1, 0x7f1500cc

    .line 404
    iput p1, p2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    const p1, 0x7f08098e

    .line 405
    iput p1, p2, Landroid/provider/SearchIndexableResource;->iconResId:I

    .line 408
    invoke-static {}, Lcom/coloros/settings/utils/al;->u()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 409
    new-array p1, p1, [Landroid/provider/SearchIndexableResource;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
