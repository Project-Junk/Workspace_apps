.class public Lcom/coloros/settings/feature/language/ColorEncodeController;
.super Lcom/android/settings/core/a;
.source "ColorEncodeController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;


# static fields
.field private static final ENCODE_CATEGORY_KEY:Ljava/lang/String; = "phone_encode_category"

.field public static final ENCODE_KEY:Ljava/lang/String; = "phone_encode"

.field public static final ENCODE_SHOW:Ljava/lang/String; = "coloros_encode_show"


# instance fields
.field private mEncodeCategory:Landroidx/preference/PreferenceCategory;

.field private mEncodePreference:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "phone_encode_category"

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 84
    :cond_0
    invoke-static {}, Lcom/coloros/settings/utils/x;->a()Ljava/util/Locale;

    move-result-object p0

    .line 87
    sget-object v1, Lcom/coloros/settings/utils/e;->a:Ljava/util/Locale;

    invoke-virtual {v1, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/coloros/settings/utils/e;->b:Ljava/util/Locale;

    .line 88
    invoke-virtual {v1, p0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "persist.sys.oppo.region"

    const-string v1, "CN"

    .line 91
    invoke-static {p0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "MM"

    .line 92
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    if-nez p1, :cond_0

    return-void

    .line 59
    :cond_0
    iput-object p1, p0, Lcom/coloros/settings/feature/language/ColorEncodeController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "phone_encode_category"

    .line 60
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/coloros/settings/feature/language/ColorEncodeController;->mEncodeCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "phone_encode"

    .line 61
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iput-object p1, p0, Lcom/coloros/settings/feature/language/ColorEncodeController;->mEncodePreference:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 62
    iget-object p1, p0, Lcom/coloros/settings/feature/language/ColorEncodeController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/ColorEncodeController;->isAvailable()Z

    move-result v0

    const-string v1, "coloros_encode_show"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 63
    iget-object p1, p0, Lcom/coloros/settings/feature/language/ColorEncodeController;->mEncodeCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/ColorEncodeController;->isAvailable()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/coloros/settings/feature/language/ColorEncodeController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/feature/language/ColorEncodeController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/coloros/settings/feature/language/ColorEncodeController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/utils/e;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/coloros/settings/feature/language/localepicker/ColorEncodePicker;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    sget-object v0, Lcom/coloros/settings/feature/language/localepicker/ColorEncodePicker;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public onResume()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/coloros/settings/feature/language/ColorEncodeController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/coloros/settings/feature/language/ColorEncodeController;->mEncodeCategory:Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/coloros/settings/feature/language/ColorEncodeController;->mEncodePreference:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    if-nez v1, :cond_0

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/ColorEncodeController;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceCategory;->setVisible(Z)V

    .line 72
    iget-object v0, p0, Lcom/coloros/settings/feature/language/ColorEncodeController;->mEncodePreference:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/language/ColorEncodeController;->updateState(Landroidx/preference/Preference;)V

    :cond_1
    :goto_0
    return-void
.end method
