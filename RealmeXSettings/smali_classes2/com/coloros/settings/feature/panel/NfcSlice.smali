.class public Lcom/coloros/settings/feature/panel/NfcSlice;
.super Ljava/lang/Object;
.source "NfcSlice.java"

# interfaces
.implements Lcom/android/settings/slices/b;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/nfc/NfcAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/coloros/settings/feature/panel/NfcSlice;->a:Landroid/content/Context;

    .line 65
    :try_start_0
    invoke-static {}, Landroid/security/KeyStore;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getNfcAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "NfcSlice"

    const-string v0, "construct mNfcAdapter with exception"

    .line 67
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 69
    :goto_0
    iput-object p1, p0, Lcom/coloros/settings/feature/panel/NfcSlice;->b:Landroid/nfc/NfcAdapter;

    return-void
.end method

.method private d()Z
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/coloros/settings/feature/panel/NfcSlice;->b:Landroid/nfc/NfcAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 167
    :cond_0
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final a()Landroidx/slice/Slice;
    .locals 10

    .line 75
    iget-object v0, p0, Lcom/coloros/settings/feature/panel/NfcSlice;->a:Landroid/content/Context;

    const v1, 0x7f0807ca

    invoke-static {v0, v1}, Landroidx/core/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/coloros/settings/feature/panel/NfcSlice;->a:Landroid/content/Context;

    const v2, 0x7f120e4d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 78
    iget-object v2, p0, Lcom/coloros/settings/feature/panel/NfcSlice;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/m;->p(Landroid/content/Context;)I

    move-result v2

    .line 81
    iget-object v3, p0, Lcom/coloros/settings/feature/panel/NfcSlice;->b:Landroid/nfc/NfcAdapter;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return-object v4

    .line 1150
    :cond_0
    iget-object v3, p0, Lcom/coloros/settings/feature/panel/NfcSlice;->a:Landroid/content/Context;

    const v5, 0x7f120e4c

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 86
    iget-object v5, p0, Lcom/coloros/settings/feature/panel/NfcSlice;->a:Landroid/content/Context;

    invoke-virtual {p0, v5}, Lcom/coloros/settings/feature/panel/NfcSlice;->c(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v5

    .line 1155
    invoke-virtual {p0}, Lcom/coloros/settings/feature/panel/NfcSlice;->c()Landroid/content/Intent;

    move-result-object v6

    .line 1156
    iget-object v7, p0, Lcom/coloros/settings/feature/panel/NfcSlice;->a:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-static {v7, v8, v6, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 88
    invoke-static {v6, v0, v8, v1}, Landroidx/slice/builders/SliceAction;->createDeeplink(Landroid/app/PendingIntent;Landroidx/core/graphics/drawable/IconCompat;ILjava/lang/CharSequence;)Landroidx/slice/builders/SliceAction;

    move-result-object v0

    .line 91
    invoke-direct {p0}, Lcom/coloros/settings/feature/panel/NfcSlice;->d()Z

    move-result v6

    .line 90
    invoke-static {v5, v4, v6}, Landroidx/slice/builders/SliceAction;->createToggle(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)Landroidx/slice/builders/SliceAction;

    move-result-object v4

    .line 93
    new-instance v5, Landroidx/slice/builders/ListBuilder;

    iget-object v6, p0, Lcom/coloros/settings/feature/panel/NfcSlice;->a:Landroid/content/Context;

    .line 2107
    sget-object v7, Lcom/android/settings/slices/a;->n:Landroid/net/Uri;

    const-wide/16 v8, -0x1

    .line 93
    invoke-direct {v5, v6, v7, v8, v9}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 95
    invoke-virtual {v5, v2}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object v2

    new-instance v5, Landroidx/slice/builders/ListBuilder$RowBuilder;

    invoke-direct {v5}, Landroidx/slice/builders/ListBuilder$RowBuilder;-><init>()V

    .line 97
    invoke-virtual {v5, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v1

    .line 98
    invoke-virtual {v1, v3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v1

    .line 99
    invoke-virtual {v1, v4}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v1

    .line 100
    invoke-virtual {v1, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    .line 96
    invoke-virtual {v2, v0}, Landroidx/slice/builders/ListBuilder;->addRow(Landroidx/slice/builders/ListBuilder$RowBuilder;)Landroidx/slice/builders/ListBuilder;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object v0

    return-object v0
.end method

.method public final a(Landroid/content/Intent;)V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/coloros/settings/feature/panel/NfcSlice;->b:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    return-void

    .line 119
    :cond_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/panel/NfcSlice;->d()Z

    move-result v0

    const-string v1, "android.app.slice.extra.TOGGLE_STATE"

    .line 118
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 120
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onNotifyChange newState="

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NfcSlice"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 122
    iget-object p1, p0, Lcom/coloros/settings/feature/panel/NfcSlice;->b:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->enable()Z

    return-void

    .line 124
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/panel/NfcSlice;->b:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->disable()Z

    return-void
.end method

.method public final b()Landroid/net/Uri;
    .locals 1

    .line 107
    sget-object v0, Lcom/android/settings/slices/a;->n:Landroid/net/Uri;

    return-object v0
.end method

.method public final c()Landroid/content/Intent;
    .locals 5

    .line 137
    iget-object v0, p0, Lcom/coloros/settings/feature/panel/NfcSlice;->a:Landroid/content/Context;

    const v1, 0x7f120619

    .line 138
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    iget-object v1, p0, Lcom/coloros/settings/feature/panel/NfcSlice;->a:Landroid/content/Context;

    const-class v2, Lcom/android/settings/connecteddevice/AdvancedConnectedDeviceDashboardFragment;

    .line 140
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0x2eb

    .line 139
    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/settings/slices/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/coloros/settings/feature/panel/NfcSlice;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/SubSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 145
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .line 130
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    .line 131
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-object v0
.end method
