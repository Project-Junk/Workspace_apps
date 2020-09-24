.class public final Lcom/android/settings/enterprise/c;
.super Lcom/android/settings/enterprise/f;
.source "AdminGrantedCameraPermissionPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const-string v0, "android.permission.CAMERA"

    .line 27
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/enterprise/f;-><init>(Landroid/content/Context;Z[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "enterprise_privacy_number_camera_access_packages"

    return-object v0
.end method
