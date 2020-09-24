.class Lcom/coloros/systemui/qs/widget/ColorQSWeather$2;
.super Landroid/database/ContentObserver;
.source "ColorQSWeather.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/qs/widget/ColorQSWeather;->registerWeatherObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/qs/widget/ColorQSWeather;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/qs/widget/ColorQSWeather;Landroid/os/Handler;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSWeather$2;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSWeather;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 108
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    const-string p1, "Statusbar"

    const-string v0, "ColorQSWeather"

    const-string v1, "onChange, weather info data changed"

    .line 109
    invoke-static {p1, v0, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSWeather$2;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSWeather;

    invoke-static {p1}, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->access$100(Lcom/coloros/systemui/qs/widget/ColorQSWeather;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/ColorQSWeather$2;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSWeather;

    invoke-static {v0}, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->access$000(Lcom/coloros/systemui/qs/widget/ColorQSWeather;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 111
    iget-object p1, p0, Lcom/coloros/systemui/qs/widget/ColorQSWeather$2;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSWeather;

    invoke-static {p1}, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->access$100(Lcom/coloros/systemui/qs/widget/ColorQSWeather;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/ColorQSWeather$2;->this$0:Lcom/coloros/systemui/qs/widget/ColorQSWeather;

    invoke-static {p0}, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->access$000(Lcom/coloros/systemui/qs/widget/ColorQSWeather;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
