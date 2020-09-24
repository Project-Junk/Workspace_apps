.class final Lcom/coloros/settings/feature/sound/controller/FrontFingerSoundPreferenceController$1;
.super Lcom/android/settings/notification/r;
.source "FrontFingerSoundPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/sound/controller/FrontFingerSoundPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/sound/controller/FrontFingerSoundPreferenceController;


# direct methods
.method varargs constructor <init>(Lcom/coloros/settings/feature/sound/controller/FrontFingerSoundPreferenceController;Ljava/lang/String;Ljava/lang/String;[I)V
    .locals 6

    .line 36
    iput-object p1, p0, Lcom/coloros/settings/feature/sound/controller/FrontFingerSoundPreferenceController$1;->a:Lcom/coloros/settings/feature/sound/controller/FrontFingerSoundPreferenceController;

    const/4 v1, 0x3

    const/4 v4, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/notification/r;-><init>(ILjava/lang/String;Ljava/lang/String;I[I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Z
    .locals 0

    .line 39
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/controller/FrontFingerSoundPreferenceController$1;->a:Lcom/coloros/settings/feature/sound/controller/FrontFingerSoundPreferenceController;

    invoke-static {p1}, Lcom/coloros/settings/feature/sound/controller/FrontFingerSoundPreferenceController;->a(Lcom/coloros/settings/feature/sound/controller/FrontFingerSoundPreferenceController;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/settings/utils/aw;->a(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public final a(Landroid/content/Context;I)Z
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/FrontFingerSoundPreferenceController$1;->g:Landroidx/preference/TwoStatePreference;

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 47
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/notification/r;->a(Landroid/content/Context;I)Z

    move-result p1

    return p1
.end method

.method public final b(Landroid/content/Context;)V
    .locals 4

    .line 52
    iget v0, p0, Lcom/coloros/settings/feature/sound/controller/FrontFingerSoundPreferenceController$1;->b:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/settings/feature/sound/controller/FrontFingerSoundPreferenceController$1;->d:Ljava/lang/String;

    iget v3, p0, Lcom/coloros/settings/feature/sound/controller/FrontFingerSoundPreferenceController$1;->e:I

    invoke-static {v0, v1, v2, v3}, Lcom/coloros/settings/feature/sound/controller/FrontFingerSoundPreferenceController$1;->a(ILandroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 53
    iget-object v1, p0, Lcom/coloros/settings/feature/sound/controller/FrontFingerSoundPreferenceController$1;->g:Landroidx/preference/TwoStatePreference;

    if-eqz v1, :cond_1

    .line 54
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/controller/FrontFingerSoundPreferenceController$1;->g:Landroidx/preference/TwoStatePreference;

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void

    .line 57
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/notification/r;->b(Landroid/content/Context;)V

    return-void
.end method
