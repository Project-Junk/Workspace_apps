.class public final Lcom/color/darkmode/tile/DarkModeTileService;
.super Landroid/service/quicksettings/TileService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    return-void
.end method

.method private final isDarkMode()Z
    .locals 3

    invoke-virtual {p0}, Lcom/color/darkmode/tile/DarkModeTileService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "applicationContext"

    invoke-static {v0, v1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    invoke-virtual {p0}, Lcom/color/darkmode/tile/DarkModeTileService;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v2, "applicationContext"

    invoke-static {p0, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->isSystemDarkModeOpen(Landroid/content/Context;)Z

    move-result p0

    sget-object v1, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    const-string v2, "contentResolver"

    invoke-static {v0, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getWaitSwitchDarkMode(Landroid/content/ContentResolver;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 p0, 0x1

    goto :goto_0

    :pswitch_1
    const/4 p0, 0x0

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final updateTile()V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lcom/color/darkmode/tile/DarkModeTileService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "applicationContext"

    invoke-static {v0, v1}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    invoke-virtual {p0}, Lcom/color/darkmode/tile/DarkModeTileService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "applicationContext"

    invoke-static {v2, v3}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->isSystemDarkModeOpen(Landroid/content/Context;)Z

    move-result v1

    sget-object v2, Lcom/color/darkmode/utils/DarkModeSettingUtils;->INSTANCE:Lcom/color/darkmode/utils/DarkModeSettingUtils;

    const-string v3, "contentResolver"

    invoke-static {v0, v3}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/color/darkmode/utils/DarkModeSettingUtils;->getWaitSwitchDarkMode(Landroid/content/ContentResolver;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v1, v3

    move v2, v1

    goto :goto_0

    :pswitch_1
    move v1, v2

    move v2, v3

    :goto_0
    invoke-virtual {p0}, Lcom/color/darkmode/tile/DarkModeTileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    const-string v4, "tile"

    invoke-static {v0, v4}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    const/4 v3, 0x2

    :cond_0
    invoke-virtual {v0, v3}, Landroid/service/quicksettings/Tile;->setState(I)V

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/color/darkmode/tile/DarkModeTileService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f070262

    invoke-static {v1, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/color/darkmode/tile/DarkModeTileService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f070261

    invoke-static {v1, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setIcon(Landroid/graphics/drawable/Icon;)V

    const v1, 0x7f0f0043

    invoke-virtual {p0, v1}, Lcom/color/darkmode/tile/DarkModeTileService;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    if-eqz v2, :cond_2

    const v1, 0x7f0f0046

    invoke-virtual {p0, v1}, Lcom/color/darkmode/tile/DarkModeTileService;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_2
    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Landroid/service/quicksettings/Tile;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_2
    const-string p0, ""

    goto :goto_2

    :goto_3
    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onClick()V
    .locals 3

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onClick()V

    new-instance v0, Lcom/color/compat/app/StatusBarManagerNative;

    invoke-virtual {p0}, Lcom/color/darkmode/tile/DarkModeTileService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/color/compat/app/StatusBarManagerNative;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/color/compat/app/StatusBarManagerNative;->collapsePanels()V

    invoke-direct {p0}, Lcom/color/darkmode/tile/DarkModeTileService;->isDarkMode()Z

    move-result v0

    sget-object v1, Lcom/color/darkmode/utils/DarkModeManager;->INSTANCE:Lcom/color/darkmode/utils/DarkModeManager;

    invoke-virtual {p0}, Lcom/color/darkmode/tile/DarkModeTileService;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v2, "applicationContext"

    invoke-static {p0, v2}, La/d/b/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-virtual {v1, p0, v0, v2}, Lcom/color/darkmode/utils/DarkModeManager;->immediatelyUpdateDarkModeSwitch(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/service/quicksettings/TileService;->onStartCommand(Landroid/content/Intent;II)I

    move-result p0

    return p0
.end method

.method public onStartListening()V
    .locals 0

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    invoke-direct {p0}, Lcom/color/darkmode/tile/DarkModeTileService;->updateTile()V

    return-void
.end method
