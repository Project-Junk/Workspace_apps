.class final Lcom/android/settings/gestures/SwipeToNotificationSettings$1;
.super Lcom/android/settings/search/a;
.source "SwipeToNotificationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/gestures/SwipeToNotificationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 67
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

    .line 71
    new-instance p2, Landroid/provider/SearchIndexableResource;

    invoke-direct {p2, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    const p1, 0x7f15011f

    .line 72
    iput p1, p2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    const/4 p1, 0x1

    .line 73
    new-array p1, p1, [Landroid/provider/SearchIndexableResource;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 0

    .line 78
    invoke-static {p1}, Lcom/android/settings/gestures/SwipeToNotificationPreferenceController;->isAvailable(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method