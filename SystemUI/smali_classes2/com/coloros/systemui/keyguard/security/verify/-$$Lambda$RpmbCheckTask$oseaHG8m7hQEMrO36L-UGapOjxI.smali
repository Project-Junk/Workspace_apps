.class public final synthetic Lcom/coloros/systemui/keyguard/security/verify/-$$Lambda$RpmbCheckTask$oseaHG8m7hQEMrO36L-UGapOjxI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coloros/systemui/keyguard/security/verify/RpmbChecker$OnCheckPasswordCallback;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;

.field private final synthetic f$1:[B


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/verify/-$$Lambda$RpmbCheckTask$oseaHG8m7hQEMrO36L-UGapOjxI;->f$0:Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/security/verify/-$$Lambda$RpmbCheckTask$oseaHG8m7hQEMrO36L-UGapOjxI;->f$1:[B

    return-void
.end method


# virtual methods
.method public final onChecked(Z[BLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/verify/-$$Lambda$RpmbCheckTask$oseaHG8m7hQEMrO36L-UGapOjxI;->f$0:Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/verify/-$$Lambda$RpmbCheckTask$oseaHG8m7hQEMrO36L-UGapOjxI;->f$1:[B

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/coloros/systemui/keyguard/security/verify/RpmbCheckTask;->lambda$run$1$RpmbCheckTask([BZ[BLjava/lang/String;)V

    return-void
.end method
