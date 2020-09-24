.class public Lcom/coloros/settings/feature/othersettings/controller/ColorRecentTaskManagementPreferenceController;
.super Lcom/android/settings/core/a;
.source "ColorRecentTaskManagementPreferenceController.java"


# static fields
.field private static final KEY_RECENT_TASK_MANAGEMENT:Ljava/lang/String; = "recent_task_management"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "recent_task_management"

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
