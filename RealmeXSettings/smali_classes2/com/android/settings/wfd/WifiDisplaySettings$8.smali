.class final Lcom/android/settings/wfd/WifiDisplaySettings$8;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "WifiDisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wfd/WifiDisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/wfd/WifiDisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0

    .line 639
    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$8;->a:Lcom/android/settings/wfd/WifiDisplaySettings;

    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 642
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$8;->a:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/android/settings/wfd/WifiDisplaySettings;->e(Lcom/android/settings/wfd/WifiDisplaySettings;I)V

    return-void
.end method

.method public final onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 647
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$8;->a:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/android/settings/wfd/WifiDisplaySettings;->e(Lcom/android/settings/wfd/WifiDisplaySettings;I)V

    return-void
.end method

.method public final onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 652
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$8;->a:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/android/settings/wfd/WifiDisplaySettings;->e(Lcom/android/settings/wfd/WifiDisplaySettings;I)V

    return-void
.end method

.method public final onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 657
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$8;->a:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/android/settings/wfd/WifiDisplaySettings;->e(Lcom/android/settings/wfd/WifiDisplaySettings;I)V

    return-void
.end method

.method public final onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 662
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings$8;->a:Lcom/android/settings/wfd/WifiDisplaySettings;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/android/settings/wfd/WifiDisplaySettings;->e(Lcom/android/settings/wfd/WifiDisplaySettings;I)V

    return-void
.end method
