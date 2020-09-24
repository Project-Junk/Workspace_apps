.class public Lcom/android/settings/enterprise/ManageDeviceAdminPreferenceController;
.super Lcom/android/settings/core/a;
.source "ManageDeviceAdminPreferenceController.java"


# instance fields
.field private final mFeatureProvider:Lcom/android/settings/enterprise/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    invoke-static {p1}, Lcom/android/settings/overlay/b;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/b;

    move-result-object p2

    .line 30
    invoke-virtual {p2, p1}, Lcom/android/settings/overlay/b;->getEnterprisePrivacyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/enterprise/o;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/enterprise/ManageDeviceAdminPreferenceController;->mFeatureProvider:Lcom/android/settings/enterprise/o;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/android/settings/enterprise/ManageDeviceAdminPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 6

    .line 35
    iget-object v0, p0, Lcom/android/settings/enterprise/ManageDeviceAdminPreferenceController;->mFeatureProvider:Lcom/android/settings/enterprise/o;

    .line 36
    invoke-interface {v0}, Lcom/android/settings/enterprise/o;->r()I

    move-result v0

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/android/settings/enterprise/ManageDeviceAdminPreferenceController;->mContext:Landroid/content/Context;

    .line 38
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120f10

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/enterprise/ManageDeviceAdminPreferenceController;->mContext:Landroid/content/Context;

    .line 39
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100038

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 39
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
