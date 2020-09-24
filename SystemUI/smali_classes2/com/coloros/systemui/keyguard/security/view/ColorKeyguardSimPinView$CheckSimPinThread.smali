.class abstract Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView$CheckSimPinThread;
.super Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView$CheckSimThread;
.source "ColorKeyguardSimPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CheckSimPinThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;Ljava/lang/String;)V
    .locals 6

    .line 70
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView$CheckSimPinThread;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 71
    invoke-direct/range {v0 .. v5}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView$CheckSimThread;-><init>(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;Ljava/lang/String;Ljava/lang/String;II)V

    const-string p1, "CheckSimPinThread"

    .line 72
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView$CheckSimPinThread;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected supplySimCheckResult()[I
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView$CheckSimPinThread;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;->access$000(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->getDefault(Landroid/content/Context;)Landroid/telephony/ColorOSTelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView$CheckSimPinThread;->mCheckPin:Ljava/lang/String;

    iget p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPinView$CheckSimPinThread;->mCheckSlotId:I

    invoke-virtual {v0, v1, p0}, Landroid/telephony/ColorOSTelephonyManager;->supplyPinReportResult(Ljava/lang/String;I)[I

    move-result-object p0

    return-object p0
.end method
