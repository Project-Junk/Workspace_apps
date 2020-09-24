.class public Lcom/coloros/common/feature/ColorOSCustomizeFeatureOption;
.super Ljava/lang/Object;
.source "ColorOSCustomizeFeatureOption.java"


# static fields
.field private static IS_SUPPORT_NETWORK_STATUS:Z = false

.field private static IS_SUPPORT_SHOW_GOOGLE_EMERGENCYDIALE:Z = false

.field private static final KEYGUARD_SHOW_GOOGLE_EMERGENCYDIALE_FEATURE:Ljava/lang/String; = "oppo.phone.show.google.emergencydialer"

.field private static final KEYGUARD_SHOW_NETWORKSTATUS_FEATURE:Ljava/lang/String; = "oppo.keyguard.show.networkstatus"

.field private static final TAG:Ljava/lang/String; = "ColorOSCustomizeFeatureOption"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSupportNetworkStatus()Z
    .locals 1

    .line 44
    sget-boolean v0, Lcom/coloros/common/feature/ColorOSCustomizeFeatureOption;->IS_SUPPORT_NETWORK_STATUS:Z

    return v0
.end method

.method public static isSupportShowGoogleEmergencydiale()Z
    .locals 1

    .line 51
    sget-boolean v0, Lcom/coloros/common/feature/ColorOSCustomizeFeatureOption;->IS_SUPPORT_SHOW_GOOGLE_EMERGENCYDIALE:Z

    return v0
.end method

.method public static loadFeatureOption(Landroid/content/Context;)V
    .locals 2

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oppo.keyguard.show.networkstatus"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/coloros/common/feature/ColorOSCustomizeFeatureOption;->IS_SUPPORT_NETWORK_STATUS:Z

    .line 36
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "oppo.phone.show.google.emergencydialer"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/coloros/common/feature/ColorOSCustomizeFeatureOption;->IS_SUPPORT_SHOW_GOOGLE_EMERGENCYDIALE:Z

    return-void
.end method
