.class final Lcom/coloros/settings/feature/weather/view/HeadersGridView$f;
.super Ljava/lang/RuntimeException;
.source "HeadersGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/weather/view/HeadersGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/coloros/settings/feature/weather/view/HeadersGridView;


# direct methods
.method public constructor <init>(Lcom/coloros/settings/feature/weather/view/HeadersGridView;Ljava/lang/Exception;)V
    .locals 0

    .line 1182
    iput-object p1, p0, Lcom/coloros/settings/feature/weather/view/HeadersGridView$f;->a:Lcom/coloros/settings/feature/weather/view/HeadersGridView;

    .line 1183
    invoke-static {}, Lcom/coloros/settings/feature/weather/view/HeadersGridView;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
