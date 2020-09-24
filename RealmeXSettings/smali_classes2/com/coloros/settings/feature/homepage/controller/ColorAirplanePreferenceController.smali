.class public Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "ColorAirplanePreferenceController.java"

# interfaces
.implements Lcom/android/settings/a$a;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/d;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController$a;
    }
.end annotation


# static fields
.field private static final DELAY_TIME:I = 0xbb8

.field private static final EXIT_ECM_RESULT:Ljava/lang/String; = "exit_ecm_result"

.field private static final KEY_TOGGLE_AIRPLANE:Ljava/lang/String; = "toggle_airplane"

.field private static final MSG_CHANGE:I = 0x1

.field public static final REQUEST_CODE_EXIT_ECM:I = 0x1


# instance fields
.field private mAirplaneModeEnabler:Lcom/android/settings/a;

.field private mAirplaneModePreference:Lcom/color/support/preference/ColorSwitchLoadingPreference;

.field private mHandler:Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController$a;

.field private mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

.field private mResumed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "toggle_airplane"

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->mResumed:Z

    .line 64
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/b;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/d;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

    .line 65
    new-instance v0, Lcom/android/settings/a;

    iget-object v1, p0, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/d;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/settings/a;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/instrumentation/d;Lcom/android/settings/a$a;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->mAirplaneModeEnabler:Lcom/android/settings/a;

    .line 66
    new-instance v0, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController$a;

    invoke-direct {v0, p0, p1}, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController$a;-><init>(Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;B)V

    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->mHandler:Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController$a;

    return-void
.end method

.method static synthetic access$100(Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;Z)Z
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->interceptEnableAirplaneMode(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;)Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController$a;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->mHandler:Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController$a;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;)Lcom/android/settings/a;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->mAirplaneModeEnabler:Lcom/android/settings/a;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;)Lcom/color/support/preference/ColorSwitchLoadingPreference;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->mAirplaneModePreference:Lcom/color/support/preference/ColorSwitchLoadingPreference;

    return-object p0
.end method

.method static synthetic access$500(Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->stopLoading()V

    return-void
.end method

.method private interceptEnableAirplaneMode(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 213
    invoke-static {}, Lcom/coloros/settings/utils/bh;->A()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/coloros/settings/utils/bb;->h(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 214
    new-instance p1, Landroid/content/Intent;

    const-string v0, "coloros.intent.action.AIRPLANEMODE_CONFIRM"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.android.systemui"

    .line 215
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .locals 1

    .line 178
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f05003f

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 179
    invoke-static {}, Lcom/coloros/settings/utils/bh;->v()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isLoading()Z
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->mAirplaneModePreference:Lcom/color/support/preference/ColorSwitchLoadingPreference;

    .line 4232
    iget-object v0, v0, Lcom/color/support/preference/ColorSwitchLoadingPreference;->a:Landroid/view/View;

    .line 191
    instance-of v1, v0, Lcom/color/support/widget/ColorSwitch;

    if-eqz v1, :cond_0

    .line 192
    check-cast v0, Lcom/color/support/widget/ColorSwitch;

    .line 193
    invoke-virtual {v0}, Lcom/color/support/widget/ColorSwitch;->isLoading()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setOnLoadingStateChangedListener()V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->mAirplaneModePreference:Lcom/color/support/preference/ColorSwitchLoadingPreference;

    new-instance v1, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController$1;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController$1;-><init>(Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;)V

    .line 1242
    iput-object v1, v0, Lcom/color/support/preference/ColorSwitchLoadingPreference;->b:Lcom/color/support/widget/ColorSwitch$OnLoadingStateChangedListener;

    .line 1243
    iget-object v2, v0, Lcom/color/support/preference/ColorSwitchLoadingPreference;->a:Landroid/view/View;

    instance-of v2, v2, Lcom/color/support/widget/ColorSwitch;

    if-eqz v2, :cond_0

    .line 1244
    iget-object v0, v0, Lcom/color/support/preference/ColorSwitchLoadingPreference;->a:Landroid/view/View;

    check-cast v0, Lcom/color/support/widget/ColorSwitch;

    .line 1245
    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorSwitch;->setOnLoadingStateChangedListener(Lcom/color/support/widget/ColorSwitch$OnLoadingStateChangedListener;)V

    :cond_0
    return-void
.end method

.method private stopLoading()V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->mAirplaneModePreference:Lcom/color/support/preference/ColorSwitchLoadingPreference;

    .line 3232
    iget-object v0, v0, Lcom/color/support/preference/ColorSwitchLoadingPreference;->a:Landroid/view/View;

    .line 184
    instance-of v1, v0, Lcom/color/support/widget/ColorSwitch;

    if-eqz v1, :cond_0

    .line 185
    check-cast v0, Lcom/color/support/widget/ColorSwitch;

    .line 186
    invoke-virtual {v0}, Lcom/color/support/widget/ColorSwitch;->stopLoading()V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 76
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 77
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/color/support/preference/ColorSwitchLoadingPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->mAirplaneModePreference:Lcom/color/support/preference/ColorSwitchLoadingPreference;

    .line 78
    invoke-direct {p0}, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->setOnLoadingStateChangedListener()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 158
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "ril.cdma.inecmmode"

    .line 159
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 160
    iget-object p1, p0, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    const/4 v2, 0x0

    const-string v3, "com.android.internal.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return v0

    .line 166
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public isChecked()Z
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->mAirplaneModeEnabler:Lcom/android/settings/a;

    .line 2149
    iget-object v0, v0, Lcom/android/settings/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/m;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    const-string p2, "exit_ecm_result"

    .line 171
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 173
    iget-object p2, p0, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->mAirplaneModeEnabler:Lcom/android/settings/a;

    iget-object p3, p0, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->mAirplaneModePreference:Lcom/color/support/preference/ColorSwitchLoadingPreference;

    invoke-virtual {p3}, Lcom/color/support/preference/ColorSwitchLoadingPreference;->isChecked()Z

    move-result p3

    invoke-virtual {p2, p1, p3}, Lcom/android/settings/a;->a(ZZ)V

    :cond_0
    return-void
.end method

.method public onAirplaneModeChanged(Z)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->mAirplaneModePreference:Lcom/color/support/preference/ColorSwitchLoadingPreference;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->mAirplaneModePreference:Lcom/color/support/preference/ColorSwitchLoadingPreference;

    invoke-virtual {v0, p1}, Lcom/color/support/preference/ColorSwitchLoadingPreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->mHandler:Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 143
    invoke-virtual {v0, v1}, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController$a;->removeMessages(I)V

    const/4 v0, 0x0

    .line 144
    iput-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->mHandler:Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController$a;

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 132
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-boolean v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->mResumed:Z

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->mAirplaneModeEnabler:Lcom/android/settings/a;

    invoke-virtual {v0}, Lcom/android/settings/a;->b()V

    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->mResumed:Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 119
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    iget-boolean v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->mResumed:Z

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/custom/b;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->mAirplaneModePreference:Lcom/color/support/preference/ColorSwitchLoadingPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/color/support/preference/ColorSwitchLoadingPreference;->setEnabled(Z)V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->mAirplaneModeEnabler:Lcom/android/settings/a;

    invoke-virtual {v0}, Lcom/android/settings/a;->a()V

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->mResumed:Z

    :cond_1
    return-void
.end method

.method public setChecked(Z)Z
    .locals 2

    .line 108
    invoke-virtual {p0}, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->isChecked()Z

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/homepage/controller/ColorAirplanePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "toggle_airplane"

    .line 2240
    invoke-static {v0, v1, v1, p1}, Lcom/coloros/settings/utils/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
