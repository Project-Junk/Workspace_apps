.class public Lcom/coloros/systemui/qs/external/ColorCustomTile;
.super Lcom/android/systemui/qs/external/CustomTile;
.source "ColorCustomTile.java"


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/QSTileHost;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/external/CustomTile;-><init>(Lcom/android/systemui/qs/QSTileHost;Ljava/lang/String;)V

    return-void
.end method

.method public static create(Lcom/android/systemui/qs/QSTileHost;Ljava/lang/String;)Lcom/android/systemui/qs/external/CustomTile;
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, "custom("

    .line 120
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x7

    .line 123
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Lcom/coloros/systemui/qs/external/ColorCustomTile;

    invoke-direct {v0, p0, p1}, Lcom/coloros/systemui/qs/external/ColorCustomTile;-><init>(Lcom/android/systemui/qs/QSTileHost;Ljava/lang/String;)V

    return-object v0

    .line 125
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Empty custom tile spec action"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 121
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad custom tile spec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private handleAppFromControlCenter()V
    .locals 6

    .line 156
    new-instance v0, Landroid/app/OppoActivityManager;

    invoke-direct {v0}, Landroid/app/OppoActivityManager;-><init>()V

    .line 158
    :try_start_0
    iget-object v1, p0, Lcom/coloros/systemui/qs/external/ColorCustomTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/qs/external/ColorCustomTile;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 159
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 158
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "Statusbar"

    .line 160
    iget-object v3, p0, Lcom/coloros/systemui/qs/external/ColorCustomTile;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleAppFromControlCenter: uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v2, p0, Lcom/coloros/systemui/qs/external/ColorCustomTile;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/app/OppoActivityManager;->handleAppFromControlCenter(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 164
    iget-object p0, p0, Lcom/coloros/systemui/qs/external/ColorCustomTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAppFromControlCenter e "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic lambda$getTileIconSupplier$1(Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/plugins/qs/QSTile$Icon;
    .locals 1

    .line 146
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 148
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$handleUpdateState$0(Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/plugins/qs/QSTile$Icon;
    .locals 1

    .line 97
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 99
    new-instance v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getTileIconSupplier()Ljava/util/function/Supplier;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/plugins/qs/QSTile$Icon;",
            ">;"
        }
    .end annotation

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/coloros/systemui/qs/external/ColorCustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/qs/external/ColorCustomTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "CustomTile"

    const-string v1, "getTileIconSupplier, Invalid icon, forcing into unavailable state"

    .line 136
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/coloros/systemui/qs/external/ColorCustomTile;->mDefaultIcon:Landroid/graphics/drawable/Icon;

    iget-object v1, p0, Lcom/coloros/systemui/qs/external/ColorCustomTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 139
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 140
    iget-object v1, p0, Lcom/coloros/systemui/qs/external/ColorCustomTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06032d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 141
    iget-object v1, p0, Lcom/coloros/systemui/qs/external/ColorCustomTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0811bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 142
    iget-object p0, p0, Lcom/coloros/systemui/qs/external/ColorCustomTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f070755

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 143
    invoke-static {v0, v1, p0, p0}, Lcom/coloros/systemui/common/util/StatusBarUtils;->compoundBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 145
    new-instance v0, Lcom/coloros/systemui/qs/external/-$$Lambda$ColorCustomTile$y3ChtdXQhXJdD-Wn5gY1VVhfIGA;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/qs/external/-$$Lambda$ColorCustomTile$y3ChtdXQhXJdD-Wn5gY1VVhfIGA;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method protected handleClick()V
    .locals 5

    .line 49
    iget-object v0, p0, Lcom/coloros/systemui/qs/external/ColorCustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->getState()I

    move-result v0

    const-string v1, "Statusbar"

    if-nez v0, :cond_0

    .line 50
    iget-object p0, p0, Lcom/coloros/systemui/qs/external/ColorCustomTile;->TAG:Ljava/lang/String;

    const-string v0, "Handle click, state is unavailable."

    invoke-static {v1, p0, v0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 54
    :try_start_0
    iget-object v2, p0, Lcom/coloros/systemui/qs/external/ColorCustomTile;->TAG:Ljava/lang/String;

    const-string v3, "Adding token"

    invoke-static {v1, v2, v3}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v1, p0, Lcom/coloros/systemui/qs/external/ColorCustomTile;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/coloros/systemui/qs/external/ColorCustomTile;->mToken:Landroid/os/IBinder;

    const/16 v3, 0x7f3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;II)V

    .line 56
    iput-boolean v0, p0, Lcom/coloros/systemui/qs/external/ColorCustomTile;->mIsTokenGranted:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :catch_0
    :try_start_1
    invoke-direct {p0}, Lcom/coloros/systemui/qs/external/ColorCustomTile;->handleAppFromControlCenter()V

    .line 61
    iget-object v1, p0, Lcom/coloros/systemui/qs/external/ColorCustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-virtual {v1}, Lcom/android/systemui/qs/external/TileServiceManager;->isActiveTile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    iget-object v1, p0, Lcom/coloros/systemui/qs/external/ColorCustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindRequested(Z)V

    .line 63
    iget-object v0, p0, Lcom/coloros/systemui/qs/external/ColorCustomTile;->mService:Landroid/service/quicksettings/IQSTileService;

    invoke-interface {v0}, Landroid/service/quicksettings/IQSTileService;->onStartListening()V

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/qs/external/ColorCustomTile;->mService:Landroid/service/quicksettings/IQSTileService;

    iget-object p0, p0, Lcom/coloros/systemui/qs/external/ColorCustomTile;->mToken:Landroid/os/IBinder;

    invoke-interface {v0, p0}, Landroid/service/quicksettings/IQSTileService;->onClick(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 3

    .line 73
    iget-object p2, p0, Lcom/coloros/systemui/qs/external/ColorCustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p2}, Landroid/service/quicksettings/Tile;->getState()I

    move-result p2

    .line 74
    iget-object v0, p0, Lcom/coloros/systemui/qs/external/ColorCustomTile;->mServiceManager:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-virtual {v0}, Lcom/android/systemui/qs/external/TileServiceManager;->hasPendingBind()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p2, v1

    .line 77
    :cond_0
    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 80
    :try_start_0
    iget-object p2, p0, Lcom/coloros/systemui/qs/external/ColorCustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p2}, Landroid/service/quicksettings/Tile;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object p2

    iget-object v0, p0, Lcom/coloros/systemui/qs/external/ColorCustomTile;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p2, "CustomTile"

    const-string v0, "Invalid icon, forcing into unavailable state"

    .line 82
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 84
    iget-object p2, p0, Lcom/coloros/systemui/qs/external/ColorCustomTile;->mDefaultIcon:Landroid/graphics/drawable/Icon;

    iget-object v0, p0, Lcom/coloros/systemui/qs/external/ColorCustomTile;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 87
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 88
    iget-object v0, p0, Lcom/coloros/systemui/qs/external/ColorCustomTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    if-nez v1, :cond_1

    const v1, 0x7f06032e

    goto :goto_1

    :cond_1
    iget v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const v1, 0x7f06032c

    goto :goto_1

    :cond_2
    const v1, 0x7f06032d

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 91
    iget-object v0, p0, Lcom/coloros/systemui/qs/external/ColorCustomTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0811bb

    iget-object v2, p0, Lcom/coloros/systemui/qs/external/ColorCustomTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/coloros/systemui/qs/external/ColorCustomTile;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070755

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 93
    invoke-static {p2, v0, v1, v1}, Lcom/coloros/systemui/common/util/StatusBarUtils;->compoundBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 96
    new-instance v0, Lcom/coloros/systemui/qs/external/-$$Lambda$ColorCustomTile$imaiI9r1EKMZ0ADs8Sm4dI3E_PA;

    invoke-direct {v0, p2}, Lcom/coloros/systemui/qs/external/-$$Lambda$ColorCustomTile$imaiI9r1EKMZ0ADs8Sm4dI3E_PA;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->iconSupplier:Ljava/util/function/Supplier;

    .line 103
    iget-object p2, p0, Lcom/coloros/systemui/qs/external/ColorCustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p2}, Landroid/service/quicksettings/Tile;->getLabel()Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 105
    iget-object p2, p0, Lcom/coloros/systemui/qs/external/ColorCustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p2}, Landroid/service/quicksettings/Tile;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 106
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 107
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    .line 109
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 112
    :goto_2
    iget-object p2, p0, Lcom/coloros/systemui/qs/external/ColorCustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p2}, Landroid/service/quicksettings/Tile;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 113
    iget-object p0, p0, Lcom/coloros/systemui/qs/external/ColorCustomTile;->mTile:Landroid/service/quicksettings/Tile;

    invoke-virtual {p0}, Landroid/service/quicksettings/Tile;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    goto :goto_3

    .line 115
    :cond_4
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    :goto_3
    return-void
.end method
