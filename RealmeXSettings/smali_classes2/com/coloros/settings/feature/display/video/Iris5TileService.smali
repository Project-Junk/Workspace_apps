.class public Lcom/coloros/settings/feature/display/video/Iris5TileService;
.super Landroid/service/quicksettings/TileService;
.source "Iris5TileService.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/video/Iris5TileService;->a:Z

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    .line 84
    :try_start_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/video/Iris5TileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0, p1}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {v0, p2}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 88
    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 91
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error occur, e = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Iris5TileService"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(Z)V
    .locals 1

    const v0, 0x7f120f95

    .line 79
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/display/video/Iris5TileService;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/coloros/settings/feature/display/video/Iris5TileService;->a(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .line 37
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onClick()V

    .line 38
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/video/Iris5TileService;->a:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/video/Iris5TileService;->a:Z

    .line 39
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/video/Iris5TileService;->a:Z

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/display/video/Iris5TileService;->a(Z)V

    .line 40
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/video/Iris5TileService;->a:Z

    if-eqz v0, :cond_0

    .line 41
    invoke-static {p0}, Lcom/coloros/settings/utils/v;->i(Landroid/content/Context;)V

    .line 43
    :cond_0
    new-instance v0, Lcom/color/compat/app/StatusBarManagerNative;

    invoke-direct {v0, p0}, Lcom/color/compat/app/StatusBarManagerNative;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/color/compat/app/StatusBarManagerNative;->collapsePanels()V

    .line 44
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/video/Iris5TileService;->a:Z

    if-eqz v0, :cond_3

    .line 1048
    invoke-static {p0}, Lcom/coloros/settings/utils/v;->h(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1065
    invoke-static {p0}, Lcom/coloros/settings/utils/v;->h(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0}, Lcom/coloros/settings/utils/v;->f(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 1050
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/coloros/settings/feature/display/video/Iris5DialogActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x10000000

    .line 1051
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "iris5_check"

    .line 1052
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1053
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/display/video/Iris5TileService;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 1056
    :cond_2
    invoke-static {p0, v0}, Lcom/coloros/settings/utils/v;->e(Landroid/content/Context;Z)V

    return-void

    .line 1059
    :cond_3
    invoke-static {p0, v0}, Lcom/coloros/settings/utils/v;->f(Landroid/content/Context;Z)V

    .line 1060
    invoke-static {v0, v1, p0}, Lcom/coloros/settings/utils/v;->a(ZZLandroid/content/Context;)V

    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 31
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onCreate()V

    .line 32
    invoke-static {p0}, Lcom/coloros/settings/utils/v;->b(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/display/video/Iris5TileService;->a(Z)V

    return-void
.end method

.method public onStartListening()V
    .locals 1

    .line 73
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    .line 74
    invoke-static {p0}, Lcom/coloros/settings/utils/v;->b(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/video/Iris5TileService;->a:Z

    .line 75
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/video/Iris5TileService;->a:Z

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/display/video/Iris5TileService;->a(Z)V

    return-void
.end method
