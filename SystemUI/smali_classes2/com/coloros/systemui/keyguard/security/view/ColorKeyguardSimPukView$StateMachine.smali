.class public Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;
.super Ljava/lang/Object;
.source "ColorKeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StateMachine"
.end annotation


# static fields
.field private static final CONFIRM_PIN:I = 0x2

.field private static final DONE:I = 0x3

.field private static final ENTER_PIN:I = 0x1

.field private static final ENTER_PUK:I


# instance fields
.field private mPin:Ljava/lang/String;

.field private mPuk:Ljava/lang/String;

.field private mState:I

.field final synthetic this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;


# direct methods
.method protected constructor <init>(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    .line 42
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;->mPuk:Ljava/lang/String;

    .line 43
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;->mPin:Ljava/lang/String;

    const/4 p1, 0x0

    .line 44
    iput p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;->mState:I

    return-void
.end method

.method private checkPin()Z
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;

    iget-object v0, v0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->mPasswordEntry:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 59
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;

    iget-object v0, v0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->mPasswordEntry:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;->mPin:Ljava/lang/String;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private checkPuk()Z
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;

    iget-object v0, v0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->mPasswordEntry:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 49
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;

    iget-object v0, v0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->mPasswordEntry:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;->mPuk:Ljava/lang/String;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private confirmPin()Z
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;->mPin:Ljava/lang/String;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->mPasswordEntry:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getPin()Ljava/lang/String;
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;->mPin:Ljava/lang/String;

    return-object p0
.end method

.method public getPuk()Ljava/lang/String;
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;->mPuk:Ljava/lang/String;

    return-object p0
.end method

.method protected next()V
    .locals 5

    .line 71
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;

    iget-object v0, v0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->mPasswordEntry:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {v0}, Lcom/color/support/widget/ColorEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 73
    invoke-static {}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "next length <= 0, return"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 76
    :cond_0
    iget v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;->mState:I

    const v1, 0x7f11042c

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 77
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;->checkPuk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iput v2, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;->mState:I

    .line 79
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->access$100(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->access$200(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1103bb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    const-string v3, "\n"

    const/4 v4, 0x2

    if-ne v0, v2, :cond_4

    .line 84
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;->checkPin()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 85
    iput v4, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;->mState:I

    .line 86
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->access$300(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f11042a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 88
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;

    invoke-static {v2}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->access$400(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;

    .line 89
    invoke-static {v1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->access$500(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1103ba

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    if-ne v0, v4, :cond_6

    .line 92
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;->confirmPin()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    .line 93
    iput v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;->mState:I

    .line 94
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->access$600(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f110440

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 95
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->verifyPukAndUpdatePin()V

    goto :goto_0

    .line 97
    :cond_5
    iput v2, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;->mState:I

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;

    invoke-static {v2}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->access$700(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;

    .line 99
    invoke-static {v1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->access$800(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f11042b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    .line 102
    :goto_0
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;

    invoke-virtual {v1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->clearTexts()V

    if-eqz v0, :cond_7

    .line 104
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->mMessageArea:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardMessageArea;->setMessage(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public reset()V
    .locals 1

    const-string v0, ""

    .line 117
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;->mPuk:Ljava/lang/String;

    .line 118
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;->mPin:Ljava/lang/String;

    const/4 v0, 0x0

    .line 119
    iput v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;->mState:I

    .line 120
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$StateMachine;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->mPasswordEntry:Lcom/color/support/widget/ColorEditText;

    invoke-virtual {p0}, Lcom/color/support/widget/ColorEditText;->requestFocus()Z

    return-void
.end method
