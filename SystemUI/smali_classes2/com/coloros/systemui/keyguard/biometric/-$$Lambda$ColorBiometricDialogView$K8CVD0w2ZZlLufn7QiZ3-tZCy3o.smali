.class public final synthetic Lcom/coloros/systemui/keyguard/biometric/-$$Lambda$ColorBiometricDialogView$K8CVD0w2ZZlLufn7QiZ3-tZCy3o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;

.field private final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/-$$Lambda$ColorBiometricDialogView$K8CVD0w2ZZlLufn7QiZ3-tZCy3o;->f$0:Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/biometric/-$$Lambda$ColorBiometricDialogView$K8CVD0w2ZZlLufn7QiZ3-tZCy3o;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/biometric/-$$Lambda$ColorBiometricDialogView$K8CVD0w2ZZlLufn7QiZ3-tZCy3o;->f$0:Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/biometric/-$$Lambda$ColorBiometricDialogView$K8CVD0w2ZZlLufn7QiZ3-tZCy3o;->f$1:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/keyguard/biometric/ColorBiometricDialogView;->lambda$startDismiss$4$ColorBiometricDialogView(Ljava/lang/Runnable;)V

    return-void
.end method
