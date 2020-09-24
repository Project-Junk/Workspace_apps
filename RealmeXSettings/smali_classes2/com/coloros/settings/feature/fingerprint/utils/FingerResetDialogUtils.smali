.class public Lcom/coloros/settings/feature/fingerprint/utils/FingerResetDialogUtils;
.super Ljava/lang/Object;
.source "FingerResetDialogUtils.java"


# static fields
.field public static final KEY_IS_FROM_DELETE_ALL_RESET_FINGER:Ljava/lang/String; = "key_is_from_delete_all_reset_finger"

.field public static final TAG:Ljava/lang/String; = "FingerResetDialogUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getFingerprintAlgorithm(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 151
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isFingerprintSupport(Landroid/content/Context;)Z

    move-result v0

    .line 152
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isOpticalFingerPrint(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "-1"

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 154
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->getOpticalFingerprintType(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "persist.vendor.silead_newalgo.support"

    .line 156
    invoke-static {p0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v2
.end method

.method public static isFingerprintNewAlgorithm(Landroid/content/Context;)Z
    .locals 1

    .line 168
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerResetDialogUtils;->getFingerprintAlgorithm(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    .line 169
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isFingerprintOldAlgorithm(Landroid/content/Context;)Z
    .locals 1

    .line 163
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerResetDialogUtils;->getFingerprintAlgorithm(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "0"

    .line 164
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isNeedClearFingerData(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .line 127
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isFingerprintSupport(Landroid/content/Context;)Z

    move-result v0

    .line 128
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isOpticalFingerPrint(Landroid/content/Context;)Z

    move-result v1

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "supportFingerprint = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", opticalFingerPrint = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isSecure(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "No screenlock"

    .line 134
    invoke-static {p1, p0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 137
    :cond_1
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->hasFingerprints(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "No finger data"

    .line 138
    invoke-static {p1, p0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 141
    :cond_2
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerResetDialogUtils;->getFingerprintAlgorithm(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 142
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "fingerAlgorithm = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "0"

    .line 143
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v2
.end method

.method public static isShowResetDialog(Landroid/content/Context;)Z
    .locals 5

    const-string v0, "FingerResetDialogUtils"

    .line 51
    invoke-static {p0, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerResetDialogUtils;->isNeedClearFingerData(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 52
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->getOpticalFingerprintType(Landroid/content/Context;)I

    move-result v2

    .line 53
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "showResetDialog = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", opticalFingerprintType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    if-ne v2, v3, :cond_0

    .line 56
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->isFingerResetDialogNoShowAnymore(Landroid/content/Context;)Z

    move-result p0

    .line 57
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "noShowAnymore = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method static synthetic lambda$showFingerResetDailog$0(Landroid/app/Activity;ZIZ)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    if-eqz p3, :cond_0

    .line 77
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFingerResetDialogNoShowAnymore(Landroid/content/Context;)V

    .line 79
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/coloros/settings/feature/fingerprint/FingerprintResetActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 80
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_3

    if-eqz p3, :cond_2

    .line 83
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerSharedPreferences;->setFingerResetDialogNoShowAnymore(Landroid/content/Context;)V

    :cond_2
    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 86
    invoke-static {p0, p1}, Lcom/coloros/settings/feature/fingerprint/utils/FingerResetDialogUtils;->startPasswordGuideSettings(Landroid/app/Activity;Z)V

    :cond_3
    return-void
.end method

.method public static showFingerExitCurrentDialog(Landroid/app/Activity;)V
    .locals 3

    .line 173
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1209da

    .line 174
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    const v1, 0x7f1209d9

    .line 175
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 176
    new-instance v1, Lcom/coloros/settings/feature/fingerprint/utils/FingerResetDialogUtils$1;

    invoke-direct {v1, p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerResetDialogUtils$1;-><init>(Landroid/app/Activity;)V

    const v2, 0x7f120f1b

    invoke-virtual {v0, v2, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 182
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 183
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog;->setCancelable(Z)V

    const/4 v1, 0x0

    .line 184
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 185
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_0

    .line 186
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method public static showFingerResetDailog(Landroid/app/Activity;Z)V
    .locals 4

    .line 66
    new-instance v0, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f1209e1

    .line 67
    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->setTitle(I)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1209d7

    .line 68
    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->setMessage(I)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1209df

    .line 69
    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->setPositiveString(I)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120491

    .line 70
    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->setNegativeString(I)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 71
    invoke-virtual {v0, v1}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->setHasCheckBox(Z)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    move-result-object v0

    const/4 v2, 0x0

    .line 72
    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->setChecked(Z)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    move-result-object v0

    .line 73
    invoke-virtual {v0, v2}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->setShowStatementText(Z)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/coloros/settings/feature/fingerprint/utils/-$$Lambda$FingerResetDialogUtils$d78zQPWbqsFxr7Z-BMKnpD5egt4;

    invoke-direct {v3, p0, p1}, Lcom/coloros/settings/feature/fingerprint/utils/-$$Lambda$FingerResetDialogUtils$d78zQPWbqsFxr7Z-BMKnpD5egt4;-><init>(Landroid/app/Activity;Z)V

    .line 74
    invoke-virtual {v0, v3}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->setOnSelectedListener(Lcom/color/support/widget/ColorSecurityAlertDialog$OnSelectedListener;)Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->create()Lcom/color/support/widget/ColorSecurityAlertDialog;

    move-result-object v0

    .line 92
    invoke-virtual {p1}, Lcom/color/support/widget/ColorSecurityAlertDialog$Builder;->getSecurityAlertDialog()Landroid/app/Dialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 94
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 95
    invoke-virtual {p1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 97
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result p0

    if-nez p0, :cond_1

    .line 98
    invoke-virtual {v0}, Lcom/color/support/widget/ColorSecurityAlertDialog;->show()V

    :cond_1
    return-void
.end method

.method public static showFingerResetDialogOrStartFingerSettings(Landroid/app/Activity;)V
    .locals 1

    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 41
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerResetDialogUtils;->isShowResetDialog(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 43
    invoke-static {p0, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerResetDialogUtils;->showFingerResetDailog(Landroid/app/Activity;Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 45
    invoke-static {p0, v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerResetDialogUtils;->startPasswordGuideSettings(Landroid/app/Activity;Z)V

    :cond_1
    return-void
.end method

.method public static startPasswordGuideSettings(Landroid/app/Activity;Z)V
    .locals 3

    .line 103
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 104
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isFingerprintSupport(Landroid/content/Context;)Z

    move-result v0

    .line 105
    invoke-static {p0}, Lcom/coloros/settings/utils/q;->a(Landroid/content/Context;)Z

    move-result v1

    const v2, 0x7f12133c

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const v2, 0x7f1209c7

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const v2, 0x7f1209bd

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    const v2, 0x7f12096e

    .line 114
    :cond_2
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_is_from_delete_all_reset_finger"

    .line 115
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 116
    new-instance p1, Lcom/android/settings/core/f;

    invoke-direct {p1, p0}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/coloros/settings/feature/password/ColorPasswordGuideSettings;

    .line 117
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p0

    .line 118
    invoke-virtual {p0, v0}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p0

    const/4 p1, 0x0

    .line 119
    invoke-virtual {p0, p1}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p0

    const/4 p1, 0x0

    .line 1063
    invoke-virtual {p0, p1, v2}, Lcom/android/settings/core/f;->a(Ljava/lang/String;I)Lcom/android/settings/core/f;

    move-result-object p0

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/core/f;->a()V

    :cond_3
    return-void
.end method
