.class public final synthetic Lcom/coloros/systemui/keyguard/biometric/-$$Lambda$6wDwzm9XU83RSAD0NlooVi69G2o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/biometrics/DialogViewCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/biometrics/DialogViewCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/biometric/-$$Lambda$6wDwzm9XU83RSAD0NlooVi69G2o;->f$0:Lcom/android/systemui/biometrics/DialogViewCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/biometric/-$$Lambda$6wDwzm9XU83RSAD0NlooVi69G2o;->f$0:Lcom/android/systemui/biometrics/DialogViewCallback;

    invoke-interface {p0}, Lcom/android/systemui/biometrics/DialogViewCallback;->onPositivePressed()V

    return-void
.end method
