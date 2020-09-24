.class final Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "ColorTimeSetPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController$1;->a:Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 248
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController$1;->a:Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->a(Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;)Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 250
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "time-zone"

    .line 251
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 252
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, " timeZone: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "ColorTimeSetPreferenceController"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController$1;->a:Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;

    invoke-static {p2}, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->b(Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;)Landroid/os/Handler;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 254
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController$1;->a:Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;

    invoke-static {p2}, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->b(Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;)Landroid/os/Handler;

    move-result-object p2

    const-wide/16 v0, 0x1f4

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 256
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController$1;->a:Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;->c(Lcom/coloros/settings/feature/othersettings/datetime/controller/ColorTimeSetPreferenceController;)Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/settings/feature/othersettings/datetime/ColorDateTimeSettingFragment;->c()V

    :cond_1
    return-void
.end method
