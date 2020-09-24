.class Lcom/android/keyguard/KeyguardSimPinView$3$1;
.super Ljava/lang/Object;
.source "KeyguardSimPinView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardSimPinView$3;->onSimCheckResponse(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

.field final synthetic val$attemptsRemaining:I

.field final synthetic val$result:I


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSimPinView$3;II)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iput p2, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->val$attemptsRemaining:I

    iput p3, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->val$result:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 345
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget v1, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->val$attemptsRemaining:I

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSimPinView;->access$002(Lcom/android/keyguard/KeyguardSimPinView;I)I

    .line 346
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPinView;->access$200(Lcom/android/keyguard/KeyguardSimPinView;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPinView;->access$200(Lcom/android/keyguard/KeyguardSimPinView;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->hide()V

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget v1, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->val$result:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {v0, v3, v1}, Lcom/android/keyguard/KeyguardSimPinView;->resetPasswordText(ZZ)V

    .line 351
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->val$result:I

    if-nez v0, :cond_2

    .line 352
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    .line 353
    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPinView;->access$300(Lcom/android/keyguard/KeyguardSimPinView;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    .line 354
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSimPinView;->access$002(Lcom/android/keyguard/KeyguardSimPinView;I)I

    .line 355
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-static {v0, v3}, Lcom/android/keyguard/KeyguardSimPinView;->access$402(Lcom/android/keyguard/KeyguardSimPinView;Z)Z

    .line 356
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz v0, :cond_5

    .line 357
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-interface {v0, v3, v1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto :goto_2

    .line 360
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-static {v0, v2}, Lcom/android/keyguard/KeyguardSimPinView;->access$402(Lcom/android/keyguard/KeyguardSimPinView;Z)Z

    .line 361
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->val$result:I

    if-ne v0, v3, :cond_4

    .line 362
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->val$attemptsRemaining:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_3

    .line 364
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget v1, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->val$attemptsRemaining:I

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSimPinView;->access$500(Lcom/android/keyguard/KeyguardSimPinView;I)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 367
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget v3, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->val$attemptsRemaining:I

    .line 368
    invoke-static {v1, v3, v2}, Lcom/android/keyguard/KeyguardSimPinView;->access$600(Lcom/android/keyguard/KeyguardSimPinView;IZ)Ljava/lang/String;

    move-result-object v1

    .line 367
    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 373
    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f110468

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;)V

    .line 376
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "verifyPasswordAndUnlock  CheckSimPin.onSimCheckResponse: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->val$result:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " attemptsRemaining="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->val$attemptsRemaining:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSimPinView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSimPinView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    .line 381
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPinView$3$1;->this$1:Lcom/android/keyguard/KeyguardSimPinView$3;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/keyguard/KeyguardSimPinView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/keyguard/KeyguardSimPinView;->access$702(Lcom/android/keyguard/KeyguardSimPinView;Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;)Lcom/android/keyguard/KeyguardSimPinView$CheckSimPin;

    return-void
.end method
