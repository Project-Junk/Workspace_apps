.class Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView$2;
.super Landroid/os/Handler;
.source "ColorBiometricDialogView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView$2;->this$0:Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 136
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 144
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unhandled message: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ColorBiometricDialogView"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 141
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView$2;->this$0:Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->access$100(Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;)V

    goto :goto_0

    .line 138
    :cond_1
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView$2;->this$0:Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->handleResetMessage()V

    :goto_0
    return-void
.end method
