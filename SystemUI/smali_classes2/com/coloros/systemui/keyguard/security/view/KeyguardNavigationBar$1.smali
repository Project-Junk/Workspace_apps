.class Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar$1;
.super Ljava/lang/Object;
.source "KeyguardNavigationBar.java"

# interfaces
.implements Lcom/coloros/systemui/keyguard/security/SecurityTouchListener$OnRepeatListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public consumeTouchEvent()Z
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->access$200(Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;)Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$OnNavClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->access$000(Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;)Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;

    move-result-object p0

    sget-object v0, Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;->NAV_BACK_KEY_DELETE_PWD_INPUT:Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$onTouchDown$0$KeyguardNavigationBar$1(Landroid/view/View;)V
    .locals 0

    .line 58
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;

    invoke-static {p1}, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->access$200(Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;)Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$OnNavClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 59
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->access$200(Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;)Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$OnNavClickListener;

    move-result-object p0

    const/4 p1, 0x2

    invoke-interface {p0, p1}, Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$OnNavClickListener;->onBackActionClicked(I)V

    :cond_0
    return-void
.end method

.method public needRepeat()Z
    .locals 1

    .line 76
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->access$000(Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;)Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;

    move-result-object p0

    sget-object v0, Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;->NAV_BACK_KEY_DELETE_PWD_INPUT:Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onRepeated()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->access$200(Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;)Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$OnNavClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->access$000(Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;)Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;

    move-result-object v0

    sget-object v1, Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;->NAV_BACK_KEY_DELETE_PWD_INPUT:Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;

    if-ne v0, v1, :cond_0

    .line 70
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->access$200(Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;)Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$OnNavClickListener;

    move-result-object p0

    invoke-interface {p0}, Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$OnNavClickListener;->onDeleteActionLongClickRepeated()V

    :cond_0
    return-void
.end method

.method public onTouchDown()V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->access$000(Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;)Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;

    move-result-object v0

    sget-object v1, Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;->NAV_BACK_KEY_SHOW_NORMAL_KEYGUARD:Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;

    if-ne v0, v1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->access$100(Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/coloros/systemui/keyguard/security/view/-$$Lambda$KeyguardNavigationBar$1$ecpaJTB2YVshj3gTh1o7595_5GU;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/security/view/-$$Lambda$KeyguardNavigationBar$1$ecpaJTB2YVshj3gTh1o7595_5GU;-><init>(Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 63
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar$1;->this$0:Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;

    invoke-static {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->access$100(Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;)Landroid/widget/Button;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method
