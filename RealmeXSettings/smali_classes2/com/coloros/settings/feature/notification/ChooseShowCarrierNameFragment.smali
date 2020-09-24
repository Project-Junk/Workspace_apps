.class public Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ChooseShowCarrierNameFragment.java"


# instance fields
.field private a:[Ljava/lang/String;

.field private b:[I

.field private c:Landroidx/preference/PreferenceCategory;

.field private d:J

.field private e:Landroid/content/IntentFilter;

.field private final f:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 131
    new-instance v0, Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment$2;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment$2;-><init>(Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment;->f:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment;)J
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment;->d:J

    return-wide v0
.end method

.method static synthetic a(Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment;J)J
    .locals 0

    .line 41
    iput-wide p1, p0, Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment;->d:J

    return-wide p1
.end method

.method static synthetic a(Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment;I)V
    .locals 5

    .line 1121
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment;->c:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1123
    iget-object v3, p0, Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment;->c:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroidx/preference/PreferenceCategory;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1124
    instance-of v4, v3, Lcom/coloros/settings/widget/preference/ColorMarkPreference;

    if-eqz v4, :cond_0

    .line 1125
    invoke-virtual {v3}, Landroidx/preference/Preference;->getOrder()I

    move-result v4

    if-eq p1, v4, :cond_0

    .line 1126
    check-cast v3, Lcom/coloros/settings/widget/preference/ColorMarkPreference;

    invoke-virtual {v3, v1}, Lcom/coloros/settings/widget/preference/ColorMarkPreference;->setChecked(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment;)Landroid/content/ContentResolver;
    .locals 0

    .line 41
    invoke-virtual {p0}, Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment;)[I
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment;->b:[I

    return-object p0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xfa

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const v0, 0x7f120f3a

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    const/4 p1, 0x3

    .line 57
    new-array v0, p1, [Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/coloros/settings/utils/bb;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 59
    invoke-virtual {p0}, Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/coloros/settings/utils/bb;->b(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 60
    invoke-virtual {p0}, Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f120f7f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment;->a:[Ljava/lang/String;

    .line 63
    new-array p1, p1, [I

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment;->b:[I

    const p1, 0x7f1500b6

    .line 68
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment;->addPreferencesFromResource(I)V

    .line 69
    invoke-virtual {p0}, Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    .line 70
    new-instance v0, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment;->c:Landroidx/preference/PreferenceCategory;

    .line 71
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment;->c:Landroidx/preference/PreferenceCategory;

    const v1, 0x7f0d00aa

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->setLayoutResource(I)V

    .line 72
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment;->c:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 74
    invoke-virtual {p0}, Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "carrier_info_settings_show"

    const/4 v1, -0x2

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    move v0, v2

    .line 77
    :goto_0
    iget-object v1, p0, Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment;->a:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 78
    iget-object v1, p0, Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment;->b:[I

    aget v1, v1, v0

    .line 80
    new-instance v4, Lcom/coloros/settings/widget/preference/ColorMarkPreference;

    .line 81
    invoke-virtual {p0}, Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/coloros/settings/widget/preference/ColorMarkPreference;-><init>(Landroid/content/Context;)V

    .line 82
    iget-object v5, p0, Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment;->a:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Lcom/coloros/settings/widget/preference/ColorMarkPreference;->setTitle(Ljava/lang/CharSequence;)V

    const v5, 0x7f0d00a7

    .line 86
    invoke-virtual {v4, v5}, Lcom/coloros/settings/widget/preference/ColorMarkPreference;->setLayoutResource(I)V

    .line 88
    iget-object v5, p0, Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment;->c:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v5, v4}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    if-ne p1, v1, :cond_0

    .line 90
    invoke-virtual {v4, v3}, Lcom/coloros/settings/widget/preference/ColorMarkPreference;->setChecked(Z)V

    goto :goto_1

    .line 92
    :cond_0
    invoke-virtual {v4, v2}, Lcom/coloros/settings/widget/preference/ColorMarkPreference;->setChecked(Z)V

    .line 95
    :goto_1
    new-instance v1, Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment$1;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment$1;-><init>(Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment;)V

    invoke-virtual {v4, v1}, Lcom/coloros/settings/widget/preference/ColorMarkPreference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_1
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "oppo.intent.action.SIM_INFO_UPDATE"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment;->e:Landroid/content/IntentFilter;

    .line 115
    iget-object p1, p0, Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment;->e:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    iget-object p1, p0, Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment;->e:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    iget-object p1, p0, Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment;->e:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.SERVICE_STATE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        -0x1
    .end array-data
.end method

.method public onPause()V
    .locals 2

    .line 158
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 159
    invoke-virtual {p0}, Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 152
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 153
    invoke-virtual {p0}, Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment;->f:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/coloros/settings/feature/notification/ChooseShowCarrierNameFragment;->e:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
