.class public Lcom/android/settings/inputmethod/InputMethodAndSubtypePreferenceController;
.super Lcom/android/settings/core/a;
.source "InputMethodAndSubtypePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/j;
.implements Lcom/android/settingslib/core/lifecycle/a/k;


# instance fields
.field private mFragment:Landroidx/preference/PreferenceFragmentCompat;

.field private mManager:Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;

.field private mTargetImi:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 6

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 55
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypePreferenceController;->mManager:Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypePreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypePreferenceController;->mTargetImi:Ljava/lang/String;

    .line 1062
    invoke-virtual {v1}, Landroidx/preference/PreferenceFragmentCompat;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 1063
    iget v3, v3, Landroid/content/res/Configuration;->keyboard:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, v0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;->a:Z

    .line 1065
    iget-object v3, v0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 1067
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1068
    :cond_2
    invoke-virtual {v0, v1, v4, p1}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;->a(Landroidx/preference/PreferenceFragmentCompat;Landroid/view/inputmethod/InputMethodInfo;Landroidx/preference/PreferenceScreen;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Landroidx/preference/PreferenceFragmentCompat;Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypePreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 43
    iput-object p2, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypePreferenceController;->mTargetImi:Ljava/lang/String;

    .line 44
    new-instance p1, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;

    iget-object p2, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypePreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-direct {p1, p2}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;-><init>(Landroidx/preference/PreferenceFragmentCompat;)V

    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypePreferenceController;->mManager:Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;

    return-void
.end method

.method public onStart()V
    .locals 5

    .line 60
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypePreferenceController;->mManager:Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypePreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypePreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 1077
    invoke-static {v1}, Lcom/android/settingslib/inputmethod/c;->a(Landroid/content/Context;)Lcom/android/settingslib/inputmethod/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settingslib/inputmethod/c;->a()V

    .line 1079
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, v0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;->c:Ljava/util/List;

    iget-object v4, v0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;->b:Ljava/util/HashMap;

    .line 1078
    invoke-static {v2, v1, v3, v4}, Lcom/android/settingslib/inputmethod/b;->a(Landroidx/preference/PreferenceFragmentCompat;Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/Map;)V

    .line 1080
    invoke-virtual {v0}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;->a()V

    return-void
.end method

.method public onStop()V
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypePreferenceController;->mManager:Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypePreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypePreferenceController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 1085
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v3, v0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;->c:Ljava/util/List;

    iget-boolean v0, v0, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManagerCompat;->a:Z

    .line 1084
    invoke-static {v2, v1, v3, v0}, Lcom/android/settingslib/inputmethod/b;->a(Landroidx/preference/PreferenceFragmentCompat;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    return-void
.end method
