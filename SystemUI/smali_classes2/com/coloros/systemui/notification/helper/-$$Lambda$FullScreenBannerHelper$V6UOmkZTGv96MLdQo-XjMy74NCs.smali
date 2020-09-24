.class public final synthetic Lcom/coloros/systemui/notification/helper/-$$Lambda$FullScreenBannerHelper$V6UOmkZTGv96MLdQo-XjMy74NCs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

.field private final synthetic f$1:Landroid/app/Notification$Action;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;Landroid/app/Notification$Action;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/-$$Lambda$FullScreenBannerHelper$V6UOmkZTGv96MLdQo-XjMy74NCs;->f$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    iput-object p2, p0, Lcom/coloros/systemui/notification/helper/-$$Lambda$FullScreenBannerHelper$V6UOmkZTGv96MLdQo-XjMy74NCs;->f$1:Landroid/app/Notification$Action;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/-$$Lambda$FullScreenBannerHelper$V6UOmkZTGv96MLdQo-XjMy74NCs;->f$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/-$$Lambda$FullScreenBannerHelper$V6UOmkZTGv96MLdQo-XjMy74NCs;->f$1:Landroid/app/Notification$Action;

    invoke-virtual {v0, p0, p1}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->lambda$buildNotification$5$FullScreenBannerHelper(Landroid/app/Notification$Action;Landroid/view/View;)V

    return-void
.end method
