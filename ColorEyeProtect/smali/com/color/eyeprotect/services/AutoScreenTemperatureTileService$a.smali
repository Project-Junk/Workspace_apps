.class public final Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService$a;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService;

.field private final b:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService$a;->a:Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "setting_enable_color_temperature_regulation"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService$a;->b:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService$a;->a:Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService;

    invoke-virtual {v0}, Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService$a;->b:Landroid/net/Uri;

    check-cast p0, Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService$a;->a:Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService;

    invoke-virtual {v0}, Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    const-string v1, "tile"

    invoke-static {v0, v1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/service/quicksettings/Tile;->setState(I)V

    iget-object p0, p0, Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService$a;->a:Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService;

    const p1, 0x7f0f001d

    invoke-virtual {p0, p1}, Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService;->getString(I)Ljava/lang/String;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService$a;->a:Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService;

    invoke-virtual {v0}, Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    check-cast p0, Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p1, p0, Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService$a;->a:Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService;

    invoke-virtual {p1}, Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService;->getApplication()Landroid/app/Application;

    move-result-object p1

    const-string p2, "application"

    invoke-static {p1, p2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1}, Lcom/color/eyeprotect/util/e;->p(Landroid/content/ContentResolver;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/color/eyeprotect/services/AutoScreenTemperatureTileService$a;->a(Z)V

    return-void
.end method
