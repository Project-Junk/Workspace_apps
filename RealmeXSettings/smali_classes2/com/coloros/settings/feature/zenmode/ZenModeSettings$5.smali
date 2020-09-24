.class final Lcom/coloros/settings/feature/zenmode/ZenModeSettings$5;
.super Ljava/lang/Object;
.source "ZenModeSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->onCreate(Landroid/os/Bundle;)V
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

    .line 345
    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$5;->a:Lcom/coloros/settings/feature/zenmode/ZenModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 348
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 349
    iget-object p2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$5;->a:Lcom/coloros/settings/feature/zenmode/ZenModeSettings;

    invoke-static {p2}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->k(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$5;->a:Lcom/coloros/settings/feature/zenmode/ZenModeSettings;

    invoke-static {v0}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->f(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)I

    move-result v0

    const-string v1, "no_media"

    invoke-static {p2, v1, p1, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 350
    iget-object p2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$5;->a:Lcom/coloros/settings/feature/zenmode/ZenModeSettings;

    invoke-static {p2}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->b(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    move-result-object p2

    invoke-virtual {p2}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 351
    iget-object p2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$5;->a:Lcom/coloros/settings/feature/zenmode/ZenModeSettings;

    invoke-static {p2, p1}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->a(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;Z)V

    .line 353
    :cond_0
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_1

    const-string p1, "1"

    goto :goto_0

    :cond_1
    const-string p1, "0"

    :goto_0
    const-string v0, "zen_mode_mute_media"

    .line 354
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$5;->a:Lcom/coloros/settings/feature/zenmode/ZenModeSettings;

    invoke-static {p1}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->l(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "20012"

    const-string v1, "event_zen_mode_mute_media"

    invoke-static {p1, v0, v1, p2}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 p1, 0x1

    return p1
.end method
