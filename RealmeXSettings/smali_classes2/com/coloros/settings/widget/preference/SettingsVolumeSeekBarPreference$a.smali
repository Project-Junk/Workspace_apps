.class public final Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference$a;
.super Ljava/lang/Object;
.source "SettingsVolumeSeekBarPreference.java"

# interfaces
.implements Lcom/coloros/settings/widget/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;


# direct methods
.method public constructor <init>(Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference$a;->a:Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference$a;->a:Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;

    invoke-static {v0, p1}, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->a(Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;I)I

    .line 196
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference$a;->a:Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;

    invoke-virtual {p1}, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->f()V

    return-void
.end method

.method public final a(Lcom/android/sdk/a;)V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference$a;->a:Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->a(Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;)Lcom/android/settings/notification/VolumeSeekBarPreference$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference$a;->a:Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->b(Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;)Lcom/android/settings/notification/VolumeSeekBarPreference$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/settings/notification/VolumeSeekBarPreference$a;->a(Lcom/android/sdk/a;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/coloros/settings/widget/SettingsSeekBar;)V
    .locals 2

    .line 201
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference$a;->a:Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->c(Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;)Lcom/android/settings/notification/VolumeSeekBarPreference$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference$a;->a:Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->e(Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;)Lcom/android/settings/notification/VolumeSeekBarPreference$a;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference$a;->a:Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;

    invoke-static {v1}, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->d(Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;)I

    invoke-interface {v0}, Lcom/android/settings/notification/VolumeSeekBarPreference$a;->a()V

    .line 203
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference$a;->a:Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;

    invoke-virtual {p1}, Lcom/coloros/settings/widget/SettingsSeekBar;->getProgress()I

    move-result p1

    invoke-static {v0, p1}, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->a(Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;I)I

    .line 204
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference$a;->a:Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;

    invoke-virtual {p1}, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->f()V

    :cond_0
    return-void
.end method

.method public final a(ZZ)V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference$a;->a:Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->f(Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference$a;->a:Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;

    invoke-static {v0}, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->g(Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;)Z

    move-result v0

    if-ne v0, p2, :cond_0

    return-void

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference$a;->a:Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;

    invoke-static {v0, p1}, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->a(Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;Z)Z

    .line 214
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference$a;->a:Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;

    invoke-static {p1, p2}, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->b(Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;Z)Z

    .line 215
    iget-object p1, p0, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference$a;->a:Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;

    invoke-virtual {p1}, Lcom/coloros/settings/widget/preference/SettingsVolumeSeekBarPreference;->f()V

    return-void
.end method
