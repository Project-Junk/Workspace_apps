.class public final Lcom/android/settings/bluetooth/j;
.super Lcom/android/settings/widget/e;
.source "BluetoothSummaryUpdater.java"

# interfaces
.implements Lcom/android/settingslib/d/c;


# instance fields
.field private final b:Landroid/bluetooth/BluetoothAdapter;

.field private final c:Lcom/android/settingslib/d/q;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/e$a;Lcom/android/settingslib/d/q;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/e;-><init>(Landroid/content/Context;Lcom/android/settings/widget/e$a;)V

    .line 48
    iput-object p3, p0, Lcom/android/settings/bluetooth/j;->c:Lcom/android/settingslib/d/q;

    .line 49
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/j;->b:Landroid/bluetooth/BluetoothAdapter;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 10

    .line 77
    iget-object v0, p0, Lcom/android/settings/bluetooth/j;->b:Landroid/bluetooth/BluetoothAdapter;

    const v1, 0x7f120399

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/j;->b:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_b

    const/4 v3, 0x2

    const v4, 0x7f1207fd

    if-eq v0, v3, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 88
    iget-object v0, p0, Lcom/android/settings/bluetooth/j;->a:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/j;->a:Landroid/content/Context;

    const v1, 0x7f1203a3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    .line 3097
    iget-object v3, p0, Lcom/android/settings/bluetooth/j;->b:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v3

    const-string v5, "BluetoothSummaryUpdater"

    if-nez v3, :cond_3

    const-string v0, "getConnectedDeviceSummary, bonded devices are null"

    .line 3099
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3100
    iget-object v0, p0, Lcom/android/settings/bluetooth/j;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3101
    :cond_3
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "getConnectedDeviceSummary, no bonded devices"

    .line 3102
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3103
    iget-object v0, p0, Lcom/android/settings/bluetooth/j;->a:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3105
    :cond_4
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v6, 0x0

    move-object v7, v6

    :cond_5
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/bluetooth/BluetoothDevice;

    .line 3106
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 3107
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    .line 3108
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v0, v0, 0x1

    if-gt v0, v2, :cond_6

    goto :goto_0

    :cond_6
    if-nez v6, :cond_8

    .line 3116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getConnectedDeviceSummary, deviceName is null, numBondedDevices="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3117
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3116
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3118
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 3119
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getConnectedDeviceSummary, device="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3120
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "], isConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3119
    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3122
    :cond_7
    iget-object v0, p0, Lcom/android/settings/bluetooth/j;->a:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3124
    :cond_8
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    move-object v6, v7

    :cond_9
    if-le v0, v2, :cond_a

    .line 3127
    iget-object v0, p0, Lcom/android/settings/bluetooth/j;->a:Landroid/content/Context;

    const v1, 0x7f120372

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3128
    :cond_a
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 84
    :cond_b
    iget-object v0, p0, Lcom/android/settings/bluetooth/j;->a:Landroid/content/Context;

    const v1, 0x7f12037b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 78
    :cond_c
    :goto_2
    iget-object v0, p0, Lcom/android/settings/bluetooth/j;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b(Z)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/android/settings/bluetooth/j;->b:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/j;->b()V

    .line 69
    iget-object p1, p0, Lcom/android/settings/bluetooth/j;->c:Lcom/android/settingslib/d/q;

    .line 1158
    iget-object p1, p1, Lcom/android/settingslib/d/q;->e:Lcom/android/settingslib/d/e;

    .line 69
    invoke-virtual {p1, p0}, Lcom/android/settingslib/d/e;->a(Lcom/android/settingslib/d/c;)V

    return-void

    .line 71
    :cond_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/j;->c:Lcom/android/settingslib/d/q;

    .line 2158
    iget-object p1, p1, Lcom/android/settingslib/d/q;->e:Lcom/android/settingslib/d/e;

    .line 71
    invoke-virtual {p1, p0}, Lcom/android/settingslib/d/e;->b(Lcom/android/settingslib/d/c;)V

    return-void
.end method

.method public final c(Lcom/android/settingslib/d/g;I)V
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/j;->b()V

    return-void
.end method

.method public final onBluetoothStateChanged(I)V
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/j;->b()V

    return-void
.end method
