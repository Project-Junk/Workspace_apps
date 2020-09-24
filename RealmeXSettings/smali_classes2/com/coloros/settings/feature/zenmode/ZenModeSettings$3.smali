.class final Lcom/coloros/settings/feature/zenmode/ZenModeSettings$3;
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

    .line 291
    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$3;->a:Lcom/coloros/settings/feature/zenmode/ZenModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 294
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 295
    sget-boolean v0, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->d:Z

    const-string v1, "ZenModeSettings"

    if-eqz v0, :cond_0

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "setOnPreferenceChangeListener_preference = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", val = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$3;->a:Lcom/coloros/settings/feature/zenmode/ZenModeSettings;

    invoke-static {p1}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->g(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "zen_mode"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p1, "ZenModeSettings_manualRule"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_1

    .line 300
    invoke-static {v3, p1}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->a(ILjava/lang/String;)V

    .line 303
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$3;->a:Lcom/coloros/settings/feature/zenmode/ZenModeSettings;

    invoke-static {p1}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->h(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)V

    goto :goto_0

    .line 306
    :cond_1
    invoke-static {v2, p1}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->a(ILjava/lang/String;)V

    .line 308
    :goto_0
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$3;->a:Lcom/coloros/settings/feature/zenmode/ZenModeSettings;

    invoke-static {p1}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->i(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 309
    sget-boolean v0, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->d:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "val = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ",and toggleState = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_2
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    if-ne p1, v3, :cond_3

    const-string p1, "1"

    goto :goto_1

    :cond_3
    const-string p1, "0"

    :goto_1
    const-string v0, "manul_toggle"

    .line 312
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$3;->a:Lcom/coloros/settings/feature/zenmode/ZenModeSettings;

    invoke-static {p1}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->j(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "20012"

    const-string v1, "zenmode_settings"

    invoke-static {p1, v0, v1, p2}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 315
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$3;->a:Lcom/coloros/settings/feature/zenmode/ZenModeSettings;

    const-string p2, "manal"

    iput-object p2, p1, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->h:Ljava/lang/String;

    .line 316
    iput-boolean v3, p1, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->i:Z

    return v3
.end method
