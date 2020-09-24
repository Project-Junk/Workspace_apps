.class final Lcom/coloros/settings/feature/display/video/VideoDisplayEnhancementFragment$1;
.super Lcom/android/settings/search/a;
.source "VideoDisplayEnhancementFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/display/video/VideoDisplayEnhancementFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/android/settings/search/a;-><init>()V

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

    .line 96
    new-instance p2, Landroid/provider/SearchIndexableResource;

    invoke-direct {p2, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const v0, 0x7f150135

    .line 97
    iput v0, p2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    const v0, 0x7f08098e

    .line 98
    iput v0, p2, Landroid/provider/SearchIndexableResource;->iconResId:I

    .line 99
    invoke-static {p1}, Lcom/coloros/settings/utils/al;->H(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 100
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
