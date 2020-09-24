.class final Lcom/coloros/settings/feature/zenmode/ZenModeSettings$7;
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

    .line 663
    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$7;->a:Lcom/coloros/settings/feature/zenmode/ZenModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    .line 666
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$7;->a:Lcom/coloros/settings/feature/zenmode/ZenModeSettings;

    invoke-static {p1}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->m(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 667
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 670
    iget-object p2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$7;->a:Lcom/coloros/settings/feature/zenmode/ZenModeSettings;

    invoke-static {p2}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->q(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p2

    .line 672
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$7;->a:Lcom/coloros/settings/feature/zenmode/ZenModeSettings;

    invoke-static {v1}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->r(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xab

    invoke-static {v1, v2, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 677
    sget-boolean v1, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->d:Z

    const-string v2, "ZenModeSettings"

    if-eqz v1, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v3, "onPrefChange allowRepeatCallers="

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :cond_1
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$7;->a:Lcom/coloros/settings/feature/zenmode/ZenModeSettings;

    const/16 v3, 0x10

    invoke-static {v1, p1, v3}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->a(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;ZI)I

    move-result v1

    .line 685
    iget-object v3, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$7;->a:Lcom/coloros/settings/feature/zenmode/ZenModeSettings;

    iget v4, p2, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v5, p2, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget p2, p2, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-static {v3, v1, v4, v5, p2}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->a(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;IIII)V

    .line 688
    iget-object p2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$7;->a:Lcom/coloros/settings/feature/zenmode/ZenModeSettings;

    iput-boolean v0, p2, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->i:Z

    const-string v3, "repeat"

    .line 689
    iput-object v3, p2, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->h:Ljava/lang/String;

    .line 690
    sget-boolean p2, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->d:Z

    if-eqz p2, :cond_2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "onPrefChange priorityCategories="

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    :cond_2
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_3

    const-string p1, "1"

    goto :goto_0

    :cond_3
    const-string p1, "0"

    :goto_0
    const-string v1, "allowRepeatCallers"

    .line 693
    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$7;->a:Lcom/coloros/settings/feature/zenmode/ZenModeSettings;

    invoke-static {p1}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->s(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)Landroid/content/Context;

    move-result-object p1

    const-string v1, "20012"

    const-string v2, "zenmode_settings"

    invoke-static {p1, v1, v2, p2}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return v0
.end method
