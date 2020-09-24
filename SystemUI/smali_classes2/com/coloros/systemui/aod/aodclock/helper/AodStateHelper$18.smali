.class Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$18;
.super Landroid/database/ContentObserver;
.source "AodStateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;Landroid/os/Handler;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$18;->this$0:Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    .line 360
    iget-object p1, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$18;->this$0:Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;

    invoke-static {p1}, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->access$000(Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "realme_aod_notification_black_pkg"

    const/4 v1, -0x2

    invoke-static {p1, v0, v1}, Lcom/coloros/systemui/common/multiluser/MultiUserContentHelper;->getSecureStringValue(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 370
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const-string v1, ","

    .line 371
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 372
    array-length v1, p1

    if-lez v1, :cond_0

    .line 373
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 374
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 378
    :cond_0
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper$18;->this$0:Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;->access$000(Lcom/coloros/systemui/aod/aodclock/helper/AodStateHelper;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/aod/aodclock/settings/signature/constant/AodSignatureData;->setBlackList(Ljava/util/List;)V

    return-void
.end method
