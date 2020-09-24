.class public final synthetic Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$_GqVKujbYi8y9iV9_Y66D6qTBd4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;

.field private final synthetic f$1:Landroid/content/Context;

.field private final synthetic f$2:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field private final synthetic f$3:I

.field private final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$_GqVKujbYi8y9iV9_Y66D6qTBd4;->f$0:Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;

    iput-object p2, p0, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$_GqVKujbYi8y9iV9_Y66D6qTBd4;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$_GqVKujbYi8y9iV9_Y66D6qTBd4;->f$2:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iput p4, p0, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$_GqVKujbYi8y9iV9_Y66D6qTBd4;->f$3:I

    iput p5, p0, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$_GqVKujbYi8y9iV9_Y66D6qTBd4;->f$4:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    iget-object v0, p0, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$_GqVKujbYi8y9iV9_Y66D6qTBd4;->f$0:Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;

    iget-object v1, p0, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$_GqVKujbYi8y9iV9_Y66D6qTBd4;->f$1:Landroid/content/Context;

    iget-object v2, p0, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$_GqVKujbYi8y9iV9_Y66D6qTBd4;->f$2:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget v3, p0, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$_GqVKujbYi8y9iV9_Y66D6qTBd4;->f$3:I

    iget v4, p0, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$_GqVKujbYi8y9iV9_Y66D6qTBd4;->f$4:I

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->lambda$exitGuestDialog$8$UserSwitcherControllerHelper(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/UserSwitcherController;IILandroid/content/DialogInterface;I)V

    return-void
.end method
