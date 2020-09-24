.class public Lcom/coloros/settings/feature/display/video/OsieTileService;
.super Landroid/service/quicksettings/TileService;
.source "OsieTileService.java"


# static fields
.field public static final a:Landroid/net/Uri;


# instance fields
.field private b:Z

.field private c:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "osie_iris5_switch"

    .line 32
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/feature/display/video/OsieTileService;->a:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/video/OsieTileService;->b:Z

    .line 84
    new-instance v0, Lcom/coloros/settings/feature/display/video/OsieTileService$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/settings/feature/display/video/OsieTileService$1;-><init>(Lcom/coloros/settings/feature/display/video/OsieTileService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/display/video/OsieTileService;->c:Landroid/database/ContentObserver;

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    .line 101
    :try_start_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/video/OsieTileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0, p1}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    .line 104
    invoke-virtual {v0, p2}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 105
    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 108
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error occur, e = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OsieTileService"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a(Z)V
    .locals 1

    const v0, 0x7f120fa2

    .line 96
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/display/video/OsieTileService;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/coloros/settings/feature/display/video/OsieTileService;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/display/video/OsieTileService;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/coloros/settings/feature/display/video/OsieTileService;->b:Z

    return p0
.end method

.method static synthetic a(Lcom/coloros/settings/feature/display/video/OsieTileService;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/coloros/settings/feature/display/video/OsieTileService;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/coloros/settings/feature/display/video/OsieTileService;Z)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/video/OsieTileService;->a(Z)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .line 51
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onClick()V

    .line 52
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/video/OsieTileService;->b:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/video/OsieTileService;->b:Z

    .line 53
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/video/OsieTileService;->b:Z

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/display/video/OsieTileService;->a(Z)V

    .line 54
    new-instance v0, Lcom/color/compat/app/StatusBarManagerNative;

    invoke-direct {v0, p0}, Lcom/color/compat/app/StatusBarManagerNative;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/color/compat/app/StatusBarManagerNative;->collapsePanels()V

    .line 55
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/video/OsieTileService;->b:Z

    .line 1059
    invoke-static {p0, v0}, Lcom/coloros/settings/utils/ap;->a(Landroid/content/Context;Z)V

    const-string v1, "persist.sys.dpp.support"

    const-string v2, "0"

    .line 1062
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    const v0, 0x7f120fa0

    goto :goto_0

    :cond_0
    const v0, 0x7f120f8b

    .line 1064
    :goto_0
    invoke-static {p0, v0}, Lcom/coloros/settings/utils/bl;->a(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 1

    .line 45
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onCreate()V

    .line 46
    invoke-static {}, Lcom/coloros/settings/utils/ap;->b()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/display/video/OsieTileService;->a(Z)V

    return-void
.end method

.method public onStartListening()V
    .locals 4

    .line 71
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    .line 72
    invoke-static {}, Lcom/coloros/settings/utils/ap;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/settings/feature/display/video/OsieTileService;->b:Z

    .line 73
    iget-boolean v0, p0, Lcom/coloros/settings/feature/display/video/OsieTileService;->b:Z

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/display/video/OsieTileService;->a(Z)V

    .line 74
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/video/OsieTileService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/coloros/settings/feature/display/video/OsieTileService;->a:Landroid/net/Uri;

    iget-object v2, p0, Lcom/coloros/settings/feature/display/video/OsieTileService;->c:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStopListening()V
    .locals 2

    .line 80
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    .line 81
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/video/OsieTileService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/display/video/OsieTileService;->c:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
