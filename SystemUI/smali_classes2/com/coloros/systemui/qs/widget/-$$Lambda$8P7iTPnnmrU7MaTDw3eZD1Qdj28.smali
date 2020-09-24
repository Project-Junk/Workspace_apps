.class public final synthetic Lcom/coloros/systemui/qs/widget/-$$Lambda$8P7iTPnnmrU7MaTDw3eZD1Qdj28;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/qs/widget/ColorQSWeather;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/qs/widget/ColorQSWeather;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/qs/widget/-$$Lambda$8P7iTPnnmrU7MaTDw3eZD1Qdj28;->f$0:Lcom/coloros/systemui/qs/widget/ColorQSWeather;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/-$$Lambda$8P7iTPnnmrU7MaTDw3eZD1Qdj28;->f$0:Lcom/coloros/systemui/qs/widget/ColorQSWeather;

    invoke-virtual {p0}, Lcom/coloros/systemui/qs/widget/ColorQSWeather;->requestNewLocalWeatherInfo()V

    return-void
.end method
