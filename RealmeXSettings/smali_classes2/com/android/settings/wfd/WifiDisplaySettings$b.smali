.class final Lcom/android/settings/wfd/WifiDisplaySettings$b;
.super Ljava/lang/Object;
.source "WifiDisplaySettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/android/settings/dashboard/f;

.field private final c:Landroid/media/MediaRouter;

.field private final d:Landroid/media/MediaRouter$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/f;)V
    .locals 1

    .line 800
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 773
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$b$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$b$1;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings$b;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$b;->d:Landroid/media/MediaRouter$Callback;

    .line 801
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$b;->a:Landroid/content/Context;

    .line 802
    iput-object p2, p0, Lcom/android/settings/wfd/WifiDisplaySettings$b;->b:Lcom/android/settings/dashboard/f;

    const-string p2, "media_router"

    .line 803
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaRouter;

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$b;->c:Landroid/media/MediaRouter;

    .line 804
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$b;->c:Landroid/media/MediaRouter;

    const-string p2, "android.media.mirroring_group"

    invoke-virtual {p1, p2}, Landroid/media/MediaRouter;->setRouterGroupId(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 5

    .line 818
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$b;->a:Landroid/content/Context;

    const v1, 0x7f1207fd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 820
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$b;->c:Landroid/media/MediaRouter;

    invoke-virtual {v1}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 822
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings$b;->c:Landroid/media/MediaRouter;

    invoke-virtual {v3, v2}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v3

    const/4 v4, 0x4

    .line 823
    invoke-virtual {v3, v4}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 824
    invoke-virtual {v3}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Landroid/media/MediaRouter$RouteInfo;->isConnecting()Z

    move-result v3

    if-nez v3, :cond_0

    .line 825
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$b;->a:Landroid/content/Context;

    const v1, 0x7f121979

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 829
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$b;->b:Lcom/android/settings/dashboard/f;

    invoke-virtual {v1, p0, v0}, Lcom/android/settings/dashboard/f;->a(Lcom/android/settings/dashboard/f$b;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 810
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$b;->c:Landroid/media/MediaRouter;

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$b;->d:Landroid/media/MediaRouter$Callback;

    invoke-virtual {p1, v0, v1}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;)V

    .line 811
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings$b;->a()V

    return-void

    .line 813
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$b;->c:Landroid/media/MediaRouter;

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings$b;->d:Landroid/media/MediaRouter$Callback;

    invoke-virtual {p1, v0}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    return-void
.end method
