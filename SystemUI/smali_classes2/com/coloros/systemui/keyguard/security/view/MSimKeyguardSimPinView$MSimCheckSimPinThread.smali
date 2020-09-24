.class abstract Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView$MSimCheckSimPinThread;
.super Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView$CheckSimThread;
.source "MSimKeyguardSimPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "MSimCheckSimPinThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;Ljava/lang/String;II)V
    .locals 6

    .line 112
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView$MSimCheckSimPinThread;->this$0:Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    .line 113
    invoke-direct/range {v0 .. v5}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView$CheckSimThread;-><init>(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;Ljava/lang/String;Ljava/lang/String;II)V

    const-string p1, "MSimCheckSimPinThread"

    .line 114
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView$MSimCheckSimPinThread;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected supplySimCheckResult()[I
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView$MSimCheckSimPinThread;->this$0:Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;->access$000(Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->getDefault(Landroid/content/Context;)Landroid/telephony/ColorOSTelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView$MSimCheckSimPinThread;->mCheckPin:Ljava/lang/String;

    iget p0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPinView$MSimCheckSimPinThread;->mCheckSlotId:I

    invoke-virtual {v0, v1, p0}, Landroid/telephony/ColorOSTelephonyManager;->supplyPinReportResult(Ljava/lang/String;I)[I

    move-result-object p0

    return-object p0
.end method
