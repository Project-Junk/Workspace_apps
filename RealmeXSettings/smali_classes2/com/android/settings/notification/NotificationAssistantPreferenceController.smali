.class public Lcom/android/settings/notification/NotificationAssistantPreferenceController;
.super Lcom/android/settings/core/a;
.source "NotificationAssistantPreferenceController.java"


# instance fields
.field protected mNotificationBackend:Lcom/android/settings/notification/k;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    new-instance p1, Lcom/android/settings/notification/k;

    invoke-direct {p1}, Lcom/android/settings/notification/k;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/NotificationAssistantPreferenceController;->mNotificationBackend:Lcom/android/settings/notification/k;

    .line 39
    iget-object p1, p0, Lcom/android/settings/notification/NotificationAssistantPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/NotificationAssistantPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method protected createCandidateInfo(Landroid/content/ComponentName;)Lcom/android/settingslib/widget/g;
    .locals 4

    .line 59
    new-instance v0, Lcom/android/settingslib/applications/b;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationAssistantPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/notification/NotificationAssistantPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/settingslib/applications/b;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/ComponentName;)V

    return-object v0
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 49
    new-instance v0, Lcom/android/settings/notification/NotificationAssistantPicker$a;

    iget-object v1, p0, Lcom/android/settings/notification/NotificationAssistantPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/notification/NotificationAssistantPicker$a;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-static {}, Lcom/android/settings/notification/k;->b()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {p0, v1}, Lcom/android/settings/notification/NotificationAssistantPreferenceController;->createCandidateInfo(Landroid/content/ComponentName;)Lcom/android/settingslib/widget/g;

    move-result-object v0

    .line 54
    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/widget/g;->a()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
