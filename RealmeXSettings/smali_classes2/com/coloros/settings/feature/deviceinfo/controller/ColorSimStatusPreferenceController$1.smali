.class final Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "ColorSimStatusPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController$1;->a:Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 59
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 60
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController$1;->a:Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;->a(Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimState()I

    .line 61
    iget-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController$1;->a:Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;->b(Lcom/coloros/settings/feature/deviceinfo/controller/ColorSimStatusPreferenceController;)V

    :cond_0
    return-void
.end method
