.class public Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "InputMethodAndSubtypeEnabler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 64
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 69
    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "InputMethodAndSubtypeEnabler"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x3c

    return v0
.end method

.method public getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f1500a9

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const-string p1, "android.intent.extra.TITLE"

    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 49
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    const-string p1, "input_method_id"

    .line 55
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 58
    const-class v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->a(Ljava/lang/Class;)Lcom/android/settingslib/core/a;

    move-result-object v0

    check-cast v0, Lcom/android/settings/inputmethod/InputMethodAndSubtypePreferenceController;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/inputmethod/InputMethodAndSubtypePreferenceController;->initialize(Landroidx/preference/PreferenceFragmentCompat;Ljava/lang/String;)V

    return-void
.end method
