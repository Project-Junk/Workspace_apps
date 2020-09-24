.class public Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;
.super Lcom/coloros/systemui/common/settings/BaseSettingsFragment;
.source "EnvelopeSettingsFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final ENVELOPE_ASSISTANT:Ljava/lang/String; = "envelope_assistant"

.field private static final ENVELOPE_AUTO_OPEN:Ljava/lang/String; = "envelope_auto_open"

.field private static final ENVELOPE_DETECT_PREFERENCE:Ljava/lang/String; = "envelope_detect_preference"

.field private static final ENVELOPE_NOTICE_SOUND:Ljava/lang/String; = "envelope_notice_sound"

.field private static final TAG:Ljava/lang/String; = "EnvelopeSettingsFragment"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mAutoOpenPref:Lcom/color/support/preference/ColorSwitchPreference;

.field protected mContext:Landroid/content/Context;

.field private mDetectPref:Lcom/coloros/systemui/notification/envelope/view/EnvelopeDetectPreference;

.field private mEnvelopeCountChangeObserver:Lcom/coloros/systemui/common/observer/AbstractObserver;

.field private mEnvelopeEnableObserver:Lcom/coloros/systemui/common/observer/AbstractObserver;

.field private mEnvelopePref:Lcom/color/support/preference/ColorSwitchPreference;

.field private mEnvelopeSound:Landroid/media/SoundPool;

.field private mEnvelopeSoundID:I

.field private mInstructionsPreference:Lcom/coloros/systemui/notification/envelope/view/InstructionsPreference;

.field private mSoundPref:Lcom/color/support/preference/ColorSwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/coloros/systemui/common/settings/BaseSettingsFragment;-><init>()V

    .line 53
    new-instance v0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment$1;-><init>(Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;)V

    iput-object v0, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->mEnvelopeEnableObserver:Lcom/coloros/systemui/common/observer/AbstractObserver;

    .line 63
    new-instance v0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment$2;-><init>(Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;)V

    iput-object v0, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->mEnvelopeCountChangeObserver:Lcom/coloros/systemui/common/observer/AbstractObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;)Lcom/color/support/preference/ColorSwitchPreference;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->mEnvelopePref:Lcom/color/support/preference/ColorSwitchPreference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;)Lcom/coloros/systemui/notification/envelope/view/EnvelopeDetectPreference;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->mDetectPref:Lcom/coloros/systemui/notification/envelope/view/EnvelopeDetectPreference;

    return-object p0
.end method

.method private initPreferences()V
    .locals 5

    .line 115
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "envelope_detect_preference"

    .line 116
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/coloros/systemui/notification/envelope/view/EnvelopeDetectPreference;

    iput-object v1, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->mDetectPref:Lcom/coloros/systemui/notification/envelope/view/EnvelopeDetectPreference;

    const-string v1, "envelope_assistant"

    .line 117
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/color/support/preference/ColorSwitchPreference;

    iput-object v1, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->mEnvelopePref:Lcom/color/support/preference/ColorSwitchPreference;

    .line 118
    iget-object v1, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->mEnvelopePref:Lcom/color/support/preference/ColorSwitchPreference;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 119
    iget-object v4, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeSettingsValueProxy;->getEnvelopeAssistantEnable(Landroid/content/Context;)I

    move-result v4

    if-ne v4, v3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Lcom/color/support/preference/ColorSwitchPreference;->setChecked(Z)V

    .line 120
    iget-object v1, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->mEnvelopePref:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {v1, p0}, Lcom/color/support/preference/ColorSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    const-string v1, "envelope_notice_sound"

    .line 122
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/color/support/preference/ColorSwitchPreference;

    iput-object v1, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->mSoundPref:Lcom/color/support/preference/ColorSwitchPreference;

    .line 123
    iget-object v1, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->mSoundPref:Lcom/color/support/preference/ColorSwitchPreference;

    if-eqz v1, :cond_3

    .line 124
    iget-object v4, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeSettingsValueProxy;->getEnvelopeNoticeSoundEnable(Landroid/content/Context;)I

    move-result v4

    if-ne v4, v3, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    invoke-virtual {v1, v4}, Lcom/color/support/preference/ColorSwitchPreference;->setChecked(Z)V

    .line 125
    iget-object v1, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->mSoundPref:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {v1, p0}, Lcom/color/support/preference/ColorSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3
    const-string v1, "envelope_auto_open"

    .line 127
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/color/support/preference/ColorSwitchPreference;

    iput-object v0, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->mAutoOpenPref:Lcom/color/support/preference/ColorSwitchPreference;

    .line 128
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->mAutoOpenPref:Lcom/color/support/preference/ColorSwitchPreference;

    if-eqz v0, :cond_5

    .line 129
    iget-object v1, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeSettingsValueProxy;->getEnvelopeAutoOpenEnable(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v3, :cond_4

    move v2, v3

    :cond_4
    invoke-virtual {v0, v2}, Lcom/color/support/preference/ColorSwitchPreference;->setChecked(Z)V

    .line 130
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->mAutoOpenPref:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/color/support/preference/ColorSwitchPreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_5
    return-void
.end method

.method public static newInstance()Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;
    .locals 2

    .line 75
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 77
    new-instance v1, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;

    invoke-direct {v1}, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;-><init>()V

    .line 78
    invoke-virtual {v1, v0}, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method private playSound()V
    .locals 9

    .line 172
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Notification"

    const-string v0, "EnvelopeSettingsFragment"

    const-string v1, "Envelope--current ring volume is 0, don\'t play the envelope sound"

    .line 174
    invoke-static {p0, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 177
    :cond_0
    iget-object v2, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->mEnvelopeSound:Landroid/media/SoundPool;

    iget v3, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->mEnvelopeSoundID:I

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    return-void
.end method

.method private register()V
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->mEnvelopeEnableObserver:Lcom/coloros/systemui/common/observer/AbstractObserver;

    iget-object v1, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/coloros/systemui/common/observer/AbstractObserver;->registerForUserSwitch(Landroid/content/Context;Z)V

    .line 183
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->mEnvelopeCountChangeObserver:Lcom/coloros/systemui/common/observer/AbstractObserver;

    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, v2}, Lcom/coloros/systemui/common/observer/AbstractObserver;->registerForUserSwitch(Landroid/content/Context;Z)V

    return-void
.end method

.method private unregister()V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->mEnvelopeEnableObserver:Lcom/coloros/systemui/common/observer/AbstractObserver;

    iget-object v1, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/common/observer/AbstractObserver;->unregister(Landroid/content/Context;)V

    .line 188
    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->mEnvelopeCountChangeObserver:Lcom/coloros/systemui/common/observer/AbstractObserver;

    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/common/observer/AbstractObserver;->unregister(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getTitle()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->mContext:Landroid/content/Context;

    const v0, 0x7f110327

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 84
    invoke-super {p0, p1}, Lcom/coloros/systemui/common/settings/BaseSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 85
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->mContext:Landroid/content/Context;

    const p1, 0x7f150001

    .line 86
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->addPreferencesFromResource(I)V

    .line 87
    new-instance p1, Landroid/media/SoundPool;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p1, v0, v0, v1}, Landroid/media/SoundPool;-><init>(III)V

    iput-object p1, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->mEnvelopeSound:Landroid/media/SoundPool;

    .line 88
    iget-object p1, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->mEnvelopeSound:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f100003

    invoke-virtual {p1, v1, v2, v0}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->mEnvelopeSoundID:I

    .line 89
    iget-object p1, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->mAudioManager:Landroid/media/AudioManager;

    .line 90
    invoke-direct {p0}, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->register()V

    .line 91
    new-instance p1, Lcom/coloros/systemui/notification/envelope/view/InstructionsPreference;

    iget-object v0, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/coloros/systemui/notification/envelope/view/InstructionsPreference;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->mInstructionsPreference:Lcom/coloros/systemui/notification/envelope/view/InstructionsPreference;

    .line 92
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->mInstructionsPreference:Lcom/coloros/systemui/notification/envelope/view/InstructionsPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->unregister()V

    .line 100
    invoke-super {p0}, Lcom/coloros/systemui/common/settings/BaseSettingsFragment;->onDestroy()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .line 136
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 137
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 138
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x4e983309

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x7026f92f

    if-eq v0, v1, :cond_1

    const v1, 0x7df0bd2b    # 3.9999617E37f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "envelope_auto_open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v3

    goto :goto_1

    :cond_1
    const-string v0, "envelope_assistant"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v2

    goto :goto_1

    :cond_2
    const-string v0, "envelope_notice_sound"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    move p1, v4

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_7

    if-eq p1, v4, :cond_5

    if-eq p1, v3, :cond_4

    goto :goto_2

    .line 160
    :cond_4
    iget-object p1, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->mAutoOpenPref:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {p1, p2}, Lcom/color/support/preference/ColorSwitchPreference;->setChecked(Z)V

    .line 164
    iget-object p1, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeSettingsValueProxy;->setEnvelopeAutoOpenEnable(Landroid/content/Context;I)V

    .line 165
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->mContext:Landroid/content/Context;

    const-string p1, "envelope_auto_open_option"

    invoke-static {p0, p1, p2}, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->collectEnvelopeStatusChanged(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_2

    :cond_5
    if-eqz p2, :cond_6

    .line 150
    invoke-direct {p0}, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->playSound()V

    .line 152
    :cond_6
    iget-object p1, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->mSoundPref:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {p1, p2}, Lcom/color/support/preference/ColorSwitchPreference;->setChecked(Z)V

    .line 156
    iget-object p1, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeSettingsValueProxy;->setEnvelopeNoticeSoundEnable(Landroid/content/Context;I)V

    .line 157
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->mContext:Landroid/content/Context;

    const-string p1, "envelope_sound_option"

    invoke-static {p0, p1, p2}, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->collectEnvelopeStatusChanged(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_2

    .line 140
    :cond_7
    iget-object p1, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->mEnvelopePref:Lcom/color/support/preference/ColorSwitchPreference;

    invoke-virtual {p1, p2}, Lcom/color/support/preference/ColorSwitchPreference;->setChecked(Z)V

    .line 144
    iget-object p1, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/coloros/systemui/notification/envelope/proxy/EnvelopeSettingsValueProxy;->setEnvelopeAssistantEnable(Landroid/content/Context;I)V

    .line 145
    iget-object p1, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "envelope_assistant_enable"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 146
    iget-object p0, p0, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->mContext:Landroid/content/Context;

    const-string p1, "envelope_settings_option"

    invoke-static {p0, p1, p2}, Lcom/coloros/systemui/notification/util/NotificationStatisticUtil;->collectEnvelopeStatusChanged(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_2
    return v2
.end method

.method public onResume()V
    .locals 0

    .line 105
    invoke-super {p0}, Lcom/coloros/systemui/common/settings/BaseSettingsFragment;->onResume()V

    .line 106
    invoke-direct {p0}, Lcom/coloros/systemui/notification/envelope/settings/EnvelopeSettingsFragment;->initPreferences()V

    return-void
.end method
