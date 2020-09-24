.class public final synthetic Lcom/coloros/systemui/common/recovery/-$$Lambda$RecoveryProxyManager$FFSLIY8kJih27cvBnO5rotpSv9k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/common/recovery/-$$Lambda$RecoveryProxyManager$FFSLIY8kJih27cvBnO5rotpSv9k;->f$0:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/coloros/systemui/common/recovery/-$$Lambda$RecoveryProxyManager$FFSLIY8kJih27cvBnO5rotpSv9k;->f$0:Landroid/content/Context;

    check-cast p1, Lcom/coloros/systemui/common/recovery/AbsRecoveryProxy;

    invoke-static {p0, p1}, Lcom/coloros/systemui/common/recovery/RecoveryProxyManager;->lambda$handleRecovery$0(Landroid/content/Context;Lcom/coloros/systemui/common/recovery/AbsRecoveryProxy;)V

    return-void
.end method
