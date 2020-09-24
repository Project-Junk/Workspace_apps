.class Lcom/coloros/systemui/qs/widget/ColorQSCarrierText$2;
.super Landroid/database/ContentObserver;
.source "ColorQSCarrierText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;Landroid/os/Handler;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText$2;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    .line 87
    iget-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText$2;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;

    invoke-static {p1}, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->access$500(Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 89
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "oppo_disaplay_calculate_data_traffic"

    .line 87
    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {p1, v1}, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->access$302(Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;Z)Z

    .line 90
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText$2;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/widget/ColorQSCarrierText;->updateEverything()V

    return-void
.end method
