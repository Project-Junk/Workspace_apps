.class public Lcom/coloros/settings/feature/othersettings/backup/ColorLocalBackupCategoryPreferenceController;
.super Lcom/android/settings/core/a;
.source "ColorLocalBackupCategoryPreferenceController.java"


# static fields
.field public static final LOCAL_BACKUP_CATEGORY:Ljava/lang/String; = "locale_backup_category"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "locale_backup_category"

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 32
    invoke-static {}, Lcom/coloros/settings/utils/bh;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
