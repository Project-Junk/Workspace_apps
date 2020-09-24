.class public Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;
.super Ljava/lang/Object;
.source "BluetoothDevicesSlice.java"

# interfaces
.implements Lcom/android/settings/slices/b;


# static fields
.field private static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/d/g;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->a:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->b:Landroid/content/Context;

    return-void
.end method

.method private a(Lcom/android/settingslib/d/g;)Landroid/app/PendingIntent;
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 194
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4396
    iget-object v1, p1, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    .line 196
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_address"

    .line 195
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    new-instance v1, Lcom/android/settings/core/f;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    .line 198
    const-class v2, Lcom/android/settings/bluetooth/BluetoothDeviceDetailsFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object v2

    .line 199
    invoke-virtual {v2, v0}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object v0

    const/4 v2, 0x0

    const v3, 0x7f12077a

    .line 5063
    invoke-virtual {v0, v2, v3}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object v0

    const/16 v2, 0x3f1

    .line 201
    invoke-virtual {v0, v2}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    .line 204
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->b:Landroid/content/Context;

    .line 205
    invoke-virtual {p1}, Lcom/android/settingslib/d/g;->hashCode()I

    move-result p1

    .line 206
    invoke-virtual {v1}, Lcom/android/settings/core/f;->b()Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    .line 205
    invoke-static {v0, p1, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private b(Lcom/android/settingslib/d/g;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->b:Landroid/content/Context;

    .line 213
    invoke-static {v0, p1}, Lcom/android/settingslib/d/f;->a(Landroid/content/Context;Lcom/android/settingslib/d/g;)Landroid/util/Pair;

    move-result-object p1

    .line 214
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    .line 218
    iget-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->b:Landroid/content/Context;

    const-string v0, "com.android.internal.R.drawable.ic_settings_bluetooth"

    .line 219
    invoke-static {v0}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 218
    invoke-static {p1, v0}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p1

    return-object p1

    .line 222
    :cond_0
    invoke-static {p1}, Lcom/android/settings/m;->a(Landroid/graphics/drawable/Drawable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p1

    return-object p1
.end method

.method private c(Lcom/android/settingslib/d/g;)Landroidx/slice/builders/SliceAction;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 268
    invoke-direct {p0, p1}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->a(Lcom/android/settingslib/d/g;)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->b:Landroid/content/Context;

    const v2, 0x7f080813

    .line 269
    invoke-static {v1, v2}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v1

    .line 271
    invoke-virtual {p1}, Lcom/android/settingslib/d/g;->e()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 267
    invoke-static {v0, v1, v2, p1}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object p1

    return-object p1
.end method

.method private d()Ljava/util/List;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/d/g;",
            ">;"
        }
    .end annotation

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    const-string v2, "BluetoothDevicesSlice"

    if-nez v1, :cond_0

    const-string v1, "Cannot get Bluetooth devices, Bluetooth is disabled."

    .line 172
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->b:Landroid/content/Context;

    .line 178
    invoke-static {v1}, Lcom/android/settings/bluetooth/n;->a(Landroid/content/Context;)Lcom/android/settingslib/d/q;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "Cannot get Bluetooth devices, Bluetooth is unsupported."

    .line 180
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 4154
    :cond_1
    iget-object v0, v1, Lcom/android/settingslib/d/q;->c:Lcom/android/settingslib/d/h;

    .line 184
    invoke-virtual {v0}, Lcom/android/settingslib/d/h;->a()Ljava/util/Collection;

    move-result-object v0

    .line 187
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$BluetoothDevicesSlice$Xysce_vM7t4IyQyC6WXR5hmnifE;->INSTANCE:Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$BluetoothDevicesSlice$Xysce_vM7t4IyQyC6WXR5hmnifE;

    .line 188
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->a:Ljava/util/Comparator;

    .line 189
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private static synthetic d(Lcom/android/settingslib/d/g;)Z
    .locals 0

    .line 5396
    iget-object p0, p0, Lcom/android/settingslib/d/g;->b:Landroid/bluetooth/BluetoothDevice;

    .line 188
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$Xysce_vM7t4IyQyC6WXR5hmnifE(Lcom/android/settingslib/d/g;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->d(Lcom/android/settingslib/d/g;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()Landroidx/slice/Slice;
    .locals 13

    .line 92
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    const v2, 0x7f130401

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 94
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->b:Landroid/content/Context;

    const-string v2, "com.android.internal.R.drawable.ic_settings_bluetooth"

    .line 95
    invoke-static {v2}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 94
    invoke-static {v0, v2}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 96
    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->b:Landroid/content/Context;

    const v3, 0x7f120391

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 97
    iget-object v3, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->b:Landroid/content/Context;

    const v4, 0x7f120e6f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 99
    iget-object v4, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->b:Landroid/content/Context;

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->c()Landroid/content/Intent;

    move-result-object v5

    const/4 v6, 0x0

    .line 99
    invoke-static {v4, v6, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 101
    invoke-static {v4, v0, v6, v2}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v0

    .line 103
    new-instance v4, Landroidx/slice/builders/ListBuilder;

    iget-object v5, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->b:Landroid/content/Context;

    .line 1086
    sget-object v7, Lcom/android/settings/slices/a;->d:Landroid/net/Uri;

    const-wide/16 v8, -0x1

    .line 104
    invoke-direct {v4, v5, v7, v8, v9}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    const/4 v5, -0x1

    .line 105
    invoke-virtual {v4, v5}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object v4

    .line 1227
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1228
    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->d()Ljava/util/List;

    move-result-object v7

    .line 1229
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settingslib/d/g;

    .line 1230
    new-instance v9, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v9}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 1231
    invoke-direct {p0, v8}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->b(Lcom/android/settingslib/d/g;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v9

    .line 1232
    invoke-virtual {v8}, Lcom/android/settingslib/d/g;->e()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v9

    .line 1904
    invoke-virtual {v8, v6}, Lcom/android/settingslib/d/g;->d(Z)Ljava/lang/String;

    move-result-object v10

    .line 1233
    invoke-virtual {v9, v10}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v9

    .line 1235
    invoke-virtual {v8}, Lcom/android/settingslib/d/g;->n()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2254
    new-instance v10, Landroid/content/Intent;

    .line 3086
    sget-object v11, Lcom/android/settings/slices/a;->d:Landroid/net/Uri;

    .line 2254
    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->b:Landroid/content/Context;

    const-class v12, Lcom/android/settings/slices/SliceBroadcastReceiver;

    .line 2255
    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v10

    .line 2256
    invoke-virtual {v8}, Lcom/android/settingslib/d/g;->hashCode()I

    move-result v11

    const-string v12, "bluetooth_device_hash_code"

    invoke-virtual {v10, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v10

    .line 2258
    iget-object v11, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->b:Landroid/content/Context;

    .line 2259
    invoke-virtual {v8}, Lcom/android/settingslib/d/g;->hashCode()I

    move-result v12

    invoke-static {v11, v12, v10, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 2260
    invoke-direct {p0, v8}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->b(Lcom/android/settingslib/d/g;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v11

    .line 2262
    invoke-virtual {v8}, Lcom/android/settingslib/d/g;->e()Ljava/lang/String;

    move-result-object v12

    .line 2258
    invoke-static {v10, v11, v6, v12}, Landroidx/slice/builders/SliceAction;->create(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v10

    .line 1238
    invoke-virtual {v9, v10}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 1239
    invoke-direct {p0, v8}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->c(Lcom/android/settingslib/d/g;)Landroidx/slice/builders/SliceAction;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    goto :goto_1

    .line 1242
    :cond_0
    invoke-direct {p0, v8}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->c(Lcom/android/settingslib/d/g;)Landroidx/slice/builders/SliceAction;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 1245
    :goto_1
    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 111
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 112
    new-instance v2, Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    invoke-direct {v2}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;-><init>()V

    .line 113
    invoke-virtual {v2, v3}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    move-result-object v2

    .line 114
    invoke-virtual {v2, v0}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    move-result-object v0

    .line 112
    invoke-virtual {v4, v0}, Landroidx/slice/builders/ListBuilder;->setHeader(Landroidx/slice/builders/ListBuilder$HeaderBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object v0

    .line 115
    invoke-virtual {v0, v1}, Landroidx/slice/builders/ListBuilder;->setIsError(Z)Landroidx/slice/builders/ListBuilder;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object v0

    return-object v0

    .line 120
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x3

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 123
    new-instance v7, Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    invoke-direct {v7}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;-><init>()V

    .line 124
    invoke-virtual {v7, v2}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    move-result-object v2

    .line 3275
    iget-object v7, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->b:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f100051

    new-array v1, v1, [Ljava/lang/Object;

    .line 3276
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v1, v6

    .line 3275
    invoke-virtual {v7, v8, v3, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-virtual {v2, v1}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    move-result-object v1

    .line 126
    invoke-virtual {v1, v0}, Landroidx/slice/builders/ListBuilder$HeaderBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$HeaderBuilder;

    move-result-object v0

    .line 123
    invoke-virtual {v4, v0}, Landroidx/slice/builders/ListBuilder;->setHeader(Landroidx/slice/builders/ListBuilder$HeaderBuilder;)Landroidx/slice/builders/ListBuilder;

    :goto_2
    if-ge v6, v3, :cond_3

    .line 130
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-virtual {v4, v0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 133
    :cond_3
    invoke-virtual {v4}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "bluetooth_device_hash_code"

    const/4 v1, -0x1

    .line 152
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 153
    invoke-direct {p0}, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/d/g;

    .line 154
    invoke-virtual {v1}, Lcom/android/settingslib/d/g;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 155
    invoke-virtual {v1}, Lcom/android/settingslib/d/g;->f()Z

    :cond_1
    return-void
.end method

.method public final b()Landroid/net/Uri;
    .locals 1

    .line 86
    sget-object v0, Lcom/android/settings/slices/a;->d:Landroid/net/Uri;

    return-object v0
.end method

.method public final c()Landroid/content/Intent;
    .locals 5

    .line 138
    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->b:Landroid/content/Context;

    const v1, 0x7f120621

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 139
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->b:Landroid/content/Context;

    const-class v2, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;

    .line 142
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/16 v4, 0x579

    .line 141
    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/settings/slices/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothDevicesSlice;->b:Landroid/content/Context;

    .line 145
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/SubSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 4086
    sget-object v1, Lcom/android/settings/slices/a;->d:Landroid/net/Uri;

    .line 146
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 1

    .line 163
    const-class v0, Lcom/android/settings/homepage/contextualcards/slices/BluetoothUpdateWorker;

    return-object v0
.end method
