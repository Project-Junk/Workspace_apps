.class public Lcom/coloros/settings/feature/sound/controller/RealSoundPreferenceController;
.super Lcom/android/settings/core/a;
.source "RealSoundPreferenceController.java"


# static fields
.field private static final KEY_ACCESS:Ljava/lang/String; = "AccessOppoDirac"

.field private static final KEY_DIRAC:Ljava/lang/String; = "key_dirac"

.field private static final VALUE_SETTING:Ljava/lang/String; = "Setting"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "key_dirac"

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private setIntent(Landroidx/preference/Preference;)V
    .locals 3

    .line 58
    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 59
    invoke-static {}, Lcom/coloros/settings/utils/al;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.coloros.partners.dirac.SevenDiracMainActivity"

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v1, "AccessOppoDirac"

    const-string v2, "Setting"

    .line 63
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setIntent(Landroid/content/Intent;)V

    const v0, 0x7f120fc3

    .line 65
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 48
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "key_dirac"

    .line 49
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 51
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/sound/controller/RealSoundPreferenceController;->setIntent(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/RealSoundPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->t(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/sound/controller/RealSoundPreferenceController;->mContext:Landroid/content/Context;

    .line 42
    invoke-static {v0}, Lcom/coloros/settings/utils/al;->u(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x3

    return v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 70
    invoke-static {}, Lcom/coloros/settings/utils/al;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_dirac"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/controller/RealSoundPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f1207fb

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const/4 p1, 0x1

    return p1

    .line 74
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
