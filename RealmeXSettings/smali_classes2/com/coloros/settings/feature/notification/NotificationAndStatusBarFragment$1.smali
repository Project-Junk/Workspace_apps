.class final Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "NotificationAndStatusBarFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;

.field private b:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment$1;->a:Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 148
    new-instance p1, Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment$1$1;

    invoke-direct {p1, p0}, Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment$1$1;-><init>(Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment$1;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment$1;->b:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 157
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "oppo.intent.action.SIM_INFO_UPDATE"

    .line 158
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "android.intent.action.SERVICE_STATE"

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    const-string v3, "mSimInfoUpdatedReceiver receive action="

    if-nez p2, :cond_0

    .line 159
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 160
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 161
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1087
    :cond_0
    sget-object p2, Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;->a:Ljava/lang/String;

    .line 162
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object p2, p0, Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment$1;->a:Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;

    const-class v4, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;

    invoke-virtual {p2, v4}, Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p2

    check-cast p2, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;

    invoke-virtual {p2}, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->updateCarrierInfoPreference()V

    .line 164
    iget-object p2, p0, Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment$1;->a:Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;

    const-class v4, Lcom/coloros/settings/feature/notification/controller/ShowDataUsageInfoPreferenceController;

    invoke-virtual {p2, v4}, Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p2

    check-cast p2, Lcom/coloros/settings/feature/notification/controller/ShowDataUsageInfoPreferenceController;

    invoke-virtual {p2}, Lcom/coloros/settings/feature/notification/controller/ShowDataUsageInfoPreferenceController;->updateDataUsageInfoSummary()V

    .line 166
    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 167
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 168
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 2087
    :cond_2
    sget-object p2, Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;->a:Ljava/lang/String;

    .line 169
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object p1, p0, Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment$1;->a:Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;

    const-class p2, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;

    invoke-virtual {p1, p2}, Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/notification/controller/CarrierInfoPreferenceController;->updateCarrierInfoPreference()V

    .line 171
    iget-object p1, p0, Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment$1;->a:Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;

    const-class p2, Lcom/coloros/settings/feature/notification/controller/ShowDataUsageInfoPreferenceController;

    invoke-virtual {p1, p2}, Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/feature/notification/controller/ShowDataUsageInfoPreferenceController;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/notification/controller/ShowDataUsageInfoPreferenceController;->updateDataUsageInfoSummary()V

    .line 173
    :cond_3
    iget-object p1, p0, Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment$1;->a:Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;->a(Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 174
    iget-object p1, p0, Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment$1;->a:Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;->a(Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment$1;->b:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 175
    iget-object p1, p0, Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment$1;->a:Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;->a(Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/coloros/settings/feature/notification/NotificationAndStatusBarFragment$1;->b:Ljava/lang/Runnable;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method
