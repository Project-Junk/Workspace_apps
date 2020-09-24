.class public final Lcom/android/settings/bluetooth/i;
.super Ljava/lang/Object;
.source "BluetoothSliceBuilder.java"


# static fields
.field public static final a:Landroid/content/IntentFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 60
    sput-object v0, Lcom/android/settings/bluetooth/i;->a:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    sget-object v0, Lcom/android/settings/bluetooth/i;->a:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroidx/slice/Slice;
    .locals 8

    .line 1126
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1127
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    const v1, 0x7f12042a

    .line 75
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "com.android.internal.R.drawable.ic_settings_bluetooth"

    .line 77
    invoke-static {v2}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 76
    invoke-static {p0, v2}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v2

    .line 78
    invoke-static {p0}, Lcom/android/settings/m;->o(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v3

    .line 79
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    .line 1137
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.settings.bluetooth.action.BLUETOOTH_MODE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v5, Lcom/android/settings/slices/SliceBroadcastReceiver;

    .line 1138
    invoke-virtual {v4, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x10000000

    .line 1139
    invoke-static {p0, v5, v4, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 2131
    invoke-static {p0}, Lcom/android/settings/bluetooth/i;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v6

    .line 2132
    invoke-static {p0, v5, v6, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 82
    invoke-static {v6, v2, v5, v1}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v2

    const/4 v5, 0x0

    .line 84
    invoke-static {v4, v5, v0}, Landroidx/slice/builders/SliceAction;->createToggle(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)Landroidx/slice/builders/SliceAction;

    move-result-object v0

    .line 87
    new-instance v4, Landroidx/slice/builders/ListBuilder;

    sget-object v5, Lcom/android/settings/slices/a;->c:Landroid/net/Uri;

    const-wide/16 v6, -0x1

    invoke-direct {v4, p0, v5, v6, v7}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 88
    invoke-virtual {v4, v3}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object p0

    new-instance v3, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 90
    invoke-virtual {v3, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v1

    .line 91
    invoke-virtual {v1, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    .line 92
    invoke-virtual {v0, v2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    .line 89
    invoke-virtual {p0, v0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object p0

    .line 93
    invoke-virtual {p0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "android.app.slice.extra.TOGGLE_STATE"

    const/4 v1, 0x0

    .line 112
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    .line 113
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz p0, :cond_0

    .line 116
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    return-void

    .line 118
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    return-void
.end method

.method public static b(Landroid/content/Context;)Landroid/content/Intent;
    .locals 5

    const v0, 0x7f12042c

    .line 97
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "bluetooth"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 99
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 100
    const-class v2, Lcom/android/settings/connecteddevice/BluetoothDashboardFragment;

    .line 101
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x2eb

    .line 100
    invoke-static {p0, v2, v3, v0, v4}, Lcom/android/settings/slices/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-class v2, Lcom/android/settings/SubSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 104
    invoke-virtual {p0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method
