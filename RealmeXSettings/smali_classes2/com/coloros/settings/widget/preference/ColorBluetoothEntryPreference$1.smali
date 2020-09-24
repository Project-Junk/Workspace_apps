.class final Lcom/coloros/settings/widget/preference/ColorBluetoothEntryPreference$1;
.super Landroid/content/BroadcastReceiver;
.source "ColorBluetoothEntryPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/widget/preference/ColorBluetoothEntryPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/widget/preference/ColorBluetoothEntryPreference;


# direct methods
.method constructor <init>(Lcom/coloros/settings/widget/preference/ColorBluetoothEntryPreference;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/coloros/settings/widget/preference/ColorBluetoothEntryPreference$1;->a:Lcom/coloros/settings/widget/preference/ColorBluetoothEntryPreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 73
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 75
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/ColorBluetoothEntryPreference$1;->a:Lcom/coloros/settings/widget/preference/ColorBluetoothEntryPreference;

    const/high16 v0, -0x80000000

    const-string v1, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/coloros/settings/widget/preference/ColorBluetoothEntryPreference;->a(Lcom/coloros/settings/widget/preference/ColorBluetoothEntryPreference;I)V

    :cond_0
    return-void
.end method
