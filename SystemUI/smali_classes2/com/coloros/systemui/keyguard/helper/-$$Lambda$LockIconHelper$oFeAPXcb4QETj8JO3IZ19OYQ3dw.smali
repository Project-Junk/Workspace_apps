.class public final synthetic Lcom/coloros/systemui/keyguard/helper/-$$Lambda$LockIconHelper$oFeAPXcb4QETj8JO3IZ19OYQ3dw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/keyguard/helper/LockIconHelper;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/keyguard/helper/LockIconHelper;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/helper/-$$Lambda$LockIconHelper$oFeAPXcb4QETj8JO3IZ19OYQ3dw;->f$0:Lcom/coloros/systemui/keyguard/helper/LockIconHelper;

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/helper/-$$Lambda$LockIconHelper$oFeAPXcb4QETj8JO3IZ19OYQ3dw;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/-$$Lambda$LockIconHelper$oFeAPXcb4QETj8JO3IZ19OYQ3dw;->f$0:Lcom/coloros/systemui/keyguard/helper/LockIconHelper;

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/helper/-$$Lambda$LockIconHelper$oFeAPXcb4QETj8JO3IZ19OYQ3dw;->f$1:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/keyguard/helper/LockIconHelper;->lambda$showTips$1$LockIconHelper(Ljava/lang/String;)V

    return-void
.end method
