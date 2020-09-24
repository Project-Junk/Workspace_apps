.class public Lcom/coloros/settings/feature/deviceinfo/controller/ColorCustomizePreferenceController;
.super Lcom/android/settings/core/a;
.source "ColorCustomizePreferenceController.java"


# static fields
.field private static final KEY_CUSTOMIZE_VERSION:Ljava/lang/String; = "build_number_customize"


# instance fields
.field private final mVersionNum:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "build_number_customize"

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "ro.custom.define.version"

    .line 30
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorCustomizePreferenceController;->mVersionNum:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorCustomizePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/settings/custom/b;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorCustomizePreferenceController;->mVersionNum:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/coloros/settings/feature/deviceinfo/controller/ColorCustomizePreferenceController;->mVersionNum:Ljava/lang/String;

    return-object v0
.end method
