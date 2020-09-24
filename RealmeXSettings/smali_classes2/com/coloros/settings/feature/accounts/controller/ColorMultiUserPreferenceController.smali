.class public Lcom/coloros/settings/feature/accounts/controller/ColorMultiUserPreferenceController;
.super Lcom/android/settings/core/a;
.source "ColorMultiUserPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/coloros/settings/feature/accounts/controller/ColorMultiUserPreferenceController;->mContext:Landroid/content/Context;

    .line 1059
    invoke-static {v0}, Lcom/color/compat/os/UserManagerNative;->canShowMultiUserEntry(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method
