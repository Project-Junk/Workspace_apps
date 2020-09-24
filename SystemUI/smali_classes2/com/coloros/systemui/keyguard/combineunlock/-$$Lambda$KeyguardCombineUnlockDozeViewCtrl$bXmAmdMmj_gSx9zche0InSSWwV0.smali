.class public final synthetic Lcom/coloros/systemui/keyguard/combineunlock/-$$Lambda$KeyguardCombineUnlockDozeViewCtrl$bXmAmdMmj_gSx9zche0InSSWwV0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/combineunlock/-$$Lambda$KeyguardCombineUnlockDozeViewCtrl$bXmAmdMmj_gSx9zche0InSSWwV0;->f$0:Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;

    iput-boolean p2, p0, Lcom/coloros/systemui/keyguard/combineunlock/-$$Lambda$KeyguardCombineUnlockDozeViewCtrl$bXmAmdMmj_gSx9zche0InSSWwV0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/combineunlock/-$$Lambda$KeyguardCombineUnlockDozeViewCtrl$bXmAmdMmj_gSx9zche0InSSWwV0;->f$0:Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;

    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/combineunlock/-$$Lambda$KeyguardCombineUnlockDozeViewCtrl$bXmAmdMmj_gSx9zche0InSSWwV0;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/keyguard/combineunlock/KeyguardCombineUnlockDozeViewCtrl;->lambda$updateDozeFaceViewAnim$0$KeyguardCombineUnlockDozeViewCtrl(Z)V

    return-void
.end method
