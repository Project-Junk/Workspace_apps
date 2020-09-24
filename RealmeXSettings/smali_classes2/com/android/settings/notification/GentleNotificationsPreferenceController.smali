.class public Lcom/android/settings/notification/GentleNotificationsPreferenceController;
.super Lcom/android/settings/core/a;
.source "GentleNotificationsPreferenceController.java"


# static fields
.field static final ON:I = 0x1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mBackend:Lcom/android/settings/notification/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    new-instance p1, Lcom/android/settings/notification/k;

    invoke-direct {p1}, Lcom/android/settings/notification/k;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/GentleNotificationsPreferenceController;->mBackend:Lcom/android/settings/notification/k;

    return-void
.end method

.method private showOnLockscreen()Z
    .locals 3

    .line 71
    iget-object v0, p0, Lcom/android/settings/notification/GentleNotificationsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "lock_screen_show_silent_notifications"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private showOnStatusBar()Z
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/settings/notification/GentleNotificationsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/notification/k;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 48
    invoke-direct {p0}, Lcom/android/settings/notification/GentleNotificationsPreferenceController;->showOnLockscreen()Z

    move-result v0

    .line 49
    invoke-direct {p0}, Lcom/android/settings/notification/GentleNotificationsPreferenceController;->showOnStatusBar()Z

    move-result v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/settings/notification/GentleNotificationsPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120a41

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/GentleNotificationsPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120a3f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    if-eqz v1, :cond_2

    .line 59
    iget-object v0, p0, Lcom/android/settings/notification/GentleNotificationsPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120a40

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/GentleNotificationsPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120a3e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method setBackend(Lcom/android/settings/notification/k;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/android/settings/notification/GentleNotificationsPreferenceController;->mBackend:Lcom/android/settings/notification/k;

    return-void
.end method
