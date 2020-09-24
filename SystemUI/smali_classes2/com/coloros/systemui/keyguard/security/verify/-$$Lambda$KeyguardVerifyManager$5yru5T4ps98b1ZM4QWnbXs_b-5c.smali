.class public final synthetic Lcom/coloros/systemui/keyguard/security/verify/-$$Lambda$KeyguardVerifyManager$5yru5T4ps98b1ZM4QWnbXs_b-5c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/verify/-$$Lambda$KeyguardVerifyManager$5yru5T4ps98b1ZM4QWnbXs_b-5c;->f$0:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    iput-boolean p2, p0, Lcom/coloros/systemui/keyguard/security/verify/-$$Lambda$KeyguardVerifyManager$5yru5T4ps98b1ZM4QWnbXs_b-5c;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/security/verify/-$$Lambda$KeyguardVerifyManager$5yru5T4ps98b1ZM4QWnbXs_b-5c;->f$0:Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;

    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/security/verify/-$$Lambda$KeyguardVerifyManager$5yru5T4ps98b1ZM4QWnbXs_b-5c;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/keyguard/security/verify/KeyguardVerifyManager;->lambda$checkRpmbWhenReboot$1$KeyguardVerifyManager(Z)V

    return-void
.end method
