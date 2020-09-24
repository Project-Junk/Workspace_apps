.class public Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDetailPreferenceController;
.super Lcom/android/settings/core/a;
.source "FirmwareVersionDetailPreferenceController.java"


# static fields
.field private static final ACTIVITY_TRIGGER_COUNT:I = 0x3

.field private static final DELAY_TIMER_MILLIS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "firmwareDialogCtrl"


# instance fields
.field private mFunDisallowedAdmin:Lcom/android/settingslib/g$a;

.field private mFunDisallowedBySystem:Z

.field private final mHits:[J

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 45
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDetailPreferenceController;->mHits:[J

    .line 52
    iget-object p1, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDetailPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "user"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDetailPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDetailPreferenceController;->initializeAdminPermissions()V

    return-void
.end method


# virtual methods
.method arrayCopy()V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDetailPreferenceController;->mHits:[J

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public copy()V
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDetailPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDetailPreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDetailPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f1209f8

    .line 127
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 126
    invoke-static {v0, v1, v2}, Lcom/android/settings/slices/g;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 73
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 7

    .line 78
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDetailPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 81
    :cond_0
    invoke-static {}, Lcom/android/settings/m;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDetailPreferenceController;->arrayCopy()V

    .line 85
    iget-object p1, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDetailPreferenceController;->mHits:[J

    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    aput-wide v3, p1, v1

    .line 86
    iget-object p1, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDetailPreferenceController;->mHits:[J

    aget-wide v0, p1, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x1f4

    sub-long/2addr v3, v5

    cmp-long p1, v0, v3

    if-ltz p1, :cond_4

    .line 87
    iget-object p1, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDetailPreferenceController;->mUserManager:Landroid/os/UserManager;

    const-string v0, "no_fun"

    invoke-virtual {p1, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "firmwareDialogCtrl"

    if-eqz p1, :cond_3

    .line 88
    iget-object p1, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDetailPreferenceController;->mFunDisallowedAdmin:Lcom/android/settingslib/g$a;

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDetailPreferenceController;->mFunDisallowedBySystem:Z

    if-nez p1, :cond_2

    .line 89
    iget-object p1, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDetailPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDetailPreferenceController;->mFunDisallowedAdmin:Lcom/android/settingslib/g$a;

    invoke-static {p1, v1}, Lcom/android/settingslib/g;->a(Landroid/content/Context;Lcom/android/settingslib/g$a;)V

    :cond_2
    const-string p1, "Sorry, no fun for you!"

    .line 92
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 96
    :cond_3
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/android/internal/app/PlatLogoActivity;

    .line 98
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android"

    .line 97
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDetailPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unable to start activity "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return v2
.end method

.method initializeAdminPermissions()V
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDetailPreferenceController;->mContext:Landroid/content/Context;

    .line 119
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "no_fun"

    .line 118
    invoke-static {v0, v2, v1}, Lcom/android/settingslib/h;->a(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/g$a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDetailPreferenceController;->mFunDisallowedAdmin:Lcom/android/settingslib/g$a;

    .line 120
    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDetailPreferenceController;->mContext:Landroid/content/Context;

    .line 121
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 120
    invoke-static {v0, v2, v1}, Lcom/android/settingslib/h;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDetailPreferenceController;->mFunDisallowedBySystem:Z

    return-void
.end method

.method public isSliceable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public useDynamicSliceSummary()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
