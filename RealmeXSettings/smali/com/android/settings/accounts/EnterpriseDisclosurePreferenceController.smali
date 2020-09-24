.class public Lcom/android/settings/accounts/EnterpriseDisclosurePreferenceController;
.super Lcom/android/settings/core/a;
.source "EnterpriseDisclosurePreferenceController.java"


# static fields
.field private static final ORDER_ENTERPRISE_DISCLOSURE:I = 0x1387


# instance fields
.field private final mFeatureProvider:Lcom/android/settings/enterprise/o;

.field private mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;

.field private mScreen:Landroidx/preference/PreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "add_account_enterprise_disclosure_footer"

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    iget-object p1, p0, Lcom/android/settings/accounts/EnterpriseDisclosurePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/accounts/EnterpriseDisclosurePreferenceController;->mContext:Landroid/content/Context;

    .line 45
    invoke-virtual {p1, v0}, Lcom/android/settings/overlay/b;->getEnterprisePrivacyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/enterprise/o;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accounts/EnterpriseDisclosurePreferenceController;->mFeatureProvider:Lcom/android/settings/enterprise/o;

    return-void
.end method

.method private addEnterpriseDisclosure()V
    .locals 3

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/accounts/EnterpriseDisclosurePreferenceController;->getDisclosure()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accounts/EnterpriseDisclosurePreferenceController;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;

    .line 78
    invoke-virtual {v1}, Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;->a()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object v1

    const/4 v2, 0x0

    .line 79
    invoke-virtual {v1, v2}, Lcom/android/settingslib/widget/FooterPreference;->setSelectable(Z)V

    .line 80
    invoke-virtual {v1, v0}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v0, 0x1387

    .line 83
    invoke-virtual {v1, v0}, Lcom/android/settingslib/widget/FooterPreference;->setOrder(I)V

    .line 85
    iget-object v0, p0, Lcom/android/settings/accounts/EnterpriseDisclosurePreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 62
    invoke-super {p0, p1}, Lcom/android/settings/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 63
    iput-object p1, p0, Lcom/android/settings/accounts/EnterpriseDisclosurePreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    .line 64
    invoke-direct {p0}, Lcom/android/settings/accounts/EnterpriseDisclosurePreferenceController;->addEnterpriseDisclosure()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/accounts/EnterpriseDisclosurePreferenceController;->getDisclosure()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method getDisclosure()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/android/settings/accounts/EnterpriseDisclosurePreferenceController;->mFeatureProvider:Lcom/android/settings/enterprise/o;

    invoke-interface {v0}, Lcom/android/settings/enterprise/o;->d()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public setFooterPreferenceMixin(Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/android/settings/accounts/EnterpriseDisclosurePreferenceController;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixinCompat;

    return-void
.end method
