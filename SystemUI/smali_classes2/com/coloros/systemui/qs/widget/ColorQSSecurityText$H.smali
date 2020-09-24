.class Lcom/coloros/systemui/qs/widget/ColorQSSecurityText$H;
.super Landroid/os/Handler;
.source "ColorQSSecurityText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# static fields
.field private static final CLICK:I = 0x0

.field private static final REFRESH_STATE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;


# direct methods
.method private constructor <init>(Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;Landroid/os/Looper;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText$H;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;

    .line 415
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;Landroid/os/Looper;Lcom/coloros/systemui/qs/widget/ColorQSSecurityText$1;)V
    .locals 0

    .line 410
    invoke-direct {p0, p1, p2}, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText$H;-><init>(Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v0, 0x0

    .line 422
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v0, "handleRefreshState"

    .line 424
    iget-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText$H;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;

    invoke-static {p1}, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->access$500(Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;)V

    goto :goto_0

    .line 425
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    if-nez p1, :cond_1

    const-string v0, "handleClick"

    .line 427
    iget-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText$H;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;

    invoke-static {p1}, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->access$600(Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorQSSecurityText"

    .line 431
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 432
    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText$H;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;

    invoke-static {p0}, Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;->access$700(Lcom/coloros/systemui/qs/widget/ColorQSSecurityText;)Lcom/android/systemui/qs/QSTileHost;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/qs/QSTileHost;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
