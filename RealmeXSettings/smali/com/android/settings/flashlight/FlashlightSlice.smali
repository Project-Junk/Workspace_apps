.class public Lcom/android/settings/flashlight/FlashlightSlice;
.super Ljava/lang/Object;
.source "FlashlightSlice.java"

# interfaces
.implements Lcom/android/settings/slices/b;


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/settings/flashlight/FlashlightSlice;->a:Landroid/content/Context;

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 2

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "flashlight_enabled"

    .line 141
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    return v1

    :cond_0
    return v0
.end method


# virtual methods
.method public final a()Landroidx/slice/Slice;
    .locals 10

    .line 69
    iget-object v0, p0, Lcom/android/settings/flashlight/FlashlightSlice;->a:Landroid/content/Context;

    .line 1137
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "flashlight_available"

    .line 1136
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/4 v0, 0x0

    if-nez v2, :cond_1

    return-object v0

    .line 72
    :cond_1
    iget-object v2, p0, Lcom/android/settings/flashlight/FlashlightSlice;->a:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/settings/flashlight/FlashlightSlice;->c(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 73
    iget-object v3, p0, Lcom/android/settings/flashlight/FlashlightSlice;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/m;->p(Landroid/content/Context;)I

    move-result v3

    .line 74
    iget-object v4, p0, Lcom/android/settings/flashlight/FlashlightSlice;->a:Landroid/content/Context;

    const v5, 0x7f08084a

    .line 75
    invoke-static {v4, v5}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v4

    .line 76
    new-instance v5, Landroidx/slice/builders/ListBuilder;

    iget-object v6, p0, Lcom/android/settings/flashlight/FlashlightSlice;->a:Landroid/content/Context;

    sget-object v7, Lcom/android/settings/slices/a;->k:Landroid/net/Uri;

    const-wide/16 v8, -0x1

    invoke-direct {v5, v6, v7, v8, v9}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 78
    invoke-virtual {v5, v3}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object v3

    new-instance v5, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v5}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/settings/flashlight/FlashlightSlice;->a:Landroid/content/Context;

    const v7, 0x7f12104b

    .line 80
    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v5

    .line 81
    invoke-virtual {v5, v4, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/settings/flashlight/FlashlightSlice;->a:Landroid/content/Context;

    .line 84
    invoke-static {v4}, Lcom/android/settings/flashlight/FlashlightSlice;->a(Landroid/content/Context;)Z

    move-result v4

    .line 83
    invoke-static {v2, v0, v4}, Landroidx/slice/builders/SliceAction;->createToggle(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)Landroidx/slice/builders/SliceAction;

    move-result-object v0

    .line 82
    invoke-virtual {v1, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    .line 79
    invoke-virtual {v3, v0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 9

    const/4 v0, 0x0

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/flashlight/FlashlightSlice;->a:Landroid/content/Context;

    .line 2120
    const-class v2, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    .line 2121
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v2

    .line 2122
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 2123
    invoke-virtual {v1, v5}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v6

    .line 2124
    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    .line 2125
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v6, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v7, :cond_0

    .line 2126
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    .line 2127
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v0

    :goto_1
    if-eqz v5, :cond_2

    const-string v1, "android.app.slice.extra.TOGGLE_STATE"

    .line 103
    iget-object v2, p0, Lcom/android/settings/flashlight/FlashlightSlice;->a:Landroid/content/Context;

    .line 104
    invoke-static {v2}, Lcom/android/settings/flashlight/FlashlightSlice;->a(Landroid/content/Context;)Z

    move-result v2

    .line 103
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 105
    iget-object v1, p0, Lcom/android/settings/flashlight/FlashlightSlice;->a:Landroid/content/Context;

    const-class v2, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    .line 106
    invoke-virtual {v1, v5, p1}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v1, "FlashlightSlice"

    const-string v2, "Camera couldn\'t set torch mode."

    .line 109
    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/android/settings/flashlight/FlashlightSlice;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v1, Lcom/android/settings/slices/a;->k:Landroid/net/Uri;

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method public final b()Landroid/net/Uri;
    .locals 1

    .line 90
    sget-object v0, Lcom/android/settings/slices/a;->k:Landroid/net/Uri;

    return-object v0
.end method

.method public final c()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .line 95
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.settings.flashlight.action.FLASHLIGHT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
