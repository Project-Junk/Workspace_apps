.class public final Lcom/coloros/settings/feature/face/c;
.super Ljava/lang/Object;
.source "FaceSwitchHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/feature/face/c$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-static {p0, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFaceUnlockEnabled(Landroid/content/Context;Z)V

    .line 83
    invoke-static {p0, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFaceUnlockRemainUnlockEnabled(Landroid/content/Context;Z)V

    .line 84
    invoke-static {p0, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFaceUnlockAppEnabled(Landroid/content/Context;Z)V

    .line 85
    invoke-static {p0, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFaceUnlockFileEnabled(Landroid/content/Context;Z)V

    .line 86
    invoke-static {p0, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFaceSwitchForSecurityCenter(Landroid/content/Context;Z)V

    return-void
.end method

.method public static a(Landroid/content/Context;ILandroid/os/Handler;Landroid/os/Handler;)V
    .locals 6

    .line 33
    const-class v0, Landroid/hardware/face/FaceManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceManager;

    .line 34
    invoke-virtual {v0, p1}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 35
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    .line 36
    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "deleteAllFaces : MSG_DELETE_ALL "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "FaceSwitchHelper"

    invoke-static {v5, v4}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v3, :cond_3

    .line 38
    new-instance v3, Lcom/coloros/settings/feature/face/c$a;

    invoke-direct {v3, p0, p2, p3}, Lcom/coloros/settings/feature/face/c$a;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 39
    invoke-virtual {v0, p1}, Landroid/hardware/face/FaceManager;->setActiveUser(I)V

    .line 41
    new-instance p2, Landroid/hardware/face/Face;

    const/4 p3, 0x0

    const-wide/16 v4, 0x0

    invoke-direct {p2, p3, v2, v4, v5}, Landroid/hardware/face/Face;-><init>(Ljava/lang/CharSequence;IJ)V

    .line 42
    invoke-static {p0}, Lcom/coloros/settings/utils/q;->e(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-static {p0}, Lcom/coloros/settings/utils/q;->f(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 43
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    .line 44
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Landroid/hardware/face/Face;

    .line 46
    :cond_2
    invoke-virtual {v0, p2, p1, v3}, Landroid/hardware/face/FaceManager;->remove(Landroid/hardware/face/Face;ILandroid/hardware/face/FaceManager$RemovalCallback;)V

    return-void

    .line 48
    :cond_3
    invoke-static {p0}, Lcom/coloros/settings/feature/face/c;->a(Landroid/content/Context;)V

    return-void
.end method
