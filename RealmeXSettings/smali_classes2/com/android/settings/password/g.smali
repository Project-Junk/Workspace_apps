.class final Lcom/android/settings/password/g;
.super Ljava/lang/Object;
.source "SetNewPasswordController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/g$a;
    }
.end annotation


# instance fields
.field final a:I

.field final b:Landroid/content/pm/PackageManager;

.field final c:Landroid/hardware/fingerprint/FingerprintManager;

.field final d:Landroid/hardware/face/FaceManager;

.field final e:Landroid/app/admin/DevicePolicyManager;

.field final f:Lcom/android/settings/password/g$a;


# direct methods
.method constructor <init>(ILandroid/content/pm/PackageManager;Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/face/FaceManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/settings/password/g$a;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput p1, p0, Lcom/android/settings/password/g;->a:I

    .line 102
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManager;

    iput-object p1, p0, Lcom/android/settings/password/g;->b:Landroid/content/pm/PackageManager;

    .line 103
    iput-object p3, p0, Lcom/android/settings/password/g;->c:Landroid/hardware/fingerprint/FingerprintManager;

    .line 104
    iput-object p4, p0, Lcom/android/settings/password/g;->d:Landroid/hardware/face/FaceManager;

    .line 105
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/password/g;->e:Landroid/app/admin/DevicePolicyManager;

    .line 106
    invoke-static {p6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/password/g$a;

    iput-object p1, p0, Lcom/android/settings/password/g;->f:Lcom/android/settings/password/g$a;

    return-void
.end method
