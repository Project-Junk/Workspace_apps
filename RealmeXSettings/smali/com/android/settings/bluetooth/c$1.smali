.class final Lcom/android/settings/bluetooth/c$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/bluetooth/c;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/c;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/settings/bluetooth/c$1;->a:Lcom/android/settings/bluetooth/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v0, -0x80000000

    .line 60
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 61
    iget-object p2, p0, Lcom/android/settings/bluetooth/c$1;->a:Lcom/android/settings/bluetooth/c;

    invoke-virtual {p2, p1}, Lcom/android/settings/bluetooth/c;->a(I)V

    return-void
.end method
