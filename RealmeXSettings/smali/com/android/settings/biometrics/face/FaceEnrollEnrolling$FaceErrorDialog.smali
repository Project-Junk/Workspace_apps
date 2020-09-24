.class public Lcom/android/settings/biometrics/face/FaceEnrollEnrolling$FaceErrorDialog;
.super Lcom/android/settings/biometrics/BiometricErrorDialog;
.source "FaceEnrollEnrolling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/face/FaceEnrollEnrolling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceErrorDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricErrorDialog;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/CharSequence;I)Lcom/android/settings/biometrics/face/FaceEnrollEnrolling$FaceErrorDialog;
    .locals 3

    .line 61
    new-instance v0, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling$FaceErrorDialog;

    invoke-direct {v0}, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling$FaceErrorDialog;-><init>()V

    .line 62
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "error_msg"

    .line 63
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string p0, "error_id"

    .line 64
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 65
    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/face/FaceEnrollEnrolling$FaceErrorDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    const v0, 0x7f1213af

    return v0
.end method

.method public final b()I
    .locals 1

    const v0, 0x7f1213a7

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x5e6

    return v0
.end method
