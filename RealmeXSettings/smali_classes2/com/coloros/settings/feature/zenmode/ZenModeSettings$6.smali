.class final Lcom/coloros/settings/feature/zenmode/ZenModeSettings$6;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/zenmode/ZenModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/zenmode/ZenModeSettings;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)V
    .locals 0

    .line 628
    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$6;->a:Lcom/coloros/settings/feature/zenmode/ZenModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .line 631
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$6;->a:Lcom/coloros/settings/feature/zenmode/ZenModeSettings;

    invoke-static {p1}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->m(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 632
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 635
    iget-object p2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$6;->a:Lcom/coloros/settings/feature/zenmode/ZenModeSettings;

    invoke-static {p2}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->n(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)Landroid/content/Context;

    move-result-object p2

    const/16 v1, 0xa8

    invoke-static {p2, v1, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 637
    sget-boolean p2, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->d:Z

    if-eqz p2, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const-string v1, "onPrefChange allowEvents="

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "ZenModeSettings"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_1
    iget-object p2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$6;->a:Lcom/coloros/settings/feature/zenmode/ZenModeSettings;

    const/4 v1, 0x2

    invoke-static {p2, p1, v1}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->a(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;ZI)I

    move-result v1

    iget-object v2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$6;->a:Lcom/coloros/settings/feature/zenmode/ZenModeSettings;

    .line 641
    invoke-static {v2}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->o(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)Landroid/app/NotificationManager$Policy;

    move-result-object v2

    iget v2, v2, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget-object v3, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$6;->a:Lcom/coloros/settings/feature/zenmode/ZenModeSettings;

    invoke-static {v3}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->o(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)Landroid/app/NotificationManager$Policy;

    move-result-object v3

    iget v3, v3, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget-object v4, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$6;->a:Lcom/coloros/settings/feature/zenmode/ZenModeSettings;

    .line 642
    invoke-static {v4}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->o(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)Landroid/app/NotificationManager$Policy;

    move-result-object v4

    iget v4, v4, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 640
    invoke-static {p2, v1, v2, v3, v4}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->a(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;IIII)V

    .line 644
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_2

    const-string p1, "1"

    goto :goto_0

    :cond_2
    const-string p1, "0"

    :goto_0
    const-string v1, "allowEvents"

    .line 645
    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$6;->a:Lcom/coloros/settings/feature/zenmode/ZenModeSettings;

    invoke-static {p1}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->p(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)Landroid/content/Context;

    move-result-object p1

    const-string v1, "20012"

    const-string v2, "zenmode_settings"

    invoke-static {p1, v1, v2, p2}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return v0
.end method
