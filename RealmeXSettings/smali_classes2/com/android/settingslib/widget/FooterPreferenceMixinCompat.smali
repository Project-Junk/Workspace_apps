.class public Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;
.super Ljava/lang/Object;
.source "FooterPreferenceMixinCompat.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/l;


# instance fields
.field public a:Lcom/android/settingslib/widget/FooterPreference;

.field private final b:Landroidx/preference/PreferenceFragmentCompat;


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;->b:Landroidx/preference/PreferenceFragmentCompat;

    .line 35
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method private b()Landroid/content/Context;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;->b:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/android/settingslib/widget/FooterPreference;
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;->b:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {v0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;->a:Lcom/android/settingslib/widget/FooterPreference;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    .line 53
    :cond_0
    new-instance v1, Lcom/android/settingslib/widget/FooterPreference;

    invoke-direct {p0}, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;->b()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settingslib/widget/FooterPreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;->a:Lcom/android/settingslib/widget/FooterPreference;

    if-eqz v0, :cond_1

    .line 56
    iget-object v1, p0, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;->a:Lcom/android/settingslib/widget/FooterPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;->a:Lcom/android/settingslib/widget/FooterPreference;

    return-object v0
.end method

.method public final a(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;->a:Lcom/android/settingslib/widget/FooterPreference;

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    :cond_0
    return-void
.end method
