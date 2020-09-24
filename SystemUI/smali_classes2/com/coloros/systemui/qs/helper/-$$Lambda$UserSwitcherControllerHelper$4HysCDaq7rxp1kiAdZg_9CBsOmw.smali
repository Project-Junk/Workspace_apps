.class public final synthetic Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$4HysCDaq7rxp1kiAdZg_9CBsOmw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;

.field private final synthetic f$1:Landroid/content/Context;

.field private final synthetic f$2:I

.field private final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$4HysCDaq7rxp1kiAdZg_9CBsOmw;->f$0:Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;

    iput-object p2, p0, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$4HysCDaq7rxp1kiAdZg_9CBsOmw;->f$1:Landroid/content/Context;

    iput p3, p0, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$4HysCDaq7rxp1kiAdZg_9CBsOmw;->f$2:I

    iput-object p4, p0, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$4HysCDaq7rxp1kiAdZg_9CBsOmw;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$4HysCDaq7rxp1kiAdZg_9CBsOmw;->f$0:Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;

    iget-object v1, p0, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$4HysCDaq7rxp1kiAdZg_9CBsOmw;->f$1:Landroid/content/Context;

    iget v2, p0, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$4HysCDaq7rxp1kiAdZg_9CBsOmw;->f$2:I

    iget-object v3, p0, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$4HysCDaq7rxp1kiAdZg_9CBsOmw;->f$3:Ljava/lang/String;

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->lambda$showSwitchDialog$2$UserSwitcherControllerHelper(Landroid/content/Context;ILjava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method
