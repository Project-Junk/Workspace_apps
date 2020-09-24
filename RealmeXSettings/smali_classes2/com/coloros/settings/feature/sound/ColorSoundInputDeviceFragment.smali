.class public Lcom/coloros/settings/feature/sound/ColorSoundInputDeviceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ColorSoundInputDeviceFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/coloros/settings/widget/preference/ColorMarkPreference;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/coloros/settings/utils/ab;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/coloros/settings/feature/sound/ColorSoundInputDeviceFragment;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xfa

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 48
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    new-instance p1, Lcom/coloros/settings/utils/ab;

    const-string v0, "ColorSoundInputDeviceFragment"

    invoke-direct {p1, v0}, Lcom/coloros/settings/utils/ab;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/sound/ColorSoundInputDeviceFragment;->c:Lcom/coloros/settings/utils/ab;

    .line 50
    invoke-virtual {p0}, Lcom/coloros/settings/feature/sound/ColorSoundInputDeviceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/sound/ColorSoundInputDeviceFragment;->a:Landroid/app/Activity;

    .line 51
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/ColorSoundInputDeviceFragment;->a:Landroid/app/Activity;

    invoke-static {p1}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;)V

    .line 52
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/ColorSoundInputDeviceFragment;->a:Landroid/app/Activity;

    const v0, 0x7f121518

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    const p1, 0x7f1500b6

    .line 53
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/sound/ColorSoundInputDeviceFragment;->addPreferencesFromResource(I)V

    .line 54
    invoke-virtual {p0}, Lcom/coloros/settings/feature/sound/ColorSoundInputDeviceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    .line 55
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/feature/sound/ColorSoundInputDeviceFragment;->b:Ljava/util/List;

    .line 57
    new-instance v0, Lcom/coloros/settings/widget/preference/ColorMarkPreference;

    .line 58
    invoke-virtual {p0}, Lcom/coloros/settings/feature/sound/ColorSoundInputDeviceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/coloros/settings/widget/preference/ColorMarkPreference;-><init>(Landroid/content/Context;)V

    const-string v1, "default_device"

    .line 59
    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/ColorMarkPreference;->setKey(Ljava/lang/String;)V

    const v1, 0x7f12151d

    .line 60
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/sound/ColorSoundInputDeviceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/ColorMarkPreference;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x7f12151c

    .line 61
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/sound/ColorSoundInputDeviceFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/ColorMarkPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 62
    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/ColorMarkPreference;->setChecked(Z)V

    .line 63
    invoke-virtual {v0, p0}, Lcom/coloros/settings/widget/preference/ColorMarkPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 64
    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/ColorMarkPreference;->setOrder(I)V

    .line 65
    iget-object v2, p0, Lcom/coloros/settings/feature/sound/ColorSoundInputDeviceFragment;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 67
    invoke-virtual {v0, p0}, Lcom/coloros/settings/widget/preference/ColorMarkPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 69
    new-instance v2, Lcom/coloros/settings/widget/preference/ColorMarkPreference;

    .line 70
    invoke-virtual {p0}, Lcom/coloros/settings/feature/sound/ColorSoundInputDeviceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/coloros/settings/widget/preference/ColorMarkPreference;-><init>(Landroid/content/Context;)V

    const-string v3, "peripheral_device"

    .line 71
    invoke-virtual {v2, v3}, Lcom/coloros/settings/widget/preference/ColorMarkPreference;->setKey(Ljava/lang/String;)V

    const v3, 0x7f12151b

    .line 72
    invoke-virtual {p0, v3}, Lcom/coloros/settings/feature/sound/ColorSoundInputDeviceFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/coloros/settings/widget/preference/ColorMarkPreference;->setTitle(Ljava/lang/CharSequence;)V

    const v3, 0x7f12151a

    .line 73
    invoke-virtual {p0, v3}, Lcom/coloros/settings/feature/sound/ColorSoundInputDeviceFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/coloros/settings/widget/preference/ColorMarkPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 74
    invoke-virtual {v2, v1}, Lcom/coloros/settings/widget/preference/ColorMarkPreference;->setChecked(Z)V

    const/4 v3, 0x1

    .line 75
    invoke-virtual {v2, v3}, Lcom/coloros/settings/widget/preference/ColorMarkPreference;->setOrder(I)V

    .line 76
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 77
    iget-object p1, p0, Lcom/coloros/settings/feature/sound/ColorSoundInputDeviceFragment;->b:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    invoke-virtual {v2, p0}, Lcom/coloros/settings/widget/preference/ColorMarkPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 80
    invoke-virtual {p0}, Lcom/coloros/settings/feature/sound/ColorSoundInputDeviceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v4, "coloros_sound_input_channel"

    invoke-static {p1, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v3, :cond_0

    .line 81
    invoke-virtual {v2, v3}, Lcom/coloros/settings/widget/preference/ColorMarkPreference;->setChecked(Z)V

    return-void

    .line 83
    :cond_0
    invoke-virtual {v0, v3}, Lcom/coloros/settings/widget/preference/ColorMarkPreference;->setChecked(Z)V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/ColorSoundInputDeviceFragment;->c:Lcom/coloros/settings/utils/ab;

    invoke-virtual {v0}, Lcom/coloros/settings/utils/ab;->a()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 92
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getOrder()I

    move-result p1

    .line 93
    invoke-virtual {p0}, Lcom/coloros/settings/feature/sound/ColorSoundInputDeviceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "coloros_sound_input_channel"

    invoke-static {v0, v2, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1100
    iget-object v0, p0, Lcom/coloros/settings/feature/sound/ColorSoundInputDeviceFragment;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1103
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coloros/settings/widget/preference/ColorMarkPreference;

    .line 1104
    invoke-virtual {v2}, Lcom/coloros/settings/widget/preference/ColorMarkPreference;->getOrder()I

    move-result v3

    if-eq p1, v3, :cond_1

    const/4 v3, 0x0

    .line 1105
    invoke-virtual {v2, v3}, Lcom/coloros/settings/widget/preference/ColorMarkPreference;->setChecked(Z)V

    goto :goto_0

    .line 1107
    :cond_1
    invoke-virtual {v2, v1}, Lcom/coloros/settings/widget/preference/ColorMarkPreference;->setChecked(Z)V

    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/settings/feature/sound/ColorSoundInputDeviceFragment;->finish()V

    return v1
.end method

.method public shouldSetOverScroll()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public supportFullScreen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
