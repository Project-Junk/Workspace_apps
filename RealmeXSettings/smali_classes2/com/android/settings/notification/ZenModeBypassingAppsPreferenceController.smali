.class public Lcom/android/settings/notification/ZenModeBypassingAppsPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenModeBypassingAppsPreferenceController.java"


# instance fields
.field private a:Lcom/android/settings/notification/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "zen_mode_bypassing_apps"

    .line 15
    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 12
    new-instance p1, Lcom/android/settings/notification/k;

    invoke-direct {p1}, Lcom/android/settings/notification/k;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeBypassingAppsPreferenceController;->a:Lcom/android/settings/notification/k;

    return-void
.end method


# virtual methods
.method public synthetic getSummary()Ljava/lang/CharSequence;
    .locals 5

    .line 1026
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/notification/k;->a(I)I

    move-result v0

    .line 1027
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeBypassingAppsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 1028
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f100061

    .line 1027
    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 20
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/notification/k;->a(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
