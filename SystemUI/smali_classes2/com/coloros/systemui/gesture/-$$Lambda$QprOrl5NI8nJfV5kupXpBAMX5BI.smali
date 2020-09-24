.class public final synthetic Lcom/coloros/systemui/gesture/-$$Lambda$QprOrl5NI8nJfV5kupXpBAMX5BI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/gesture/ColorSystemGestureManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/gesture/-$$Lambda$QprOrl5NI8nJfV5kupXpBAMX5BI;->f$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/coloros/systemui/gesture/-$$Lambda$QprOrl5NI8nJfV5kupXpBAMX5BI;->f$0:Lcom/coloros/systemui/gesture/ColorSystemGestureManager;

    invoke-virtual {p0}, Lcom/coloros/systemui/gesture/ColorSystemGestureManager;->loadOppoExService()V

    return-void
.end method
