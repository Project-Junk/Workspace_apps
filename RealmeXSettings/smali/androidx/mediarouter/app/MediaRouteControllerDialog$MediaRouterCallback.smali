.class final Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaRouterCallback;
.super Landroidx/mediarouter/media/MediaRouter$Callback;
.source "MediaRouteControllerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/app/MediaRouteControllerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MediaRouterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;


# direct methods
.method constructor <init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;)V
    .locals 0

    .line 1137
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    invoke-direct {p0}, Landroidx/mediarouter/media/MediaRouter$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRouteChanged(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 1147
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->update(Z)V

    return-void
.end method

.method public final onRouteUnselected(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 1142
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->update(Z)V

    return-void
.end method

.method public final onRouteVolumeChanged(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 3

    .line 1152
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object p1, p1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mVolumeSliderMap:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    .line 1153
    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getVolume()I

    move-result v0

    .line 1154
    sget-boolean v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1155
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "onRouteVolumeChanged(), route.getVolume:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaRouteCtrlDialog"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    .line 1157
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$MediaRouterCallback;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    iget-object v1, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRouteInVolumeSliderTouched:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    if-eq v1, p2, :cond_1

    .line 1158
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_1
    return-void
.end method
