.class public Lcom/coloros/settings/feature/security/controller/ColorDevicesIdentifyPreferenceController;
.super Lcom/android/settings/core/a;
.source "ColorDevicesIdentifyPreferenceController.java"


# static fields
.field public static final DEVICES_IDENTIFY_KEY:Ljava/lang/String; = "devices_id"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "devices_id"

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 34
    invoke-static {}, Lcom/coloros/settings/utils/h;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
