.class public final synthetic Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$eYMHxoGq7uvgsjJyCba7n_2uR4M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;

.field private final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$eYMHxoGq7uvgsjJyCba7n_2uR4M;->f$0:Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;

    iput-object p2, p0, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$eYMHxoGq7uvgsjJyCba7n_2uR4M;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$eYMHxoGq7uvgsjJyCba7n_2uR4M;->f$0:Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;

    iget-object p0, p0, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$eYMHxoGq7uvgsjJyCba7n_2uR4M;->f$1:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->lambda$showUserCreatingDialog$11$UserSwitcherControllerHelper(Landroid/content/Context;)V

    return-void
.end method
