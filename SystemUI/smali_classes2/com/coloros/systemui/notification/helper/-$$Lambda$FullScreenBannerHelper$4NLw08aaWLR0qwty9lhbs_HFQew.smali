.class public final synthetic Lcom/coloros/systemui/notification/helper/-$$Lambda$FullScreenBannerHelper$4NLw08aaWLR0qwty9lhbs_HFQew;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coloros/systemui/notification/view/FullScreenBanner$ReplySendListener;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

.field private final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/-$$Lambda$FullScreenBannerHelper$4NLw08aaWLR0qwty9lhbs_HFQew;->f$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    iput-object p2, p0, Lcom/coloros/systemui/notification/helper/-$$Lambda$FullScreenBannerHelper$4NLw08aaWLR0qwty9lhbs_HFQew;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onSend(Landroid/widget/EditText;)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/-$$Lambda$FullScreenBannerHelper$4NLw08aaWLR0qwty9lhbs_HFQew;->f$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/-$$Lambda$FullScreenBannerHelper$4NLw08aaWLR0qwty9lhbs_HFQew;->f$1:Landroid/content/Context;

    invoke-virtual {v0, p0, p1}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->lambda$buildNotification$4$FullScreenBannerHelper(Landroid/content/Context;Landroid/widget/EditText;)V

    return-void
.end method
