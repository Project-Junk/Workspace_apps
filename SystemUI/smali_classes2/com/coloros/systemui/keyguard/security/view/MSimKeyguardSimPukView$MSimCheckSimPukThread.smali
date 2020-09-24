.class abstract Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView$MSimCheckSimPukThread;
.super Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView$CheckSimThread;
.source "MSimKeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "MSimCheckSimPukThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView$MSimCheckSimPukThread;->this$0:Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;

    .line 101
    invoke-direct/range {p0 .. p5}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView$CheckSimThread;-><init>(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;Ljava/lang/String;Ljava/lang/String;II)V

    const-string p1, "MSimCheckSimPukThread"

    .line 102
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView$MSimCheckSimPukThread;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected supplySimCheckResult()[I
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView$MSimCheckSimPukThread;->this$0:Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;->access$000(Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->getDefault(Landroid/content/Context;)Landroid/telephony/ColorOSTelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView$MSimCheckSimPukThread;->mCheckPuk:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView$MSimCheckSimPukThread;->mCheckPin:Ljava/lang/String;

    iget p0, p0, Lcom/coloros/systemui/keyguard/security/view/MSimKeyguardSimPukView$MSimCheckSimPukThread;->mCheckSlotId:I

    invoke-virtual {v0, v1, v2, p0}, Landroid/telephony/ColorOSTelephonyManager;->supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;I)[I

    move-result-object p0

    return-object p0
.end method
