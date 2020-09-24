.class final Lcom/coloros/settings/feature/display/video/OSIESettingsFragment$1;
.super Landroid/database/ContentObserver;
.source "OSIESettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/display/video/OSIESettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/display/video/OSIESettingsFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/display/video/OSIESettingsFragment;Landroid/os/Handler;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/coloros/settings/feature/display/video/OSIESettingsFragment$1;->a:Lcom/coloros/settings/feature/display/video/OSIESettingsFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    .line 118
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 119
    iget-object p1, p0, Lcom/coloros/settings/feature/display/video/OSIESettingsFragment$1;->a:Lcom/coloros/settings/feature/display/video/OSIESettingsFragment;

    invoke-virtual {p1}, Lcom/coloros/settings/feature/display/video/OSIESettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 120
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 121
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "osie_iris5_switch"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 122
    :goto_0
    invoke-static {}, Lcom/coloros/settings/utils/ap;->b()Z

    move-result p1

    if-eq p1, v0, :cond_1

    .line 123
    iget-object p1, p0, Lcom/coloros/settings/feature/display/video/OSIESettingsFragment$1;->a:Lcom/coloros/settings/feature/display/video/OSIESettingsFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/video/OSIESettingsFragment;->a(Lcom/coloros/settings/feature/display/video/OSIESettingsFragment;)Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    return-void

    .line 125
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/display/video/OSIESettingsFragment$1;->a:Lcom/coloros/settings/feature/display/video/OSIESettingsFragment;

    invoke-static {p1}, Lcom/coloros/settings/feature/display/video/OSIESettingsFragment;->a(Lcom/coloros/settings/feature/display/video/OSIESettingsFragment;)Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    move-result-object p1

    invoke-static {}, Lcom/coloros/settings/utils/ap;->b()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    :cond_2
    return-void
.end method
