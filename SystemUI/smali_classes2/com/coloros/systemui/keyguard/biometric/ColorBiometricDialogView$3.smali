.class Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView$3;
.super Ljava/lang/Object;
.source "ColorBiometricDialogView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;-><init>(Landroid/content/Context;Lcom/android/systemui/biometrics/DialogViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field downPressed:Z

.field final synthetic this$0:Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView$3;->this$0:Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 170
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView$3;->downPressed:Z

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x4

    if-eq p2, v0, :cond_0

    return p1

    .line 176
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView$3;->downPressed:Z

    if-nez p2, :cond_1

    .line 177
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView$3;->downPressed:Z

    goto :goto_0

    .line 178
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_2

    .line 179
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView$3;->downPressed:Z

    goto :goto_0

    .line 180
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-ne p2, v0, :cond_3

    iget-boolean p2, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView$3;->downPressed:Z

    if-ne p2, v0, :cond_3

    .line 181
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView$3;->downPressed:Z

    .line 182
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView$3;->this$0:Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->mCallback:Lcom/android/systemui/biometrics/DialogViewCallback;

    invoke-interface {p0}, Lcom/android/systemui/biometrics/DialogViewCallback;->onUserCanceled()V

    :cond_3
    :goto_0
    return v0
.end method
