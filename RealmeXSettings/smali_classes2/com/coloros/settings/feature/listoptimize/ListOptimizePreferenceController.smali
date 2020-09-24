.class public Lcom/coloros/settings/feature/listoptimize/ListOptimizePreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "ListOptimizePreferenceController.java"


# static fields
.field public static final KEY_LIST_OPTIMIZE:Ljava/lang/String; = "realme_lab_list_optimize"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "realme_lab_list_optimize"

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/coloros/settings/feature/listoptimize/ListOptimizePreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    .line 47
    invoke-static {}, Lcom/coloros/settings/utils/al;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/listoptimize/ListOptimizePreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "realme.common.listoptimize.support"

    invoke-static {v0, v1}, Lcom/coloros/settings/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public isChecked()Z
    .locals 2

    const-string v0, "persist.sys.flingopts.enable"

    const/4 v1, 0x0

    .line 35
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    :goto_0
    const-string v0, "persist.sys.flingopts.enable"

    .line 41
    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
