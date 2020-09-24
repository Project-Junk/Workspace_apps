.class public Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINSixView;
.super Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;
.source "ColorKeyguardPINSixView.java"


# static fields
.field private static final BEFORE_REPORT_LENGTH:I = 0x5


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "KeyguardPINSixView"

    .line 14
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINSixView;->TAG:Ljava/lang/String;

    const/4 p1, 0x5

    .line 15
    iput p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINSixView;->mBeforeReportLength:I

    .line 16
    iget p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINSixView;->mBeforeReportLength:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINSixView;->mMaxLength:I

    return-void
.end method


# virtual methods
.method protected getPasswordMode()Ljava/lang/String;
    .locals 0

    const-string p0, "pin_six"

    return-object p0
.end method

.method protected getPwdsArray()Ljava/lang/String;
    .locals 3

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINView;->getPwdsArray()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINSixView;->mPwds:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardPINSixView;->mPwds:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
