.class public Lcom/coloros/settings/feature/language/RegionPreferenceController;
.super Lcom/android/settings/core/a;
.source "RegionPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/language/RegionPreferenceController$b;,
        Lcom/coloros/settings/feature/language/RegionPreferenceController$a;
    }
.end annotation


# static fields
.field private static final KEY_REGION:Ljava/lang/String; = "phone_region"

.field private static final KEY_REGION_CATEGORY:Ljava/lang/String; = "phone_region_category"

.field private static final TAG:Ljava/lang/String; = "RegionPreferenceController"


# instance fields
.field private mBackgroundHandler:Lcom/coloros/settings/feature/language/RegionPreferenceController$a;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHostFragment:Landroidx/preference/PreferenceFragmentCompat;

.field private mMainHandler:Lcom/coloros/settings/feature/language/RegionPreferenceController$b;

.field private mPreference:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;)V
    .locals 1

    const-string v0, "phone_region"

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    iput-object p2, p0, Lcom/coloros/settings/feature/language/RegionPreferenceController;->mHostFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 54
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "RegionLanguageFragment.Loader"

    const/16 v0, 0xa

    invoke-direct {p1, p2, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/coloros/settings/feature/language/RegionPreferenceController;->mHandlerThread:Landroid/os/HandlerThread;

    .line 56
    iget-object p1, p0, Lcom/coloros/settings/feature/language/RegionPreferenceController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 57
    new-instance p1, Lcom/coloros/settings/feature/language/RegionPreferenceController$a;

    iget-object p2, p0, Lcom/coloros/settings/feature/language/RegionPreferenceController;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/coloros/settings/feature/language/RegionPreferenceController$a;-><init>(Lcom/coloros/settings/feature/language/RegionPreferenceController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/language/RegionPreferenceController;->mBackgroundHandler:Lcom/coloros/settings/feature/language/RegionPreferenceController$a;

    .line 58
    new-instance p1, Lcom/coloros/settings/feature/language/RegionPreferenceController$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/coloros/settings/feature/language/RegionPreferenceController$b;-><init>(Lcom/coloros/settings/feature/language/RegionPreferenceController;B)V

    iput-object p1, p0, Lcom/coloros/settings/feature/language/RegionPreferenceController;->mMainHandler:Lcom/coloros/settings/feature/language/RegionPreferenceController$b;

    return-void
.end method

.method static synthetic access$100(Lcom/coloros/settings/feature/language/RegionPreferenceController;)Z
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/coloros/settings/feature/language/RegionPreferenceController;->isHostFinishing()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/coloros/settings/feature/language/RegionPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/coloros/settings/feature/language/RegionPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/coloros/settings/feature/language/RegionPreferenceController;)Lcom/coloros/settings/feature/language/RegionPreferenceController$b;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/coloros/settings/feature/language/RegionPreferenceController;->mMainHandler:Lcom/coloros/settings/feature/language/RegionPreferenceController$b;

    return-object p0
.end method

.method static synthetic access$400(Lcom/coloros/settings/feature/language/RegionPreferenceController;)Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/coloros/settings/feature/language/RegionPreferenceController;->mPreference:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    return-object p0
.end method

.method private isHostFinishing()Z
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/coloros/settings/feature/language/RegionPreferenceController;->mHostFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 75
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/RegionPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    iput-object v0, p0, Lcom/coloros/settings/feature/language/RegionPreferenceController;->mPreference:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    .line 76
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/RegionPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "phone_region_category"

    .line 77
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 4

    const-string v0, "ro.oppo.version"

    const-string v1, "CN"

    .line 64
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "oppo"

    const-string v2, "ro.oppo.operator"

    .line 66
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "US"

    .line 67
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const/4 v0, 0x3

    return v0

    :cond_2
    return v3
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 99
    invoke-virtual {p0}, Lcom/coloros/settings/feature/language/RegionPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/coloros/settings/feature/language/RegionPreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const-string v2, "phone_region"

    invoke-static {v0, v2, v1, v1}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 102
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/coloros/settings/feature/language/RegionPreferenceController;->mPreference:Lcom/coloros/settings/widget/preference/SettingColorJumpPreference;

    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/language/RegionPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/language/RegionPreferenceController;->mBackgroundHandler:Lcom/coloros/settings/feature/language/RegionPreferenceController$a;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/language/RegionPreferenceController$a;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 93
    iget-object p1, p0, Lcom/coloros/settings/feature/language/RegionPreferenceController;->mBackgroundHandler:Lcom/coloros/settings/feature/language/RegionPreferenceController$a;

    invoke-virtual {p1, v0}, Lcom/coloros/settings/feature/language/RegionPreferenceController$a;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method
