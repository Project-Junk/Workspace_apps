.class Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView$1;
.super Ljava/lang/Object;
.source "KeyguardAbsSimView.java"

# interfaces
.implements Lcom/color/support/widget/ColorNumericKeyboard$OnClickItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickLeft()V
    .locals 0

    return-void
.end method

.method public onClickNumber(I)V
    .locals 2

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClickNumber, i = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbsKeyguardSimView"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_0

    .line 252
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->mPasswordEntry:Lcom/color/support/widget/ColorEditText;

    invoke-static {}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;->access$000()[Ljava/lang/String;

    move-result-object v0

    aget-object p1, v0, p1

    invoke-virtual {p0, p1}, Lcom/color/support/widget/ColorEditText;->append(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onClickRight()V
    .locals 0

    return-void
.end method
