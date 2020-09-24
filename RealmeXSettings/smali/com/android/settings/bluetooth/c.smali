.class public final Lcom/android/settings/bluetooth/c;
.super Ljava/lang/Object;
.source "BluetoothEnabler.java"

# interfaces
.implements Lcom/android/settings/widget/g$a;


# instance fields
.field final a:Lcom/android/settings/widget/g;

.field b:Landroid/content/Context;

.field c:Z

.field final d:Landroid/bluetooth/BluetoothAdapter;

.field final e:Landroid/content/IntentFilter;

.field f:Lcom/android/settings/widget/g$a;

.field final g:Landroid/content/BroadcastReceiver;

.field private final h:Lcom/android/settingslib/core/instrumentation/d;

.field private final i:Lcom/android/settings/bluetooth/l;

.field private final j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/g;Lcom/android/settingslib/core/instrumentation/d;Lcom/android/settings/bluetooth/l;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/android/settings/bluetooth/c$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/c$1;-><init>(Lcom/android/settings/bluetooth/c;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/c;->g:Landroid/content/BroadcastReceiver;

    .line 74
    iput-object p1, p0, Lcom/android/settings/bluetooth/c;->b:Landroid/content/Context;

    .line 75
    iput-object p3, p0, Lcom/android/settings/bluetooth/c;->h:Lcom/android/settingslib/core/instrumentation/d;

    .line 76
    iput-object p2, p0, Lcom/android/settings/bluetooth/c;->a:Lcom/android/settings/widget/g;

    .line 77
    iget-object p1, p0, Lcom/android/settings/bluetooth/c;->a:Lcom/android/settings/widget/g;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/g;->a(Lcom/android/settings/widget/g$a;)V

    const/4 p1, 0x0

    .line 78
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/c;->c:Z

    const/16 p2, 0x366

    .line 79
    iput p2, p0, Lcom/android/settings/bluetooth/c;->j:I

    .line 81
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/bluetooth/c;->d:Landroid/bluetooth/BluetoothAdapter;

    .line 82
    iget-object p2, p0, Lcom/android/settings/bluetooth/c;->d:Landroid/bluetooth/BluetoothAdapter;

    if-nez p2, :cond_0

    .line 84
    iget-object p2, p0, Lcom/android/settings/bluetooth/c;->a:Lcom/android/settings/widget/g;

    invoke-virtual {p2, p1}, Lcom/android/settings/widget/g;->b(Z)V

    .line 86
    :cond_0
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/bluetooth/c;->e:Landroid/content/IntentFilter;

    .line 87
    iput-object p4, p0, Lcom/android/settings/bluetooth/c;->i:Lcom/android/settings/bluetooth/l;

    return-void
.end method

.method private static a(Landroid/content/Context;)Lcom/android/settingslib/g$a;
    .locals 1

    const-string v0, "no_bluetooth"

    .line 231
    invoke-static {p0, v0}, Lcom/android/settings/bluetooth/l;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/g$a;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "no_config_bluetooth"

    .line 234
    invoke-static {p0, v0}, Lcom/android/settings/bluetooth/l;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settingslib/g$a;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private a(Z)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/android/settings/bluetooth/c;->a:Lcom/android/settings/widget/g;

    invoke-virtual {v0}, Lcom/android/settings/widget/g;->d()Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 157
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/c;->c:Z

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/settings/bluetooth/c;->a:Lcom/android/settings/widget/g;

    invoke-virtual {v0}, Lcom/android/settings/widget/g;->c()V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/c;->a:Lcom/android/settings/widget/g;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/g;->a(Z)V

    .line 161
    iget-boolean p1, p0, Lcom/android/settings/bluetooth/c;->c:Z

    if-eqz p1, :cond_1

    .line 162
    iget-object p1, p0, Lcom/android/settings/bluetooth/c;->a:Lcom/android/settings/widget/g;

    invoke-virtual {p1}, Lcom/android/settings/widget/g;->b()V

    :cond_1
    return-void
.end method

.method private b(Z)V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/android/settings/bluetooth/c;->f:Lcom/android/settings/widget/g$a;

    if-eqz v0, :cond_0

    .line 244
    invoke-interface {v0, p1}, Lcom/android/settings/widget/g$a;->onSwitchToggled(Z)Z

    :cond_0
    return-void
.end method


# virtual methods
.method final a(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 148
    iget-object p1, p0, Lcom/android/settings/bluetooth/c;->a:Lcom/android/settings/widget/g;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/g;->b(Z)V

    .line 149
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/c;->a(Z)V

    return-void

    .line 141
    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/c;->a:Lcom/android/settings/widget/g;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/g;->b(Z)V

    return-void

    .line 137
    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/c;->a:Lcom/android/settings/widget/g;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/g;->b(Z)V

    .line 138
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/c;->a(Z)V

    return-void

    .line 134
    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/bluetooth/c;->a:Lcom/android/settings/widget/g;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/g;->b(Z)V

    return-void

    .line 144
    :pswitch_3
    iget-object p1, p0, Lcom/android/settings/bluetooth/c;->a:Lcom/android/settings/widget/g;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/g;->b(Z)V

    .line 145
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/c;->a(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final a()Z
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/android/settings/bluetooth/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/bluetooth/c;->a(Landroid/content/Context;)Lcom/android/settingslib/g$a;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lcom/android/settings/bluetooth/c;->a:Lcom/android/settings/widget/g;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/g;->a(Lcom/android/settingslib/g$a;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 223
    iget-object v2, p0, Lcom/android/settings/bluetooth/c;->a:Lcom/android/settings/widget/g;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/g;->a(Z)V

    .line 224
    iget-object v2, p0, Lcom/android/settings/bluetooth/c;->a:Lcom/android/settings/widget/g;

    invoke-virtual {v2, v1}, Lcom/android/settings/widget/g;->b(Z)V

    :cond_0
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public final onSwitchToggled(Z)Z
    .locals 5

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/c;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/c;->b(Z)V

    return v1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 175
    iget-object v2, p0, Lcom/android/settings/bluetooth/c;->b:Landroid/content/Context;

    const-string v3, "bluetooth"

    .line 176
    invoke-static {v2, v3}, Lcom/android/settingslib/m;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 177
    iget-object p1, p0, Lcom/android/settings/bluetooth/c;->b:Landroid/content/Context;

    const v1, 0x7f1219ce

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 179
    iget-object p1, p0, Lcom/android/settings/bluetooth/c;->a:Lcom/android/settings/widget/g;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/g;->a(Z)V

    .line 180
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/c;->b(Z)V

    return v0

    .line 184
    :cond_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/c;->h:Lcom/android/settingslib/core/instrumentation/d;

    iget-object v3, p0, Lcom/android/settings/bluetooth/c;->b:Landroid/content/Context;

    iget v4, p0, Lcom/android/settings/bluetooth/c;->j:I

    invoke-virtual {v2, v3, v4, p1}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;IZ)V

    .line 186
    iget-object v2, p0, Lcom/android/settings/bluetooth/c;->d:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v2, :cond_3

    if-eqz p1, :cond_2

    .line 1249
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    move-result v2

    :goto_0
    if-eqz p1, :cond_3

    if-nez v2, :cond_3

    .line 192
    iget-object p1, p0, Lcom/android/settings/bluetooth/c;->a:Lcom/android/settings/widget/g;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/g;->a(Z)V

    .line 193
    iget-object p1, p0, Lcom/android/settings/bluetooth/c;->a:Lcom/android/settings/widget/g;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/g;->b(Z)V

    .line 194
    iget-object p1, p0, Lcom/android/settings/bluetooth/c;->a:Lcom/android/settings/widget/g;

    invoke-virtual {p1}, Lcom/android/settings/widget/g;->a()V

    .line 195
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/c;->b(Z)V

    return v0

    .line 199
    :cond_3
    iget-object v2, p0, Lcom/android/settings/bluetooth/c;->a:Lcom/android/settings/widget/g;

    invoke-virtual {v2, v0}, Lcom/android/settings/widget/g;->b(Z)V

    .line 200
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/c;->b(Z)V

    return v1
.end method
