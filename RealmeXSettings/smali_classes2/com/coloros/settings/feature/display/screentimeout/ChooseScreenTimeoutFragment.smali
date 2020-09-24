.class public Lcom/coloros/settings/feature/display/screentimeout/ChooseScreenTimeoutFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ChooseScreenTimeoutFragment.java"


# instance fields
.field a:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

.field private b:[Ljava/lang/String;

.field private c:[Ljava/lang/String;

.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private a(I)V
    .locals 5

    .line 127
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screentimeout/ChooseScreenTimeoutFragment;->a:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    invoke-virtual {v0}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 129
    iget-object v3, p0, Lcom/coloros/settings/feature/display/screentimeout/ChooseScreenTimeoutFragment;->a:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    invoke-virtual {v3, v2}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 130
    instance-of v4, v3, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    if-eqz v4, :cond_0

    .line 131
    invoke-virtual {v3}, Landroidx/preference/Preference;->getOrder()I

    move-result v4

    if-eq p1, v4, :cond_0

    .line 132
    check-cast v3, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    invoke-virtual {v3, v1}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setChecked(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic a(Landroidx/preference/Preference;)Z
    .locals 5

    .line 109
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/coloros/settings/feature/display/screentimeout/ChooseScreenTimeoutFragment;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 110
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/coloros/settings/feature/display/screentimeout/ChooseScreenTimeoutFragment;->d:J

    .line 111
    invoke-virtual {p1}, Landroidx/preference/Preference;->getOrder()I

    move-result p1

    .line 112
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screentimeout/ChooseScreenTimeoutFragment;->c:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 113
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screentimeout/ChooseScreenTimeoutFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 115
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screentimeout/ChooseScreenTimeoutFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    .line 1160
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 2082
    invoke-static {v2, v3, v0, v1}, Lcom/oppo/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2083
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "onEvent eventID="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " eventTAG="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Settings Statistics"

    invoke-static {v2, v0}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/screentimeout/ChooseScreenTimeoutFragment;->a(I)V

    .line 117
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screentimeout/ChooseScreenTimeoutFragment;->finish()V

    :cond_0
    return v1
.end method

.method public static synthetic lambda$COjcmFYe9fRzYj6yocxCJ1VFq4Q(Lcom/coloros/settings/feature/display/screentimeout/ChooseScreenTimeoutFragment;Landroidx/preference/Preference;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/display/screentimeout/ChooseScreenTimeoutFragment;->a(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xfa

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screentimeout/ChooseScreenTimeoutFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f120f53

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    .line 56
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screentimeout/ChooseScreenTimeoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0300cb

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/display/screentimeout/ChooseScreenTimeoutFragment;->b:[Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screentimeout/ChooseScreenTimeoutFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0300cc

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/display/screentimeout/ChooseScreenTimeoutFragment;->c:[Ljava/lang/String;

    const p1, 0x7f1500f5

    .line 60
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/display/screentimeout/ChooseScreenTimeoutFragment;->addPreferencesFromResource(I)V

    .line 61
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screentimeout/ChooseScreenTimeoutFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    .line 62
    new-instance v0, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screentimeout/ChooseScreenTimeoutFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/display/screentimeout/ChooseScreenTimeoutFragment;->a:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    .line 64
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screentimeout/ChooseScreenTimeoutFragment;->a:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    invoke-virtual {v0}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->a()V

    .line 65
    iget-object v0, p0, Lcom/coloros/settings/feature/display/screentimeout/ChooseScreenTimeoutFragment;->a:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 69
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screentimeout/ChooseScreenTimeoutFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 70
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screentimeout/ChooseScreenTimeoutFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/settings/utils/al;->at(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0xea60

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x7530

    :goto_0
    const-string v2, "screen_off_timeout"

    .line 68
    invoke-static {p1, v2, v0, v1}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 74
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screentimeout/ChooseScreenTimeoutFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v2, "device_policy"

    invoke-virtual {p1, v2}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    if-eqz p1, :cond_1

    const-string p1, "ChooseScreenTimeoutFragment"

    const-string v2, "onCreate maxTimeout9223372036854775807"

    .line 88
    invoke-static {p1, v2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    move v2, p1

    .line 91
    :goto_1
    iget-object v3, p0, Lcom/coloros/settings/feature/display/screentimeout/ChooseScreenTimeoutFragment;->b:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_4

    .line 92
    iget-object v3, p0, Lcom/coloros/settings/feature/display/screentimeout/ChooseScreenTimeoutFragment;->c:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    .line 94
    new-instance v5, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/screentimeout/ChooseScreenTimeoutFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;-><init>(Landroid/content/Context;)V

    .line 95
    iget-object v6, p0, Lcom/coloros/settings/feature/display/screentimeout/ChooseScreenTimeoutFragment;->b:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setTitle(Ljava/lang/CharSequence;)V

    const v6, 0x7f0d00a7

    .line 96
    invoke-virtual {v5, v6}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setLayoutResource(I)V

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v6, v3, v6

    if-gtz v6, :cond_2

    .line 98
    iget-object v6, p0, Lcom/coloros/settings/feature/display/screentimeout/ChooseScreenTimeoutFragment;->a:Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;

    invoke-virtual {v6, v5}, Lcom/coloros/settings/widget/preference/SettingsColorPreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    :cond_2
    cmp-long v3, v0, v3

    if-nez v3, :cond_3

    const/4 v3, 0x1

    .line 102
    invoke-virtual {v5, v3}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setChecked(Z)V

    goto :goto_2

    .line 104
    :cond_3
    invoke-virtual {v5, p1}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setChecked(Z)V

    .line 107
    :goto_2
    new-instance v3, Lcom/coloros/settings/feature/display/screentimeout/-$$Lambda$ChooseScreenTimeoutFragment$COjcmFYe9fRzYj6yocxCJ1VFq4Q;

    invoke-direct {v3, p0}, Lcom/coloros/settings/feature/display/screentimeout/-$$Lambda$ChooseScreenTimeoutFragment$COjcmFYe9fRzYj6yocxCJ1VFq4Q;-><init>(Lcom/coloros/settings/feature/display/screentimeout/ChooseScreenTimeoutFragment;)V

    invoke-virtual {v5, v3}, Lcom/coloros/settings/widget/preference/SettingsColorMarkPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 139
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    return-void
.end method
