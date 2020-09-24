.class public final synthetic Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$lSEVOHEn3O4b_U9WioEonVl5sz4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;

.field private final synthetic f$1:I

.field private final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;ILandroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$lSEVOHEn3O4b_U9WioEonVl5sz4;->f$0:Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;

    iput p2, p0, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$lSEVOHEn3O4b_U9WioEonVl5sz4;->f$1:I

    iput-object p3, p0, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$lSEVOHEn3O4b_U9WioEonVl5sz4;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$lSEVOHEn3O4b_U9WioEonVl5sz4;->f$0:Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;

    iget v1, p0, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$lSEVOHEn3O4b_U9WioEonVl5sz4;->f$1:I

    iget-object p0, p0, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$lSEVOHEn3O4b_U9WioEonVl5sz4;->f$2:Landroid/content/Context;

    invoke-virtual {v0, v1, p0, p1, p2}, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->lambda$showSwitchDialog$3$UserSwitcherControllerHelper(ILandroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void
.end method
