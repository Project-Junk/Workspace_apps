.class public Lcom/android/settings/inputmethod/qstile/InputMethodTile;
.super Landroid/service/quicksettings/TileService;
.source "InputMethodTile.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    .line 40
    invoke-super {p0, p1}, Landroid/service/quicksettings/TileService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    .line 41
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/qstile/InputMethodTile;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 43
    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/qstile/InputMethodTile;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120b15

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    .line 45
    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    :cond_0
    return-object p1
.end method

.method public onClick()V
    .locals 4

    .line 52
    const-class v0, Lcom/android/settings/inputmethod/qstile/InputMethodTile;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InputMethodTile onClick"

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/qstile/InputMethodTile;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 56
    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPickerFromSystem(ZI)V

    const-string v1, "statusbar"

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 59
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->collapsePanels()V

    return-void
.end method

.method public onStartListening()V
    .locals 3

    .line 30
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    .line 31
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/qstile/InputMethodTile;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/qstile/InputMethodTile;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120b15

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/quicksettings/Tile;->setLabel(Ljava/lang/CharSequence;)V

    .line 34
    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->updateTile()V

    :cond_0
    return-void
.end method
