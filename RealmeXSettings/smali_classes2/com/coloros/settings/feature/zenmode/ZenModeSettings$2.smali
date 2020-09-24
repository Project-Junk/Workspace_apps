.class final Lcom/coloros/settings/feature/zenmode/ZenModeSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "ZenModeSettings.java"


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

    .line 223
    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$2;->a:Lcom/coloros/settings/feature/zenmode/ZenModeSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v0, -0x1

    .line 226
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$2;->a:Lcom/coloros/settings/feature/zenmode/ZenModeSettings;

    .line 227
    invoke-static {p1}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->c(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$2;->a:Lcom/coloros/settings/feature/zenmode/ZenModeSettings;

    .line 228
    invoke-static {p1}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->d(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$2;->a:Lcom/coloros/settings/feature/zenmode/ZenModeSettings;

    .line 229
    invoke-static {p1}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->b(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 230
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$2;->a:Lcom/coloros/settings/feature/zenmode/ZenModeSettings;

    invoke-static {p1}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->d(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    .line 231
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$2;->a:Lcom/coloros/settings/feature/zenmode/ZenModeSettings;

    invoke-static {p1}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->e(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeSettings$2;->a:Lcom/coloros/settings/feature/zenmode/ZenModeSettings;

    invoke-static {v0}, Lcom/coloros/settings/feature/zenmode/ZenModeSettings;->f(Lcom/coloros/settings/feature/zenmode/ZenModeSettings;)I

    move-result v0

    const-string v1, "no_media"

    invoke-static {p1, v1, p2, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    return-void
.end method
