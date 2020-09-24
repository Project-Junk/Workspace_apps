.class public Lcom/android/settings/support/SupportPreferenceController;
.super Lcom/android/settings/core/a;
.source "SupportPreferenceController.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private final mSupportFeatureProvider:Lcom/android/settings/overlay/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p2

    .line 38
    invoke-virtual {p2, p1}, Lcom/android/settings/overlay/b;->getSupportFeatureProvider(Landroid/content/Context;)Lcom/android/settings/overlay/c;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/support/SupportPreferenceController;->mSupportFeatureProvider:Lcom/android/settings/overlay/c;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/android/settings/support/SupportPreferenceController;->mSupportFeatureProvider:Lcom/android/settings/overlay/c;

    if-nez v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 52
    iget-object v0, p0, Lcom/android/settings/support/SupportPreferenceController;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/support/SupportPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/settings/support/SupportPreferenceController;->mActivity:Landroid/app/Activity;

    return-void
.end method
