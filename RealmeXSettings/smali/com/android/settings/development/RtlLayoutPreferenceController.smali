.class public Lcom/android/settings/development/RtlLayoutPreferenceController;
.super Lcom/android/settingslib/development/b;
.source "RtlLayoutPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/d;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/b;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/RtlLayoutPreferenceController;->a:Landroid/os/Handler;

    .line 57
    iput-object p2, p0, Lcom/android/settings/development/RtlLayoutPreferenceController;->b:Landroid/app/Activity;

    if-eqz p3, :cond_0

    .line 59
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/settings/development/RtlLayoutPreferenceController;)Landroid/app/Activity;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/settings/development/RtlLayoutPreferenceController;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic a(Lcom/android/settings/development/RtlLayoutPreferenceController;Z)V
    .locals 1

    .line 1102
    iget-object p0, p0, Lcom/android/settings/development/RtlLayoutPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "debug.force_rtl"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1105
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Landroid/sysprop/DisplayProperties;->debug_force_rtl(Ljava/lang/Boolean;)V

    return-void
.end method

.method private a(Z)V
    .locals 4

    .line 111
    iget-object v0, p0, Lcom/android/settings/development/RtlLayoutPreferenceController;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 112
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/android/settings/development/RtlLayoutPreferenceController;->a:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/development/RtlLayoutPreferenceController$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/development/RtlLayoutPreferenceController$1;-><init>(Lcom/android/settings/development/RtlLayoutPreferenceController;Z)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "force_rtl_layout_all_locales"

    return-object v0
.end method

.method public final m_()V
    .locals 2

    .line 88
    invoke-super {p0}, Lcom/android/settingslib/development/b;->m_()V

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, v0}, Lcom/android/settings/development/RtlLayoutPreferenceController;->a(Z)V

    .line 93
    iget-object v1, p0, Lcom/android/settings/development/RtlLayoutPreferenceController;->d:Landroidx/preference/Preference;

    check-cast v1, Landroidx/preference/TwoStatePreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/android/settings/development/RtlLayoutPreferenceController;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 129
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 130
    iput-object v1, p0, Lcom/android/settings/development/RtlLayoutPreferenceController;->a:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 71
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 74
    invoke-direct {p0, p1}, Lcom/android/settings/development/RtlLayoutPreferenceController;->a(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 81
    iget-object p1, p0, Lcom/android/settings/development/RtlLayoutPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "debug.force_rtl"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 83
    iget-object v1, p0, Lcom/android/settings/development/RtlLayoutPreferenceController;->d:Landroidx/preference/Preference;

    check-cast v1, Landroidx/preference/TwoStatePreference;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
