.class public abstract Lcom/coloros/systemui/common/recovery/AbsRecoveryProxy;
.super Ljava/lang/Object;
.source "AbsRecoveryProxy.java"


# instance fields
.field protected final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/common/recovery/AbsRecoveryProxy;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected abstract doRecoveryOperation(Landroid/content/Context;)V
.end method
