.class public Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment;
.super Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;
.source "ColorToggleScreenMagnificationPreferenceFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private final l:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 129
    new-instance v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment$3;

    invoke-direct {v0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment$3;-><init>()V

    sput-object v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;-><init>()V

    .line 109
    new-instance v0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment$2;-><init>(Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment;->l:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment;)Lcom/android/settings/widget/SwitchBar;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment;->c:Lcom/android/settings/widget/SwitchBar;

    return-object p0
.end method

.method static synthetic b(Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment;->f()V

    return-void
.end method

.method private f()V
    .locals 3

    .line 117
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "accessibility_display_magnification_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment;->h:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    if-eqz v0, :cond_1

    .line 120
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment;->h:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment;->d:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v1, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment$1;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment$1;-><init>(Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$a;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 2

    .line 96
    invoke-super {p0, p1, p2}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->a(Ljava/lang/String;Z)V

    .line 97
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "screen_magnification"

    const/4 v1, 0x0

    invoke-static {p1, v0, p2, v1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public final c()V
    .locals 2

    .line 51
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->c()V

    .line 52
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment;->e:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    .line 53
    invoke-static {v0, v1}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 55
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment;->b:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment;->b:Landroidx/preference/Preference;

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 61
    :goto_0
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment;->f()V

    return-void
.end method

.method public final i_()V
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment;->f()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 45
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    iget-object p1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment;->h:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    const-string v0, "screen_magnification"

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setKey(Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 72
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->onPause()V

    .line 1106
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment;->l:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 66
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;->onResume()V

    const-string v0, "accessibility_display_magnification_enabled"

    .line 1101
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1102
    invoke-virtual {p0}, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/settings/feature/othersettings/accessibility/ColorToggleScreenMagnificationPreferenceFragment;->l:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
