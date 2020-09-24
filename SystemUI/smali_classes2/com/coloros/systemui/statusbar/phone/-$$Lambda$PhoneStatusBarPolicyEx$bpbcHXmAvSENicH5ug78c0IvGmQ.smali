.class public final synthetic Lcom/coloros/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicyEx$bpbcHXmAvSENicH5ug78c0IvGmQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicyEx$bpbcHXmAvSENicH5ug78c0IvGmQ;->f$0:Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;

    iput-boolean p2, p0, Lcom/coloros/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicyEx$bpbcHXmAvSENicH5ug78c0IvGmQ;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicyEx$bpbcHXmAvSENicH5ug78c0IvGmQ;->f$0:Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;

    iget-boolean p0, p0, Lcom/coloros/systemui/statusbar/phone/-$$Lambda$PhoneStatusBarPolicyEx$bpbcHXmAvSENicH5ug78c0IvGmQ;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/statusbar/phone/PhoneStatusBarPolicyEx;->lambda$onStateChanged$2$PhoneStatusBarPolicyEx(Z)V

    return-void
.end method
