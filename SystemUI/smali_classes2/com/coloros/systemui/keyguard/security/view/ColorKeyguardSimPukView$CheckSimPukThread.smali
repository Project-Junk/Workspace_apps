.class abstract Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$CheckSimPukThread;
.super Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView$CheckSimThread;
.source "ColorKeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CheckSimPukThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 171
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$CheckSimPukThread;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 172
    invoke-direct/range {v0 .. v5}, Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView$CheckSimThread;-><init>(Lcom/coloros/systemui/keyguard/security/view/KeyguardAbsSimView;Ljava/lang/String;Ljava/lang/String;II)V

    const-string p1, "CheckSimPukThread"

    .line 173
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$CheckSimPukThread;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected supplySimCheckResult()[I
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$CheckSimPukThread;->this$0:Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;

    invoke-static {v0}, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;->access$900(Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/ColorOSTelephonyManager;->getDefault(Landroid/content/Context;)Landroid/telephony/ColorOSTelephonyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$CheckSimPukThread;->mCheckPuk:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$CheckSimPukThread;->mCheckPin:Ljava/lang/String;

    iget p0, p0, Lcom/coloros/systemui/keyguard/security/view/ColorKeyguardSimPukView$CheckSimPukThread;->mCheckSlotId:I

    invoke-virtual {v0, v1, v2, p0}, Landroid/telephony/ColorOSTelephonyManager;->supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;I)[I

    move-result-object p0

    return-object p0
.end method
