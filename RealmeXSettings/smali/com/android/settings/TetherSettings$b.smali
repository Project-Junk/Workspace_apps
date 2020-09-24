.class final Lcom/android/settings/TetherSettings$b;
.super Landroid/content/BroadcastReceiver;
.source "TetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/TetherSettings;


# direct methods
.method private constructor <init>(Lcom/android/settings/TetherSettings;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/android/settings/TetherSettings$b;->a:Lcom/android/settings/TetherSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/TetherSettings;B)V
    .locals 0

    .line 207
    invoke-direct {p0, p1}, Lcom/android/settings/TetherSettings$b;-><init>(Lcom/android/settings/TetherSettings;)V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 210
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.conn.TETHER_STATE_CHANGED"

    .line 211
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "availableArray"

    .line 213
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    const-string/jumbo v0, "tetherArray"

    .line 215
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "erroredArray"

    .line 217
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    .line 219
    iget-object v1, p0, Lcom/android/settings/TetherSettings$b;->a:Lcom/android/settings/TetherSettings;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 220
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 221
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 219
    invoke-static {v1, p1, v0, p2}, Lcom/android/settings/TetherSettings;->a(Lcom/android/settings/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "android.intent.action.MEDIA_SHARED"

    .line 222
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    iget-object p1, p0, Lcom/android/settings/TetherSettings$b;->a:Lcom/android/settings/TetherSettings;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/settings/TetherSettings;->a(Lcom/android/settings/TetherSettings;Z)Z

    goto/16 :goto_0

    :cond_1
    const-string v0, "android.intent.action.MEDIA_UNSHARED"

    .line 225
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 226
    iget-object p1, p0, Lcom/android/settings/TetherSettings$b;->a:Lcom/android/settings/TetherSettings;

    invoke-static {p1, v1}, Lcom/android/settings/TetherSettings;->a(Lcom/android/settings/TetherSettings;Z)Z

    goto/16 :goto_0

    :cond_2
    const-string v0, "android.hardware.usb.action.USB_STATE"

    .line 228
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 229
    iget-object p1, p0, Lcom/android/settings/TetherSettings$b;->a:Lcom/android/settings/TetherSettings;

    const-string v0, "connected"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/TetherSettings;->b(Lcom/android/settings/TetherSettings;Z)Z

    goto/16 :goto_0

    :cond_3
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 231
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/high16 p1, -0x80000000

    const-string v0, "android.bluetooth.adapter.extra.STATE"

    .line 233
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 234
    iget-object v0, p0, Lcom/android/settings/TetherSettings$b;->a:Lcom/android/settings/TetherSettings;

    invoke-static {v0}, Lcom/android/settings/TetherSettings;->b(Lcom/android/settings/TetherSettings;)Z

    move-result v0

    const/4 v1, 0x5

    const/16 v2, 0xc

    if-eqz v0, :cond_6

    if-eq p2, p1, :cond_5

    const/16 p1, 0xa

    if-eq p2, p1, :cond_5

    if-eq p2, v2, :cond_4

    goto :goto_0

    .line 237
    :cond_4
    iget-object p1, p0, Lcom/android/settings/TetherSettings$b;->a:Lcom/android/settings/TetherSettings;

    invoke-static {p1}, Lcom/android/settings/TetherSettings;->c(Lcom/android/settings/TetherSettings;)V

    .line 238
    iget-object p1, p0, Lcom/android/settings/TetherSettings$b;->a:Lcom/android/settings/TetherSettings;

    invoke-static {p1}, Lcom/android/settings/TetherSettings;->d(Lcom/android/settings/TetherSettings;)Z

    .line 239
    iget-object p1, p0, Lcom/android/settings/TetherSettings$b;->a:Lcom/android/settings/TetherSettings;

    invoke-static {p1}, Lcom/android/settings/TetherSettings;->e(Lcom/android/settings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_8

    .line 240
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 242
    iget-object p2, p0, Lcom/android/settings/TetherSettings$b;->a:Lcom/android/settings/TetherSettings;

    invoke-virtual {p2}, Lcom/android/settings/TetherSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/TetherSettings$b;->a:Lcom/android/settings/TetherSettings;

    .line 243
    invoke-static {v0}, Lcom/android/settings/TetherSettings;->f(Lcom/android/settings/TetherSettings;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    .line 242
    invoke-virtual {p1, p2, v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    goto :goto_0

    .line 250
    :cond_5
    iget-object p1, p0, Lcom/android/settings/TetherSettings$b;->a:Lcom/android/settings/TetherSettings;

    invoke-static {p1}, Lcom/android/settings/TetherSettings;->d(Lcom/android/settings/TetherSettings;)Z

    goto :goto_0

    :cond_6
    if-eq p2, v2, :cond_7

    goto :goto_0

    .line 259
    :cond_7
    iget-object p1, p0, Lcom/android/settings/TetherSettings$b;->a:Lcom/android/settings/TetherSettings;

    invoke-static {p1}, Lcom/android/settings/TetherSettings;->e(Lcom/android/settings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_8

    .line 260
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 262
    iget-object p2, p0, Lcom/android/settings/TetherSettings$b;->a:Lcom/android/settings/TetherSettings;

    invoke-virtual {p2}, Lcom/android/settings/TetherSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/TetherSettings$b;->a:Lcom/android/settings/TetherSettings;

    .line 263
    invoke-static {v0}, Lcom/android/settings/TetherSettings;->f(Lcom/android/settings/TetherSettings;)Landroid/bluetooth/BluetoothProfile$ServiceListener;

    move-result-object v0

    .line 262
    invoke-virtual {p1, p2, v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 269
    :cond_8
    :goto_0
    iget-object p1, p0, Lcom/android/settings/TetherSettings$b;->a:Lcom/android/settings/TetherSettings;

    invoke-static {p1}, Lcom/android/settings/TetherSettings;->a(Lcom/android/settings/TetherSettings;)V

    :cond_9
    return-void
.end method
