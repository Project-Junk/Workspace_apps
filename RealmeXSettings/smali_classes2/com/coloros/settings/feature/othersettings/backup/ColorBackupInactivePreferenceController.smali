.class public Lcom/coloros/settings/feature/othersettings/backup/ColorBackupInactivePreferenceController;
.super Lcom/android/settings/core/a;
.source "ColorBackupInactivePreferenceController.java"


# static fields
.field private static final KEY_BACKUP_INACTIVE:Ljava/lang/String; = "backup_inactive"


# instance fields
.field private mIsServiceActive:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "backup_inactive"

    .line 26
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    iput-boolean p2, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorBackupInactivePreferenceController;->mIsServiceActive:Z

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 32
    iget-boolean v0, p0, Lcom/coloros/settings/feature/othersettings/backup/ColorBackupInactivePreferenceController;->mIsServiceActive:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
