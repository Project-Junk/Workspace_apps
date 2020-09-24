.class final Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase$a;
.super Landroid/database/ContentObserver;
.source "ZenModeSettingsBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/net/Uri;

.field final b:Landroid/net/Uri;

.field final synthetic c:Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;


# direct methods
.method private constructor <init>(Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase$a;->c:Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;

    .line 191
    invoke-static {p1}, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->a(Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;)Landroid/os/Handler;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "zen_mode"

    .line 184
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase$a;->a:Landroid/net/Uri;

    const-string p1, "zen_mode_config_etag"

    .line 185
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase$a;->b:Landroid/net/Uri;

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;B)V
    .locals 0

    .line 183
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase$a;-><init>(Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 3

    .line 208
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 209
    sget-boolean v0, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->d:Z

    const-string v1, "ZenModeSettings"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onChange_selfChange = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", uri = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",isSelfChange = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase$a;->c:Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;

    iget-boolean p1, p1, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->i:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", mChangeConfigWay = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase$a;->c:Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;

    iget-object p1, p1, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->h:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase$a;->c:Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;

    iget-object p1, p1, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->h:Ljava/lang/String;

    const-string v0, "times"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 214
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase$a;->a:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    const-string v2, "manal"

    if-eqz p1, :cond_3

    .line 215
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase$a;->c:Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;

    iget-boolean p1, p1, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->i:Z

    if-nez p1, :cond_2

    .line 216
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase$a;->c:Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;

    invoke-static {p1}, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->b(Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;)V

    .line 217
    sget-boolean p1, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->d:Z

    if-eqz p1, :cond_2

    const-string p1, "onChange_ZEN_MODE_URI_updateZenMode!"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase$a;->c:Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;

    iget-object p1, p1, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->h:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 220
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase$a;->c:Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;

    iput-boolean v0, p1, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->i:Z

    .line 223
    :cond_3
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase$a;->b:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 225
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase$a;->c:Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;

    iget-boolean p1, p1, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->i:Z

    if-nez p1, :cond_4

    .line 226
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase$a;->c:Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->b(Z)V

    .line 227
    sget-boolean p1, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->d:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "onChange_ZEN_MODE_CONFIG_ETAG_URI_maybeRefreshRules_mChangeConfigWay = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase$a;->c:Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;

    iget-object p2, p2, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_4
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase$a;->c:Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;

    iget-object p1, p1, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->h:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 230
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase$a;->c:Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;

    iput-boolean v0, p1, Lcom/coloros/settings/feature/zenmode/ZenModeSettingsBase;->i:Z

    :cond_5
    return-void
.end method
