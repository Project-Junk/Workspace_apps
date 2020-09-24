.class public final synthetic Lcom/coloros/systemui/keyguard/security/verify/-$$Lambda$KeyguardVerifyManager$YVmvYCFdxKB1HRBBKj0FHstiuV0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coloros/systemui/keyguard/security/verify/RpmbChecker$OnCheckPasswordCallback;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/verify/-$$Lambda$KeyguardVerifyManager$YVmvYCFdxKB1HRBBKj0FHstiuV0;->f$0:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    iput-boolean p2, p0, Lcom/coloros/systemui/keyguard/security/verify/-$$Lambda$KeyguardVerifyManager$YVmvYCFdxKB1HRBBKj0FHstiuV0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onChecked(Z[BLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/verify/-$$Lambda$KeyguardVerifyManager$YVmvYCFdxKB1HRBBKj0FHstiuV0;->f$0:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/security/verify/-$$Lambda$KeyguardVerifyManager$YVmvYCFdxKB1HRBBKj0FHstiuV0;->f$1:Z

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->lambda$null$0$KeyguardVerifyManager(ZZ[BLjava/lang/String;)V

    return-void
.end method
