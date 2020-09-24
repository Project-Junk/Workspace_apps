.class public Lcom/coloros/settings/feature/display/controller/ColorTailuePreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "ColorTailuePreferenceController.java"


# static fields
.field public static final KEY_TAI_LUE_SUPPORT:Ljava/lang/String; = "tai_lue_support"


# instance fields
.field private mTailueFontPackage:Ljava/lang/String;

.field private mTailuePreference:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "tai_lue_support"

    .line 21
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 27
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 28
    invoke-virtual {p0}, Lcom/coloros/settings/feature/display/controller/ColorTailuePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/display/controller/ColorTailuePreferenceController;->mTailuePreference:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ColorTailuePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/bj;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/feature/display/controller/ColorTailuePreferenceController;->mTailueFontPackage:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ColorTailuePreferenceController;->mTailueFontPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ColorTailuePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/s;->a(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$setChecked$0$ColorTailuePreferenceController(Z)V
    .locals 1

    .line 45
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/ColorTailuePreferenceController;->mTailuePreference:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setEnabled(Z)V

    .line 46
    iget-object p1, p0, Lcom/coloros/settings/feature/display/controller/ColorTailuePreferenceController;->mTailuePreference:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ColorTailuePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/s;->a(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setChecked(Z)V

    return-void
.end method

.method public setChecked(Z)Z
    .locals 4

    .line 38
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ColorTailuePreferenceController;->mTailuePreference:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ColorTailuePreferenceController;->mTailueFontPackage:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_1

    .line 41
    :cond_0
    new-instance v0, Lcom/coloros/settings/utils/d;

    iget-object v2, p0, Lcom/coloros/settings/feature/display/controller/ColorTailuePreferenceController;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/coloros/settings/feature/display/controller/ColorTailuePreferenceController;->mTailueFontPackage:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v3, "com.monotype.android.font.system.default.font"

    :goto_0
    invoke-direct {v0, v2, v3}, Lcom/coloros/settings/utils/d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    iget-object v2, p0, Lcom/coloros/settings/feature/display/controller/ColorTailuePreferenceController;->mTailuePreference:Lcom/coloros/settings/widget/preference/SettingSwitchPreference;

    invoke-virtual {v2, v1}, Lcom/coloros/settings/widget/preference/SettingSwitchPreference;->setEnabled(Z)V

    .line 44
    new-instance v2, Lcom/coloros/settings/feature/display/controller/-$$Lambda$ColorTailuePreferenceController$6UXaKov5sG5Bjdm1iCEv3shzjh0;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/display/controller/-$$Lambda$ColorTailuePreferenceController$6UXaKov5sG5Bjdm1iCEv3shzjh0;-><init>(Lcom/coloros/settings/feature/display/controller/ColorTailuePreferenceController;)V

    .line 1048
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, v0, Lcom/coloros/settings/utils/d;->a:Ljava/lang/ref/WeakReference;

    .line 48
    new-array v2, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/coloros/settings/utils/d;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 49
    iget-object v0, p0, Lcom/coloros/settings/feature/display/controller/ColorTailuePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/coloros/settings/utils/s;->a(Landroid/content/Context;Z)V

    :cond_2
    :goto_1
    return v1
.end method
