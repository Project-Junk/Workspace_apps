.class public Lcom/color/eyeprotect/services/ColorEyeProtectTileService;
.super Landroid/service/quicksettings/TileService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/color/eyeprotect/services/ColorEyeProtectTileService$a;
    }
.end annotation


# instance fields
.field private a:Lcolor/support/a/a;

.field private b:Lcom/color/eyeprotect/services/ColorEyeProtectTileService$a;

.field private c:Landroid/app/StatusBarManager;

.field private d:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    new-instance v0, Lcom/color/eyeprotect/services/ColorEyeProtectTileService$1;

    invoke-direct {v0, p0}, Lcom/color/eyeprotect/services/ColorEyeProtectTileService$1;-><init>(Lcom/color/eyeprotect/services/ColorEyeProtectTileService;)V

    iput-object v0, p0, Lcom/color/eyeprotect/services/ColorEyeProtectTileService;->d:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/color/eyeprotect/services/ColorEyeProtectTileService$a;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/color/eyeprotect/services/ColorEyeProtectTileService$a;-><init>(Lcom/color/eyeprotect/services/ColorEyeProtectTileService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/color/eyeprotect/services/ColorEyeProtectTileService;->b:Lcom/color/eyeprotect/services/ColorEyeProtectTileService$a;

    :try_start_0
    const-class v0, Landroid/app/StatusBarManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/color/eyeprotect/services/ColorEyeProtectTileService;->c:Landroid/app/StatusBarManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v1, "ColorEyeProtectTileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ColorEyeProtectTileService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/color/common/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/a/a;
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    new-instance v1, Lcolor/support/a/a;

    const v2, 0x7f1001cf

    invoke-direct {v1, p1, v2}, Lcolor/support/a/a;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f0f0077

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcolor/support/a/a;->a(Ljava/lang/CharSequence;)Lcolor/support/a/a;

    move-result-object v2

    const v3, 0x7f0f0076

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcolor/support/a/a;->b(Ljava/lang/CharSequence;)Lcolor/support/a/a;

    move-result-object p1

    invoke-virtual {p0}, Lcom/color/eyeprotect/services/ColorEyeProtectTileService;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f020006

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v0, p2}, Lcolor/support/a/a;->a([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/a/a;

    invoke-virtual {v1}, Lcolor/support/a/a;->b()Lcolor/support/v7/app/b;

    move-result-object p0

    invoke-virtual {p0}, Lcolor/support/v7/app/b;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 p2, 0x7d3

    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    invoke-virtual {p0}, Lcolor/support/v7/app/b;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    sget p2, Lcom/color/compat/view/WindowManagerNative$LayoutParamsNative;->IGNORE_HOME_MENU_KEY:I

    invoke-static {p1, p2}, Lcom/color/compat/view/WindowManagerNative$LayoutParamsNative;->setHomeAndMenuKeyState(Landroid/view/WindowManager$LayoutParams;I)V

    invoke-virtual {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-object v1

    :array_0
    .array-data 4
        0x7f100292
        0x7f100292
        0x7f100292
    .end array-data
.end method

.method static synthetic a(Lcom/color/eyeprotect/services/ColorEyeProtectTileService;)V
    .locals 0

    invoke-direct {p0}, Lcom/color/eyeprotect/services/ColorEyeProtectTileService;->b()V

    return-void
.end method

.method static synthetic a(Lcom/color/eyeprotect/services/ColorEyeProtectTileService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/color/eyeprotect/services/ColorEyeProtectTileService;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/color/eyeprotect/services/ColorEyeProtectTileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object p1

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/service/quicksettings/Tile;->setState(I)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/color/eyeprotect/services/ColorEyeProtectTileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object p1

    const/4 v0, 0x1

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lcom/color/eyeprotect/services/ColorEyeProtectTileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/quicksettings/Tile;->updateTile()V

    return-void
.end method

.method private a()Z
    .locals 1

    invoke-virtual {p0}, Lcom/color/eyeprotect/services/ColorEyeProtectTileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/quicksettings/Tile;->getState()I

    move-result p0

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    :pswitch_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private b()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.color.eyeprotect.settings"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/color/eyeprotect/services/ColorEyeProtectTileService;->startActivityAndCollapse(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/color/eyeprotect/services/ColorEyeProtectTileService;)Z
    .locals 0

    invoke-direct {p0}, Lcom/color/eyeprotect/services/ColorEyeProtectTileService;->a()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public onClick()V
    .locals 6

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onClick()V

    invoke-direct {p0}, Lcom/color/eyeprotect/services/ColorEyeProtectTileService;->a()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/color/eyeprotect/services/ColorEyeProtectTileService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/color/eyeprotect/util/e;->h(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/color/eyeprotect/services/ColorEyeProtectTileService;->a:Lcolor/support/a/a;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/color/eyeprotect/services/ColorEyeProtectTileService;->d:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0, p0, v1}, Lcom/color/eyeprotect/services/ColorEyeProtectTileService;->a(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/a/a;

    move-result-object v1

    iput-object v1, p0, Lcom/color/eyeprotect/services/ColorEyeProtectTileService;->a:Lcolor/support/a/a;

    :cond_0
    iget-object v1, p0, Lcom/color/eyeprotect/services/ColorEyeProtectTileService;->a:Lcolor/support/a/a;

    invoke-virtual {v1}, Lcolor/support/a/a;->c()Z

    move-result v1

    if-nez v1, :cond_3

    :try_start_0
    iget-object v1, p0, Lcom/color/eyeprotect/services/ColorEyeProtectTileService;->c:Landroid/app/StatusBarManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/color/eyeprotect/services/ColorEyeProtectTileService;->c:Landroid/app/StatusBarManager;

    invoke-virtual {v1}, Landroid/app/StatusBarManager;->collapsePanels()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v3, "ColorEyeProtectTileService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "collapsePanels: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/color/common/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/color/eyeprotect/services/ColorEyeProtectTileService;->a:Lcolor/support/a/a;

    invoke-virtual {p0}, Lcolor/support/a/a;->a()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/color/eyeprotect/services/ColorEyeProtectTileService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/color/eyeprotect/util/e;->a(Landroid/content/ContentResolver;Z)V

    :cond_3
    :goto_1
    sget-object p0, Lcom/color/common/a/a;->a:Lcom/color/common/a/a;

    const-string v1, "ColorEyeProtectTileService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/color/common/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStartListening()V
    .locals 2

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    iget-object v0, p0, Lcom/color/eyeprotect/services/ColorEyeProtectTileService;->b:Lcom/color/eyeprotect/services/ColorEyeProtectTileService$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/color/eyeprotect/services/ColorEyeProtectTileService$a;->b(Z)V

    iget-object v0, p0, Lcom/color/eyeprotect/services/ColorEyeProtectTileService;->b:Lcom/color/eyeprotect/services/ColorEyeProtectTileService$a;

    invoke-virtual {p0}, Lcom/color/eyeprotect/services/ColorEyeProtectTileService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0}, Lcom/color/eyeprotect/util/e;->b(Landroid/content/ContentResolver;)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/color/eyeprotect/services/ColorEyeProtectTileService$a;->a(Z)V

    return-void
.end method

.method public onStopListening()V
    .locals 1

    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStopListening()V

    iget-object p0, p0, Lcom/color/eyeprotect/services/ColorEyeProtectTileService;->b:Lcom/color/eyeprotect/services/ColorEyeProtectTileService$a;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/color/eyeprotect/services/ColorEyeProtectTileService$a;->b(Z)V

    return-void
.end method
