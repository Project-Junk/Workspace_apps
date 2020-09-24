.class public Lcom/android/settings/media/MediaOutputSlice;
.super Ljava/lang/Object;
.source "MediaOutputSlice.java"

# interfaces
.implements Lcom/android/settings/slices/b;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/android/settings/media/MediaDeviceUpdateWorker;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/settings/media/MediaOutputSlice;->a:Landroid/content/Context;

    .line 1185
    sget-object p1, Lcom/android/settings/slices/a;->A:Landroid/net/Uri;

    const-string v0, "media_package_name"

    .line 65
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/media/MediaOutputSlice;->c:Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;
    .locals 2

    .line 175
    new-instance v0, Landroid/content/Intent;

    .line 6185
    sget-object v1, Lcom/android/settings/slices/a;->A:Landroid/net/Uri;

    .line 175
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    const-class v1, Lcom/android/settings/slices/SliceBroadcastReceiver;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "media_device_id"

    .line 177
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 178
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 179
    invoke-static {p0, p2, v0, p1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private a(Lcom/android/settingslib/n/f;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 2

    .line 128
    invoke-virtual {p1}, Lcom/android/settingslib/n/f;->c()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getDeviceIconCompat() device : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/settingslib/n/f;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", drawable is null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaOutputSlice"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object p1, p0, Lcom/android/settings/media/MediaOutputSlice;->a:Landroid/content/Context;

    const-string v0, "com.android.internal.R.drawable.ic_bt_headphones_a2dp"

    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 135
    :cond_0
    invoke-static {v0}, Lcom/android/settings/m;->a(Landroid/graphics/drawable/Drawable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p1

    return-object p1
.end method

.method private d()Lcom/android/settings/media/MediaDeviceUpdateWorker;
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/android/settings/media/MediaOutputSlice;->b:Lcom/android/settings/media/MediaDeviceUpdateWorker;

    if-nez v0, :cond_0

    .line 5185
    sget-object v0, Lcom/android/settings/slices/a;->A:Landroid/net/Uri;

    .line 140
    invoke-static {v0}, Lcom/android/settings/slices/c;->a(Landroid/net/Uri;)Lcom/android/settings/slices/c;

    move-result-object v0

    check-cast v0, Lcom/android/settings/media/MediaDeviceUpdateWorker;

    iput-object v0, p0, Lcom/android/settings/media/MediaOutputSlice;->b:Lcom/android/settings/media/MediaDeviceUpdateWorker;

    .line 141
    iget-object v0, p0, Lcom/android/settings/media/MediaOutputSlice;->b:Lcom/android/settings/media/MediaDeviceUpdateWorker;

    if-eqz v0, :cond_0

    .line 142
    iget-object v1, p0, Lcom/android/settings/media/MediaOutputSlice;->c:Ljava/lang/String;

    .line 6052
    iput-object v1, v0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->b:Ljava/lang/String;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/settings/media/MediaOutputSlice;->b:Lcom/android/settings/media/MediaDeviceUpdateWorker;

    return-object v0
.end method


# virtual methods
.method public final a()Landroidx/slice/Slice;
    .locals 9

    .line 77
    iget-object v0, p0, Lcom/android/settings/media/MediaOutputSlice;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    const v2, 0x7f130401

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 79
    new-instance v0, Landroidx/slice/builders/ListBuilder;

    iget-object v2, p0, Lcom/android/settings/media/MediaOutputSlice;->a:Landroid/content/Context;

    .line 2185
    sget-object v3, Lcom/android/settings/slices/a;->A:Landroid/net/Uri;

    const-wide/16 v4, -0x1

    .line 79
    invoke-direct {v0, v2, v3, v4, v5}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    const/4 v2, -0x1

    .line 80
    invoke-virtual {v0, v2}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object v0

    .line 2220
    iget-object v2, p0, Lcom/android/settings/media/MediaOutputSlice;->a:Landroid/content/Context;

    const-string v3, "phone"

    .line 2221
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 2222
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 2224
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 2225
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2226
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputSlice;->d()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    if-nez v1, :cond_1

    const-string v1, "MediaOutputSlice"

    const-string v2, "getSlice() is not visible"

    .line 83
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {v0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object v0

    return-object v0

    .line 3150
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputSlice;->d()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3151
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputSlice;->d()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object v1

    .line 4094
    new-instance v2, Ljava/util/ArrayList;

    iget-object v1, v1, Lcom/android/settings/media/MediaDeviceUpdateWorker;->a:Ljava/util/List;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    .line 3153
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputSlice;->d()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 91
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputSlice;->d()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object v1

    .line 4108
    iget-object v1, v1, Lcom/android/settings/media/MediaDeviceUpdateWorker;->c:Lcom/android/settingslib/n/e;

    .line 4219
    iget-object v1, v1, Lcom/android/settingslib/n/e;->e:Lcom/android/settingslib/n/f;

    :cond_3
    if-eqz v1, :cond_4

    .line 5110
    invoke-virtual {v1}, Lcom/android/settingslib/n/f;->a()Ljava/lang/String;

    move-result-object v3

    .line 5111
    invoke-direct {p0, v1}, Lcom/android/settings/media/MediaOutputSlice;->a(Lcom/android/settingslib/n/f;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v5

    .line 5113
    iget-object v6, p0, Lcom/android/settings/media/MediaOutputSlice;->a:Landroid/content/Context;

    .line 5114
    invoke-virtual {v1}, Lcom/android/settingslib/n/f;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/android/settings/media/MediaOutputSlice;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 5115
    invoke-static {v6, v5, v4, v3}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v6

    .line 5118
    new-instance v7, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v7}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 5119
    invoke-virtual {v7, v5, v4}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v5

    .line 5120
    invoke-virtual {v5, v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v3

    .line 5121
    invoke-virtual {v1}, Lcom/android/settingslib/n/f;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v3

    .line 5122
    invoke-virtual {v3, v6}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v3

    .line 96
    invoke-virtual {v0, v3}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    .line 99
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/n/f;

    if-eqz v1, :cond_6

    .line 101
    invoke-virtual {v1}, Lcom/android/settingslib/n/f;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/settingslib/n/f;->d()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 5159
    :cond_6
    invoke-virtual {v3}, Lcom/android/settingslib/n/f;->a()Ljava/lang/String;

    move-result-object v5

    .line 5160
    iget-object v6, p0, Lcom/android/settings/media/MediaOutputSlice;->a:Landroid/content/Context;

    .line 5161
    invoke-virtual {v3}, Lcom/android/settingslib/n/f;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v6, v7, v8}, Lcom/android/settings/media/MediaOutputSlice;->a(Landroid/content/Context;Ljava/lang/String;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 5162
    invoke-direct {p0, v3}, Lcom/android/settings/media/MediaOutputSlice;->a(Lcom/android/settingslib/n/f;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v7

    .line 5164
    new-instance v8, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v8}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 5165
    invoke-virtual {v8, v7, v4}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v8

    .line 5166
    invoke-static {v6, v7, v4, v5}, Landroidx/slice/builders/SliceAction;->create(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v6

    .line 5168
    invoke-virtual {v6, v5}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v5

    .line 5169
    invoke-virtual {v3}, Lcom/android/settingslib/n/f;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v3

    .line 102
    invoke-virtual {v0, v3}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    goto :goto_2

    .line 106
    :cond_7
    invoke-virtual {v0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 3

    .line 190
    invoke-direct {p0}, Lcom/android/settings/media/MediaOutputSlice;->d()Lcom/android/settings/media/MediaDeviceUpdateWorker;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, "media_device_id"

    .line 191
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 7104
    :cond_1
    iget-object v1, v0, Lcom/android/settings/media/MediaDeviceUpdateWorker;->a:Ljava/util/List;

    invoke-static {v1, p1}, Lcom/android/settingslib/n/e;->a(Ljava/util/List;Ljava/lang/String;)Lcom/android/settingslib/n/f;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onNotifyChange() device name : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/settingslib/n/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaOutputSlice"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {v0, p1}, Lcom/android/settings/media/MediaDeviceUpdateWorker;->a(Lcom/android/settingslib/n/f;)V

    :cond_2
    return-void
.end method

.method public final b()Landroid/net/Uri;
    .locals 1

    .line 185
    sget-object v0, Lcom/android/settings/slices/a;->A:Landroid/net/Uri;

    return-object v0
.end method

.method public final c()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 1

    .line 211
    const-class v0, Lcom/android/settings/media/MediaDeviceUpdateWorker;

    return-object v0
.end method
