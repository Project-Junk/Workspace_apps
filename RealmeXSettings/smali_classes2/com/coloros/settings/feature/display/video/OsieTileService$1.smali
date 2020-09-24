.class final Lcom/coloros/settings/feature/display/video/OsieTileService$1;
.super Landroid/database/ContentObserver;
.source "OsieTileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/display/video/OsieTileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/display/video/OsieTileService;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/display/video/OsieTileService;Landroid/os/Handler;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/coloros/settings/feature/display/video/OsieTileService$1;->a:Lcom/coloros/settings/feature/display/video/OsieTileService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 87
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 88
    sget-object p1, Lcom/coloros/settings/feature/display/video/OsieTileService;->a:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 89
    iget-object p1, p0, Lcom/coloros/settings/feature/display/video/OsieTileService$1;->a:Lcom/coloros/settings/feature/display/video/OsieTileService;

    invoke-static {}, Lcom/coloros/settings/utils/ap;->b()Z

    move-result p2

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/display/video/OsieTileService;->a(Lcom/coloros/settings/feature/display/video/OsieTileService;Z)Z

    .line 90
    iget-object p1, p0, Lcom/coloros/settings/feature/display/video/OsieTileService$1;->a:Lcom/coloros/settings/feature/display/video/OsieTileService;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/video/OsieTileService;->a(Lcom/coloros/settings/feature/display/video/OsieTileService;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/coloros/settings/feature/display/video/OsieTileService;->b(Lcom/coloros/settings/feature/display/video/OsieTileService;Z)V

    :cond_0
    return-void
.end method
