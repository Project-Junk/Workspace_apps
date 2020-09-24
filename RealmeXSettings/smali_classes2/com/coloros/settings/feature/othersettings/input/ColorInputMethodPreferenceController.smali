.class public Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController;
.super Lcom/android/settings/core/a;
.source "ColorInputMethodPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController$a;
    }
.end annotation


# static fields
.field public static final KEY_CURRENT_INPUT_METHOD:Ljava/lang/String; = "current_input_method"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mInputMethodSettingValues:Lcom/coloros/settings/feature/othersettings/input/c;

.field private mPreference:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field private mSettingsObserver:Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/coloros/settings/feature/othersettings/input/c;)V
    .locals 2

    const-string v0, "current_input_method"

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController;->mActivity:Landroid/app/Activity;

    .line 51
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 52
    iput-object p3, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController;->mInputMethodSettingValues:Lcom/coloros/settings/feature/othersettings/input/c;

    .line 53
    new-instance p3, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController$a;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p3, p0, v0, p1}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController$a;-><init>(Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController;->mSettingsObserver:Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController$a;

    if-eqz p2, :cond_0

    .line 55
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController;)Lcom/coloros/settings/feature/othersettings/input/c;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController;->mInputMethodSettingValues:Lcom/coloros/settings/feature/othersettings/input/c;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController;->updateCurrentImeName()V

    return-void
.end method

.method private updateCurrentImeName()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController;->mPreference:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController;->mInputMethodSettingValues:Lcom/coloros/settings/feature/othersettings/input/c;

    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/othersettings/input/c;->b(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 97
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 98
    monitor-enter p0

    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController;->mPreference:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {v1, v0}, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;->b(Ljava/lang/CharSequence;)V

    .line 100
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 62
    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "current_input_method"

    .line 63
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController;->mPreference:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 73
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "current_input_method"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    .line 79
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController;->mSettingsObserver:Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController$a;

    .line 1130
    iget-object v1, v0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController$a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 84
    iget-object v0, p0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController;->mSettingsObserver:Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController$a;

    .line 1122
    iget-object v1, v0, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController$a;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_input_method"

    .line 1124
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    .line 1123
    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string v2, "selected_input_method_subtype"

    .line 1125
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 85
    invoke-direct {p0}, Lcom/coloros/settings/feature/othersettings/input/ColorInputMethodPreferenceController;->updateCurrentImeName()V

    return-void
.end method
