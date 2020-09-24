.class public Lcom/android/internal/telephony/OemFeature;
.super Ljava/lang/Object;
.source "OemFeature.java"


# static fields
.field public static final FEATURE_BASE:Ljava/lang/String;

.field public static final FEATURE_NW_REG_SWITCH_SMOOTH:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.sys.oem_feature"

    const-string v1, ""

    .line 35
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/OemFeature;->FEATURE_BASE:Ljava/lang/String;

    const-string v0, "persist.sys.oem_smooth"

    const-string v1, "0"

    .line 96
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/OemFeature;->FEATURE_NW_REG_SWITCH_SMOOTH:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
