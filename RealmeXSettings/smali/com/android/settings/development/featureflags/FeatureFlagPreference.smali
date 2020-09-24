.class public Lcom/android/settings/development/featureflags/FeatureFlagPreference;
.super Landroidx/preference/SwitchPreference;
.source "FeatureFlagPreference.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 30
    invoke-direct {p0, p1}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p2, p0, Lcom/android/settings/development/featureflags/FeatureFlagPreference;->a:Ljava/lang/String;

    .line 32
    invoke-virtual {p0, p2}, Lcom/android/settings/development/featureflags/FeatureFlagPreference;->setKey(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0, p2}, Lcom/android/settings/development/featureflags/FeatureFlagPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 34
    invoke-static {p2}, Lcom/android/settings/development/featureflags/a;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/development/featureflags/FeatureFlagPreference;->b:Z

    .line 36
    iget-boolean v0, p0, Lcom/android/settings/development/featureflags/FeatureFlagPreference;->b:Z

    if-eqz v0, :cond_0

    .line 37
    invoke-static {p1, p2}, Lcom/android/settings/development/featureflags/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    .line 39
    :cond_0
    invoke-static {p1, p2}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    .line 41
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings/development/featureflags/FeatureFlagPreference;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 56
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/development/featureflags/FeatureFlagPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 2

    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/development/featureflags/FeatureFlagPreference;->a(Z)V

    .line 47
    iget-boolean v0, p0, Lcom/android/settings/development/featureflags/FeatureFlagPreference;->b:Z

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/development/featureflags/FeatureFlagPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/development/featureflags/FeatureFlagPreference;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/android/settings/development/featureflags/a;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/development/featureflags/FeatureFlagPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/development/featureflags/FeatureFlagPreference;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/util/FeatureFlagUtils;->setEnabled(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
