.class public Lcom/coloros/settings/feature/notification/controller/NetworkSpeedPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "NetworkSpeedPreferenceController.java"


# static fields
.field private static final KEY_SHOW_NETWORK_SPEED:Ljava/lang/String; = "show_network_speed"

.field public static final SHOW_NETWORK_SPEED_SETTING:Ljava/lang/String; = "show_network_speed"

.field public static final SHOW_STATUS_CLOSE:I = 0x0

.field public static final SHOW_STATUS_OPEN:I = 0x1


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "show_network_speed"

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/notification/controller/NetworkSpeedPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 53
    sget-boolean v0, Lcom/coloros/settings/a;->a:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/coloros/settings/a;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/NetworkSpeedPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    const-string v2, "show_network_speed"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    return v1
.end method

.method public setChecked(Z)Z
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/NetworkSpeedPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "show_network_speed"

    invoke-static {v0, v1, p1}, Lcom/coloros/settings/utils/aj;->b(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 46
    iget-object v0, p0, Lcom/coloros/settings/feature/notification/controller/NetworkSpeedPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p1, 0x1

    return p1
.end method
