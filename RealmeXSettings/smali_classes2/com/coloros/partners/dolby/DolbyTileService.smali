.class public Lcom/coloros/partners/dolby/DolbyTileService;
.super Landroid/service/quicksettings/TileService;
.source "DolbyTileService.java"


# instance fields
.field private a:Lcom/coloros/partners/dolby/a;

.field private b:Lcom/coloros/partners/dolby/a$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    .line 39
    new-instance v0, Lcom/coloros/partners/dolby/DolbyTileService$1;

    invoke-direct {v0, p0}, Lcom/coloros/partners/dolby/DolbyTileService$1;-><init>(Lcom/coloros/partners/dolby/DolbyTileService;)V

    iput-object v0, p0, Lcom/coloros/partners/dolby/DolbyTileService;->b:Lcom/coloros/partners/dolby/a$a;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 4

    .line 53
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->t(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 56
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/coloros/partners/dolby/DolbyTileService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result p0

    const/4 v2, 0x1

    if-eqz p0, :cond_0

    if-ne p0, v2, :cond_1

    :cond_0
    const/4 v3, 0x2

    .line 60
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 63
    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "checkServiceState get DolbyTileService enabled state: "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "DolbyTileService"

    invoke-static {v0, p0}, Lcom/coloros/partners/dolby/a/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/coloros/partners/dolby/DolbyTileService;I)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, v0, p1}, Lcom/coloros/partners/dolby/DolbyTileService;->a(ZI)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3

    .line 167
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 168
    invoke-static {p0}, Lcom/coloros/partners/dolby/a/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "package_name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-static {p0, p2}, Lcom/coloros/partners/dolby/a/b;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "device_name"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "switch_state"

    .line 170
    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "source"

    const-string p2, "1"

    .line 171
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "open_intent"

    .line 172
    invoke-static {p0, p1, v0}, Lcom/coloros/partners/dolby/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private a(ZI)V
    .locals 6

    .line 121
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->t(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/partners/dolby/DolbyTileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    const-string v1, "DolbyTileService"

    if-nez v0, :cond_1

    const-string p1, "updateTile, tile is null"

    .line 126
    invoke-static {v1, p1}, Lcom/coloros/partners/dolby/a/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 129
    :cond_1
    iget-object v2, p0, Lcom/coloros/partners/dolby/DolbyTileService;->a:Lcom/coloros/partners/dolby/a;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/coloros/partners/dolby/a;->a()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    .line 132
    invoke-static {p2}, Lcom/coloros/partners/dolby/a;->a(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 133
    iget-object p2, p0, Lcom/coloros/partners/dolby/DolbyTileService;->a:Lcom/coloros/partners/dolby/a;

    invoke-virtual {p2}, Lcom/coloros/partners/dolby/a;->d()I

    move-result p2

    .line 135
    :cond_2
    iget-object v3, p0, Lcom/coloros/partners/dolby/DolbyTileService;->a:Lcom/coloros/partners/dolby/a;

    invoke-virtual {v3}, Lcom/coloros/partners/dolby/a;->e()Z

    move-result v3

    .line 136
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "updateTile, effectEnabled="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", connectDevice="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/coloros/partners/dolby/a/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x4

    const/4 v5, 0x2

    if-eq p2, v4, :cond_3

    if-ne p2, v5, :cond_7

    :cond_3
    if-eqz p1, :cond_5

    xor-int/lit8 v3, v3, 0x1

    .line 142
    iget-object p1, p0, Lcom/coloros/partners/dolby/DolbyTileService;->a:Lcom/coloros/partners/dolby/a;

    invoke-virtual {p1, v3}, Lcom/coloros/partners/dolby/a;->a(Z)V

    if-eqz v3, :cond_4

    const-string p1, "1"

    goto :goto_0

    :cond_4
    const-string p1, "0"

    .line 143
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/coloros/partners/dolby/DolbyTileService;->a(Ljava/lang/String;I)V

    :cond_5
    if-eqz v3, :cond_6

    move v2, v5

    goto :goto_1

    :cond_6
    const/4 v2, 0x1

    .line 152
    :cond_7
    :goto_1
    invoke-virtual {v0, v2}, Landroid/service/quicksettings/Tile;->setState(I)V

    goto :goto_2

    :cond_8
    const-string p1, "updateTile, dolby service not bond"

    .line 154
    invoke-static {v1, p1}, Lcom/coloros/partners/dolby/a/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_2
    invoke-virtual {p0}, Lcom/coloros/partners/dolby/DolbyTileService;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f12084a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    .line 160
    :try_start_0
    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 162
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Error occur, e = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "DolbyTileService"

    const-string v1, "onBind"

    .line 81
    invoke-static {v0, v1}, Lcom/coloros/partners/dolby/a/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-super {p0, p1}, Landroid/service/quicksettings/TileService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, v0, v0}, Lcom/coloros/partners/dolby/DolbyTileService;->a(ZI)V

    return-object p1
.end method

.method public onClick()V
    .locals 2

    const-string v0, "DolbyTileService"

    const-string v1, "onClick"

    .line 116
    invoke-static {v0, v1}, Lcom/coloros/partners/dolby/a/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 117
    invoke-direct {p0, v0, v1}, Lcom/coloros/partners/dolby/DolbyTileService;->a(ZI)V

    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 70
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onCreate()V

    .line 71
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->t(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DolbyTileService"

    const-string v1, "onCreate"

    .line 72
    invoke-static {v0, v1}, Lcom/coloros/partners/dolby/a/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {p0}, Lcom/coloros/partners/dolby/a;->a(Landroid/content/Context;)Lcom/coloros/partners/dolby/a;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/partners/dolby/DolbyTileService;->a:Lcom/coloros/partners/dolby/a;

    .line 74
    iget-object v0, p0, Lcom/coloros/partners/dolby/DolbyTileService;->a:Lcom/coloros/partners/dolby/a;

    iget-object v1, p0, Lcom/coloros/partners/dolby/DolbyTileService;->b:Lcom/coloros/partners/dolby/a$a;

    invoke-virtual {v0, v1}, Lcom/coloros/partners/dolby/a;->a(Lcom/coloros/partners/dolby/a$a;)V

    .line 75
    iget-object v0, p0, Lcom/coloros/partners/dolby/DolbyTileService;->a:Lcom/coloros/partners/dolby/a;

    invoke-virtual {v0}, Lcom/coloros/partners/dolby/a;->b()V

    :cond_0
    return-void
.end method

.method public onStartListening()V
    .locals 2

    .line 89
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    const-string v0, "DolbyTileService"

    const-string v1, "onStartListening"

    .line 90
    invoke-static {v0, v1}, Lcom/coloros/partners/dolby/a/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->t(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/coloros/partners/dolby/DolbyTileService;->a:Lcom/coloros/partners/dolby/a;

    if-nez v0, :cond_0

    .line 93
    invoke-static {p0}, Lcom/coloros/partners/dolby/a;->a(Landroid/content/Context;)Lcom/coloros/partners/dolby/a;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/partners/dolby/DolbyTileService;->a:Lcom/coloros/partners/dolby/a;

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/coloros/partners/dolby/DolbyTileService;->a:Lcom/coloros/partners/dolby/a;

    iget-object v1, p0, Lcom/coloros/partners/dolby/DolbyTileService;->b:Lcom/coloros/partners/dolby/a$a;

    invoke-virtual {v0, v1}, Lcom/coloros/partners/dolby/a;->a(Lcom/coloros/partners/dolby/a$a;)V

    .line 96
    iget-object v0, p0, Lcom/coloros/partners/dolby/DolbyTileService;->a:Lcom/coloros/partners/dolby/a;

    invoke-virtual {v0}, Lcom/coloros/partners/dolby/a;->b()V

    :cond_1
    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, v0, v0}, Lcom/coloros/partners/dolby/DolbyTileService;->a(ZI)V

    return-void
.end method

.method public onStopListening()V
    .locals 2

    .line 103
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    const-string v0, "DolbyTileService"

    const-string v1, "onStopListening"

    .line 104
    invoke-static {v0, v1}, Lcom/coloros/partners/dolby/a/c;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->t(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/coloros/partners/dolby/DolbyTileService;->a:Lcom/coloros/partners/dolby/a;

    if-eqz v0, :cond_0

    .line 107
    iget-object v1, p0, Lcom/coloros/partners/dolby/DolbyTileService;->b:Lcom/coloros/partners/dolby/a$a;

    invoke-virtual {v0, v1}, Lcom/coloros/partners/dolby/a;->b(Lcom/coloros/partners/dolby/a$a;)V

    .line 108
    iget-object v0, p0, Lcom/coloros/partners/dolby/DolbyTileService;->a:Lcom/coloros/partners/dolby/a;

    invoke-virtual {v0}, Lcom/coloros/partners/dolby/a;->c()V

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/coloros/partners/dolby/DolbyTileService;->a:Lcom/coloros/partners/dolby/a;

    :cond_0
    return-void
.end method
