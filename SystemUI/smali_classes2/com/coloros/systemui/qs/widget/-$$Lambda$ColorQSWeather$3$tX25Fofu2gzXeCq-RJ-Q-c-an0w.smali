.class public final synthetic Lcom/coloros/systemui/qs/widget/-$$Lambda$ColorQSWeather$3$tX25Fofu2gzXeCq-RJ-Q-c-an0w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/qs/widget/ColorQSWeather$3;

.field private final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/qs/widget/ColorQSWeather$3;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/qs/widget/-$$Lambda$ColorQSWeather$3$tX25Fofu2gzXeCq-RJ-Q-c-an0w;->f$0:Lcom/coloros/systemui/qs/widget/ColorQSWeather$3;

    iput-object p2, p0, Lcom/coloros/systemui/qs/widget/-$$Lambda$ColorQSWeather$3$tX25Fofu2gzXeCq-RJ-Q-c-an0w;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/systemui/qs/widget/-$$Lambda$ColorQSWeather$3$tX25Fofu2gzXeCq-RJ-Q-c-an0w;->f$0:Lcom/coloros/systemui/qs/widget/ColorQSWeather$3;

    iget-object p0, p0, Lcom/coloros/systemui/qs/widget/-$$Lambda$ColorQSWeather$3$tX25Fofu2gzXeCq-RJ-Q-c-an0w;->f$1:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/qs/widget/ColorQSWeather$3;->lambda$onSuccess$1$ColorQSWeather$3(Ljava/lang/String;)V

    return-void
.end method
