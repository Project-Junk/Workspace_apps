.class public Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;
.super Landroid/widget/FrameLayout;
.source "KeyguardNavigationBar.java"

# interfaces
.implements Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClickableViewAccessibility"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyguardNavigationBar"


# instance fields
.field private mBackBtn:Landroid/widget/Button;

.field private mBackButtonTouchListener:Lcom/coloros/systemui/keyguard/security/SecurityTouchListener;

.field private mEmergencyBtn:Lcom/android/keyguard/EmergencyButton;

.field private mNavAction:Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;

.field private mNavActionListener:Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$OnNavClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    sget-object p1, Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;->NAV_BACK_KEY_SHOW_NORMAL_KEYGUARD:Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->mNavAction:Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;)Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->mNavAction:Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;)Landroid/widget/Button;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->mBackBtn:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$200(Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;)Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$OnNavClickListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->mNavActionListener:Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$OnNavClickListener;

    return-object p0
.end method


# virtual methods
.method public clearPressedAnimatorState()V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->mEmergencyBtn:Lcom/android/keyguard/EmergencyButton;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/keyguard/EmergencyButton;->setAlpha(F)V

    .line 174
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->mBackBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 175
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->mBackButtonTouchListener:Lcom/coloros/systemui/keyguard/security/SecurityTouchListener;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/SecurityTouchListener;->removeCallbacksAndMessages()V

    return-void
.end method

.method public forceUpdateNavState(Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;I)V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->mBackBtn:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    .line 129
    :cond_0
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->mNavAction:Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forceUpdateNavState, set action as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", forceState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardNavigationBar"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    sget-object v0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar$2;->$SwitchMap$com$coloros$systemui$keyguard$security$ISecurityNavProxy$NavAction:[I

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 137
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->mBackBtn:Landroid/widget/Button;

    const v0, 0x7f11044f

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 138
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->updateBackButtonState()V

    goto :goto_0

    .line 134
    :cond_2
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->mBackBtn:Landroid/widget/Button;

    const v0, 0x7f110450

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 141
    :goto_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->mBackBtn:Landroid/widget/Button;

    invoke-virtual {p0, p2}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method public getBackButton()Landroid/widget/Button;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->mBackBtn:Landroid/widget/Button;

    return-object p0
.end method

.method public getEmergencyButton()Landroid/widget/Button;
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->mEmergencyBtn:Lcom/android/keyguard/EmergencyButton;

    return-object p0
.end method

.method public synthetic lambda$onFinishInflate$0$KeyguardNavigationBar(Landroid/view/View;)V
    .locals 1

    .line 89
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->mNavActionListener:Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$OnNavClickListener;

    if-eqz p1, :cond_1

    .line 90
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->mNavAction:Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;

    sget-object v0, Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;->NAV_BACK_KEY_SHOW_NORMAL_KEYGUARD:Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;

    if-ne p1, v0, :cond_0

    .line 91
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->mNavActionListener:Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$OnNavClickListener;

    const/4 p1, 0x2

    invoke-interface {p0, p1}, Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$OnNavClickListener;->onBackActionClicked(I)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->mNavAction:Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;

    sget-object v0, Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;->NAV_BACK_KEY_DELETE_PWD_INPUT:Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;

    if-ne p1, v0, :cond_1

    .line 93
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->mNavActionListener:Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$OnNavClickListener;

    invoke-interface {p0}, Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$OnNavClickListener;->onDeleteActionLongClickRepeated()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 168
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 169
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->mBackButtonTouchListener:Lcom/coloros/systemui/keyguard/security/SecurityTouchListener;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/SecurityTouchListener;->removeCallbacksAndMessages()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 48
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a030c

    .line 49
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/EmergencyButton;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->mEmergencyBtn:Lcom/android/keyguard/EmergencyButton;

    .line 50
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->mEmergencyBtn:Lcom/android/keyguard/EmergencyButton;

    new-instance v1, Lcom/coloros/systemui/keyguard/security/SecurityTouchListener;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/coloros/systemui/keyguard/security/SecurityTouchListener;-><init>(Lcom/coloros/systemui/keyguard/security/SecurityTouchListener$OnRepeatListener;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/EmergencyButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0a030a

    .line 51
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->mBackBtn:Landroid/widget/Button;

    .line 52
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->mBackBtn:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 53
    new-instance v0, Lcom/coloros/systemui/keyguard/security/SecurityTouchListener;

    new-instance v1, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar$1;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar$1;-><init>(Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;)V

    invoke-direct {v0, v1}, Lcom/coloros/systemui/keyguard/security/SecurityTouchListener;-><init>(Lcom/coloros/systemui/keyguard/security/SecurityTouchListener$OnRepeatListener;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->mBackButtonTouchListener:Lcom/coloros/systemui/keyguard/security/SecurityTouchListener;

    .line 87
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/common/observer/TalkbackObserver;->isTalkbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->mBackBtn:Landroid/widget/Button;

    new-instance v1, Lcom/coloros/systemui/keyguard/security/view/-$$Lambda$KeyguardNavigationBar$lu7kBjRWi042k66BdLPdghlWLOk;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/keyguard/security/view/-$$Lambda$KeyguardNavigationBar$lu7kBjRWi042k66BdLPdghlWLOk;-><init>(Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->mBackBtn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->mBackButtonTouchListener:Lcom/coloros/systemui/keyguard/security/SecurityTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 101
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->updateBackButtonState()V

    return-void
.end method

.method public registerNavActionListener(Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$OnNavClickListener;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->mNavActionListener:Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$OnNavClickListener;

    return-void
.end method

.method public setClickable(Z)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->mEmergencyBtn:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/EmergencyButton;->setEnabled(Z)V

    .line 155
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->mBackBtn:Landroid/widget/Button;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public updateBackButtonState()V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/util/KeyguardUtils;->isSystemFbeMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->mBackBtn:Landroid/widget/Button;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 148
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->mBackBtn:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public updateNavState(Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->mBackBtn:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->mNavAction:Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 112
    :cond_0
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->mNavAction:Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateNavState, set action as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardNavigationBar"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    sget-object v0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar$2;->$SwitchMap$com$coloros$systemui$keyguard$security$ISecurityNavProxy$NavAction:[I

    invoke-virtual {p1}, Lcom/coloros/systemui/keyguard/security/ISecurityNavProxy$NavAction;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    .line 121
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->mBackBtn:Landroid/widget/Button;

    const p1, 0x7f11044f

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 116
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->mBackBtn:Landroid/widget/Button;

    const v0, 0x7f110450

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 117
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/KeyguardNavigationBar;->mBackBtn:Landroid/widget/Button;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method
