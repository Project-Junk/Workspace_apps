.class public final synthetic Lcom/coloros/systemui/notification/helper/-$$Lambda$FullScreenBannerHelper$3AwLyORV1dUfIV3AOlaHNYumW0s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

.field private final synthetic f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/notification/helper/-$$Lambda$FullScreenBannerHelper$3AwLyORV1dUfIV3AOlaHNYumW0s;->f$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    iput-object p2, p0, Lcom/coloros/systemui/notification/helper/-$$Lambda$FullScreenBannerHelper$3AwLyORV1dUfIV3AOlaHNYumW0s;->f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/coloros/systemui/notification/helper/-$$Lambda$FullScreenBannerHelper$3AwLyORV1dUfIV3AOlaHNYumW0s;->f$0:Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;

    iget-object p0, p0, Lcom/coloros/systemui/notification/helper/-$$Lambda$FullScreenBannerHelper$3AwLyORV1dUfIV3AOlaHNYumW0s;->f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0, p0, p1}, Lcom/coloros/systemui/notification/helper/FullScreenBannerHelper;->lambda$buildNotification$1$FullScreenBannerHelper(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/view/View;)V

    return-void
.end method
