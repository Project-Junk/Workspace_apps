.class public Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;
.super Lcom/android/settings/accessibility/CaptionPropertiesFragment;
.source "ColorCaptionPropertiesFragment.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/coloros/settings/b;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private h:Landroidx/preference/PreferenceCategory;

.field private i:Landroidx/preference/TwoStatePreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 198
    new-instance v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment$2;

    invoke-direct {v0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment$2;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;-><init>()V

    return-void
.end method

.method private a(Landroidx/preference/PreferenceCategory;)V
    .locals 2

    .line 179
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "custom"

    .line 181
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;->g:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 184
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method private a(Landroidx/preference/PreferenceCategory;Z)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 171
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;->b(Landroidx/preference/PreferenceCategory;)V

    return-void

    .line 173
    :cond_0
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;->a(Landroidx/preference/PreferenceCategory;)V

    :cond_1
    return-void
.end method

.method private synthetic a(ZLandroid/content/ContentResolver;)V
    .locals 3

    .line 148
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "enable_captioning"

    invoke-static {v0, v2, p1, v1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    const-string v0, "accessibility_captioning_enabled"

    .line 149
    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 151
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;->h:Landroidx/preference/PreferenceCategory;

    if-eqz p2, :cond_0

    .line 152
    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceCategory;->setEnabled(Z)V

    .line 154
    :cond_0
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;->g:Landroidx/preference/PreferenceCategory;

    if-eqz p2, :cond_1

    .line 155
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;->g:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceCategory;->setEnabled(Z)V

    .line 157
    :cond_1
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;->b:Lcom/android/internal/widget/SubtitleView;

    if-eqz p2, :cond_3

    .line 158
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;->b:Lcom/android/internal/widget/SubtitleView;

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {p2, v1}, Lcom/android/internal/widget/SubtitleView;->setVisibility(I)V

    .line 160
    :cond_3
    iget-object p2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;->h:Landroidx/preference/PreferenceCategory;

    invoke-direct {p0, p2, p1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;->a(Landroidx/preference/PreferenceCategory;Z)V

    .line 161
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;->a()V

    return-void
.end method

.method private b(Landroidx/preference/PreferenceCategory;)V
    .locals 2

    .line 189
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "standard"

    .line 190
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-nez v1, :cond_0

    .line 191
    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 192
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;->a:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {p1}, Landroid/view/accessibility/CaptioningManager;->getRawUserStyle()I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 193
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;->g:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method public static synthetic lambda$fS3HE7Xm3WxJZcdjbmigkZrW5rE(Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;ZLandroid/content/ContentResolver;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;->a(ZLandroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 0

    .line 82
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;->b()V

    return-void
.end method

.method public final d()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;->c:Lcom/android/settings/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$a;)V

    return-void
.end method

.method public final e()V
    .locals 2

    .line 92
    invoke-super {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->e()V

    .line 93
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;->a:Landroid/view/accessibility/CaptioningManager;

    invoke-virtual {v0}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v0

    const-string v1, "enable_captioning"

    .line 94
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/TwoStatePreference;

    iput-object v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;->i:Landroidx/preference/TwoStatePreference;

    .line 95
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;->i:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    const-string v1, "standard"

    .line 96
    invoke-virtual {p0, v1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;->h:Landroidx/preference/PreferenceCategory;

    .line 97
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;->h:Landroidx/preference/PreferenceCategory;

    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceCategory;->setEnabled(Z)V

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;->g:Landroidx/preference/PreferenceCategory;

    if-eqz v1, :cond_1

    .line 101
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;->g:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceCategory;->setEnabled(Z)V

    .line 103
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;->i:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 104
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;->d:Lcom/android/settings/accessibility/ColorPreference;

    instance-of v0, v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorOSColorPreference;

    if-eqz v0, :cond_2

    .line 105
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;->d:Lcom/android/settings/accessibility/ColorPreference;

    check-cast v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorOSColorPreference;

    sget v1, Lcom/coloros/settings/feature/othersettings/accessibility/ColorOSColorPreference$a;->b:I

    .line 1065
    iput v1, v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorOSColorPreference;->g:I

    .line 107
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;->e:Lcom/android/settings/accessibility/ColorPreference;

    instance-of v0, v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorOSColorPreference;

    if-eqz v0, :cond_3

    .line 108
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;->e:Lcom/android/settings/accessibility/ColorPreference;

    check-cast v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorOSColorPreference;

    sget v1, Lcom/coloros/settings/feature/othersettings/accessibility/ColorOSColorPreference$a;->b:I

    .line 2065
    iput v1, v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorOSColorPreference;->g:I

    .line 110
    :cond_3
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;->f:Lcom/android/settings/accessibility/ColorPreference;

    instance-of v0, v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorOSColorPreference;

    if-eqz v0, :cond_4

    .line 111
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;->f:Lcom/android/settings/accessibility/ColorPreference;

    check-cast v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorOSColorPreference;

    sget v1, Lcom/coloros/settings/feature/othersettings/accessibility/ColorOSColorPreference$a;->b:I

    .line 3065
    iput v1, v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorOSColorPreference;->g:I

    :cond_4
    return-void
.end method

.method public final f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final g()I
    .locals 1

    const v0, 0x7f150042

    return v0
.end method

.method public isSpecialHighlightClass()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;->h:Landroidx/preference/PreferenceCategory;

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;->i:Landroidx/preference/TwoStatePreference;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;->a(Landroidx/preference/PreferenceCategory;Z)V

    .line 63
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/coloros/settings/utils/az;->a(Landroid/app/Activity;Landroidx/recyclerview/widget/RecyclerView;Z)V

    .line 64
    invoke-virtual {p0, p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;->a(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 69
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 73
    instance-of p2, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz p2, :cond_0

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    const/4 p3, 0x1

    iput-boolean p3, p2, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    :cond_0
    return-object p1
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 144
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;->i:Landroidx/preference/TwoStatePreference;

    if-ne v1, p1, :cond_0

    .line 146
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 147
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/coloros/settings/feature/othersettings/accessibility/-$$Lambda$ColorCaptionPropertiesFragment$fS3HE7Xm3WxJZcdjbmigkZrW5rE;

    invoke-direct {v1, p0, p1, v0}, Lcom/coloros/settings/feature/othersettings/accessibility/-$$Lambda$ColorCaptionPropertiesFragment$fS3HE7Xm3WxJZcdjbmigkZrW5rE;-><init>(Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;ZLandroid/content/ContentResolver;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {p2, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    return p1

    .line 165
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 4

    .line 117
    invoke-super {p0}, Lcom/android/settings/accessibility/CaptionPropertiesFragment;->onResume()V

    .line 118
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment$1;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment$1;-><init>(Lcom/coloros/settings/feature/othersettings/accessibility/ColorCaptionPropertiesFragment;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
