.class public final synthetic Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$kQb0SYHpSxhqk3Nx_c-CegTgf_g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;

.field private final synthetic f$1:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field private final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$kQb0SYHpSxhqk3Nx_c-CegTgf_g;->f$0:Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;

    iput-object p2, p0, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$kQb0SYHpSxhqk3Nx_c-CegTgf_g;->f$1:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iput-object p3, p0, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$kQb0SYHpSxhqk3Nx_c-CegTgf_g;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$kQb0SYHpSxhqk3Nx_c-CegTgf_g;->f$0:Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;

    iget-object v1, p0, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$kQb0SYHpSxhqk3Nx_c-CegTgf_g;->f$1:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object p0, p0, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$kQb0SYHpSxhqk3Nx_c-CegTgf_g;->f$2:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->lambda$null$5$UserSwitcherControllerHelper(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/content/Context;)V

    return-void
.end method
