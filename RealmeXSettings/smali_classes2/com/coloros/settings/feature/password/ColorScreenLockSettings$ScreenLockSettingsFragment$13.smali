.class final Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment$13;
.super Ljava/lang/Object;
.source "ColorScreenLockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->a(ZZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic c:Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;


# direct methods
.method constructor <init>(Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 832
    iput-object p1, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment$13;->c:Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;

    iput p2, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment$13;->a:I

    iput-object p3, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment$13;->b:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 835
    new-instance p1, Lcom/android/settings/utils/b;

    iget-object p2, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment$13;->c:Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;

    iget-object p2, p2, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment;->h:Lcom/coloros/settings/feature/fingerprint/BaseFingerprintFragmentActivity;

    invoke-direct {p1, p2}, Lcom/android/settings/utils/b;-><init>(Landroid/content/Context;)V

    iget p2, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment$13;->a:I

    iget-object v0, p0, Lcom/coloros/settings/feature/password/ColorScreenLockSettings$ScreenLockSettingsFragment$13;->b:Landroid/content/DialogInterface$OnClickListener;

    .line 1028
    new-instance v1, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v2, p1, Lcom/android/settings/utils/b;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f121229

    .line 1029
    invoke-virtual {v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    const/4 v2, 0x0

    const v3, 0x7f120491

    .line 1034
    invoke-virtual {v1, v3, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    const v3, 0x7f120606

    .line 1035
    invoke-virtual {v1, v3, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    const/4 v0, 0x0

    .line 1039
    invoke-virtual {v1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Lcolor/support/v7/app/AlertDialog$Builder;

    const/4 v3, 0x1

    if-le p2, v3, :cond_0

    .line 1041
    iget-object v4, p1, Lcom/android/settings/utils/b;->a:Landroid/content/Context;

    const v5, 0x7f12051e

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v0

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    goto :goto_0

    .line 1043
    :cond_0
    iget-object v4, p1, Lcom/android/settings/utils/b;->a:Landroid/content/Context;

    const v5, 0x7f12051f

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v0

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 1045
    :goto_0
    invoke-virtual {v1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p2

    .line 1046
    new-instance v1, Lcom/android/settings/utils/b$1;

    invoke-direct {v1, p1}, Lcom/android/settings/utils/b$1;-><init>(Lcom/android/settings/utils/b;)V

    invoke-virtual {p2, v1}, Lcolor/support/v7/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1055
    invoke-virtual {p2, v0}, Lcolor/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1056
    invoke-virtual {p2}, Lcolor/support/v7/app/AlertDialog;->show()V

    const/4 v1, -0x1

    .line 1057
    invoke-virtual {p2, v1}, Lcolor/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1059
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setClickable(Z)V

    .line 1060
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1061
    iget-object v0, p1, Lcom/android/settings/utils/b;->a:Landroid/content/Context;

    const v3, 0x7f0600d4

    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    :cond_1
    if-eqz p2, :cond_3

    .line 1070
    iget-object v0, p1, Lcom/android/settings/utils/b;->b:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_2

    .line 1071
    iget-object v0, p1, Lcom/android/settings/utils/b;->b:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 1072
    iput-object v2, p1, Lcom/android/settings/utils/b;->b:Landroid/os/CountDownTimer;

    .line 1074
    :cond_2
    new-instance v0, Lcom/android/settings/utils/b$2;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/utils/b$2;-><init>(Lcom/android/settings/utils/b;Lcolor/support/v7/app/AlertDialog;)V

    .line 1102
    invoke-virtual {v0}, Lcom/android/settings/utils/b$2;->start()Landroid/os/CountDownTimer;

    move-result-object p2

    iput-object p2, p1, Lcom/android/settings/utils/b;->b:Landroid/os/CountDownTimer;

    :cond_3
    return-void
.end method
