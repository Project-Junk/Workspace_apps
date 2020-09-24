.class public final synthetic Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$Wsfe8JsHuaxLctM9mnJvIVkIfmI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;

.field private final synthetic f$1:Landroid/content/Context;

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$Wsfe8JsHuaxLctM9mnJvIVkIfmI;->f$0:Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;

    iput-object p2, p0, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$Wsfe8JsHuaxLctM9mnJvIVkIfmI;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$Wsfe8JsHuaxLctM9mnJvIVkIfmI;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$Wsfe8JsHuaxLctM9mnJvIVkIfmI;->f$0:Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;

    iget-object v1, p0, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$Wsfe8JsHuaxLctM9mnJvIVkIfmI;->f$1:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/systemui/qs/helper/-$$Lambda$UserSwitcherControllerHelper$Wsfe8JsHuaxLctM9mnJvIVkIfmI;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/coloros/systemui/qs/helper/UserSwitcherControllerHelper;->lambda$createNewGuestUser$10$UserSwitcherControllerHelper(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
