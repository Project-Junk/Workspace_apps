.class Lcom/color/eyeprotect/services/ColorEyeProtectTileService$a;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/eyeprotect/services/ColorEyeProtectTileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/color/eyeprotect/services/ColorEyeProtectTileService;


# direct methods
.method public constructor <init>(Lcom/color/eyeprotect/services/ColorEyeProtectTileService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/color/eyeprotect/services/ColorEyeProtectTileService$a;->a:Lcom/color/eyeprotect/services/ColorEyeProtectTileService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/color/eyeprotect/services/ColorEyeProtectTileService$a;->a:Lcom/color/eyeprotect/services/ColorEyeProtectTileService;

    invoke-virtual {v0}, Lcom/color/eyeprotect/services/ColorEyeProtectTileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    iget-object v1, p0, Lcom/color/eyeprotect/services/ColorEyeProtectTileService$a;->a:Lcom/color/eyeprotect/services/ColorEyeProtectTileService;

    const v2, 0x7f0f0077

    invoke-virtual {v1, v2}, Lcom/color/eyeprotect/services/ColorEyeProtectTileService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/color/eyeprotect/services/ColorEyeProtectTileService$a;->a:Lcom/color/eyeprotect/services/ColorEyeProtectTileService;

    const/4 p1, 0x1

    :goto_0
    invoke-static {p0, p1}, Lcom/color/eyeprotect/services/ColorEyeProtectTileService;->a(Lcom/color/eyeprotect/services/ColorEyeProtectTileService;Z)V

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/color/eyeprotect/services/ColorEyeProtectTileService$a;->a:Lcom/color/eyeprotect/services/ColorEyeProtectTileService;

    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public b(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/color/eyeprotect/services/ColorEyeProtectTileService$a;->a:Lcom/color/eyeprotect/services/ColorEyeProtectTileService;

    invoke-virtual {p1}, Lcom/color/eyeprotect/services/ColorEyeProtectTileService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "color_eyeprotect_enable"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/color/eyeprotect/services/ColorEyeProtectTileService$a;->a:Lcom/color/eyeprotect/services/ColorEyeProtectTileService;

    invoke-virtual {p1}, Lcom/color/eyeprotect/services/ColorEyeProtectTileService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method

.method public onChange(Z)V
    .locals 0

    iget-object p1, p0, Lcom/color/eyeprotect/services/ColorEyeProtectTileService$a;->a:Lcom/color/eyeprotect/services/ColorEyeProtectTileService;

    invoke-virtual {p1}, Lcom/color/eyeprotect/services/ColorEyeProtectTileService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1}, Lcom/color/eyeprotect/util/e;->b(Landroid/content/ContentResolver;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/color/eyeprotect/services/ColorEyeProtectTileService$a;->a(Z)V

    return-void
.end method
