.class public Lcom/android/settings/media/MediaOutputIndicatorSlice;
.super Ljava/lang/Object;
.source "MediaOutputIndicatorSlice.java"

# interfaces
.implements Lcom/android/settings/slices/b;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/android/settingslib/d/q;

.field private c:Lcom/android/settingslib/d/s;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/settings/media/MediaOutputIndicatorSlice;->a:Landroid/content/Context;

    .line 59
    invoke-static {p1}, Lcom/android/settings/bluetooth/n;->a(Landroid/content/Context;)Lcom/android/settingslib/d/q;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/media/MediaOutputIndicatorSlice;->b:Lcom/android/settingslib/d/q;

    .line 60
    iget-object p1, p0, Lcom/android/settings/media/MediaOutputIndicatorSlice;->b:Lcom/android/settingslib/d/q;

    if-nez p1, :cond_0

    const-string p1, "MediaOutputIndicatorSlice"

    const-string v0, "Bluetooth is not supported on this device"

    .line 61
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1162
    :cond_0
    iget-object p1, p1, Lcom/android/settingslib/d/q;->d:Lcom/android/settingslib/d/s;

    .line 64
    iput-object p1, p0, Lcom/android/settings/media/MediaOutputIndicatorSlice;->c:Lcom/android/settingslib/d/s;

    return-void
.end method

.method private d()Landroid/bluetooth/BluetoothDevice;
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/android/settings/media/MediaOutputIndicatorSlice;->c:Lcom/android/settingslib/d/s;

    .line 5449
    iget-object v0, v0, Lcom/android/settingslib/d/s;->h:Lcom/android/settingslib/d/l;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 173
    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/d/l;->e()Ljava/util/List;

    move-result-object v0

    .line 174
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method


# virtual methods
.method public final a()Landroidx/slice/Slice;
    .locals 8

    .line 2121
    iget-object v0, p0, Lcom/android/settings/media/MediaOutputIndicatorSlice;->a:Landroid/content/Context;

    const-string v1, "phone"

    .line 2122
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2123
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 2131
    iget-object v0, p0, Lcom/android/settings/media/MediaOutputIndicatorSlice;->c:Lcom/android/settingslib/d/s;

    .line 2409
    iget-object v0, v0, Lcom/android/settingslib/d/s;->c:Lcom/android/settingslib/d/a;

    const/4 v2, 0x3

    if-nez v0, :cond_0

    .line 2133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 3122
    :cond_0
    new-array v3, v2, [I

    fill-array-data v3, :array_0

    invoke-virtual {v0, v3}, Lcom/android/settingslib/d/a;->a([I)Ljava/util/List;

    move-result-object v0

    .line 2124
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3141
    iget-object v0, p0, Lcom/android/settings/media/MediaOutputIndicatorSlice;->c:Lcom/android/settingslib/d/s;

    .line 3449
    iget-object v0, v0, Lcom/android/settingslib/d/s;->h:Lcom/android/settingslib/d/l;

    if-nez v0, :cond_1

    .line 3143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_1

    .line 4119
    :cond_1
    new-array v2, v2, [I

    fill-array-data v2, :array_1

    invoke-virtual {v0, v2}, Lcom/android/settingslib/d/l;->a([I)Ljava/util/List;

    move-result-object v0

    .line 2125
    :goto_1
    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    if-nez v0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_4
    iget-object v0, p0, Lcom/android/settings/media/MediaOutputIndicatorSlice;->a:Landroid/content/Context;

    const-string v2, "com.android.internal.R.drawable.ic_settings_bluetooth"

    .line 73
    invoke-static {v2}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 72
    invoke-static {v0, v2}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 74
    iget-object v2, p0, Lcom/android/settings/media/MediaOutputIndicatorSlice;->a:Landroid/content/Context;

    const v3, 0x7f120d51

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 75
    iget-object v3, p0, Lcom/android/settings/media/MediaOutputIndicatorSlice;->a:Landroid/content/Context;

    .line 5093
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.android.settings.panel.action.MEDIA_OUTPUT"

    .line 5094
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x10000000

    .line 5095
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    .line 75
    invoke-static {v3, v1, v4, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 77
    invoke-static {v3, v0, v1, v2}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/android/settings/media/MediaOutputIndicatorSlice;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/m;->p(Landroid/content/Context;)I

    move-result v1

    .line 81
    new-instance v3, Landroidx/slice/builders/ListBuilder;

    iget-object v4, p0, Lcom/android/settings/media/MediaOutputIndicatorSlice;->a:Landroid/content/Context;

    sget-object v5, Lcom/android/settings/slices/a;->B:Landroid/net/Uri;

    const-wide/16 v6, -0x1

    invoke-direct {v3, v4, v5, v6, v7}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 84
    invoke-virtual {v3, v1}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object v1

    new-instance v3, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 86
    invoke-virtual {v3, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v2

    .line 5151
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputIndicatorSlice;->d()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 5153
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 5156
    :cond_5
    iget-object v3, p0, Lcom/android/settings/media/MediaOutputIndicatorSlice;->c:Lcom/android/settingslib/d/s;

    .line 5409
    iget-object v3, v3, Lcom/android/settingslib/d/s;->c:Lcom/android/settingslib/d/a;

    if-eqz v3, :cond_6

    .line 5158
    invoke-virtual {v3}, Lcom/android/settingslib/d/a;->e()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 5160
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 5164
    :cond_6
    iget-object v3, p0, Lcom/android/settings/media/MediaOutputIndicatorSlice;->a:Landroid/content/Context;

    const v4, 0x7f120d4c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 87
    :goto_3
    invoke-virtual {v2, v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v2

    .line 88
    invoke-virtual {v2, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    .line 85
    invoke-virtual {v1, v0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x1
        0x3
    .end array-data
.end method

.method public final b()Landroid/net/Uri;
    .locals 1

    .line 101
    sget-object v0, Lcom/android/settings/slices/a;->B:Landroid/net/Uri;

    return-object v0
.end method

.method public final c()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 1

    .line 113
    const-class v0, Lcom/android/settings/media/MediaOutputIndicatorWorker;

    return-object v0
.end method
