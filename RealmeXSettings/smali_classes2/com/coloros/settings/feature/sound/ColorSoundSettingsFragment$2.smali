.class final Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment$2;
.super Ljava/lang/Object;
.source "ColorSoundSettingsFragment.java"

# interfaces
.implements Lcom/android/settings/SettingsActivity$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment$2;->a:Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment$2;->a:Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;

    invoke-static {v0}, Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;->a(Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 334
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.soundsettings.window.foucuson"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 335
    iget-object v1, p0, Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment$2;->a:Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;

    invoke-static {v1}, Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;->b(Lcom/coloros/settings/feature/sound/ColorSoundSettingsFragment;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
